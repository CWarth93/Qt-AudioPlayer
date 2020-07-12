#pragma once

#include <memory>

#include <QMediaPlayer>

class AudioPlayer : public QObject
{
    Q_OBJECT

    private:
        std::unique_ptr<QMediaPlayer> player;
        qint64 audioLength;

    public:
        explicit AudioPlayer(QObject *parent = nullptr);

    public slots:
        void setVolume(int newVolume);
        void addAudio(QString filePath);
        qint64 getAudioLength();
        void setPosition(qint64 position);
        void play();
        void pause();
        void stop();

        void audioReady(qint64 newDuration);

};
