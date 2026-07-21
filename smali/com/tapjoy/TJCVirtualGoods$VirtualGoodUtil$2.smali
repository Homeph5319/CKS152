.class Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;
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
    .line 3422
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 3429
    const-string v7, "Virtual Goods"

    const-string v8, "retryClick"

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3431
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 3432
    .local v5, "linearLayout":Landroid/widget/LinearLayout;
    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5200(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "Index"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3433
    .local v3, "indexTextView":Landroid/widget/TextView;
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-direct {v0, v7}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V

    .line 3434
    .local v0, "currentdownloadVirtualGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3435
    .local v2, "index":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3437
    .local v4, "indexValue":I
    const-string v7, "Virtual Goods"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retry index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3439
    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v8, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v7}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v7, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    .line 3440
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3441
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3442
    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v8, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v7}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v7, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    .line 3443
    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v8, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v7}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v7, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    .line 3445
    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v8, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v7}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v7, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    .line 3446
    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v8, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v7}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v7, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    .line 3447
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v8, "Download Pending"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3448
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 3449
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3457
    :try_start_0
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    iput-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3472
    :goto_0
    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v7, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->purchaseItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tapjoy/VGStoreItem;

    .line 3473
    .local v6, "vgItem":Lcom/tapjoy/VGStoreItem;
    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v7, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    invoke-virtual {v7}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v7

    sget-object v8, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v7, v8, :cond_0

    .line 3474
    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v7, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    invoke-virtual {v7, v13}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->cancel(Z)Z

    .line 3476
    :cond_0
    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v7, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3477
    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v7, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3483
    :try_start_1
    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v7, v7, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/AsyncTask;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/tapjoy/VGStoreItem;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3515
    :goto_1
    return-void

    .line 3459
    .end local v6    # "vgItem":Lcom/tapjoy/VGStoreItem;
    :catch_0
    move-exception v1

    .line 3464
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3485
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v6    # "vgItem":Lcom/tapjoy/VGStoreItem;
    :catch_1
    move-exception v1

    .line 3487
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v8, "Download Failed"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3488
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v8, "Download Failed"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3490
    iput-boolean v13, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadCancel:Z

    .line 3491
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3492
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3494
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3495
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3497
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 3498
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 3500
    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catch_2
    move-exception v1

    .line 3502
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v8, "Download Failed"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3503
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v8, "Download Failed"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3505
    iput-boolean v13, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadCancel:Z

    .line 3506
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3507
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3509
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3510
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3512
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 3513
    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
