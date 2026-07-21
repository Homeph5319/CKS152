.class Lcom/glu/android/ModifiedGLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "ModifiedGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ModifiedGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mHasFocus:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/glu/android/ModifiedGLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mSafeMode:Z

.field private mShouldExit:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field public m_shouldDie:Z

.field final synthetic this$0:Lcom/glu/android/ModifiedGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/glu/android/ModifiedGLSurfaceView;Lcom/glu/android/ModifiedGLSurfaceView$Renderer;)V
    .locals 3
    .param p2, "renderer"    # Lcom/glu/android/ModifiedGLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1086
    iput-object p1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    .line 1087
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1084
    iput-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->m_shouldDie:Z

    .line 1524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1526
    iput-boolean v2, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHasFocus:Z

    .line 1527
    iput-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mSafeMode:Z

    .line 1088
    iput v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mWidth:I

    .line 1089
    iput v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHeight:I

    .line 1090
    iput-boolean v2, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1091
    iput v2, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRenderMode:I

    .line 1092
    iput-object p2, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRenderer:Lcom/glu/android/ModifiedGLSurfaceView$Renderer;

    .line 1093
    return-void
.end method

.method static synthetic access$1002(Lcom/glu/android/ModifiedGLSurfaceView$GLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/ModifiedGLSurfaceView$GLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 1083
    iput-boolean p1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1128
    new-instance v12, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-direct {v12, v13}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;-><init>(Lcom/glu/android/ModifiedGLSurfaceView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    .line 1129
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1130
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1132
    const/4 v6, 0x0

    .line 1133
    .local v6, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v1, 0x0

    .line 1134
    .local v1, "createEglSurface":Z
    const/4 v8, 0x0

    .line 1135
    .local v8, "sizeChanged":Z
    const/4 v11, 0x0

    .line 1136
    .local v11, "wantRenderNotification":Z
    const/4 v2, 0x0

    .line 1137
    .local v2, "doRenderNotification":Z
    const/4 v10, 0x0

    .line 1138
    .local v10, "w":I
    const/4 v7, 0x0

    .line 1139
    .local v7, "h":I
    const/4 v3, 0x0

    .line 1140
    .local v3, "event":Ljava/lang/Runnable;
    const/4 v5, 0x0

    .line 1142
    .local v5, "framesSinceResetHack":I
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1143
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->m_shouldDie:Z

    if-nez v12, :cond_2

    .line 1144
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v12, :cond_1

    .line 1145
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1339
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1343
    const-string v12, "finally cleanup"

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1344
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v13

    monitor-enter v13

    .line 1345
    const/4 v12, 0x1

    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->stopEglLocked(Z)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->finish()V

    .line 1347
    monitor-exit v13

    .line 1349
    :goto_2
    return-void

    .line 1347
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 1148
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1149
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/Runnable;

    move-object v3, v0

    .line 1256
    :cond_2
    :goto_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1258
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->m_shouldDie:Z

    if-eqz v12, :cond_f

    .line 1260
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Killing old instance\'s GL thread. tid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1339
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1343
    const-string v12, "finally cleanup"

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1344
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v13

    monitor-enter v13

    .line 1345
    const/4 v12, 0x1

    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->stopEglLocked(Z)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->finish()V

    .line 1347
    monitor-exit v13

    goto :goto_2

    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v12

    .line 1154
    :cond_3
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mPaused:Z

    if-eqz v12, :cond_4

    .line 1156
    const-string v12, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NOT releasing EGL surface because paused tid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v12, :cond_6

    .line 1164
    const-string v12, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "noticed surfaceView surface lost tid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v12, :cond_5

    .line 1167
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->stopEglLocked(Z)V

    .line 1169
    :cond_5
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1170
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1174
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v12, :cond_7

    .line 1176
    const-string v12, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "noticed surfaceView surface acquired tid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1179
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1182
    :cond_7
    if-eqz v2, :cond_8

    .line 1183
    const/4 v11, 0x0

    .line 1184
    const/4 v2, 0x0

    .line 1185
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1186
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1191
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mPaused:Z

    if-nez v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mWidth:I

    if-lez v12, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHeight:I

    if-lez v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRenderMode:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_e

    .line 1197
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v12, :cond_a

    .line 1198
    const-string v12, "no surface..."

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->verifyContext()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1201
    const-string v12, "context lost..."

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->finish()V

    .line 1203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRenderer:Lcom/glu/android/ModifiedGLSurfaceView$Renderer;

    invoke-interface {v12}, Lcom/glu/android/ModifiedGLSurfaceView$Renderer;->onSurfaceLost()V

    .line 1204
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1208
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v12, :cond_b

    .line 1210
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->tryAcquireEglSurfaceLocked(Lcom/glu/android/ModifiedGLSurfaceView$GLThread;)Z

    move-result v9

    .line 1211
    .local v9, "success":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "trying to acquire EGL surface... success="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1212
    if-eqz v9, :cond_b

    .line 1214
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1215
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->start()V

    .line 1217
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1221
    .end local v9    # "success":Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v12, :cond_c

    .line 1222
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1223
    const/4 v1, 0x1

    .line 1224
    const/4 v8, 0x1

    .line 1227
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v12, :cond_e

    .line 1228
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-static {v12}, Lcom/glu/android/ModifiedGLSurfaceView;->access$900(Lcom/glu/android/ModifiedGLSurfaceView;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1229
    const/4 v8, 0x1

    .line 1230
    move-object/from16 v0, p0

    iget v10, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mWidth:I

    .line 1231
    move-object/from16 v0, p0

    iget v7, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHeight:I

    .line 1232
    const/4 v11, 0x1

    .line 1241
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/glu/android/ModifiedGLSurfaceView;->access$902(Lcom/glu/android/ModifiedGLSurfaceView;Z)Z

    .line 1245
    :goto_4
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_3

    .line 1256
    :catchall_2
    move-exception v12

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1334
    :catch_0
    move-exception v4

    .line 1336
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_8
    const-string v12, "GluGame GLThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "something went wrong..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1339
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1343
    const-string v12, "finally cleanup"

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1344
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v13

    monitor-enter v13

    .line 1345
    const/4 v12, 0x1

    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->stopEglLocked(Z)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->finish()V

    .line 1347
    monitor-exit v13

    goto/16 :goto_2

    :catchall_3
    move-exception v12

    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v12

    .line 1243
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_d
    const/4 v12, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_4

    .line 1252
    :cond_e
    const-string v12, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "waiting tid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_1

    .line 1264
    :cond_f
    if-eqz v3, :cond_10

    .line 1265
    :try_start_b
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1266
    const/4 v3, 0x0

    .line 1267
    goto/16 :goto_0

    .line 1271
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHasFocus:Z

    if-eqz v12, :cond_15

    .line 1272
    if-eqz v1, :cond_11

    .line 1273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    invoke-virtual {v13}, Lcom/glu/android/ModifiedGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v6, v0

    .line 1274
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1276
    const-string v12, "GLThread"

    const-string v13, "onSurfaceCreated"

    invoke-static {v12, v13}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRenderer:Lcom/glu/android/ModifiedGLSurfaceView$Renderer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    iget-object v13, v13, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v12, v6, v13}, Lcom/glu/android/ModifiedGLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1280
    const/4 v1, 0x0

    .line 1281
    const/4 v5, 0x0

    .line 1285
    :cond_11
    if-eqz v8, :cond_12

    .line 1287
    const-string v12, "GLThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onSurfaceChanged("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRenderer:Lcom/glu/android/ModifiedGLSurfaceView$Renderer;

    invoke-interface {v12, v6, v10, v7}, Lcom/glu/android/ModifiedGLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1290
    const/4 v8, 0x0

    .line 1314
    :cond_12
    const/4 v12, 0x1

    if-gt v5, v12, :cond_13

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mSafeMode:Z

    if-nez v12, :cond_14

    .line 1315
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRenderer:Lcom/glu/android/ModifiedGLSurfaceView$Renderer;

    invoke-interface {v12, v6}, Lcom/glu/android/ModifiedGLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1318
    :cond_14
    add-int/lit8 v5, v5, 0x1

    .line 1320
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->swap()Z

    move-result v12

    if-nez v12, :cond_15

    .line 1321
    const-string v12, "eglhelper swap (verify this necessary)"

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1323
    const-string v12, "GLThread"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "egl surface lost tid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->getId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->stopEglLocked(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1330
    :cond_15
    if-eqz v11, :cond_0

    .line 1331
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1339
    :catchall_4
    move-exception v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1343
    const-string v13, "finally cleanup"

    invoke-static {v13}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1344
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v13

    monitor-enter v13

    .line 1345
    const/4 v14, 0x1

    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->stopEglLocked(Z)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    invoke-virtual {v14}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->finish()V

    .line 1347
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v12

    :catchall_5
    move-exception v12

    :try_start_d
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v12
.end method

.method private stopEglLocked(Z)V
    .locals 1
    .param p1, "destroySurface"    # Z

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1119
    if-eqz p1, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEglHelper:Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/glu/android/ModifiedGLSurfaceView$EglHelper;->destroySurface()V

    .line 1122
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->releaseEglSurfaceLocked(Lcom/glu/android/ModifiedGLSurfaceView$GLThread;)V

    .line 1125
    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1362
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1363
    :try_start_0
    iget v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1402
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1403
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mPaused:Z

    .line 1404
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1405
    monitor-exit v1

    .line 1406
    return-void

    .line 1405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1409
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1410
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mPaused:Z

    .line 1411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1412
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1413
    monitor-exit v1

    .line 1414
    return-void

    .line 1413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1466
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1467
    :try_start_0
    iput-boolean p1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHasFocus:Z

    .line 1468
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1469
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1471
    const-string v1, "Main thread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focus "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHasFocus:Z

    if-eqz v0, :cond_0

    const-string v0, "gained"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    return-void

    .line 1469
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1471
    :cond_0
    const-string v0, "lost"

    goto :goto_0
.end method

.method public onWindowResize(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1417
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1418
    :try_start_0
    iput p1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mWidth:I

    .line 1419
    iput p2, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHeight:I

    .line 1420
    iget-object v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/glu/android/ModifiedGLSurfaceView;->access$902(Lcom/glu/android/ModifiedGLSurfaceView;Z)Z

    .line 1421
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1422
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1423
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1426
    :goto_0
    iget-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    .line 1428
    const-string v1, "Main thread"

    const-string v3, "onWindowResize waiting for render complete."

    invoke-static {v1, v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    :try_start_1
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1432
    :catch_0
    move-exception v0

    .line 1433
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1436
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1437
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1497
    if-nez p1, :cond_0

    .line 1498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1500
    :cond_0
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1501
    :try_start_0
    iget-object v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1503
    monitor-exit v1

    .line 1504
    return-void

    .line 1503
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1479
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1480
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mShouldExit:Z

    .line 1481
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1482
    :goto_0
    iget-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1484
    :try_start_1
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1485
    :catch_0
    move-exception v0

    .line 1486
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1489
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1490
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1368
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1369
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRequestRender:Z

    .line 1370
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1371
    monitor-exit v1

    .line 1372
    return-void

    .line 1371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1100
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :try_start_0
    invoke-direct {p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->threadExiting(Lcom/glu/android/ModifiedGLSurfaceView$GLThread;)V

    .line 1110
    :goto_0
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1108
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->threadExiting(Lcom/glu/android/ModifiedGLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;->threadExiting(Lcom/glu/android/ModifiedGLSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1352
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1353
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1355
    :cond_1
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1356
    :try_start_0
    iput p1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mRenderMode:I

    .line 1357
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1358
    monitor-exit v1

    .line 1359
    return-void

    .line 1358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSafeMode(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1507
    iput-boolean p1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mSafeMode:Z

    .line 1508
    return-void
.end method

.method public surfaceCreated()V
    .locals 5

    .prologue
    .line 1375
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1377
    :try_start_0
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreated tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHasSurface:Z

    .line 1380
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1381
    monitor-exit v1

    .line 1382
    return-void

    .line 1381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 6

    .prologue
    .line 1385
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1387
    :try_start_0
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "surfaceDestroyed tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mHasSurface:Z

    .line 1390
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1391
    :goto_0
    iget-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/glu/android/ModifiedGLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1393
    :try_start_1
    invoke-static {}, Lcom/glu/android/ModifiedGLSurfaceView;->access$800()Lcom/glu/android/ModifiedGLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1394
    :catch_0
    move-exception v0

    .line 1395
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1398
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1399
    return-void
.end method
