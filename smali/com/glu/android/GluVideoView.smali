.class public Lcom/glu/android/GluVideoView;
.super Lcom/glu/android/ModifiedVideoView;
.source "GluVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field public static instance:Lcom/glu/android/GluVideoView;


# instance fields
.field public m_activeMovieFilename:Ljava/lang/String;

.field public m_deleteMe:Ljava/io/File;

.field public m_touchSkipPressed:Z

.field public m_touchSkippable:Z

.field public m_videoPendingOrActive:Z

.field public m_visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/glu/android/ModifiedVideoView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v1, p0, Lcom/glu/android/GluVideoView;->m_touchSkipPressed:Z

    .line 35
    iput-boolean v1, p0, Lcom/glu/android/GluVideoView;->m_videoPendingOrActive:Z

    .line 36
    iput-object v2, p0, Lcom/glu/android/GluVideoView;->m_activeMovieFilename:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_touchSkippable:Z

    .line 42
    iput-object v2, p0, Lcom/glu/android/GluVideoView;->m_deleteMe:Ljava/io/File;

    .line 122
    iput-boolean v1, p0, Lcom/glu/android/GluVideoView;->m_visible:Z

    .line 47
    invoke-direct {p0}, Lcom/glu/android/GluVideoView;->init()V

    .line 48
    return-void
.end method

.method private handleKeyEvent(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 220
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_touchSkippable:Z

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/glu/android/GluVideoView;->destroyVideo()V

    .line 225
    :cond_1
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    const-string v0, "Creating the video view..."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 54
    sput-object p0, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_videoPendingOrActive:Z

    .line 56
    invoke-virtual {p0, v1}, Lcom/glu/android/GluVideoView;->setFocusable(Z)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/glu/android/GluVideoView;->setFocusableInTouchMode(Z)V

    .line 58
    invoke-virtual {p0, p0}, Lcom/glu/android/GluVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 59
    invoke-virtual {p0, p0}, Lcom/glu/android/GluVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 60
    invoke-direct {p0}, Lcom/glu/android/GluVideoView;->setViewGone()V

    .line 61
    return-void
.end method

.method private setViewGone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/glu/android/GluVideoView;->setVisibility(I)V

    .line 145
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v0, :cond_2

    .line 147
    const-string v0, "setViewGone"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/glu/android/GluUtil;->shouldHideGameView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v0, v1}, Lcom/glu/android/GluView;->setVisibility(I)V

    .line 157
    :cond_0
    :goto_0
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0, v1}, Lcom/glu/android/GluCanvasOverlayGroup;->setVisibility(I)V

    .line 159
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->gameViewParent:Lcom/glu/android/GluFrameLayout;

    sget-object v1, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0, v1}, Lcom/glu/android/GluFrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 162
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->gameViewParent:Lcom/glu/android/GluFrameLayout;

    sget-object v1, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    invoke-virtual {v0, v1}, Lcom/glu/android/GluFrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 164
    :cond_1
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v0}, Lcom/glu/android/GluView;->requestFocus()Z

    .line 166
    :cond_2
    return-void

    .line 152
    :cond_3
    invoke-static {}, Lcom/glu/android/GluUtil;->shouldShrinkGameView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iput-boolean v1, p0, Lcom/glu/android/GluVideoView;->m_visible:Z

    .line 155
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v0}, Lcom/glu/android/GluView;->requestLayout()V

    goto :goto_0
.end method

.method private setViewVisible()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 126
    invoke-static {}, Lcom/glu/android/GluUtil;->shouldHideGameView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v0, v1}, Lcom/glu/android/GluView;->setVisibility(I)V

    .line 135
    :cond_0
    :goto_0
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v0, v1}, Lcom/glu/android/GluCanvasOverlayGroup;->setVisibility(I)V

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/glu/android/GluVideoView;->setVisibility(I)V

    .line 137
    const-string v0, "setViewVisible"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/glu/android/GluVideoView;->requestFocus()Z

    .line 140
    return-void

    .line 130
    :cond_1
    invoke-static {}, Lcom/glu/android/GluUtil;->shouldShrinkGameView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_visible:Z

    .line 133
    sget-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v0}, Lcom/glu/android/GluView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public destroyVideo()V
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_videoPendingOrActive:Z

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/glu/android/GluVideoView;->stopPlayback()V

    .line 186
    invoke-direct {p0}, Lcom/glu/android/GluVideoView;->setViewGone()V

    .line 187
    iget-object v0, p0, Lcom/glu/android/GluVideoView;->m_deleteMe:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/glu/android/GluVideoView;->m_deleteMe:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "GVV: Deleting tmp video file"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/glu/android/GluVideoView;->m_deleteMe:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluVideoView;->m_deleteMe:Ljava/io/File;

    .line 193
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_videoPendingOrActive:Z

    goto :goto_0
.end method

.method public initVideo()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_videoPendingOrActive:Z

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/glu/android/GluVideoView;->setViewVisible()V

    .line 175
    iget-object v0, p0, Lcom/glu/android/GluVideoView;->m_activeMovieFilename:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/glu/android/GluVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/glu/android/GluVideoView;->start()V

    .line 177
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 109
    const-string v0, "Video playback completed normally."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/glu/android/GluVideoView;->destroyVideo()V

    .line 112
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video playback failed with error: framework_err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  impl_err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/glu/android/GluVideoView;->destroyVideo()V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/glu/android/GluVideoView;->handleKeyEvent(I)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/glu/android/GluVideoView;->handleKeyEvent(I)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_touchSkipPressed:Z

    if-nez v0, :cond_1

    .line 95
    iput-boolean v1, p0, Lcom/glu/android/GluVideoView;->m_touchSkipPressed:Z

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_touchSkipPressed:Z

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_touchSkipPressed:Z

    .line 100
    iget-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_touchSkippable:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/glu/android/GluVideoView;->destroyVideo()V

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/glu/android/ModifiedVideoView;->onWindowVisibilityChanged(I)V

    .line 246
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/glu/android/GluVideoView;->destroyVideo()V

    .line 248
    :cond_1
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/glu/android/GluVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_videoPendingOrActive:Z

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/glu/android/GluVideoView;->pause()V

    goto :goto_0
.end method

.method public resumeVideo()V
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_videoPendingOrActive:Z

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/glu/android/GluVideoView;->start()V

    goto :goto_0
.end method

.method public setActiveMovie(Ljava/lang/String;)Z
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    sget-object v3, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v3, p1}, Lcom/glu/android/GluDownloadResMgr;->getSecondaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 66
    .local v0, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-static {v0}, Lcom/glu/android/GluUtil;->copyVideoToSDCard(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-static {}, Lcom/glu/android/GluUtil;->getSDVideoFile()Ljava/io/File;

    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/glu/android/GluVideoView;->m_deleteMe:Ljava/io/File;

    .line 76
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    iput-boolean v1, p0, Lcom/glu/android/GluVideoView;->m_videoPendingOrActive:Z

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/glu/android/GluVideoView;->m_activeMovieFilename:Ljava/lang/String;

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active movie filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/glu/android/GluVideoView;->m_activeMovieFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 88
    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    move v2, v1

    :cond_1
    return v2

    .line 84
    :cond_2
    iput-boolean v2, p0, Lcom/glu/android/GluVideoView;->m_videoPendingOrActive:Z

    .line 85
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/glu/android/GluVideoView;->m_activeMovieFilename:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move v1, v2

    .line 88
    goto :goto_1
.end method

.method public videoPlaybackActiveOrPending()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/glu/android/GluVideoView;->m_videoPendingOrActive:Z

    return v0
.end method
