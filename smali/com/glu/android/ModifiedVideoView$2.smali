.class Lcom/glu/android/ModifiedVideoView$2;
.super Ljava/lang/Object;
.source "ModifiedVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 262
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v5, 0x3

    .line 264
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/glu/android/ModifiedVideoView;->access$202(Lcom/glu/android/ModifiedVideoView;I)I

    .line 278
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    iget-object v3, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/glu/android/ModifiedVideoView;->access$402(Lcom/glu/android/ModifiedVideoView;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/glu/android/ModifiedVideoView;->access$402(Lcom/glu/android/ModifiedVideoView;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/glu/android/ModifiedVideoView;->access$302(Lcom/glu/android/ModifiedVideoView;Z)Z

    .line 281
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v1}, Lcom/glu/android/ModifiedVideoView;->access$500(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v1}, Lcom/glu/android/ModifiedVideoView;->access$500(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v2}, Lcom/glu/android/ModifiedVideoView;->access$600(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/glu/android/ModifiedVideoView;->access$002(Lcom/glu/android/ModifiedVideoView;I)I

    .line 285
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/glu/android/ModifiedVideoView;->access$102(Lcom/glu/android/ModifiedVideoView;I)I

    .line 287
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v1}, Lcom/glu/android/ModifiedVideoView;->access$700(Lcom/glu/android/ModifiedVideoView;)I

    move-result v0

    .line 288
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_1

    .line 289
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-virtual {v1, v0}, Lcom/glu/android/ModifiedVideoView;->seekTo(I)V

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v1}, Lcom/glu/android/ModifiedVideoView;->access$000(Lcom/glu/android/ModifiedVideoView;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v1}, Lcom/glu/android/ModifiedVideoView;->access$100(Lcom/glu/android/ModifiedVideoView;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 293
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-virtual {v1}, Lcom/glu/android/ModifiedVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v2}, Lcom/glu/android/ModifiedVideoView;->access$000(Lcom/glu/android/ModifiedVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v3}, Lcom/glu/android/ModifiedVideoView;->access$100(Lcom/glu/android/ModifiedVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 294
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v1}, Lcom/glu/android/ModifiedVideoView;->access$800(Lcom/glu/android/ModifiedVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v2}, Lcom/glu/android/ModifiedVideoView;->access$000(Lcom/glu/android/ModifiedVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v1}, Lcom/glu/android/ModifiedVideoView;->access$900(Lcom/glu/android/ModifiedVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v2}, Lcom/glu/android/ModifiedVideoView;->access$100(Lcom/glu/android/ModifiedVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 298
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v1}, Lcom/glu/android/ModifiedVideoView;->access$1000(Lcom/glu/android/ModifiedVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 299
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-virtual {v1}, Lcom/glu/android/ModifiedVideoView;->start()V

    .line 311
    :cond_2
    :goto_0
    return-void

    .line 300
    :cond_3
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-virtual {v1}, Lcom/glu/android/ModifiedVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-virtual {v1}, Lcom/glu/android/ModifiedVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_0

    .line 307
    :cond_4
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v1}, Lcom/glu/android/ModifiedVideoView;->access$1000(Lcom/glu/android/ModifiedVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 308
    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$2;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-virtual {v1}, Lcom/glu/android/ModifiedVideoView;->start()V

    goto :goto_0
.end method
