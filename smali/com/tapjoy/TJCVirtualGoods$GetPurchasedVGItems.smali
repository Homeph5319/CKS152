.class Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;
.super Landroid/os/AsyncTask;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPurchasedVGItems"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/tapjoy/VGStoreItem;",
        "Ljava/lang/Void;",
        "Lcom/tapjoy/VGStoreItem;",
        ">;"
    }
.end annotation


# instance fields
.field public actionBtn:Landroid/widget/Button;

.field public actionTextView:Landroid/widget/TextView;

.field public detailBar:Landroid/widget/ProgressBar;

.field public errMsgDetailImage:Landroid/widget/ImageView;

.field private exception:Ljava/lang/Exception;

.field public exceptionDialog:Landroid/app/Dialog;

.field public getPurchaseItemTable:Landroid/widget/TableLayout;

.field public getallItemsTable:Landroid/widget/TableLayout;

.field public itemDetailDialog:Landroid/app/Dialog;

.field public itemDownloadCompleteDialog:Landroid/app/Dialog;

.field public proDialog:Landroid/app/ProgressDialog;

.field public retryItemDeatilButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2478
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2480
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->exception:Ljava/lang/Exception;

    .line 2481
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->proDialog:Landroid/app/ProgressDialog;

    .line 2482
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->itemDetailDialog:Landroid/app/Dialog;

    .line 2483
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->itemDownloadCompleteDialog:Landroid/app/Dialog;

    .line 2484
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->getPurchaseItemTable:Landroid/widget/TableLayout;

    .line 2485
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->getallItemsTable:Landroid/widget/TableLayout;

    .line 2486
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->detailBar:Landroid/widget/ProgressBar;

    .line 2487
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->retryItemDeatilButton:Landroid/widget/Button;

    .line 2488
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->actionBtn:Landroid/widget/Button;

    .line 2489
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->actionTextView:Landroid/widget/TextView;

    .line 2490
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->errMsgDetailImage:Landroid/widget/ImageView;

    .line 2491
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->exceptionDialog:Landroid/app/Dialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p2, "x1"    # Lcom/tapjoy/TJCVirtualGoods$1;

    .prologue
    .line 2478
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/tapjoy/VGStoreItem;)Lcom/tapjoy/VGStoreItem;
    .locals 9
    .param p1, "storeItem"    # [Lcom/tapjoy/VGStoreItem;

    .prologue
    const/4 v8, 0x0

    .line 2497
    :try_start_0
    const-string v3, "Virtual Goods"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "virtual_good_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v4, "https://ws.tapjoyads.com/"

    const-string v5, "purchase_vg?"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$2600()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&virtual_good_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {v7}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/tapjoy/TJCVirtualGoods$TJCWebServiceConnection;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 2502
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_3

    .line 2524
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1, v3}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVGWithCurrencyHandler;->buildResponse(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2526
    .local v2, "lst":Ljava/util/ArrayList;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2528
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2529
    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    const-string v4, "Error Message"

    const/16 v5, 0xc

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->exception:Ljava/lang/Exception;

    .line 2531
    :cond_0
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$3902(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;)Ljava/lang/String;

    .line 2532
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2534
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/tapjoy/TJCVirtualGoods;->access$4002(Lcom/tapjoy/TJCVirtualGoods;Z)Z

    .line 2541
    :cond_1
    :goto_0
    const/4 v3, 0x0

    aget-object v3, p1, v3

    .line 2550
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "lst":Ljava/util/ArrayList;
    :goto_1
    return-object v3

    .line 2538
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "lst":Ljava/util/ArrayList;
    :cond_2
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tapjoy/TJCVirtualGoods;->access$4002(Lcom/tapjoy/TJCVirtualGoods;Z)Z
    :try_end_0
    .catch Lcom/tapjoy/TJCVirtualGoods$TJCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2545
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "lst":Ljava/util/ArrayList;
    :catch_0
    move-exception v0

    .line 2547
    .local v0, "e":Lcom/tapjoy/TJCVirtualGoods$TJCException;
    const-string v3, "Tapjoy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to purchase item.  e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoods$TJCException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->exception:Ljava/lang/Exception;

    .line 2550
    aget-object v3, p1, v8

    goto :goto_1

    .line 2543
    .end local v0    # "e":Lcom/tapjoy/TJCVirtualGoods$TJCException;
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, p1, v3
    :try_end_1
    .catch Lcom/tapjoy/TJCVirtualGoods$TJCException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2478
    check-cast p1, [Lcom/tapjoy/VGStoreItem;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->doInBackground([Lcom/tapjoy/VGStoreItem;)Lcom/tapjoy/VGStoreItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/tapjoy/VGStoreItem;)V
    .locals 7
    .param p1, "storeItem"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2555
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->proDialog:Landroid/app/ProgressDialog;

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$4102(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 2556
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->itemDetailDialog:Landroid/app/Dialog;

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$1002(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2557
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->itemDownloadCompleteDialog:Landroid/app/Dialog;

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$4202(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2558
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->getallItemsTable:Landroid/widget/TableLayout;

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$1302(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/TableLayout;)Landroid/widget/TableLayout;

    .line 2559
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->getPurchaseItemTable:Landroid/widget/TableLayout;

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$1702(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/TableLayout;)Landroid/widget/TableLayout;

    .line 2560
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->detailBar:Landroid/widget/ProgressBar;

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$4302(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 2561
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->retryItemDeatilButton:Landroid/widget/Button;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$4402(Landroid/widget/Button;)Landroid/widget/Button;

    .line 2562
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->errMsgDetailImage:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$4502(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2563
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->actionTextView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$4602(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2564
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->actionBtn:Landroid/widget/Button;

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$4702(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/Button;)Landroid/widget/Button;

    .line 2565
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->exceptionDialog:Landroid/app/Dialog;

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$4802(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2566
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$4100(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 2568
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setProgressDialogVisible(Z)V

    .line 2572
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->exception:Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 2576
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2, p1}, Lcom/tapjoy/TJCVirtualGoods;->access$4902(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)Lcom/tapjoy/VGStoreItem;

    .line 2577
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Service is unreachable.\nDo you want to try again?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$2;

    invoke-direct {v4, p0}, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$2;-><init>(Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Retry"

    new-instance v4, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$1;

    invoke-direct {v4, p0}, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$1;-><init>(Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->exceptionDialog:Landroid/app/Dialog;

    .line 2595
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->exceptionDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2597
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->exceptionDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2598
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setExceptionDialog(Z)V

    .line 2599
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-result-object v2

    const-string v3, "Service is unreachable.\nDo you want to try again?"

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setExceptionDialogMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2676
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2678
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setVgStoreItem(Lcom/tapjoy/VGStoreItem;)V

    .line 2684
    :cond_1
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->exception:Ljava/lang/Exception;

    if-nez v2, :cond_6

    .line 2686
    const-string v2, "Virtual Goods"

    const-string v3, "Now fetch store items again..."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    const-wide/16 v0, 0x0

    .local v0, "i":J
    :goto_1
    const-wide/32 v2, 0xdbba0

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_1

    .line 2609
    .end local v0    # "i":J
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    .line 2612
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$4000(Lcom/tapjoy/TJCVirtualGoods;)Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 2614
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$500(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 2616
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$3900(Lcom/tapjoy/TJCVirtualGoods;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Balance too low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2618
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    const-string v3, "You do not have enough balance to purchase this item."

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$3902(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;)Ljava/lang/String;

    .line 2622
    :cond_3
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoods;->access$3900(Lcom/tapjoy/TJCVirtualGoods;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    new-instance v5, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$4;

    invoke-direct {v5, p0}, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$4;-><init>(Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Get More"

    new-instance v5, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$3;

    invoke-direct {v5, p0}, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$3;-><init>(Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$1002(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2656
    :try_start_1
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$1000(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2657
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods;->access$3900(Lcom/tapjoy/TJCVirtualGoods;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setGetMoreItemDialogMsg(Ljava/lang/String;)V

    .line 2658
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setGetMoreItemDialogVisible(Z)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2660
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 2666
    :cond_4
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$4000(Lcom/tapjoy/TJCVirtualGoods;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2669
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$2800(Lcom/tapjoy/TJCVirtualGoods;Landroid/content/Context;)V

    .line 2672
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods;->access$3900(Lcom/tapjoy/TJCVirtualGoods;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/tapjoy/TJCVirtualGoods;->access$5000(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;Lcom/tapjoy/VGStoreItem;)V

    goto/16 :goto_0

    .line 2692
    .restart local v0    # "i":J
    :cond_5
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2, v6}, Lcom/tapjoy/TJCVirtualGoods;->access$2002(Lcom/tapjoy/TJCVirtualGoods;I)I

    .line 2693
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V

    invoke-static {v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$1202(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    .line 2694
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$1300(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 2695
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods;->access$1300(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;

    move-result-object v3

    iput-object v3, v2, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->storeItemsTableLayout:Landroid/widget/TableLayout;

    .line 2697
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods;->access$1400(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TabHost;

    move-result-object v3

    iput-object v3, v2, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateTabhost:Landroid/widget/TabHost;

    .line 2698
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods;->access$1500(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, v2, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateDetailView:Landroid/widget/LinearLayout;

    .line 2699
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iput-object v3, v2, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->ctx:Landroid/content/Context;

    .line 2700
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$2300(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2701
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2705
    .end local v0    # "i":J
    :cond_6
    return-void

    .line 2602
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2478
    check-cast p1, Lcom/tapjoy/VGStoreItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->onPostExecute(Lcom/tapjoy/VGStoreItem;)V

    return-void
.end method
