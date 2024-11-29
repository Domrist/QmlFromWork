#pragma once

#include <QObject>
#include <vector>

class Model;
class View;
class BaseWidget;

class Presenter : public QObject
{

public:
	Presenter(QObject * parent = nullptr);

	void initialize(Model * a_model, View * a_view);

	void addWidget(BaseWidget * a_newWidget);

	void updateModel(); // view -> presenter -> model
	void updateView(); // model -> presenter -> view

	static Presenter * instance();

private :
	Model * _model{nullptr};
	View * _view{nullptr};
	std::vector<BaseWidget *> _widgetCollection;
	inline static Presenter * _instance;
};
