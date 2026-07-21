.class Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;
.super Landroid/os/AsyncTask;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;
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
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V
    .locals 0

    .prologue
    .line 5013
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;Lcom/tapjoy/TJCVirtualGoods$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;
    .param p2, "x1"    # Lcom/tapjoy/TJCVirtualGoods$1;

    .prologue
    .line 5013
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 5013
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 5
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
    .line 5021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$2600()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5025
    .local v1, "params":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5200(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "https://ws.tapjoyads.com/"

    const-string v4, "get_vg_store_items/purchased?"

    invoke-static {v2, v3, v4, v1}, Lcom/tapjoy/TJCVirtualGoods$TJCWebServiceConnection;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 5027
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 5029
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5200(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/tapjoy/TJCVirtualGoods$VGStoreItemsHandler;->parseVG(Ljava/io/InputStream;ILandroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/tapjoy/TJCVirtualGoods$TJCException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 5035
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 5032
    :catch_0
    move-exception v2

    .line 5035
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5013
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 12
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
    const/4 v11, 0x0

    .line 5040
    if-eqz p1, :cond_6

    .line 5042
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5044
    .local v1, "allPurchsedStoreItemsIds":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5200(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoods$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 5045
    .local v7, "myDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v9, "SELECT VGStoreItemID FROM tapjoy_VGStoreItems"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 5046
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v9, "VGStoreItemID"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 5047
    .local v4, "firstNameColumn":I
    if-eqz v2, :cond_1

    .line 5049
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5050
    invoke-interface {v2}, Landroid/database/Cursor;->isFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5054
    :cond_0
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5055
    .local v3, "firstName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5057
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 5061
    .end local v3    # "firstName":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 5062
    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    .line 5063
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5065
    :cond_2
    const-string v0, ""

    .line 5066
    .local v0, "allItems":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 5067
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v11, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5071
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_6

    .line 5073
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tapjoy/VGStoreItem;

    .line 5074
    .local v8, "vgItem":Lcom/tapjoy/VGStoreItem;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/tapjoy/VGStoreItem;->getDatafileUrl()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 5076
    invoke-virtual {v8}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    sget-boolean v9, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->VGOpened:Z

    if-nez v9, :cond_7

    .line 5078
    const/4 v9, 0x1

    sput-boolean v9, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->VGOpened:Z

    .line 5080
    new-instance v6, Landroid/content/Intent;

    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5800(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/tapjoy/DownloadVirtualGood;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5081
    .local v6, "intent":Landroid/content/Intent;
    const-string v9, "name"

    invoke-virtual {v8}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5083
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v9, v9, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    if-nez v9, :cond_4

    .line 5084
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v10}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5200(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v10

    iput-object v10, v9, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 5086
    :cond_4
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v9, v9, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    if-eqz v9, :cond_5

    .line 5088
    sput-boolean v11, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 5090
    :cond_5
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5800(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5096
    .end local v0    # "allItems":Ljava/lang/String;
    .end local v1    # "allPurchsedStoreItemsIds":Ljava/lang/StringBuilder;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v4    # "firstNameColumn":I
    .end local v5    # "i":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "vgItem":Lcom/tapjoy/VGStoreItem;
    :cond_6
    return-void

    .line 5071
    .restart local v0    # "allItems":Ljava/lang/String;
    .restart local v1    # "allPurchsedStoreItemsIds":Ljava/lang/StringBuilder;
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "firstNameColumn":I
    .restart local v5    # "i":I
    .restart local v7    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "vgItem":Lcom/tapjoy/VGStoreItem;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 5017
    return-void
.end method
