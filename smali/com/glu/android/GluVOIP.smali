.class public Lcom/glu/android/GluVOIP;
.super Ljava/lang/Object;
.source "GluVOIP.java"


# static fields
.field public static final TEST_BIT_RATE:I = 0x8

.field public static final TEST_CHANNELS:I = 0x1

.field public static final TEST_FREQUENCY:I = 0x1f40

.field public static final VOICE_COMMUNICATION:I = 0x7

.field public static final VOICE_FILE_NAME:Ljava/lang/String; = "voice"

.field public static final VOIP_RECORD_TEST_PLAYBACK:I = 0x3

.field public static final VOIP_RECORD_TEST_RECORD:I = 0x1

.field public static final VOIP_RECORD_TEST_STOP_RECORDING:I = 0x2

.field public static instance:Lcom/glu/android/GluVOIP;


# instance fields
.field private m_mediaPlayer:Landroid/media/MediaPlayer;

.field private m_mediaRecorder:Landroid/media/MediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluVOIP;->instance:Lcom/glu/android/GluVOIP;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    .line 43
    iput-object v0, p0, Lcom/glu/android/GluVOIP;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 19
    sput-object p0, Lcom/glu/android/GluVOIP;->instance:Lcom/glu/android/GluVOIP;

    .line 20
    return-void
.end method

.method private getTestFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/glu/android/GluVOIP;->getTestFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getTestFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "voice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public connectToIP(Ljava/lang/String;)V
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provides you with virus laden warez."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public disconnectP2P()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    const-string v1, "Connection reset by enemy."

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public getBestAudioSource()I
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget v0, v0, Lcom/glu/android/GameLet;->m_platformVersionI:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 27
    const/4 v0, 0x7

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startStreamingVoiceToFile()V
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 48
    sget-object v1, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    const-string v2, "Media is recording. Stop it first."

    invoke-virtual {v1, v2}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    .line 55
    iget-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/glu/android/GluVOIP;->getBestAudioSource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 56
    iget-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 57
    iget-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 58
    iget-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v2, 0x100000

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 59
    iget-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/glu/android/GluVOIP;->getTestFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 71
    sget-object v1, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    const-string v2, "Starting stream..."

    invoke-virtual {v1, v2}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 64
    iget-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    .line 66
    sget-object v1, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream prepare failed... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopStreamingVoiceToFile()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    const-string v1, "Nothing to stop."

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 82
    iget-object v0, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 83
    iget-object v0, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 84
    sget-object v0, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    const-string v1, "Streaming stopped and ready."

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluVOIP;->m_mediaRecorder:Landroid/media/MediaRecorder;

    .line 87
    sget-object v0, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/glu/android/GluVOIP;->getTestFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public streamVoiceFromFile()V
    .locals 4

    .prologue
    .line 94
    :try_start_0
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {p0}, Lcom/glu/android/GluVOIP;->getTestFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 95
    iget-object v1, p0, Lcom/glu/android/GluVOIP;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 96
    sget-object v1, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    const-string v2, "started playing..."

    invoke-virtual {v1, v2}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playing failed... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/glu/android/Debug$Console;->logConsole(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
