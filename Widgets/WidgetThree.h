#pragma once
#include <QObject>
#include "BaseWidget.h"

#include <QVector3D>
#include <QVector4D>

class WidgetThree : public BaseWidget
{
	Q_PROPERTY(QVector3D position READ position WRITE setPosition NOTIFY positionChanged )
	Q_PROPERTY(QVector4D rotation READ rotatoin WRITE setRotation NOTIFY rotationChanged )

public:
	WidgetThree(QObject * parent = nullptr);
	virtual void update() override;
	virtual void writeToModel(Model * a_model) override;
	virtual void udpateView(Model * a_model, View * a_view) override;

	QVector3D position();
	QVector4D rotatoin();

	void setPosition(QVector3D a_newValue);
	void setRotation(QVector4D a_newValue);

signals:
	void positionChanged();
	void rotationChanged();

private:
	QVector3D _position{QVector3D(1,1,1)};
	QVector4D _rotation{QVector4D(2,2,2,5)};
};
