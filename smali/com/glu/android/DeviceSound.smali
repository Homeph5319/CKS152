.class public Lcom/glu/android/DeviceSound;
.super Ljava/lang/Object;
.source "DeviceSound.java"


# static fields
.field public static final MP3_EVENT_IS_MUSIC_PLAYING:I = 0x10

.field public static final MP3_EVENT_PAUSE:I = 0x2

.field public static final MP3_EVENT_PLAY:I = 0x1

.field public static final MP3_EVENT_RESUME:I = 0x3

.field public static final MP3_EVENT_SEEK:I = 0x4

.field public static final MP3_EVENT_SOUND_DISABLED:I = 0x6

.field public static final MP3_EVENT_SOUND_ENABLED:I = 0x7

.field public static final MP3_EVENT_STOP:I = 0x5

.field public static final MP3_EVENT_VOLUME_DOWN:I = 0x9

.field public static final MP3_EVENT_VOLUME_MAX:I = 0xb

.field public static final MP3_EVENT_VOLUME_MUTE:I = 0xa

.field public static final MP3_EVENT_VOLUME_SET:I = 0xf

.field public static final MP3_EVENT_VOLUME_UP:I = 0x8

.field public static final MP3_SPEAKER_BOTH:I = 0x0

.field public static final MP3_SPEAKER_LEFT:I = 0x0

.field public static final MP3_SPEAKER_RIGHT:I = 0x0

.field public static final NOTIFICATION_PERIOD:I = 0x800

.field public static final SOUND_EVENT_DESTROY:I = 0x3

.field public static final SOUND_EVENT_IS_OEM_AUDIO_PLAYING:I = 0x7

.field public static final SOUND_EVENT_PAUSE:I = 0x1

.field public static final SOUND_EVENT_RESUME:I = 0x2

.field public static final SOUND_EVENT_SET_VOLUME:I = 0x5

.field public static final SOUND_EVENT_USER_TURNED_SOUND_ON:I = 0x4

.field public static final SOUND_EVENT_WRITE_AUDIO_DATA:I = 0x6

.field public static instance:Lcom/glu/android/DeviceSound;


# instance fields
.field private bytesWritten:I

.field public m_audioData:[B

.field public m_audioManager:Landroid/media/AudioManager;

.field private m_audioTrack:Lcom/glu/android/DeviceTrack;

.field public m_emptyData:[B

.field private m_lastSoundPlayed:Ljava/lang/String;

.field private m_leftVolume:F

.field private m_mp3Enabled:Z

.field private m_mp3IsPaused:Z

.field private m_nativeBitRate:I

.field private m_nativeFrequency:I

.field private m_nativeNumChannels:I

.field public m_oemAudioPlaying:Z

.field public m_oemAudioVolume:I

.field private m_ourMP3:Landroid/media/MediaPlayer;

.field private m_pcmVolumeZeroToTen:I

.field private m_rightVolume:F

.field public m_soundForcedByUser:Z

.field public vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    .line 29
    iput-object v1, p0, Lcom/glu/android/DeviceSound;->vibrator:Landroid/os/Vibrator;

    .line 32
    iput v2, p0, Lcom/glu/android/DeviceSound;->bytesWritten:I

    .line 37
    iput-object v1, p0, Lcom/glu/android/DeviceSound;->m_audioData:[B

    .line 38
    iput-object v1, p0, Lcom/glu/android/DeviceSound;->m_emptyData:[B

    .line 41
    iput-object v1, p0, Lcom/glu/android/DeviceSound;->m_audioManager:Landroid/media/AudioManager;

    .line 42
    iput-boolean v2, p0, Lcom/glu/android/DeviceSound;->m_soundForcedByUser:Z

    .line 43
    iput-boolean v2, p0, Lcom/glu/android/DeviceSound;->m_oemAudioPlaying:Z

    .line 44
    iput v2, p0, Lcom/glu/android/DeviceSound;->m_oemAudioVolume:I

    .line 47
    iput v0, p0, Lcom/glu/android/DeviceSound;->m_nativeBitRate:I

    .line 48
    iput v0, p0, Lcom/glu/android/DeviceSound;->m_nativeNumChannels:I

    .line 49
    iput v0, p0, Lcom/glu/android/DeviceSound;->m_nativeFrequency:I

    .line 52
    const/4 v0, 0x5

    iput v0, p0, Lcom/glu/android/DeviceSound;->m_pcmVolumeZeroToTen:I

    .line 307
    iput-object v1, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    .line 308
    iput-object v1, p0, Lcom/glu/android/DeviceSound;->m_lastSoundPlayed:Ljava/lang/String;

    .line 309
    iput-boolean v2, p0, Lcom/glu/android/DeviceSound;->m_mp3IsPaused:Z

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_mp3Enabled:Z

    .line 311
    iput v3, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    .line 312
    iput v3, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    .line 70
    sput-object p0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    .line 72
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/glu/android/GameLet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/glu/android/DeviceSound;->vibrator:Landroid/os/Vibrator;

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/glu/android/DeviceSound;->determineIfAudioPlaying()V

    .line 76
    return-void
.end method

.method private correctAndSetVolume()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 505
    iget v0, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 506
    iput v1, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    .line 510
    :cond_0
    :goto_0
    iget v0, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 511
    iput v1, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    .line 515
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    iget v2, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 517
    :cond_2
    return-void

    .line 507
    :cond_3
    iget v0, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 508
    iput v2, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    goto :goto_0

    .line 512
    :cond_4
    iget v0, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 513
    iput v2, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    goto :goto_1
.end method

.method private determineIfAudioPlaying()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/glu/android/GameLet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioManager:Landroid/media/AudioManager;

    .line 84
    :cond_0
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    iget-object v0, v0, Lcom/glu/android/DeviceSound;->m_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_oemAudioPlaying:Z

    .line 85
    iget-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_oemAudioPlaying:Z

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    iget-object v0, v0, Lcom/glu/android/DeviceSound;->m_audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/glu/android/DeviceSound;->m_oemAudioVolume:I

    .line 87
    :cond_1
    return-void
.end method

.method public static isAudioDisabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 265
    sget-object v1, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez v1, :cond_0

    .line 267
    const-string v1, "Audio assumed disabled, DS is null"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 277
    :goto_0
    return v0

    .line 270
    :cond_0
    sget-object v1, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    iget-object v1, v1, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    if-nez v1, :cond_1

    .line 272
    const-string v1, "Audio assumed disabled, PCM track is null"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_1
    const-string v0, "Audio is not disabled."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMP3Enabled()Z
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    iget-boolean v0, v0, Lcom/glu/android/DeviceSound;->m_mp3Enabled:Z

    return v0
.end method

.method public static isOEMAudioPlaying()Z
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    iget-boolean v0, v0, Lcom/glu/android/DeviceSound;->m_oemAudioPlaying:Z

    return v0
.end method


# virtual methods
.method public disableMP3()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_mp3Enabled:Z

    .line 424
    invoke-virtual {p0}, Lcom/glu/android/DeviceSound;->stopAndDestroyMP3()V

    .line 425
    return-void
.end method

.method public enableMP3()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_mp3Enabled:Z

    .line 430
    invoke-virtual {p0}, Lcom/glu/android/DeviceSound;->resumeMP3()V

    .line 431
    return-void
.end method

.method public getAudioDataArray(I)[B
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioData:[B

    if-nez v0, :cond_0

    .line 60
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioData:[B

    .line 61
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/glu/android/DeviceSound;->m_emptyData:[B

    .line 62
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_emptyData:[B

    invoke-static {v0}, Lcom/glu/android/GluUtil;->zero([B)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioData:[B

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public initAudioPlayback(III)V
    .locals 7
    .param p1, "nativeBitRate"    # I
    .param p2, "nativeNumChannels"    # I
    .param p3, "nativeFrequency"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    .line 119
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 121
    :cond_0
    iput p1, p0, Lcom/glu/android/DeviceSound;->m_nativeBitRate:I

    .line 122
    iput p2, p0, Lcom/glu/android/DeviceSound;->m_nativeNumChannels:I

    .line 123
    iput p3, p0, Lcom/glu/android/DeviceSound;->m_nativeFrequency:I

    .line 126
    move v2, p3

    .line 127
    .local v2, "sampleFrequency":I
    if-ne p2, v4, :cond_2

    move v3, v1

    .line 128
    .local v3, "channelConfig":I
    :goto_1
    const/16 v0, 0x10

    if-ne p1, v0, :cond_3

    .line 130
    .local v4, "audioFormat":I
    :goto_2
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    .line 134
    .local v5, "bufferSize":I
    sget-boolean v0, Lcom/glu/android/Device;->HTC_VISION:Z

    if-eqz v0, :cond_1

    .line 135
    mul-int/lit8 v5, v5, 0x2

    .line 137
    :cond_1
    new-instance v0, Lcom/glu/android/DeviceTrack;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/glu/android/DeviceTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    .line 144
    iget v0, p0, Lcom/glu/android/DeviceSound;->m_pcmVolumeZeroToTen:I

    invoke-virtual {p0, v0}, Lcom/glu/android/DeviceSound;->setVolume(I)V

    .line 147
    invoke-virtual {p0}, Lcom/glu/android/DeviceSound;->enableMP3()V

    .line 150
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    new-instance v1, Lcom/glu/android/DeviceSound$1;

    invoke-direct {v1, p0}, Lcom/glu/android/DeviceSound$1;-><init>(Lcom/glu/android/DeviceSound;)V

    invoke-virtual {v0, v1}, Lcom/glu/android/DeviceTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 161
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/glu/android/DeviceTrack;->setPositionNotificationPeriod(I)I

    goto :goto_0

    .end local v3    # "channelConfig":I
    .end local v4    # "audioFormat":I
    .end local v5    # "bufferSize":I
    :cond_2
    move v3, v4

    .line 127
    goto :goto_1

    .restart local v3    # "channelConfig":I
    :cond_3
    move v4, v1

    .line 128
    goto :goto_2
.end method

.method public isMP3Playing()Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 498
    const/4 v0, 0x0

    .line 500
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    invoke-virtual {v0}, Lcom/glu/android/DeviceTrack;->pause()V

    .line 196
    invoke-virtual {p0}, Lcom/glu/android/DeviceSound;->pauseMP3()V

    goto :goto_0
.end method

.method public pauseAndDisableMP3()V
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/glu/android/DeviceSound;->pauseMP3()V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_mp3Enabled:Z

    .line 406
    return-void
.end method

.method public pauseMP3()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_mp3IsPaused:Z

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_mp3IsPaused:Z

    goto :goto_0
.end method

.method public playMP3(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "loop"    # Z

    .prologue
    const/4 v6, 0x0

    .line 316
    invoke-static {}, Lcom/glu/android/DeviceSound;->isOEMAudioPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/glu/android/DeviceSound;->m_soundForcedByUser:Z

    if-nez v3, :cond_1

    .line 318
    const-string v3, "Attempted to play an MP3 while OEM music playing."

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v3, p0, Lcom/glu/android/DeviceSound;->m_lastSoundPlayed:Ljava/lang/String;

    invoke-static {v3}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_2

    .line 324
    iget-object v3, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 326
    const-string v3, "Attempted to play an MP3 already playing."

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_2
    iget-boolean v3, p0, Lcom/glu/android/DeviceSound;->m_mp3Enabled:Z

    if-eqz v3, :cond_0

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/glu/android/DeviceSound;->stopAndDestroyMP3()V

    .line 337
    invoke-static {p1}, Lcom/glu/android/GluUtil;->findMediaResourceFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 338
    .local v2, "soundFile":Ljava/io/File;
    if-nez v2, :cond_4

    .line 340
    const-string v3, "Sound file not found on any of the potential paths. (local and SD)"

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_4
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 345
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    .line 346
    iget-object v3, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 347
    iget-object v3, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 348
    iget-object v3, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 349
    iget-object v3, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    iget v4, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    iget v5, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 351
    iget-object v3, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 353
    iput-object p1, p0, Lcom/glu/android/DeviceSound;->m_lastSoundPlayed:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MP3 playing failed. Maybe file\'s corrupt? TODO: Should delete file, have user re-download?\nExists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 356
    iput-object v6, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    .line 357
    iput-object v6, p0, Lcom/glu/android/DeviceSound;->m_lastSoundPlayed:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public restart()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget v0, p0, Lcom/glu/android/DeviceSound;->m_nativeBitRate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/glu/android/DeviceSound;->determineIfAudioPlaying()V

    .line 230
    iget v0, p0, Lcom/glu/android/DeviceSound;->m_nativeBitRate:I

    iget v1, p0, Lcom/glu/android/DeviceSound;->m_nativeNumChannels:I

    iget v2, p0, Lcom/glu/android/DeviceSound;->m_nativeFrequency:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/glu/android/DeviceSound;->initAudioPlayback(III)V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    invoke-virtual {v0}, Lcom/glu/android/DeviceTrack;->play()V

    .line 206
    invoke-virtual {p0}, Lcom/glu/android/DeviceSound;->resumeMP3()V

    goto :goto_0
.end method

.method public resumeMP3()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 377
    iput-boolean v1, p0, Lcom/glu/android/DeviceSound;->m_mp3IsPaused:Z

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_mp3Enabled:Z

    if-eqz v0, :cond_0

    .line 383
    iget-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_mp3IsPaused:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 386
    iput-boolean v1, p0, Lcom/glu/android/DeviceSound;->m_mp3IsPaused:Z

    goto :goto_0
.end method

.method public seekToMP3(I)V
    .locals 1
    .param p1, "ms"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 398
    iget-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_mp3IsPaused:Z

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public setOEMAudioNotPlaying()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_oemAudioPlaying:Z

    .line 92
    return-void
.end method

.method public setVolume(I)V
    .locals 3
    .param p1, "zeroToTen"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/glu/android/DeviceSound;->m_pcmVolumeZeroToTen:I

    .line 237
    invoke-static {p1}, Lcom/glu/android/ModifiedVideoView;->setVolume(I)V

    .line 238
    iget-object v1, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    if-nez v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 241
    :cond_0
    int-to-float v1, p1

    iget-object v2, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    invoke-static {}, Lcom/glu/android/DeviceTrack;->getMaxVolume()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float v0, v1, v2

    .line 242
    .local v0, "val":F
    iget-object v1, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    invoke-static {}, Lcom/glu/android/DeviceTrack;->getMaxVolume()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 244
    const-string v1, "WARNING: Volume higher than max. Either a floating point error or game doesn\'t represent volume between 0 and 10."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    invoke-static {}, Lcom/glu/android/DeviceTrack;->getMaxVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    invoke-static {}, Lcom/glu/android/DeviceTrack;->getMaxVolume()F

    move-result v0

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    invoke-virtual {v1, v0, v0}, Lcom/glu/android/DeviceTrack;->setStereoVolume(FF)I

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/glu/android/DeviceSound;->pauseAndDisableMP3()V

    .line 214
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    invoke-virtual {v0}, Lcom/glu/android/DeviceTrack;->stop()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    goto :goto_0
.end method

.method public stopAndDestroyMP3()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/DeviceSound;->m_mp3IsPaused:Z

    .line 419
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 417
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/DeviceSound;->m_ourMP3:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public vibrationEvent(ZI)V
    .locals 3
    .param p1, "play"    # Z
    .param p2, "elapseMS"    # I

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method

.method public volumeDownMP3(I)V
    .locals 2
    .param p1, "whichSpeaker"    # I

    .prologue
    const v1, 0x3dcccccd    # 0.1f

    .line 451
    if-eqz p1, :cond_0

    if-nez p1, :cond_1

    .line 452
    :cond_0
    iget v0, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    .line 453
    :cond_1
    if-eqz p1, :cond_2

    if-nez p1, :cond_3

    .line 454
    :cond_2
    iget v0, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    .line 456
    :cond_3
    invoke-direct {p0}, Lcom/glu/android/DeviceSound;->correctAndSetVolume()V

    .line 457
    return-void
.end method

.method public volumeMaxMP3(I)V
    .locals 1
    .param p1, "whichSpeaker"    # I

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 477
    if-eqz p1, :cond_0

    if-nez p1, :cond_1

    .line 478
    :cond_0
    iput v0, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    .line 479
    :cond_1
    if-eqz p1, :cond_2

    if-nez p1, :cond_3

    .line 480
    :cond_2
    iput v0, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    .line 482
    :cond_3
    invoke-direct {p0}, Lcom/glu/android/DeviceSound;->correctAndSetVolume()V

    .line 483
    return-void
.end method

.method public volumeMinMP3(I)V
    .locals 1
    .param p1, "whichSpeaker"    # I

    .prologue
    const/4 v0, 0x0

    .line 464
    if-eqz p1, :cond_0

    if-nez p1, :cond_1

    .line 465
    :cond_0
    iput v0, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    .line 466
    :cond_1
    if-eqz p1, :cond_2

    if-nez p1, :cond_3

    .line 467
    :cond_2
    iput v0, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    .line 469
    :cond_3
    invoke-direct {p0}, Lcom/glu/android/DeviceSound;->correctAndSetVolume()V

    .line 470
    return-void
.end method

.method public volumeSetMP3(I)V
    .locals 2
    .param p1, "zeroToOneHundred"    # I

    .prologue
    .line 490
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    iput v0, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    .line 492
    invoke-direct {p0}, Lcom/glu/android/DeviceSound;->correctAndSetVolume()V

    .line 493
    return-void
.end method

.method public volumeUpMP3(I)V
    .locals 2
    .param p1, "whichSpeaker"    # I

    .prologue
    const v1, 0x3dcccccd    # 0.1f

    .line 438
    if-eqz p1, :cond_0

    if-nez p1, :cond_1

    .line 439
    :cond_0
    iget v0, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/glu/android/DeviceSound;->m_leftVolume:F

    .line 440
    :cond_1
    if-eqz p1, :cond_2

    if-nez p1, :cond_3

    .line 441
    :cond_2
    iget v0, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/glu/android/DeviceSound;->m_rightVolume:F

    .line 443
    :cond_3
    invoke-direct {p0}, Lcom/glu/android/DeviceSound;->correctAndSetVolume()V

    .line 444
    return-void
.end method

.method public writeAudioData([BI)V
    .locals 4
    .param p1, "audioData"    # [B
    .param p2, "len"    # I

    .prologue
    .line 166
    iget-object v2, p0, Lcom/glu/android/DeviceSound;->m_audioData:[B

    if-nez v2, :cond_0

    .line 167
    iput-object p1, p0, Lcom/glu/android/DeviceSound;->m_audioData:[B

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    if-nez v2, :cond_1

    .line 186
    :goto_0
    return-void

    .line 174
    :cond_1
    move-object v0, p1

    .line 176
    .local v0, "audioToUse":[B
    invoke-static {}, Lcom/glu/android/DeviceSound;->isOEMAudioPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/glu/android/DeviceSound;->m_soundForcedByUser:Z

    if-nez v2, :cond_2

    .line 179
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_emptyData:[B

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Lcom/glu/android/DeviceTrack;->write([BII)I

    move-result v1

    .line 183
    .local v1, "written":I
    iget v2, p0, Lcom/glu/android/DeviceSound;->bytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/glu/android/DeviceSound;->bytesWritten:I

    goto :goto_0
.end method
