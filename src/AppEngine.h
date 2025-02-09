#ifndef APPENGINE_H
#define APPENGINE_H

#include <QSerialPort>
#include <QObject>



class AppEngine : public QObject
{
    Q_OBJECT
public:
    explicit AppEngine(QObject *parent = nullptr);

private:
    QSerialPort* port;

private:


public slots:   
    void openPort(int speed, int bits, int stopBits);

signals:
};

#endif // APPENGINE_H
