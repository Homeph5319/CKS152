.class public Lcom/glu/android/ModifiedGLSurfaceView;
.super Landroid/view/SurfaceView;
.source "ModifiedGLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/ModifiedGLSurfaceView$1;,
        Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;,
        Lcom/glu/android/ModifiedGLSurfaceView$LogWriter;,
        Lcom/glu/android/ModifiedGLSurfaceView$GLThread;,
        Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;,
        Lcom/glu/android/ModifiedGLSurfaceView$SimpleEGLConfigChooser;,
        Lcom/glu/android/ModifiedGLSurfaceView$ComponentSizeChooser;,
        Lcom/glu/android/ModifiedGLSurfaceView$BaseConfigChooser;,
        Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;,
        Lcom/glu/android/ModifiedGLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;,
        Lcom/glu/android/ModifiedGLSurfaceView$DefaultContextFactory;,
        Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;,
        Lcom/glu/android/ModifiedGLSurfaceView$Renderer;,
        Lcom/glu/android/ModifiedGLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final LOG_RENDERER:Z = true

.field private static final LOG_SURFACE:Z = true

.field private static final LOG_THREADS:Z = true

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sGLThreadManager:Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/glu/android/ModifiedGLSurfaceView$GLWrapper;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1651
    new-instance v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;-><init>(Lcom/glu/android/ModifiedGLSurfaceView$1;)V

    sput-object v0, Lcom/glu/android/ModifiedGLSurfaceView;->sGLThreadManager:Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mSizeChanged:Z

    .line 198
    invoke-direct {p0}, Lcom/glu/android/ModifiedGLSurfaceView;->init()V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mSizeChanged:Z

    .line 207
    invoke-direct {p0}, Lcom/glu/android/ModifiedGLSurfaceView;->init()V

    .line 208
    return-void
.end method

.method static synthetic access$200(Lcom/glu/android/ModifiedGLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedGLSurfaceView;

    .prologue
    .line 150
    iget v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/glu/android/ModifiedGLSurfaceView;)Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedGLSurfaceView;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLConfigChooser:Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/glu/android/ModifiedGLSurfaceView;)Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedGLSurfaceView;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLContextFactory:Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/glu/android/ModifiedGLSurfaceView;)Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedGLSurfaceView;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/glu/android/ModifiedGLSurfaceView;)Lcom/glu/android/ModifiedGLSurfaceView$GLWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedGLSurfaceView;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLWrapper:Lcom/glu/android/ModifiedGLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/glu/android/ModifiedGLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedGLSurfaceView;

    .prologue
    .line 150
    iget v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/glu/android/ModifiedGLSurfaceView;->sGLThreadManager:Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/glu/android/ModifiedGLSurfaceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/ModifiedGLSurfaceView;

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$902(Lcom/glu/android/ModifiedGLSurfaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedGLSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mSizeChanged:Z

    return p1
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 1570
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1573
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/glu/android/ModifiedGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 214
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 215
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 217
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public killOldGLThread()V
    .locals 5

    .prologue
    .line 1664
    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1665
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v1, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->m_shouldDie:Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    .line 1666
    goto :goto_0

    .line 1665
    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    throw v2

    .line 1666
    :goto_0
    invoke-virtual {v1}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->onResume()V

    .line 1667
    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-virtual {v1, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1668
    :goto_1
    return-void

    .line 1667
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 534
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 536
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->requestExitAndWait()V

    .line 537
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->onPause()V

    .line 486
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->onResume()V

    .line 498
    const-string v0, "GLView"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 521
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget v0, v0, Lcom/glu/android/GameLet;->m_platformVersionI:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    .line 524
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 513
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->requestRender()V

    .line 451
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mDebugFlags:I

    .line 247
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 376
    new-instance v0, Lcom/glu/android/ModifiedGLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/glu/android/ModifiedGLSurfaceView$ComponentSizeChooser;-><init>(Lcom/glu/android/ModifiedGLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/glu/android/ModifiedGLSurfaceView;->setEGLConfigChooser(Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;)V

    .line 378
    return-void
.end method

.method public setEGLConfigChooser(Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/glu/android/ModifiedGLSurfaceView;->checkRenderThreadState()V

    .line 340
    iput-object p1, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLConfigChooser:Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;

    .line 341
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 358
    new-instance v0, Lcom/glu/android/ModifiedGLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/glu/android/ModifiedGLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/glu/android/ModifiedGLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/glu/android/ModifiedGLSurfaceView;->setEGLConfigChooser(Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;)V

    .line 359
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/glu/android/ModifiedGLSurfaceView;->checkRenderThreadState()V

    .line 408
    iput p1, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLContextClientVersion:I

    .line 409
    return-void
.end method

.method public setEGLContextFactory(Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/glu/android/ModifiedGLSurfaceView;->checkRenderThreadState()V

    .line 310
    iput-object p1, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLContextFactory:Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;

    .line 311
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/glu/android/ModifiedGLSurfaceView;->checkRenderThreadState()V

    .line 324
    iput-object p1, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;

    .line 325
    return-void
.end method

.method public setGLWrapper(Lcom/glu/android/ModifiedGLSurfaceView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lcom/glu/android/ModifiedGLSurfaceView$GLWrapper;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLWrapper:Lcom/glu/android/ModifiedGLSurfaceView$GLWrapper;

    .line 234
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->setRenderMode(I)V

    .line 429
    return-void
.end method

.method public setRenderer(Lcom/glu/android/ModifiedGLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Lcom/glu/android/ModifiedGLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-direct {p0}, Lcom/glu/android/ModifiedGLSurfaceView;->checkRenderThreadState()V

    .line 285
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLConfigChooser:Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/glu/android/ModifiedGLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/glu/android/ModifiedGLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/glu/android/ModifiedGLSurfaceView;Z)V

    iput-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLConfigChooser:Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLContextFactory:Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Lcom/glu/android/ModifiedGLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/glu/android/ModifiedGLSurfaceView$DefaultContextFactory;-><init>(Lcom/glu/android/ModifiedGLSurfaceView;Lcom/glu/android/ModifiedGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLContextFactory:Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 292
    new-instance v0, Lcom/glu/android/ModifiedGLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/glu/android/ModifiedGLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/glu/android/ModifiedGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;

    .line 294
    :cond_2
    new-instance v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;-><init>(Lcom/glu/android/ModifiedGLSurfaceView;Lcom/glu/android/ModifiedGLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    .line 295
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->start()V

    .line 296
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1
    .param p1, "safeMode"    # Z

    .prologue
    .line 502
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->setSafeMode(Z)V

    .line 503
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->onWindowResize(II)V

    .line 476
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->surfaceCreated()V

    .line 459
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView;->mGLThread:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 468
    return-void
.end method
