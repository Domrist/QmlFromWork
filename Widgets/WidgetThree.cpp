#include "WidgetThree.h"
#include <QDebug>


WidgetThree::WidgetThree(QObject * parent)
	: BaseWidget(parent)
{
}



void WidgetThree::update()
{
	qDebug() << "WidgetThree update";
}



void WidgetThree::writeToModel(Model * a_model)
{
	qDebug() << "WidgetThree write data to model";
}



void WidgetThree::udpateView(Model * a_model, View * a_view)
{
	qDebug() << "WidgetThree update view by data from model";
}



QVector3D WidgetThree::position()
{
	return _position;
}



QVector4D WidgetThree::rotatoin()
{
	return _rotation;
}



void WidgetThree::setPosition(QVector3D a_newValue)
{
	_position = a_newValue;
	emit positionChanged();
}



void WidgetThree::setRotation(QVector4D a_newValue)
{
	_rotation = a_newValue;
	emit rotationChanged();
}




void WidgetThree::positionChanged(){}
void WidgetThree::rotationChanged(){}
