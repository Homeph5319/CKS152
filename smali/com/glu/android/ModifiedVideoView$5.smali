.class Lcom/glu/android/ModifiedVideoView$5;
.super Ljava/lang/Object;
.source "ModifiedVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 350
    iput-object p1, p0, Lcom/glu/android/ModifiedVideoView$5;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/glu/android/ModifiedVideoView$5;->this$0:Lcom/glu/android/ModifiedVideoView;

    invoke-static {v0, p2}, Lcom/glu/android/ModifiedVideoView;->access$1402(Lcom/glu/android/ModifiedVideoView;I)I

    .line 353
    return-void
.end method
