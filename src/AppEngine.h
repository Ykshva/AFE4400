#ifndef APPENGINE_H
#define APPENGINE_H

#include <QObject>

struct COMSettings
{
    COMSettings() {}
    QString speed = "";
    QString countOfBits = "";
    QString countOfStopBits = "";
};

class AppEngine : public QObject
{
    Q_OBJECT
public:
    explicit AppEngine(QObject *parent = nullptr);

private:
    COMSettings comSettings;

public slots:
    void print();
    void setCOMSpeed(QString speed);
    void setCOMBits(QString bits);
    void setCOMStopBits(QString stopBits);
signals:
};

#endif // APPENGINE_H
