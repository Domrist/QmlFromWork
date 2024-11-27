#include "WidgetTwo.h"
#include <QDebug>


WidgetTwo::WidgetTwo(QObject * parent)
	: BaseWidget(parent)
{
	createQmlObject();
}



void WidgetTwo::update()
{
	qDebug() << "WidgetTwo update";
}



float WidgetTwo::getaZPos()
{
	return _zPos;
}



void WidgetTwo::setaZPos(float newValue)
{
	_zPos = newValue;
	emit aZPosChanged();
}



void WidgetTwo::writeToModel(Model * a_model)
{
	qDebug() << "WidgetTwo write data to model";
}


void WidgetTwo::udpateView(Model * a_model, View * a_view)
{
	// denis - update view by data
}
