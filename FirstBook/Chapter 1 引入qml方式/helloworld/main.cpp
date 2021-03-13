#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));
//    const QUrl url(QStringLiteral("qrc:/main.qml"));
//    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
//                     &app, [url](QObject *obj, const QUrl &objUrl) {
//        if (!obj && url == objUrl)
//            QCoreApplication::exit(-1);
//    }, Qt::QueuedConnection);
//    engine.load(url);

    return app.exec();
}

//#include <QQuickView>

//int main(int argc, char *argv[])
//{
//    QGuiApplication app(argc, argv);

//    QQuickView viewer;
//    viewer.setResizeMode(QQuickView::SizeRootObjectToView);
//    viewer.setSource(QUrl(QStringLiteral("qrc:///main.qml")));
//    QObject::connect(viewer.engine(), SIGNAL(quit()), &app, SLOT(quit()));
////    viewer.setSource(QUrl("qml:///main.qml"));
//    viewer.show();

//    return app.exec();
//}
