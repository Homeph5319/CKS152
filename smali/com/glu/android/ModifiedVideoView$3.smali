.class Lcom/glu/android/ModifiedVideoView$3;
.super Ljava/lang/Object;
.source "ModifiedVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 315
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView$3;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 317
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$3;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0, v1}, Lcom/glu/android/ModifiedVideoView;->access$202(Lcom/glu/android/ModifiedVideoView;I)I

    .line 318
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$3;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0, v1}, Lcom/glu/android/ModifiedVideoView;->access$1002(Lcom/glu/android/ModifiedVideoView;I)I

    .line 319
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$3;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0}, Lcom/glu/android/ModifiedVideoView;->access$1100(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$3;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0}, Lcom/glu/android/ModifiedVideoView;->access$1100(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/glu/android/ModifiedVideoView$3;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v1}, Lcom/glu/android/ModifiedVideoView;->access$600(Lcom/glu/android/ModifiedVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 322
    :cond_0
    return-void
.end method
