#pragma once
#include <QObject>
#include "BaseWidget.h"

class WidgetThree : public BaseWidget
{

public:
	WidgetThree(QObject * parent = nullptr);
	virtual void update() override;
	virtual void writeToModel(Model * a_model) override;
	virtual void udpateView(Model * a_model, View * a_view) override;
};
