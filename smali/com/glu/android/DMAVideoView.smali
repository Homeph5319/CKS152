.class public Lcom/glu/android/DMAVideoView;
.super Lcom/glu/android/ModifiedVideoView;
.source "DMAVideoView.java"


# static fields
.field public static instance:Lcom/glu/android/DMAVideoView;


# instance fields
.field public m_touchPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/DMAVideoView;->instance:Lcom/glu/android/DMAVideoView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/glu/android/ModifiedVideoView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/DMAVideoView;->m_touchPressed:Z

    .line 36
    invoke-virtual {p0}, Lcom/glu/android/DMAVideoView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/glu/android/ModifiedVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/DMAVideoView;->m_touchPressed:Z

    .line 30
    invoke-virtual {p0}, Lcom/glu/android/DMAVideoView;->init()V

    .line 31
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 41
    sput-object p0, Lcom/glu/android/DMAVideoView;->instance:Lcom/glu/android/DMAVideoView;

    .line 42
    sget-object v0, Lcom/glu/android/DeviceMovieActivity;->instance:Lcom/glu/android/DeviceMovieActivity;

    invoke-virtual {p0, v0}, Lcom/glu/android/DMAVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 43
    sget-object v0, Lcom/glu/android/DeviceMovieActivity;->instance:Lcom/glu/android/DeviceMovieActivity;

    invoke-virtual {p0, v0}, Lcom/glu/android/DMAVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 44
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iput-boolean v1, p0, Lcom/glu/android/DMAVideoView;->m_touchPressed:Z

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/DMAVideoView;->m_touchPressed:Z

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/DMAVideoView;->m_touchPressed:Z

    .line 54
    sget-object v0, Lcom/glu/android/DeviceMovieActivity;->instance:Lcom/glu/android/DeviceMovieActivity;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/glu/android/DeviceMovieActivity;->instance:Lcom/glu/android/DeviceMovieActivity;

    invoke-virtual {v0}, Lcom/glu/android/DeviceMovieActivity;->finishApp()V

    goto :goto_0
.end method
