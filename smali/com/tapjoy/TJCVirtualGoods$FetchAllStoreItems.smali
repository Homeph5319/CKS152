.class Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;
.super Landroid/os/AsyncTask;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAllStoreItems"
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

.field public storeItemsProgressBar:Landroid/widget/ProgressBar;

.field public storeItemsTableLayout:Landroid/widget/TableLayout;

.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;

.field public updateDetailView:Landroid/widget/LinearLayout;

.field public updateTabhost:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2191
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2206
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->exception:Lcom/tapjoy/TJCVirtualGoods$TJCException;

    .line 2207
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->storeItemsTableLayout:Landroid/widget/TableLayout;

    .line 2208
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->storeItemsProgressBar:Landroid/widget/ProgressBar;

    .line 2209
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateTabhost:Landroid/widget/TabHost;

    .line 2210
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateDetailView:Landroid/widget/LinearLayout;

    .line 2211
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->ctx:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p2, "x1"    # Lcom/tapjoy/TJCVirtualGoods$1;

    .prologue
    .line 2191
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2191
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

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
    .line 2226
    const-string v3, "Virtual Goods"

    const-string v4, "Fetching All Store Items"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$2600()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoods;->access$2000(Lcom/tapjoy/TJCVirtualGoods;)I

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

    .line 2232
    .local v2, "params":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->ctx:Landroid/content/Context;

    const-string v4, "https://ws.tapjoyads.com/"

    const-string v5, "get_vg_store_items/all?"

    invoke-static {v3, v4, v5, v2}, Lcom/tapjoy/TJCVirtualGoods$TJCWebServiceConnection;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 2233
    .local v1, "is":Ljava/io/InputStream;
    const-string v3, "Virtual Goods"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting All VG Items from https://ws.tapjoyads.com/get_vg_store_items/all?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    if-eqz v1, :cond_0

    .line 2237
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1, v3, v4}, Lcom/tapjoy/TJCVirtualGoods$VGStoreItemsHandler;->parseVG(Ljava/io/InputStream;ILandroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/tapjoy/TJCVirtualGoods$TJCException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2246
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 2240
    :catch_0
    move-exception v0

    .line 2242
    .local v0, "e":Lcom/tapjoy/TJCVirtualGoods$TJCException;
    const-string v3, "Virtual Goods"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoods$TJCException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->exception:Lcom/tapjoy/TJCVirtualGoods$TJCException;

    .line 2246
    .end local v0    # "e":Lcom/tapjoy/TJCVirtualGoods$TJCException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 2197
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$2300(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2198
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2200
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$2300(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2201
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$2300(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

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

    .line 2198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2204
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2191
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 5
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2254
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$2400(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2256
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateTabhost:Landroid/widget/TabHost;

    invoke-static {v1, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$1402(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/TabHost;)Landroid/widget/TabHost;

    .line 2257
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateDetailView:Landroid/widget/LinearLayout;

    invoke-static {v1, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$1502(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 2259
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->storeItemsTableLayout:Landroid/widget/TableLayout;

    invoke-static {v1, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$1302(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/TableLayout;)Landroid/widget/TableLayout;

    .line 2261
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1900(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2263
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->exception:Lcom/tapjoy/TJCVirtualGoods$TJCException;

    if-eqz v1, :cond_2

    .line 2265
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$2300(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 2266
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$2500()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2269
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$2700(Lcom/tapjoy/TJCVirtualGoods;)V

    .line 2292
    :cond_1
    :goto_0
    return-void

    .line 2273
    :cond_2
    if-eqz p1, :cond_1

    .line 2276
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$2800(Lcom/tapjoy/TJCVirtualGoods;Landroid/content/Context;)V

    .line 2278
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$2300(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2280
    .local v0, "start":I
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$2300(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2282
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$2300(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 2283
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$2500()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2285
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->ctx:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$2900(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V

    .line 2287
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2288
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    sget v2, Lcom/tapjoy/VGStoreItem;->availableItemsMoreDataAvailable:I

    invoke-static {v1, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$3000(Lcom/tapjoy/TJCVirtualGoods;I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 2215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->exception:Lcom/tapjoy/TJCVirtualGoods$TJCException;

    .line 2218
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$2400(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 2219
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$2400(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2221
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$2500()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2222
    return-void
.end method
