#ifndef LOGIC_H
#define LOGIC_H
#include <QObject>
#include <QQmlApplicationEngine>
class Logic : public QObject
{
Q_OBJECT
public:
    Logic();

    Q_INVOKABLE double plus(double a, double b);
    Q_INVOKABLE double minus(double a, double b);
    Q_INVOKABLE double stars(double a, double b);
    Q_INVOKABLE double divide(double a, double b);

};

#endif // LOGIC_H
