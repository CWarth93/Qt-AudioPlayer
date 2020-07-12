#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include <h/AudioPlayer.h>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    app.setApplicationName("AudioPlayer");

    QQmlApplicationEngine engine;

    AudioPlayer audioPlayer;
    engine.rootContext()->setContextProperty("audioPlayer", &audioPlayer);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
