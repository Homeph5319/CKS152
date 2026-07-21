.class Lcom/glu/android/GluCanvasOverlayGroup$1;
.super Landroid/os/Handler;
.source "GluCanvasOverlayGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluCanvasOverlayGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluCanvasOverlayGroup;


# direct methods
.method constructor <init>(Lcom/glu/android/GluCanvasOverlayGroup;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/glu/android/GluCanvasOverlayGroup$1;->this$0:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 638
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 639
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$1;->this$0:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v1}, Lcom/glu/android/GluCanvasOverlayGroup;->requestLayout()V

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 641
    invoke-static {}, Lcom/glu/android/GluAds;->handledShowSmallAd()V

    goto :goto_0

    .line 642
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 643
    invoke-static {}, Lcom/glu/android/GluAds;->handledShowLargeAd()V

    goto :goto_0

    .line 644
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    .line 646
    iget v1, p1, Landroid/os/Message;->what:I

    and-int/lit16 v0, v1, 0xff

    .line 647
    .local v0, "swapId":I
    if-ltz v0, :cond_4

    const/16 v1, 0xd

    if-ge v0, v1, :cond_4

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Swapping view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$1;->this$0:Lcom/glu/android/GluCanvasOverlayGroup;

    iget-object v1, v1, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    invoke-virtual {v1}, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->viewIdAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 651
    :goto_1
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$1;->this$0:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v1, v0}, Lcom/glu/android/GluCanvasOverlayGroup;->removeViewAt(I)V

    .line 652
    iget-object v2, p0, Lcom/glu/android/GluCanvasOverlayGroup$1;->this$0:Lcom/glu/android/GluCanvasOverlayGroup;

    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$1;->this$0:Lcom/glu/android/GluCanvasOverlayGroup;

    iget-object v1, v1, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iget-object v1, v1, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Lcom/glu/android/GluCanvasOverlayGroup;->addView(Landroid/view/View;I)V

    .line 653
    iget-object v1, p0, Lcom/glu/android/GluCanvasOverlayGroup$1;->this$0:Lcom/glu/android/GluCanvasOverlayGroup;

    invoke-virtual {v1}, Lcom/glu/android/GluCanvasOverlayGroup;->requestLayout()V

    goto :goto_0

    .line 650
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
