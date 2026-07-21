.class Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "ModifiedGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ModifiedGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static final kGLES_20:I = 0x20000


# instance fields
.field private mEglOwner:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

.field private mGLContextCount:I

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glu/android/ModifiedGLSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/glu/android/ModifiedGLSurfaceView$1;

    .prologue
    .line 1575
    invoke-direct {p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1631
    iget-boolean v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1632
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1633
    iget v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    .line 1634
    iput-boolean v2, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1636
    :cond_0
    iput-boolean v2, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1639
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 1619
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v1, :cond_1

    .line 1620
    invoke-direct {p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1621
    iget v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v2, 0x20000

    if-ge v1, v2, :cond_0

    .line 1622
    const/16 v1, 0x1f01

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1623
    .local v0, "renderer":Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1624
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1626
    .end local v0    # "renderer":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1628
    :cond_1
    monitor-exit p0

    return-void

    .line 1619
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglSurfaceLocked(Lcom/glu/android/ModifiedGLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    .line 1615
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1616
    return-void
.end method

.method public declared-synchronized threadExiting(Lcom/glu/android/ModifiedGLSurfaceView$GLThread;)V
    .locals 4
    .param p1, "thread"    # Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    .prologue
    .line 1579
    monitor-enter p0

    :try_start_0
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->access$1002(Lcom/glu/android/ModifiedGLSurfaceView$GLThread;Z)Z

    .line 1582
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    .line 1585
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    monitor-exit p0

    return-void

    .line 1579
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglSurfaceLocked(Lcom/glu/android/ModifiedGLSurfaceView$GLThread;)Z
    .locals 2
    .param p1, "thread"    # Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    .prologue
    const/4 v0, 0x1

    .line 1596
    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    if-nez v1, :cond_2

    .line 1597
    :cond_0
    iput-object p1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/glu/android/ModifiedGLSurfaceView$GLThread;

    .line 1598
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1605
    :cond_1
    :goto_0
    return v0

    .line 1601
    :cond_2
    invoke-direct {p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1602
    iget-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1605
    const/4 v0, 0x0

    goto :goto_0
.end method
