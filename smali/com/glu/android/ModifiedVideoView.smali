.class public Lcom/glu/android/ModifiedVideoView;
.super Landroid/view/SurfaceView;
.source "ModifiedVideoView.java"


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field public static volume:F


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private m_oemAudioPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 568
    const v0, 0x3e99999a    # 0.3f

    sput v0, Lcom/glu/android/ModifiedVideoView;->volume:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->TAG:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    .line 74
    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mTargetState:I

    .line 77
    iput-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 78
    iput-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 197
    iput-boolean v1, p0, Lcom/glu/android/ModifiedVideoView;->m_oemAudioPlaying:Z

    .line 251
    new-instance v0, Lcom/glu/android/ModifiedVideoView$1;

    invoke-direct {v0, p0}, Lcom/glu/android/ModifiedVideoView$1;-><init>(Lcom/glu/android/ModifiedVideoView;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 262
    new-instance v0, Lcom/glu/android/ModifiedVideoView$2;

    invoke-direct {v0, p0}, Lcom/glu/android/ModifiedVideoView$2;-><init>(Lcom/glu/android/ModifiedVideoView;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 314
    new-instance v0, Lcom/glu/android/ModifiedVideoView$3;

    invoke-direct {v0, p0}, Lcom/glu/android/ModifiedVideoView$3;-><init>(Lcom/glu/android/ModifiedVideoView;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 325
    new-instance v0, Lcom/glu/android/ModifiedVideoView$4;

    invoke-direct {v0, p0}, Lcom/glu/android/ModifiedVideoView$4;-><init>(Lcom/glu/android/ModifiedVideoView;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 349
    new-instance v0, Lcom/glu/android/ModifiedVideoView$5;

    invoke-direct {v0, p0}, Lcom/glu/android/ModifiedVideoView$5;-><init>(Lcom/glu/android/ModifiedVideoView;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 391
    new-instance v0, Lcom/glu/android/ModifiedVideoView$6;

    invoke-direct {v0, p0}, Lcom/glu/android/ModifiedVideoView$6;-><init>(Lcom/glu/android/ModifiedVideoView;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 97
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView;->mContext:Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->initVideoView()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/glu/android/ModifiedVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView;->mContext:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->initVideoView()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->TAG:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    .line 74
    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mTargetState:I

    .line 77
    iput-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 78
    iput-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 197
    iput-boolean v1, p0, Lcom/glu/android/ModifiedVideoView;->m_oemAudioPlaying:Z

    .line 251
    new-instance v0, Lcom/glu/android/ModifiedVideoView$1;

    invoke-direct {v0, p0}, Lcom/glu/android/ModifiedVideoView$1;-><init>(Lcom/glu/android/ModifiedVideoView;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 262
    new-instance v0, Lcom/glu/android/ModifiedVideoView$2;

    invoke-direct {v0, p0}, Lcom/glu/android/ModifiedVideoView$2;-><init>(Lcom/glu/android/ModifiedVideoView;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 314
    new-instance v0, Lcom/glu/android/ModifiedVideoView$3;

    invoke-direct {v0, p0}, Lcom/glu/android/ModifiedVideoView$3;-><init>(Lcom/glu/android/ModifiedVideoView;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 325
    new-instance v0, Lcom/glu/android/ModifiedVideoView$4;

    invoke-direct {v0, p0}, Lcom/glu/android/ModifiedVideoView$4;-><init>(Lcom/glu/android/ModifiedVideoView;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 349
    new-instance v0, Lcom/glu/android/ModifiedVideoView$5;

    invoke-direct {v0, p0}, Lcom/glu/android/ModifiedVideoView$5;-><init>(Lcom/glu/android/ModifiedVideoView;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 391
    new-instance v0, Lcom/glu/android/ModifiedVideoView$6;

    invoke-direct {v0, p0}, Lcom/glu/android/ModifiedVideoView$6;-><init>(Lcom/glu/android/ModifiedVideoView;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 109
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView;->mContext:Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->initVideoView()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/glu/android/ModifiedVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;

    .prologue
    .line 53
    iget v0, p0, Lcom/glu/android/ModifiedVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/glu/android/ModifiedVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/glu/android/ModifiedVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/glu/android/ModifiedVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;

    .prologue
    .line 53
    iget v0, p0, Lcom/glu/android/ModifiedVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/glu/android/ModifiedVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;

    .prologue
    .line 53
    iget v0, p0, Lcom/glu/android/ModifiedVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/glu/android/ModifiedVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/glu/android/ModifiedVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$102(Lcom/glu/android/ModifiedVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/glu/android/ModifiedVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/glu/android/ModifiedVideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/glu/android/ModifiedVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1502(Lcom/glu/android/ModifiedVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/glu/android/ModifiedVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$1700(Lcom/glu/android/ModifiedVideoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/glu/android/ModifiedVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/glu/android/ModifiedVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$302(Lcom/glu/android/ModifiedVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/glu/android/ModifiedVideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$402(Lcom/glu/android/ModifiedVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/glu/android/ModifiedVideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$500(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/glu/android/ModifiedVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;

    .prologue
    .line 53
    iget v0, p0, Lcom/glu/android/ModifiedVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$800(Lcom/glu/android/ModifiedVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;

    .prologue
    .line 53
    iget v0, p0, Lcom/glu/android/ModifiedVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/glu/android/ModifiedVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/glu/android/ModifiedVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$900(Lcom/glu/android/ModifiedVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;

    .prologue
    .line 53
    iget v0, p0, Lcom/glu/android/ModifiedVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$902(Lcom/glu/android/ModifiedVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/glu/android/ModifiedVideoView;->mSurfaceHeight:I

    return p1
.end method

.method private attachMediaController()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method private static getRealVolume()F
    .locals 1

    .prologue
    .line 576
    invoke-static {}, Lcom/glu/android/DeviceSound;->isMP3Enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    const/4 v0, 0x0

    .line 579
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/glu/android/ModifiedVideoView;->volume:F

    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    iput v2, p0, Lcom/glu/android/ModifiedVideoView;->mVideoWidth:I

    .line 165
    iput v2, p0, Lcom/glu/android/ModifiedVideoView;->mVideoHeight:I

    .line 166
    invoke-virtual {p0}, Lcom/glu/android/ModifiedVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 167
    invoke-virtual {p0}, Lcom/glu/android/ModifiedVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 168
    invoke-virtual {p0, v3}, Lcom/glu/android/ModifiedVideoView;->setFocusable(Z)V

    .line 169
    invoke-virtual {p0, v3}, Lcom/glu/android/ModifiedVideoView;->setFocusableInTouchMode(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/glu/android/ModifiedVideoView;->requestFocus()Z

    .line 171
    iput v2, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    .line 172
    iput v2, p0, Lcom/glu/android/ModifiedVideoView;->mTargetState:I

    .line 173
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 548
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 200
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-direct {p0, v5}, Lcom/glu/android/ModifiedVideoView;->release(Z)V

    .line 214
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 215
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 216
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 217
    const/4 v1, -0x1

    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mDuration:I

    .line 218
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 219
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 220
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 221
    const/4 v1, 0x0

    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentBufferPercentage:I

    .line 222
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/glu/android/ModifiedVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 223
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 224
    invoke-static {}, Lcom/glu/android/DeviceSound;->isOEMAudioPlaying()Z

    move-result v1

    iput-boolean v1, p0, Lcom/glu/android/ModifiedVideoView;->m_oemAudioPlaying:Z

    .line 225
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 226
    sget-object v1, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v1}, Lcom/glu/android/DeviceSound;->setOEMAudioNotPlaying()V

    .line 227
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 228
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 231
    const/4 v1, 0x1

    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    .line 232
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/glu/android/ModifiedVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    iput v4, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    .line 236
    iput v4, p0, Lcom/glu/android/ModifiedVideoView;->mTargetState:I

    .line 237
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 239
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 240
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/glu/android/ModifiedVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    iput v4, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    .line 242
    iput v4, p0, Lcom/glu/android/ModifiedVideoView;->mTargetState:I

    .line 243
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 428
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 430
    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    .line 431
    if-eqz p1, :cond_0

    .line 432
    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mTargetState:I

    .line 435
    :cond_0
    return-void
.end method

.method public static setVolume(I)V
    .locals 2
    .param p0, "zeroToTen"    # I

    .prologue
    .line 571
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    sput v0, Lcom/glu/android/ModifiedVideoView;->volume:F

    .line 572
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 0

    .prologue
    .line 480
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/glu/android/ModifiedVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/glu/android/ModifiedVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/glu/android/ModifiedVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 542
    iget v0, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentBufferPercentage:I

    .line 544
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 524
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget v0, p0, Lcom/glu/android/ModifiedVideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 511
    iget v0, p0, Lcom/glu/android/ModifiedVideoView;->mDuration:I

    .line 517
    :goto_0
    return v0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/glu/android/ModifiedVideoView;->mDuration:I

    .line 514
    iget v0, p0, Lcom/glu/android/ModifiedVideoView;->mDuration:I

    goto :goto_0

    .line 516
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/glu/android/ModifiedVideoView;->mDuration:I

    .line 517
    iget v0, p0, Lcom/glu/android/ModifiedVideoView;->mDuration:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 453
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x18

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_1

    const/16 v1, 0x52

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 459
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 476
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 453
    .end local v0    # "isKeyCodeSupported":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 115
    iget v2, p0, Lcom/glu/android/ModifiedVideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/glu/android/ModifiedVideoView;->getDefaultSize(II)I

    move-result v1

    .line 116
    .local v1, "width":I
    iget v2, p0, Lcom/glu/android/ModifiedVideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/glu/android/ModifiedVideoView;->getDefaultSize(II)I

    move-result v0

    .line 117
    .local v0, "height":I
    iget v2, p0, Lcom/glu/android/ModifiedVideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/glu/android/ModifiedVideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 118
    iget v2, p0, Lcom/glu/android/ModifiedVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/glu/android/ModifiedVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 120
    iget v2, p0, Lcom/glu/android/ModifiedVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/glu/android/ModifiedVideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 131
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/glu/android/ModifiedVideoView;->setMeasuredDimension(II)V

    .line 132
    return-void

    .line 121
    :cond_1
    iget v2, p0, Lcom/glu/android/ModifiedVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/glu/android/ModifiedVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 123
    iget v2, p0, Lcom/glu/android/ModifiedVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/glu/android/ModifiedVideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 498
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 501
    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    .line 504
    :cond_0
    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mTargetState:I

    .line 505
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 135
    move v0, p1

    .line 136
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 137
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 139
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 160
    :goto_0
    return v0

    .line 144
    :sswitch_0
    move v0, p1

    .line 145
    goto :goto_0

    .line 152
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 153
    goto :goto_0

    .line 157
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 530
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/ModifiedVideoView;->mSeekWhenPrepared:I

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    iput p1, p0, Lcom/glu/android/ModifiedVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 376
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 389
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 365
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glu/android/ModifiedVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 177
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView;->mUri:Landroid/net/Uri;

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/ModifiedVideoView;->mSeekWhenPrepared:I

    .line 182
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->openVideo()V

    .line 183
    invoke-virtual {p0}, Lcom/glu/android/ModifiedVideoView;->requestLayout()V

    .line 184
    invoke-virtual {p0}, Lcom/glu/android/ModifiedVideoView;->invalidate()V

    .line 185
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 483
    invoke-direct {p0}, Lcom/glu/android/ModifiedVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/glu/android/ModifiedVideoView;->getRealVolume()F

    move-result v1

    invoke-static {}, Lcom/glu/android/ModifiedVideoView;->getRealVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 488
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 489
    iput v3, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    .line 494
    :cond_0
    iput v3, p0, Lcom/glu/android/ModifiedVideoView;->mTargetState:I

    .line 495
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 190
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/ModifiedVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 192
    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mCurrentState:I

    .line 193
    iput v1, p0, Lcom/glu/android/ModifiedVideoView;->mTargetState:I

    .line 195
    :cond_0
    return-void
.end method
