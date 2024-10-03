#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "Logic.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<Logic>("LogicModule", 1, 0, "Logic");
    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("CalculatorX", "Main");

    return app.exec();
}
