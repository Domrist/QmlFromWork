#include "WidgetThree.h"
#include <QDebug>


WidgetThree::WidgetThree(QQuickItem * parent)
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

	if (!a_model->getJsonObject().contains("transformation"))
	{
		return;
	}

	a_model->getJsonObject()["transformation"].toObject()["positon"].toObject()["X"] = _position.x();
	a_model->getJsonObject()["transformation"].toObject()["positon"].toObject()["Y"] = _position.y();
	a_model->getJsonObject()["transformation"].toObject()["positon"].toObject()["Z"] = _position.z();

	// rotation

	a_model->getJsonObject()["transformation"].toObject()["rotation"].toObject()["X"] = _position.x();
	a_model->getJsonObject()["transformation"].toObject()["rotation"].toObject()["Y"] = _position.y();
	a_model->getJsonObject()["transformation"].toObject()["rotation"].toObject()["Z"] = _position.z();
	a_model->getJsonObject()["transformation"].toObject()["rotation"].toObject()["W"] = _rotation.w();
}



void WidgetThree::udpateView(Model * a_model, View * a_view)
{
	qDebug() << "WidgetThree update view by data from model";


}



QVector3D WidgetThree::getPosition()
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
