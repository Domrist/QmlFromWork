#include "WidgetOne.h"

#include <QDebug>


WidgetOne::WidgetOne(QObject * parent)
	: BaseWidget(parent)
{
	createQmlObject();
}


QString WidgetOne::getAName()
{
	return _aName;
}


void WidgetOne::setAName(const QString & string)
{
	_aName = string;
	emit aNameChanged();
}



void WidgetOne::update()
{
	qDebug() << "WidgetOne update";
}



void WidgetOne::writeToModel(Model * a_model)
{
	qDebug() << "WidgetOnd write data to model";

}



void WidgetOne::udpateView(Model * a_model, View * a_view)
{
	qDebug() << "UPdate view with data from model";
	// take data from model
}
