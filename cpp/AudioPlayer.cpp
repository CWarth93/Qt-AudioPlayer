#include "../h/AudioPlayer.h"


AudioPlayer::AudioPlayer(QObject *parent) : QObject(parent)
{
    this->player = std::unique_ptr<QMediaPlayer>(new QMediaPlayer());
    connect(this->player.get(), SIGNAL(durationChanged(qint64)), this, SLOT(audioReady(qint64)));
    this->player->setVolume(75);
}

void AudioPlayer::setVolume(int newVolume)
{
    this->player->setVolume(newVolume);
}

void AudioPlayer::addAudio(QString filePath)
{
    QUrl url(filePath);
    this->player->setMedia(url);
}

qint64 AudioPlayer::getAudioLength()
{
    return this->audioLength;
}

void AudioPlayer::setPosition(qint64 position)
{
    this->player->setPosition(position);
}

void AudioPlayer::play()
{
    this->player->play();
}

void AudioPlayer::pause()
{
     this->player->pause();
}

void AudioPlayer::stop()
{
     this->player->stop();
}

void AudioPlayer::audioReady(qint64 newDuration)
{
    this->audioLength = newDuration;
}

