.class Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V
    .locals 0

    .prologue
    .line 3518
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3522
    const-string v3, "Virtual Goods"

    const-string v4, "RETRY DETAIL CLICK"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3530
    :try_start_0
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-direct {v0, v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V

    .line 3531
    .local v0, "currentdownloadVirtualGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget v5, v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->detailIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    iput-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    .line 3532
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3533
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3534
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget v5, v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->detailIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    iput-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 3535
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3536
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3537
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget v5, v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->detailIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    iput-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    .line 3538
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget v5, v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->detailIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    iput-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    .line 3540
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget v5, v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->detailIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    iput-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    .line 3541
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget v5, v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->detailIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    iput-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    .line 3542
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget v5, v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->detailIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    iput-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    .line 3543
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget v5, v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->detailIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    .line 3544
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3545
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget v5, v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->detailIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    .line 3546
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3547
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v4, "Download Pending"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3548
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v4, "Download Pending"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3551
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 3553
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3561
    :cond_0
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3562
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    iput-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    .line 3567
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->purchaseItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget v4, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->detailIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    .line 3569
    .local v2, "vgItem":Lcom/tapjoy/VGStoreItem;
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    invoke-virtual {v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_1

    .line 3570
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->cancel(Z)Z

    .line 3572
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3573
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3578
    :try_start_1
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/AsyncTask;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/tapjoy/VGStoreItem;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3616
    .end local v0    # "currentdownloadVirtualGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    .end local v2    # "vgItem":Lcom/tapjoy/VGStoreItem;
    :goto_0
    return-void

    .line 3580
    .restart local v0    # "currentdownloadVirtualGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    .restart local v2    # "vgItem":Lcom/tapjoy/VGStoreItem;
    :catch_0
    move-exception v1

    .line 3582
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_2
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v4, "Download Failed"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3583
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v4, "Download Failed"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3585
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadCancel:Z

    .line 3586
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3587
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3589
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3590
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3592
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3593
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3611
    .end local v0    # "currentdownloadVirtualGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .end local v2    # "vgItem":Lcom/tapjoy/VGStoreItem;
    :catch_1
    move-exception v1

    .line 3613
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Virtual Goods"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETRY DETAIl EXCEPTION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3595
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentdownloadVirtualGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    .restart local v2    # "vgItem":Lcom/tapjoy/VGStoreItem;
    :catch_2
    move-exception v1

    .line 3597
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v4, "Download Failed"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3598
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v4, "Download Failed"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3600
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadCancel:Z

    .line 3601
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3602
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3604
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3605
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3607
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3608
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
