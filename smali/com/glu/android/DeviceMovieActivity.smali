.class public Lcom/glu/android/DeviceMovieActivity;
.super Landroid/app/Activity;
.source "DeviceMovieActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field public static instance:Lcom/glu/android/DeviceMovieActivity;

.field public static m_activeMovie:Ljava/lang/String;

.field public static m_deleteMe:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/glu/android/DeviceMovieActivity;->m_activeMovie:Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/glu/android/DeviceMovieActivity;->m_deleteMe:Ljava/io/File;

    .line 54
    sput-object v0, Lcom/glu/android/DeviceMovieActivity;->instance:Lcom/glu/android/DeviceMovieActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getMovieFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v0, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v0, p0}, Lcom/glu/android/GluDownloadResMgr;->getSecondaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setActiveMovie(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-static {p0}, Lcom/glu/android/DeviceMovieActivity;->getMovieFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 30
    .local v0, "movieFile":Ljava/io/File;
    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v1

    .line 33
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    invoke-static {v0}, Lcom/glu/android/GluUtil;->copyVideoToSDCard(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-static {}, Lcom/glu/android/GluUtil;->getSDVideoFile()Ljava/io/File;

    move-result-object v0

    .line 41
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/glu/android/DeviceMovieActivity;->m_activeMovie:Ljava/lang/String;

    .line 42
    sput-object v0, Lcom/glu/android/DeviceMovieActivity;->m_deleteMe:Ljava/io/File;

    .line 43
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public finishApp()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "~~ DeviceMovieActivity.finishApp() called"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/glu/android/GameLet;->m_dmaVideoPending:Z

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/glu/android/DeviceMovieActivity;->finish()V

    .line 129
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/glu/android/DeviceMovieActivity;->finishApp()V

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    const-string v1, "~~ DeviceMovieActivity.onCreate"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sput-object p0, Lcom/glu/android/DeviceMovieActivity;->instance:Lcom/glu/android/DeviceMovieActivity;

    .line 62
    invoke-static {p0}, Lcom/glu/android/GluUtil;->doStandardActivityConfiguration(Landroid/app/Activity;)V

    .line 64
    new-instance v0, Lcom/glu/android/GluFrameLayout;

    invoke-direct {v0, p0}, Lcom/glu/android/GluFrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "tmp":Lcom/glu/android/GluFrameLayout;
    new-instance v1, Lcom/glu/android/DMAVideoView;

    invoke-direct {v1, p0}, Lcom/glu/android/DMAVideoView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/glu/android/GluFrameLayout;->addView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/glu/android/DeviceMovieActivity;->setContentView(Landroid/view/View;)V

    .line 67
    sget-object v1, Lcom/glu/android/DMAVideoView;->instance:Lcom/glu/android/DMAVideoView;

    sget-object v2, Lcom/glu/android/DeviceMovieActivity;->m_activeMovie:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/glu/android/DMAVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/glu/android/DMAVideoView;->instance:Lcom/glu/android/DMAVideoView;

    invoke-virtual {v1}, Lcom/glu/android/DMAVideoView;->start()V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    const-string v0, "~~ DeviceMovieActivity.onDestroy"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 93
    sput-object v2, Lcom/glu/android/DMAVideoView;->instance:Lcom/glu/android/DMAVideoView;

    .line 94
    sput-object v2, Lcom/glu/android/DeviceMovieActivity;->instance:Lcom/glu/android/DeviceMovieActivity;

    .line 95
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/glu/android/GameLet;->m_dmaVideoPending:Z

    .line 98
    :cond_0
    sget-object v0, Lcom/glu/android/DeviceMovieActivity;->m_deleteMe:Ljava/io/File;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/glu/android/DeviceMovieActivity;->m_deleteMe:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "DMA: Deleting tmp video file"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/glu/android/DeviceMovieActivity;->m_deleteMe:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 102
    sput-object v2, Lcom/glu/android/DeviceMovieActivity;->m_deleteMe:Ljava/io/File;

    .line 105
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/glu/android/DeviceMovieActivity;->finishApp()V

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "~~ DeviceMovieActivity.onPause"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 81
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 117
    const-string v0, "~~ DeviceMovieActivity.onRestart"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 120
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "~~ DeviceMovieActivity.onResume"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "~~ DeviceMovieActivity.onStart"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 75
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 110
    const-string v0, "~~ DeviceMovieActivity.onStop"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 113
    return-void
.end method
