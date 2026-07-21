.class Lcom/glu/android/ModifiedVideoView$4;
.super Ljava/lang/Object;
.source "ModifiedVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 326
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView$4;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 328
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$4;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0}, Lcom/glu/android/ModifiedVideoView;->access$1200(Lcom/glu/android/ModifiedVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$4;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0, v3}, Lcom/glu/android/ModifiedVideoView;->access$202(Lcom/glu/android/ModifiedVideoView;I)I

    .line 330
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$4;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0, v3}, Lcom/glu/android/ModifiedVideoView;->access$1002(Lcom/glu/android/ModifiedVideoView;I)I

    .line 333
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$4;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0}, Lcom/glu/android/ModifiedVideoView;->access$1300(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$4;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0}, Lcom/glu/android/ModifiedVideoView;->access$1300(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$4;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v1}, Lcom/glu/android/ModifiedVideoView;->access$600(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    return v4

    .line 344
    :cond_0
    const-string v0, "vid failed to play"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
