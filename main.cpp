#include <QGuiApplication>

#include "ModelView/Model.h"
#include "ModelView/View.h"
#include "ModelView/Presenter.h"

#include "Widgets/Initializer.h"

#include <QQmlComponent> // TO DELETE
#include <thread>
#include <QDebug>


int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);

	Initializer::initializeAll();

	// NOTE - model may update from different thread, so it possible to add some synchronization. But now - spin in single thread

	Model model;
	View view;
	Presenter presenter;

	QObject::connect( &view.getEngine(), &QQmlApplicationEngine::objectCreationFailed,
					 &app, []() { QCoreApplication::exit(-1); },
	Qt::QueuedConnection);

	view.getEngine().loadFromModule("QmlTest/", "Main");


	std::thread tt = std::thread([&](){

		std::this_thread::sleep_for(std::chrono::milliseconds(2500));
		QQmlEngine engine;

			qDebug() << QUrl::fromLocalFile("./MyItem.qml").isLocalFile();
			qDebug() << QUrl::fromLocalFile("./MyItem.qml");
		 QQmlComponent component(&engine,QUrl::fromLocalFile("MyItem.qml"));
		 QObject *object = component.create();

		 QString returnedValue;
		 QString msg = "Hello from C++";
		 QMetaObject::invokeMethod(object, "myQmlFunction",
				 Q_RETURN_ARG(QString, returnedValue),
				 Q_ARG(QString, msg));

		 qDebug() << "QML function returned:" << returnedValue;
		 delete object;

		});


	{	// initialization block
		presenter.initialize(&model, &view);
		view.setPresenter(&presenter);
		model.setPresenter(&presenter);

		// presenter.addWidget(new WidgetOne);
		// presenter.addWidget(new WidgetTwo);
	}


	return app.exec();
}
