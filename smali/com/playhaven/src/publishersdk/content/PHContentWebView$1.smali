.class Lcom/playhaven/src/publishersdk/content/PHContentWebView$1;
.super Ljava/lang/Object;
.source "PHContentWebView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playhaven/src/publishersdk/content/PHContentWebView;->bounceIn(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playhaven/src/publishersdk/content/PHContentWebView;


# direct methods
.method constructor <init>(Lcom/playhaven/src/publishersdk/content/PHContentWebView;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/PHContentWebView$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentWebView$1;->this$0:Lcom/playhaven/src/publishersdk/content/PHContentWebView;

    invoke-static {v0}, Lcom/playhaven/src/publishersdk/content/PHContentWebView;->access$000(Lcom/playhaven/src/publishersdk/content/PHContentWebView;)V

    .line 58
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
