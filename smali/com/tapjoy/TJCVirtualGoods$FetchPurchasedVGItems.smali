.class Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;
.super Landroid/os/AsyncTask;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchPurchasedVGItems"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/tapjoy/VGStoreItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field public ctx:Landroid/content/Context;

.field private exception:Lcom/tapjoy/TJCVirtualGoods$TJCException;

.field public purchasedItemProgressBar:Landroid/widget/ProgressBar;

.field public purchasedItemTableLayout:Landroid/widget/TableLayout;

.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2345
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2348
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->exception:Lcom/tapjoy/TJCVirtualGoods$TJCException;

    .line 2349
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->purchasedItemTableLayout:Landroid/widget/TableLayout;

    .line 2350
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->purchasedItemProgressBar:Landroid/widget/ProgressBar;

    .line 2351
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->ctx:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p2, "x1"    # Lcom/tapjoy/TJCVirtualGoods$1;

    .prologue
    .line 2345
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2345
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "nothing"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2377
    const-string v3, "Virtual Goods"

    const-string v4, "Fetching All Purchased Items"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$2600()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoods;->access$2200(Lcom/tapjoy/TJCVirtualGoods;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2383
    .local v2, "params":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->ctx:Landroid/content/Context;

    const-string v4, "https://ws.tapjoyads.com/"

    const-string v5, "get_vg_store_items/purchased?"

    invoke-static {v3, v4, v5, v2}, Lcom/tapjoy/TJCVirtualGoods$TJCWebServiceConnection;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 2384
    .local v1, "is":Ljava/io/InputStream;
    const-string v3, "Virtual Goods"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting purchased virtual good items from https://ws.tapjoyads.com/get_vg_store_items/purchased?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    if-eqz v1, :cond_0

    .line 2388
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1, v3, v4}, Lcom/tapjoy/TJCVirtualGoods$VGStoreItemsHandler;->parseVG(Ljava/io/InputStream;ILandroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/tapjoy/TJCVirtualGoods$TJCException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2396
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 2391
    :catch_0
    move-exception v0

    .line 2393
    .local v0, "e":Lcom/tapjoy/TJCVirtualGoods$TJCException;
    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoods$TJCException;->printStackTrace()V

    .line 2394
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->exception:Lcom/tapjoy/TJCVirtualGoods$TJCException;

    .line 2396
    .end local v0    # "e":Lcom/tapjoy/TJCVirtualGoods$TJCException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 2356
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$3100(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2357
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2359
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$3100(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2360
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$3100(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2357
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2362
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2345
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItem;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2405
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$3200(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2407
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->purchasedItemTableLayout:Landroid/widget/TableLayout;

    invoke-static {v1, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$1702(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/TableLayout;)Landroid/widget/TableLayout;

    .line 2409
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$2100(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2411
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->exception:Lcom/tapjoy/TJCVirtualGoods$TJCException;

    if-eqz v1, :cond_0

    .line 2413
    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postExecute e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->exception:Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v3}, Lcom/tapjoy/TJCVirtualGoods$TJCException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->exception:Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v3}, Lcom/tapjoy/TJCVirtualGoods$TJCException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1700(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 2418
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$3100(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2419
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$3100(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->getPurchasedItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2421
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$3400(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 2423
    sput v4, Lcom/tapjoy/VGStoreItem;->purchasedItemsMoreDataAvailable:I

    .line 2424
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$3500(Lcom/tapjoy/TJCVirtualGoods;)V

    .line 2425
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->ctx:Landroid/content/Context;

    invoke-static {v1, v4, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$3600(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V

    .line 2429
    :cond_0
    if-eqz p1, :cond_3

    .line 2431
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$3100(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2432
    .local v0, "start":I
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$3100(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2434
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->ctx:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$3600(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V

    .line 2436
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2438
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$3702(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2439
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    sget v2, Lcom/tapjoy/VGStoreItem;->purchasedItemsMoreDataAvailable:I

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->ctx:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$3800(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V

    .line 2442
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$3100(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v5, :cond_2

    .line 2443
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$3300()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2447
    .end local v0    # "start":I
    :cond_2
    :goto_0
    return-void

    .line 2445
    :cond_3
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$3100(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v5, :cond_2

    .line 2446
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$3300()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 2366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->exception:Lcom/tapjoy/TJCVirtualGoods$TJCException;

    .line 2369
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$3200(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 2370
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$3200(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2372
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$3300()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2373
    return-void
.end method
