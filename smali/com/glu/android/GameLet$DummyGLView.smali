.class public Lcom/glu/android/GameLet$DummyGLView;
.super Landroid/opengl/GLSurfaceView;
.source "GameLet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GameLet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DummyGLView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GameLet;


# direct methods
.method public constructor <init>(Lcom/glu/android/GameLet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1535
    iput-object p1, p0, Lcom/glu/android/GameLet$DummyGLView;->this$0:Lcom/glu/android/GameLet;

    .line 1536
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {p0, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 1538
    new-instance v0, Lcom/glu/android/GameLet$DummyGLView$1;

    invoke-direct {v0, p0, p1}, Lcom/glu/android/GameLet$DummyGLView$1;-><init>(Lcom/glu/android/GameLet$DummyGLView;Lcom/glu/android/GameLet;)V

    invoke-virtual {p0, v0}, Lcom/glu/android/GameLet$DummyGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1584
    invoke-virtual {p0, v1}, Lcom/glu/android/GameLet$DummyGLView;->setFocusable(Z)V

    .line 1585
    invoke-virtual {p0, v1}, Lcom/glu/android/GameLet$DummyGLView;->setFocusableInTouchMode(Z)V

    .line 1586
    return-void
.end method
