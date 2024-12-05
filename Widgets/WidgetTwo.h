#pragma once
#include <QObject>
#include "BaseWidget.h"


class WidgetTwo : public BaseWidget
{
	Q_OBJECT
	Q_PROPERTY(float aZPos READ getaZPos WRITE setaZPos NOTIFY aZPosChanged )

// methods
public:
	WidgetTwo(QQuickItem * parent = nullptr);

	virtual void update() override;
	virtual void writeToModel(Model * a_model) override;
	virtual void udpateView(Model * a_model, View * a_view) override;

// fields
public:
	float getaZPos();
	void setaZPos(float newValue);

signals:
	void aZPosChanged();

private:

	float _zPos;
};
