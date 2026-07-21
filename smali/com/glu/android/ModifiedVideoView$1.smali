.class Lcom/glu/android/ModifiedVideoView$1;
.super Ljava/lang/Object;
.source "ModifiedVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ModifiedVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/ModifiedVideoView;


# direct methods
.method constructor <init>(Lcom/glu/android/ModifiedVideoView;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView$1;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$1;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/glu/android/ModifiedVideoView;->access$002(Lcom/glu/android/ModifiedVideoView;I)I

    .line 255
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$1;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/glu/android/ModifiedVideoView;->access$102(Lcom/glu/android/ModifiedVideoView;I)I

    .line 256
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$1;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0}, Lcom/glu/android/ModifiedVideoView;->access$000(Lcom/glu/android/ModifiedVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$1;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0}, Lcom/glu/android/ModifiedVideoView;->access$100(Lcom/glu/android/ModifiedVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$1;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-virtual {v0}, Lcom/glu/android/ModifiedVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$1;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v1}, Lcom/glu/android/ModifiedVideoView;->access$000(Lcom/glu/android/ModifiedVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView$1;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v2}, Lcom/glu/android/ModifiedVideoView;->access$100(Lcom/glu/android/ModifiedVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 259
    :cond_0
    return-void
.end method
