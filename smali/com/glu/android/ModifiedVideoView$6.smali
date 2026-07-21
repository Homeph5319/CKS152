.class Lcom/glu/android/ModifiedVideoView$6;
.super Ljava/lang/Object;
.source "ModifiedVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 392
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 396
    iget-object v4, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v4, p3}, Lcom/glu/android/ModifiedVideoView;->access$802(Lcom/glu/android/ModifiedVideoView;I)I

    .line 397
    iget-object v4, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v4, p4}, Lcom/glu/android/ModifiedVideoView;->access$902(Lcom/glu/android/ModifiedVideoView;I)I

    .line 398
    iget-object v4, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v4}, Lcom/glu/android/ModifiedVideoView;->access$1000(Lcom/glu/android/ModifiedVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 399
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v4}, Lcom/glu/android/ModifiedVideoView;->access$000(Lcom/glu/android/ModifiedVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v4}, Lcom/glu/android/ModifiedVideoView;->access$100(Lcom/glu/android/ModifiedVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 400
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v2}, Lcom/glu/android/ModifiedVideoView;->access$600(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 401
    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v2}, Lcom/glu/android/ModifiedVideoView;->access$700(Lcom/glu/android/ModifiedVideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    iget-object v3, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v3}, Lcom/glu/android/ModifiedVideoView;->access$700(Lcom/glu/android/ModifiedVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/glu/android/ModifiedVideoView;->seekTo(I)V

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-virtual {v2}, Lcom/glu/android/ModifiedVideoView;->start()V

    .line 406
    :cond_1
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    move v1, v3

    .line 398
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_3
    move v0, v3

    .line 399
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0, p1}, Lcom/glu/android/ModifiedVideoView;->access$1502(Lcom/glu/android/ModifiedVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 411
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0}, Lcom/glu/android/ModifiedVideoView;->access$1600(Lcom/glu/android/ModifiedVideoView;)V

    .line 412
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glu/android/ModifiedVideoView;->access$1502(Lcom/glu/android/ModifiedVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 418
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$6;->this$0:Lcom/glu/android/ModifiedVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glu/android/ModifiedVideoView;->access$1700(Lcom/glu/android/ModifiedVideoView;Z)V

    .line 419
    return-void
.end method
