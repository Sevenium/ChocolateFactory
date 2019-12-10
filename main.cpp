#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QPushButton>

#include <iostream>
#include <QQmlContext>
#include "mySystem.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/myMain.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    QObject* rootObject = engine.rootObjects()[0];

    // Creation of the System
    MySystem mySystem(10,10,0,rootObject);

    QVariant test;

    // Get the buttons
    QObject* buttonBlack = rootObject->findChild<QObject*>("buttonBlack");
    QObject* buttonMars = rootObject->findChild<QObject*>("buttonMars");
    QObject* buttonKinder = rootObject->findChild<QObject*>("buttonKinder");
    QObject* buttonMilk = rootObject->findChild<QObject*>("buttonMilk");
    QObject* buttonChoco = rootObject->findChild<QObject*>("buttonChoco");
    //Connect them
    QObject::connect(buttonBlack, SIGNAL(sendBlackSignal()), &mySystem, SLOT(productionBlack()));
    QObject::connect(buttonMars, SIGNAL(sendMarsSignal()), &mySystem, SLOT(productionMars()));
    QObject::connect(buttonKinder, SIGNAL(sendKinderSignal()), &mySystem, SLOT(productionKinder()));
    QObject::connect(buttonMilk, SIGNAL(sendMilkSupply()), &mySystem, SLOT(milkSupply()));
    QObject::connect(buttonChoco, SIGNAL(sendChocoSupply()), &mySystem, SLOT(chocoSupply()));


    return app.exec();
}
