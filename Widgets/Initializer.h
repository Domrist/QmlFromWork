#include <QObject>

#include "WidgetOne.h"
#include "WidgetTwo.h"
#include "WidgetThree.h"

class Initializer : public QObject
{
	Q_OBJECT
public:
	Initializer(QObject * parent = nullptr);
	// ~Initializer() = default;
	static void initializeAll();
};


