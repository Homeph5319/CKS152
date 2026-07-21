.class public Lcom/glu/android/GameRenderer;
.super Ljava/lang/Object;
.source "GameRenderer.java"

# interfaces
.implements Lcom/glu/android/ModifiedGLSurfaceView$Renderer;


# static fields
.field public static final MAX_DELTA_TIME:I = 0x14d

.field public static final MAX_TICK:I = 0x0

.field public static final THROTTLEhZ:I = 0x1e

.field public static final THROTTLEms:I = 0x21

.field public static instance:Lcom/glu/android/GameRenderer;

.field public static final sleepPerTick:I


# instance fields
.field public final SPECIAL_INTERRUPT_HANDLING_LOCK:Ljava/lang/Object;

.field public height:I

.field public lastTickTime:J

.field public m_appDone:Z

.field public m_drawThreadInNative:Z

.field public m_hasSurface:Z

.field public m_immediateSaveAfterTick:Z

.field public numTicks:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GameRenderer;->instance:Lcom/glu/android/GameRenderer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glu/android/GameRenderer;->lastTickTime:J

    .line 20
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/glu/android/GameRenderer;->width:I

    .line 21
    const/16 v0, 0x140

    iput v0, p0, Lcom/glu/android/GameRenderer;->height:I

    .line 24
    iput-boolean v2, p0, Lcom/glu/android/GameRenderer;->m_appDone:Z

    .line 35
    iput v2, p0, Lcom/glu/android/GameRenderer;->numTicks:I

    .line 39
    iput-boolean v2, p0, Lcom/glu/android/GameRenderer;->m_hasSurface:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GameRenderer;->SPECIAL_INTERRUPT_HANDLING_LOCK:Ljava/lang/Object;

    .line 48
    iput-boolean v2, p0, Lcom/glu/android/GameRenderer;->m_drawThreadInNative:Z

    .line 49
    iput-boolean v2, p0, Lcom/glu/android/GameRenderer;->m_immediateSaveAfterTick:Z

    .line 43
    sput-object p0, Lcom/glu/android/GameRenderer;->instance:Lcom/glu/android/GameRenderer;

    .line 44
    return-void
.end method

.method public static sdDialogCallback(I)V
    .locals 2
    .param p0, "which"    # I

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdDialogCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 284
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 286
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->handlerCloseModalDialog()V

    .line 298
    :goto_0
    return-void

    .line 288
    :cond_0
    const/4 v0, -0x2

    if-ne p0, v0, :cond_1

    .line 290
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->finishApp()V

    goto :goto_0

    .line 292
    :cond_1
    const/4 v0, -0x3

    if-ne p0, v0, :cond_2

    .line 294
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->handlerCloseModalDialog()V

    goto :goto_0

    .line 297
    :cond_2
    const-string v0, "Magical button pressed! wtf"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18
    .param p1, "arg0"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/GameRenderer;->m_appDone:Z

    if-eqz v12, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v12, v12, Lcom/glu/android/GameLet;->m_destroyQueued:Z

    if-eqz v12, :cond_2

    .line 59
    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/glu/android/GameLet;->destroyedFromAndroid:Z

    .line 61
    const/4 v12, 0x3

    invoke-static {v12}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    .line 63
    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v12}, Lcom/glu/android/GameLet;->finishApp()V

    .line 65
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/GameRenderer;->m_appDone:Z

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 73
    .local v1, "context":Ljavax/microedition/khronos/egl/EGL10;
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v12

    const/16 v13, 0x300e

    if-eq v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/GameRenderer;->m_hasSurface:Z

    if-nez v12, :cond_4

    .line 75
    :cond_3
    const-string v12, "Context lost OR surface unavavilable."

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 76
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/GameRenderer;->m_hasSurface:Z

    goto :goto_0

    .line 80
    :cond_4
    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v12, v12, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    if-eqz v12, :cond_6

    .line 82
    const/4 v9, 0x0

    .line 86
    .local v9, "sleepCount":I
    :cond_5
    const/4 v12, 0x6

    if-eq v9, v12, :cond_0

    .line 89
    const-wide/16 v12, 0x14d

    invoke-static {v12, v13}, Lcom/glu/android/GluUtil;->sleep(J)V

    .line 90
    add-int/lit8 v9, v9, 0x1

    .line 91
    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v12, v12, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    if-nez v12, :cond_5

    .line 95
    .end local v9    # "sleepCount":I
    :cond_6
    const/16 v10, 0x1e

    .line 97
    .local v10, "throttleHzToUse":I
    sget-object v12, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    if-eqz v12, :cond_7

    sget-object v12, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    invoke-virtual {v12}, Lcom/glu/android/GluVideoView;->videoPlaybackActiveOrPending()Z

    move-result v12

    if-nez v12, :cond_8

    :cond_7
    sget-object v12, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    if-eqz v12, :cond_c

    sget-object v12, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/glu/android/GluCanvasOverlayGroup;->isViewVisible(I)Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_8
    const/4 v7, 0x0

    .line 98
    .local v7, "shouldPaint":I
    :goto_1
    const/16 v11, 0x21

    .line 104
    .local v11, "throttleMSToUse":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/GameRenderer;->numTicks:I

    if-ltz v12, :cond_9

    .line 107
    :cond_9
    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v12, v12, Lcom/glu/android/GameLet;->m_JNIinit:Z

    if-eqz v12, :cond_13

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 111
    .local v2, "curTime":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/glu/android/GameRenderer;->lastTickTime:J

    sub-long v13, v2, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/GameRenderer;->numTicks:I

    if-nez v12, :cond_d

    const/4 v12, 0x0

    :goto_2
    int-to-long v15, v12

    sub-long v5, v13, v15

    .line 113
    .local v5, "deltaMS":J
    sget-object v12, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    invoke-virtual {v12, v5, v6}, Lcom/glu/android/Debug$Console;->logFPS(J)V

    .line 116
    const-wide/16 v12, 0x21

    cmp-long v12, v5, v12

    if-gez v12, :cond_a

    .line 118
    const-wide/16 v12, 0x21

    sub-long/2addr v12, v5

    invoke-static {v12, v13}, Lcom/glu/android/GluUtil;->sleep(J)V

    .line 119
    const-wide/16 v5, 0x21

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    :cond_a
    sget-object v12, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    invoke-virtual {v12}, Lcom/glu/android/Debug$Console;->getFPSDelay()I

    move-result v4

    .line 125
    .local v4, "debugDelay":I
    :cond_b
    :goto_3
    if-lez v4, :cond_f

    .line 127
    const/16 v12, 0x1f4

    if-le v4, v12, :cond_e

    const/16 v8, 0x1f4

    .line 128
    .local v8, "sleep":I
    :goto_4
    int-to-long v12, v8

    invoke-static {v12, v13}, Lcom/glu/android/GluUtil;->sleep(J)V

    .line 129
    sub-int/2addr v4, v8

    .line 130
    sget-object v12, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    invoke-virtual {v12}, Lcom/glu/android/Debug$Console;->getFPSDelay()I

    move-result v12

    if-le v4, v12, :cond_b

    .line 131
    sget-object v12, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    invoke-virtual {v12}, Lcom/glu/android/Debug$Console;->getFPSDelay()I

    move-result v4

    goto :goto_3

    .line 97
    .end local v2    # "curTime":J
    .end local v4    # "debugDelay":I
    .end local v5    # "deltaMS":J
    .end local v7    # "shouldPaint":I
    .end local v8    # "sleep":I
    .end local v11    # "throttleMSToUse":I
    :cond_c
    const/4 v7, 0x1

    goto :goto_1

    .line 111
    .restart local v2    # "curTime":J
    .restart local v7    # "shouldPaint":I
    .restart local v11    # "throttleMSToUse":I
    :cond_d
    const/4 v12, 0x0

    goto :goto_2

    .restart local v4    # "debugDelay":I
    .restart local v5    # "deltaMS":J
    :cond_e
    move v8, v4

    .line 127
    goto :goto_4

    .line 135
    :cond_f
    :goto_5
    sget-object v12, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    invoke-virtual {v12}, Lcom/glu/android/Debug$Console;->isTickStopped()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 136
    const-wide/16 v12, 0x64

    invoke-static {v12, v13}, Lcom/glu/android/GluUtil;->sleep(J)V

    goto :goto_5

    .line 139
    :cond_10
    const-wide/16 v12, 0x14d

    cmp-long v12, v5, v12

    if-lez v12, :cond_11

    .line 141
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Excessive tick "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms culled to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x14d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 142
    const-wide/16 v5, 0x14d

    .line 146
    :cond_11
    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v12, :cond_0

    .line 150
    invoke-static {}, Lcom/glu/android/GluUtil;->resFileExists()Z

    move-result v12

    if-nez v12, :cond_14

    .line 152
    invoke-static {}, Lcom/glu/android/GluUtil;->isModalDialogOpen()Z

    move-result v12

    if-nez v12, :cond_12

    .line 154
    const/high16 v12, 0x7f070000

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f07003b

    invoke-static {v13}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f07003c

    invoke-static {v14}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f07003d

    invoke-static {v15}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "GluCallbacks"

    const-string v17, "sdDialogCallback"

    invoke-static/range {v16 .. v17}, Lcom/glu/android/GluUtil;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v16

    invoke-static/range {v12 .. v16}, Lcom/glu/android/GluUtil;->openModalDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 173
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/glu/android/GameRenderer;->lastTickTime:J

    .line 176
    .end local v2    # "curTime":J
    .end local v4    # "debugDelay":I
    .end local v5    # "deltaMS":J
    :cond_13
    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/GameRenderer;->numTicks:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/glu/android/GameRenderer;->numTicks:I

    goto/16 :goto_0

    .line 161
    .restart local v2    # "curTime":J
    .restart local v4    # "debugDelay":I
    .restart local v5    # "deltaMS":J
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/glu/android/GameRenderer;->SPECIAL_INTERRUPT_HANDLING_LOCK:Ljava/lang/Object;

    monitor-enter v13

    const/4 v12, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/GameRenderer;->m_drawThreadInNative:Z

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v12}, Lcom/glu/android/GameLet;->reportKeyboardState()V

    .line 163
    long-to-int v12, v5

    invoke-static {v12, v7}, Lcom/glu/android/GluJNI;->tickAndDraw(II)V

    .line 164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/glu/android/GameRenderer;->SPECIAL_INTERRUPT_HANDLING_LOCK:Ljava/lang/Object;

    monitor-enter v13

    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/GameRenderer;->m_drawThreadInNative:Z

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/GameRenderer;->m_immediateSaveAfterTick:Z

    if-eqz v12, :cond_12

    .line 167
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/GameRenderer;->m_immediateSaveAfterTick:Z

    .line 168
    const/16 v12, 0x9

    invoke-static {v12}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    goto :goto_6

    .line 161
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 164
    :catchall_1
    move-exception v12

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v12
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 20
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "_width"    # I
    .param p3, "_height"    # I

    .prologue
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "~~ onSurfaceChanged(gl, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 206
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/glu/android/GameRenderer;->width:I

    .line 207
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/glu/android/GameRenderer;->height:I

    .line 209
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v2, v2, Lcom/glu/android/GameLet;->m_JNIinit:Z

    if-nez v2, :cond_0

    .line 211
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/glu/android/GameLet;->m_JNIinit:Z

    .line 218
    :try_start_0
    invoke-static {}, Lcom/glu/android/GluJNI;->initResFileJ()I

    move-result v18

    .line 220
    .local v18, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource file offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/glu/android/GameRenderer;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/glu/android/GameRenderer;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 224
    sget-object v2, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    invoke-virtual {v2}, Lcom/glu/android/GluFBConnect;->init()V

    .line 226
    const-string v2, "before init"

    invoke-static {v2}, Lcom/glu/android/Debug;->printFreeMemory(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget v2, v0, Lcom/glu/android/GameRenderer;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/glu/android/GameRenderer;->height:I

    const/16 v4, 0x800

    sget-object v5, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_locale:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v5

    sget-object v6, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v6, v6, Lcom/glu/android/GameLet;->m_language:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v6

    sget-object v7, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v7, v7, Lcom/glu/android/GameLet;->m_deviceID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v7

    sget-object v8, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v8, v8, Lcom/glu/android/GameLet;->m_versionMajor:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v8

    sget-object v9, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v9, v9, Lcom/glu/android/GameLet;->m_versionMinor:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v9

    sget-object v10, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v10, v10, Lcom/glu/android/GameLet;->m_versionMicro:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v10

    sget-object v11, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v11, v11, Lcom/glu/android/GameLet;->m_platformVersion:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v11

    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v12, v12, Lcom/glu/android/GameLet;->m_timezone:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v12

    sget-object v13, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v13, v13, Lcom/glu/android/GameLet;->m_deviceModel:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v13

    sget-object v14, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v14, v14, Lcom/glu/android/GameLet;->m_packageID:Ljava/lang/String;

    invoke-static {v14}, Lcom/glu/android/GluUtil;->stripPackagePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v14

    sget-object v15, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v15, v15, Lcom/glu/android/GameLet;->m_countryCode:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v15

    sget-object v16, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_platformVersionNice:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->charArrayToByteArray([CZ)[B

    move-result-object v16

    invoke-static/range {v2 .. v16}, Lcom/glu/android/GluJNI;->initNativeLibrary(III[B[B[B[B[B[B[B[B[B[B[B[B)I

    move-result v18

    .line 241
    const-string v2, "after init"

    invoke-static {v2}, Lcom/glu/android/Debug;->printFreeMemory(Ljava/lang/String;)V

    .line 243
    const/16 v2, -0x1fa

    move/from16 v0, v18

    if-ne v0, v2, :cond_1

    .line 244
    const-string v2, "ERROR: Could not create applet instance."

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 250
    :goto_0
    if-eqz v18, :cond_3

    .line 273
    .end local v18    # "result":I
    :cond_0
    :goto_1
    return-void

    .line 245
    .restart local v18    # "result":I
    :cond_1
    const/16 v2, -0x1f9

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    .line 246
    const-string v2, "ERROR: Could not load mspace."

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    .end local v18    # "result":I
    :catch_0
    move-exception v17

    .line 266
    .local v17, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 268
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to load native libraries!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    .end local v17    # "ex":Ljava/lang/Exception;
    .restart local v18    # "result":I
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_3
    const-string v2, "Native library loaded successfully!"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/glu/android/GameRenderer;->lastTickTime:J

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GameRenderer;->m_hasSurface:Z

    .line 278
    return-void
.end method

.method public onSurfaceLost()V
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    invoke-static {}, Lcom/glu/android/Device;->isLowHeapVGA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "Surface lost. Queueing destroy."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->queueDestroy()V

    .line 322
    :goto_0
    return-void

    .line 312
    :cond_0
    const-string v0, "+++++++++++++++++++++++++++++++++++++++++++++++++++\nSurface lost. Native will need to restore textures.\n+++++++++++++++++++++++++++++++++++++++++++++++++++\n"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    goto :goto_0

    .line 320
    :cond_1
    const-string v0, "Surface lost, probably initial."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateTime(I)V
    .locals 5
    .param p1, "ms"    # I

    .prologue
    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "~~ updateTime("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 185
    if-lez p1, :cond_0

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    .local v0, "curTime":J
    iget-wide v3, p0, Lcom/glu/android/GameRenderer;->lastTickTime:J

    sub-long v3, v0, v3

    long-to-int v3, v3

    sub-int v2, p1, v3

    .line 189
    .local v2, "sleepTime":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sleeping for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms     at:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 190
    if-lez v2, :cond_1

    .line 191
    int-to-long v3, v2

    invoke-static {v3, v4}, Lcom/glu/android/GluUtil;->sleep(J)V

    .line 195
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "done sleeping at:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 197
    iget-wide v3, p0, Lcom/glu/android/GameRenderer;->lastTickTime:J

    sub-long v3, v0, v3

    long-to-int v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Lcom/glu/android/GluJNI;->updateTime(I)V

    .line 198
    iput-wide v0, p0, Lcom/glu/android/GameRenderer;->lastTickTime:J

    .line 200
    .end local v0    # "curTime":J
    .end local v2    # "sleepTime":I
    :cond_0
    return-void

    .line 193
    .restart local v0    # "curTime":J
    .restart local v2    # "sleepTime":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
