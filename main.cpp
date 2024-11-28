#include <QGuiApplication>

#include "ModelView/Model.h"
#include "ModelView/View.h"
#include "ModelView/Presenter.h"

#include "Widgets/Initializer.h"

#include <QQmlComponent> // TO DELETE

#include <QDebug>
#include <QVector3D>


int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);

	Initializer::initializeAll();

	// NOTE - model may update from different thread, so it possible to add some synchronization. But now - spin in single thread

	Model model;
	View view;

	QObject::connect( &view.getEngine(), &QQmlApplicationEngine::objectCreationFailed,
					 &app, []() { QCoreApplication::exit(-1); },
	Qt::QueuedConnection);

	view.getEngine().loadFromModule("QmlTest/", "Main");

	//qDebug() << "WIND SIZE\t" << obj->findChild<QObject*>("col")->children().size();

	// 	std::this_thread::sleep_for(std::chrono::milliseconds(2500));
	// 	QQmlEngine engine;

	// 		qDebug() << QUrl::fromLocalFile("./MyItem.qml").isLocalFile();
	// 		qDebug() << QUrl::fromLocalFile("./MyItem.qml");
	// 	 QQmlComponent component(&engine,QUrl::fromLocalFile("MyItem.qml"));
	// 	 QObject *object = component.create();

	// 	 QString returnedValue;
	// 	 QString msg = "Hello from C++";
	// 	 QMetaObject::invokeMethod(object, "myQmlFunction",
	// 			 Q_RETURN_ARG(QString, returnedValue),
	// 			 Q_ARG(QString, msg));

	// 	 qDebug() << "QML function returned:" << returnedValue;
	// 	 delete object;

	// 	});


	{	// initialization block
		Presenter::instance()->initialize(&model, &view);
		view.setPresenter(Presenter::instance());
		model.setPresenter(Presenter::instance());

		// presenter.addWidget(new WidgetOne);
		// presenter.addWidget(new WidgetTwo);
	}

	model.startChange();

	return app.exec();
}
