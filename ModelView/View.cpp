#include "View.h"
#include "../Widgets/BaseWidget.h"

#include "Presenter.h"
#include <QDebug>

#include <QQuickView>
#include <QQuickItem>
#include <QQmlComponent>

#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlContext>

View::View(QObject * parent)
	: QObject(parent)
{
	//
}



void View::updateView()
{
}



void View::updateModelReques()
{
	qDebug() << "View::UpdateModel";
}



void View::setPresenter(Presenter * presenter)
{
	_presenter = presenter;
}



void View::addWidgetToQml(std::string a_newElement)
{
	/// inserting generated Qml element from string, given from BaseWidget*
}



QQmlApplicationEngine & View::getEngine()
{
	return _engine;
}

