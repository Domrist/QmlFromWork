#include "Initializer.h"
#include <QDebug>

#include <QObject>
#include <qqml.h>
// #include "A.h"


Initializer::Initializer(QObject *parent)
	: QObject(parent)
{
	//
}



void Initializer::initializeAll()
{
	qmlRegisterType<WidgetOne>("QmlWidget", 1, 0, "WidgetOne");
	qmlRegisterType<WidgetTwo>("QmlWidget", 1, 0, "WidgetTwo");
	qmlRegisterType<WidgetThree>("QmlWidget", 1, 0, "WidgetThree");
}

