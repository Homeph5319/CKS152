.class Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "ModifiedGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ModifiedGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Lcom/glu/android/ModifiedGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/glu/android/ModifiedGLSurfaceView;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 3
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 1057
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 9
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 949
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v4, v5, :cond_0

    .line 955
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 957
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-static {v4}, Lcom/glu/android/ModifiedGLSurfaceView;->access$500(Lcom/glu/android/ModifiedGLSurfaceView;)Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v4, v5, v6, v7}, Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 963
    :cond_0
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-static {v4}, Lcom/glu/android/ModifiedGLSurfaceView;->access$500(Lcom/glu/android/ModifiedGLSurfaceView;)Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v4, v5, v6, v7, p1}, Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 966
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v4, v5, :cond_4

    .line 967
    :cond_1
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 968
    .local v1, "error":I
    const/16 v4, 0x300b

    if-ne v1, v4, :cond_3

    .line 969
    const-string v4, "EglHelper"

    const-string v5, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v4, v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const/4 v2, 0x0

    .line 999
    .end local v1    # "error":I
    :cond_2
    :goto_0
    return-object v2

    .line 972
    .restart local v1    # "error":I
    :cond_3
    const-string v4, "createWindowSurface"

    invoke-direct {p0, v4}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 979
    .end local v1    # "error":I
    :cond_4
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v8, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 980
    const-string v4, "eglMakeCurrent"

    invoke-direct {p0, v4}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 983
    :cond_5
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    .line 984
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL;
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-static {v4}, Lcom/glu/android/ModifiedGLSurfaceView;->access$600(Lcom/glu/android/ModifiedGLSurfaceView;)Lcom/glu/android/ModifiedGLSurfaceView$GLWrapper;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 985
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-static {v4}, Lcom/glu/android/ModifiedGLSurfaceView;->access$600(Lcom/glu/android/ModifiedGLSurfaceView;)Lcom/glu/android/ModifiedGLSurfaceView$GLWrapper;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/glu/android/ModifiedGLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    .line 988
    :cond_6
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-static {v4}, Lcom/glu/android/ModifiedGLSurfaceView;->access$700(Lcom/glu/android/ModifiedGLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_2

    .line 989
    const/4 v0, 0x0

    .line 990
    .local v0, "configFlags":I
    const/4 v3, 0x0

    .line 991
    .local v3, "log":Ljava/io/Writer;
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-static {v4}, Lcom/glu/android/ModifiedGLSurfaceView;->access$700(Lcom/glu/android/ModifiedGLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    .line 992
    or-int/lit8 v0, v0, 0x1

    .line 994
    :cond_7
    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-static {v4}, Lcom/glu/android/ModifiedGLSurfaceView;->access$700(Lcom/glu/android/ModifiedGLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    .line 995
    new-instance v3, Lcom/glu/android/ModifiedGLSurfaceView$LogWriter;

    .end local v3    # "log":Ljava/io/Writer;
    invoke-direct {v3}, Lcom/glu/android/ModifiedGLSurfaceView$LogWriter;-><init>()V

    .line 997
    .restart local v3    # "log":Ljava/io/Writer;
    :cond_8
    invoke-static {v2, v0, v3}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    goto :goto_0
.end method

.method public destroySurface()V
    .locals 5

    .prologue
    .line 1034
    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySurface()  tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1039
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-static {v0}, Lcom/glu/android/ModifiedGLSurfaceView;->access$500(Lcom/glu/android/ModifiedGLSurfaceView;)Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/glu/android/ModifiedGLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1040
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1042
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1045
    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish() tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-static {v0}, Lcom/glu/android/ModifiedGLSurfaceView;->access$400(Lcom/glu/android/ModifiedGLSurfaceView;)Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1048
    iput-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1052
    iput-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1054
    :cond_1
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 908
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 913
    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 915
    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_0

    .line 916
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglGetDisplay failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 922
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 923
    .local v0, "version":[I
    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 924
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 926
    :cond_1
    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-static {v1}, Lcom/glu/android/ModifiedGLSurfaceView;->access$300(Lcom/glu/android/ModifiedGLSurfaceView;)Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;

    move-result-object v1

    iget-object v2, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/glu/android/ModifiedGLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 932
    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-static {v1}, Lcom/glu/android/ModifiedGLSurfaceView;->access$400(Lcom/glu/android/ModifiedGLSurfaceView;)Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4}, Lcom/glu/android/ModifiedGLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 933
    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_3

    .line 934
    :cond_2
    const-string v1, "createContext"

    invoke-direct {p0, v1}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 937
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 938
    return-void
.end method

.method public swap()Z
    .locals 5

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1016
    .local v0, "error":I
    packed-switch v0, :pswitch_data_0

    .line 1026
    :pswitch_0
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1030
    .end local v0    # "error":I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1018
    .restart local v0    # "error":I
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1023
    :pswitch_2
    const-string v1, "EglHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x300b
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public verifyContext()Z
    .locals 3

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 1063
    .local v0, "currentContext":Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const/16 v2, 0x300e

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
