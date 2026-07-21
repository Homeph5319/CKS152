.class Lcom/glu/android/ModifiedGLSurfaceView$SimpleEGLConfigChooser;
.super Lcom/glu/android/ModifiedGLSurfaceView$ComponentSizeChooser;
.source "ModifiedGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ModifiedGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/ModifiedGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/glu/android/ModifiedGLSurfaceView;Z)V
    .locals 9
    .param p2, "withDepthBuffer"    # Z

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 881
    iput-object p1, p0, Lcom/glu/android/ModifiedGLSurfaceView$SimpleEGLConfigChooser;->this$0:Lcom/glu/android/ModifiedGLSurfaceView;

    .line 882
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/glu/android/ModifiedGLSurfaceView$ComponentSizeChooser;-><init>(Lcom/glu/android/ModifiedGLSurfaceView;IIIIII)V

    .line 885
    iput v8, p0, Lcom/glu/android/ModifiedGLSurfaceView$SimpleEGLConfigChooser;->mRedSize:I

    .line 886
    const/4 v0, 0x6

    iput v0, p0, Lcom/glu/android/ModifiedGLSurfaceView$SimpleEGLConfigChooser;->mGreenSize:I

    .line 887
    iput v8, p0, Lcom/glu/android/ModifiedGLSurfaceView$SimpleEGLConfigChooser;->mBlueSize:I

    .line 888
    return-void

    :cond_0
    move v6, v5

    .line 882
    goto :goto_0
.end method
