.class public Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualGoodUtil"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;,
        Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    }
.end annotation


# static fields
.field public static DLErrorDialogShown:Z = false

.field public static VGOpened:Z = false

.field public static currentTasks:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            "Ljava/lang/Integer;",
            "Lcom/tapjoy/VGStoreItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public static pendingTasks:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final poolSize:I = 0x1

.field public static productID:Ljava/lang/String;


# instance fields
.field private asyncTaskPool:Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

.field public connectInstance:Lcom/tapjoy/TapjoyConnect;

.field private ctx:Landroid/content/Context;

.field private ctxdownloadVg:Landroid/content/Context;

.field public detailIndex:I

.field public downloadVirtualGoods:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;",
            ">;"
        }
    .end annotation
.end field

.field errorMesage:Ljava/lang/String;

.field public errorMsgClickListener:Landroid/view/View$OnClickListener;

.field fetchPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;

.field i:I

.field private myDB:Landroid/database/sqlite/SQLiteDatabase;

.field public purchaseItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private purchasedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation
.end field

.field public retryClickListener:Landroid/view/View$OnClickListener;

.field retryDetailClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3038
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->productID:Ljava/lang/String;

    .line 3045
    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->VGOpened:Z

    .line 3046
    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->DLErrorDialogShown:Z

    .line 5145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    .line 5146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3035
    iput-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 3036
    iput-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctxdownloadVg:Landroid/content/Context;

    .line 3037
    iput-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    .line 3043
    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;-><init>(I)V

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->asyncTaskPool:Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

    .line 3044
    iput v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->detailIndex:I

    .line 3048
    iput-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->myDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 3050
    iput v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->i:I

    .line 3051
    const-string v2, ""

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMesage:Ljava/lang/String;

    .line 3412
    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$1;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$1;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMsgClickListener:Landroid/view/View$OnClickListener;

    .line 3421
    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$2;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 3517
    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$3;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->retryDetailClickListener:Landroid/view/View$OnClickListener;

    .line 3055
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    .line 3056
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    .line 3058
    invoke-static {p1}, Lcom/tapjoy/TJCVirtualGoods$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->myDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 3059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/vgDownloads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3060
    .local v0, "destFolder":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3062
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3064
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3065
    const-string v2, "Virtual Goods"

    const-string v3, "vgDownloads directory created at device....."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tempZipDownloads"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3069
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3070
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3072
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3073
    const-string v2, "Virtual Goods"

    const-string v3, "temporary zip file directory generated at device"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3076
    :cond_1
    return-void
.end method

.method static synthetic access$5200(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3033
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->extractFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    .prologue
    .line 3033
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctxdownloadVg:Landroid/content/Context;

    return-object v0
.end method

.method public static varargs addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z
    .locals 4
    .param p1, "params"    # [Lcom/tapjoy/VGStoreItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            "Ljava/lang/Integer;",
            "Lcom/tapjoy/VGStoreItem;",
            ">;[",
            "Lcom/tapjoy/VGStoreItem;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lcom/tapjoy/VGStoreItem;Ljava/lang/Integer;Lcom/tapjoy/VGStoreItem;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5150
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 5152
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5155
    if-eqz p1, :cond_0

    .line 5156
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5174
    :goto_0
    return v2

    .line 5158
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tapjoy/VGStoreItem;

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5160
    :catch_0
    move-exception v1

    goto :goto_0

    .line 5167
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 5168
    .local v0, "task":[Ljava/lang/Object;
    aput-object p0, v0, v3

    .line 5169
    aput-object p1, v0, v2

    .line 5170
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private extractFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 4798
    if-eqz p1, :cond_0

    .line 4800
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 4801
    .local v0, "n":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 4802
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4804
    .end local v0    # "n":I
    .end local p1    # "fileName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static getPurchasedItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 36
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4863
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 4864
    .local v27, "purchasedItemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItem;>;"
    invoke-static/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    .line 4865
    .local v22, "myDB1":Landroid/database/sqlite/SQLiteDatabase;
    const-string v34, "SELECT i.VGStoreItemID,i.AppleProductID,i.Price,i.Name,i.Description,i.ItemTypeName,i.ItemsOwned,i.ThumbImageName,i.FullImageName,i.DataFileName,a.AttributeName,a.AttributeValue FROM tapjoy_VGStoreItems i   left join tapjoy_VGStoreItemAttribute a on (i.VGStoreItemID=a.VGStoreItemID )  "

    const/16 v35, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4870
    .local v9, "cursor":Landroid/database/Cursor;
    const-string v34, "VGStoreItemID"

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 4871
    .local v33, "vgStoreItemID":I
    const-string v34, "AttributeName"

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 4872
    .local v6, "attributeNameIndex":I
    const-string v34, "AttributeValue"

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4873
    .local v8, "attributeValueIndex":I
    const-string v34, "AppleProductID"

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 4874
    .local v4, "appleProductIdIndex":I
    const-string v34, "Price"

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 4875
    .local v26, "priceIndex":I
    const-string v34, "Name"

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 4876
    .local v24, "nameIndex":I
    const-string v34, "Description"

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 4877
    .local v13, "descriptionIndex":I
    const-string v34, "ItemTypeName"

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 4878
    .local v19, "itemTypeNameIndex":I
    const-string v34, "ItemsOwned"

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 4879
    .local v17, "itemOwnedIndex":I
    const-string v34, "ThumbImageName"

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 4880
    .local v30, "thumbImageNameIndex":I
    const-string v34, "FullImageName"

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 4881
    .local v15, "fullImageNameIndex":I
    const-string v34, "DataFileName"

    move-object/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 4882
    .local v11, "dataFileNameIndex":I
    const-string v28, ""

    .line 4883
    .local v28, "storeID":Ljava/lang/String;
    const-string v3, ""

    .line 4885
    .local v3, "appeProductId":Ljava/lang/String;
    const-string v23, ""

    .line 4886
    .local v23, "name":Ljava/lang/String;
    const-string v12, ""

    .line 4887
    .local v12, "description":Ljava/lang/String;
    const-string v18, ""

    .line 4889
    .local v18, "itemTypeName":Ljava/lang/String;
    const-string v29, ""

    .line 4890
    .local v29, "thumbImageName":Ljava/lang/String;
    const-string v14, ""

    .line 4891
    .local v14, "fullImageName":Ljava/lang/String;
    const-string v10, ""

    .line 4892
    .local v10, "dataFileName":Ljava/lang/String;
    const-string v5, ""

    .line 4893
    .local v5, "attributeName":Ljava/lang/String;
    const-string v7, ""

    .line 4894
    .local v7, "attributeValue":Ljava/lang/String;
    const/16 v32, 0x0

    .line 4896
    .local v32, "vgItems":Lcom/tapjoy/VGStoreItem;
    if-eqz v9, :cond_2

    .line 4898
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4899
    invoke-interface {v9}, Landroid/database/Cursor;->isFirst()Z

    move-result v34

    if-eqz v34, :cond_2

    .line 4901
    const-string v16, ","

    .line 4904
    .local v16, "ids":Ljava/lang/String;
    :cond_0
    move/from16 v0, v33

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 4906
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_5

    .line 4908
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4909
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4911
    new-instance v31, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-direct/range {v31 .. v31}, Lcom/tapjoy/VGStoreItemAttributeValue;-><init>()V

    .line 4912
    .local v31, "vgAttribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    invoke-static {v5}, Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItemAttributeValue;->setAttributeType(Ljava/lang/String;)V

    .line 4913
    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItemAttributeValue;->setAttributeValue(Ljava/lang/String;)V

    .line 4915
    if-eqz v32, :cond_1

    .line 4917
    invoke-virtual/range {v32 .. v32}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v34

    if-eqz v34, :cond_4

    .line 4918
    invoke-virtual/range {v32 .. v32}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4969
    :cond_1
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v34

    if-nez v34, :cond_0

    .line 4972
    .end local v16    # "ids":Ljava/lang/String;
    .end local v31    # "vgAttribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    :cond_2
    if-eqz v9, :cond_3

    .line 4974
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4976
    :cond_3
    return-object v27

    .line 4921
    .restart local v16    # "ids":Ljava/lang/String;
    .restart local v31    # "vgAttribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    :cond_4
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 4922
    .local v21, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4923
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemsAttributeValueList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 4929
    .end local v21    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    .end local v31    # "vgAttribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    :cond_5
    new-instance v32, Lcom/tapjoy/VGStoreItem;

    .end local v32    # "vgItems":Lcom/tapjoy/VGStoreItem;
    invoke-direct/range {v32 .. v32}, Lcom/tapjoy/VGStoreItem;-><init>()V

    .line 4930
    .restart local v32    # "vgItems":Lcom/tapjoy/VGStoreItem;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ","

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 4932
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4933
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 4934
    .local v25, "price":Ljava/lang/Integer;
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 4935
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4936
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4937
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 4938
    .local v20, "itemsOwned":Ljava/lang/Integer;
    move/from16 v0, v30

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 4939
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4940
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4942
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4943
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4944
    new-instance v31, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-direct/range {v31 .. v31}, Lcom/tapjoy/VGStoreItemAttributeValue;-><init>()V

    .line 4945
    .restart local v31    # "vgAttribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    invoke-static {v5}, Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItemAttributeValue;->setAttributeType(Ljava/lang/String;)V

    .line 4946
    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItemAttributeValue;->setAttributeValue(Ljava/lang/String;)V

    .line 4948
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 4949
    .restart local v21    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    if-eqz v31, :cond_6

    invoke-virtual/range {v31 .. v31}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeType()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_6

    .line 4950
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4952
    :cond_6
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemID(Ljava/lang/String;)V

    .line 4953
    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/tapjoy/VGStoreItem;->setProductID(Ljava/lang/String;)V

    .line 4954
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setPrice(I)V

    .line 4955
    invoke-static/range {v23 .. v23}, Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setName(Ljava/lang/String;)V

    .line 4956
    invoke-static {v12}, Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setDescription(Ljava/lang/String;)V

    .line 4957
    invoke-static/range {v18 .. v18}, Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemTypeName(Ljava/lang/String;)V

    .line 4958
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setNumberOwned(I)V

    .line 4959
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setThumbImageUrl(Ljava/lang/String;)V

    .line 4960
    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Lcom/tapjoy/VGStoreItem;->setFullImageUrl(Ljava/lang/String;)V

    .line 4961
    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Lcom/tapjoy/VGStoreItem;->setDatafileUrl(Ljava/lang/String;)V

    .line 4963
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemsAttributeValueList(Ljava/util/ArrayList;)V

    .line 4965
    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static removeTask(Landroid/os/AsyncTask;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            "Ljava/lang/Integer;",
            "Lcom/tapjoy/VGStoreItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5179
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lcom/tapjoy/VGStoreItem;Ljava/lang/Integer;Lcom/tapjoy/VGStoreItem;>;"
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5181
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5182
    const/4 v0, 0x1

    .line 5184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public CancelExecution()V
    .locals 5

    .prologue
    .line 5102
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 5103
    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5105
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5106
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    .line 5107
    .local v0, "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    if-eqz v0, :cond_0

    .line 5108
    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_0

    .line 5110
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->cancel(Z)Z

    .line 5114
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5118
    .end local v0    # "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public CheckForVirtualGoods(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 4981
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctxdownloadVg:Landroid/content/Context;

    .line 4982
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;

    .line 4983
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;Lcom/tapjoy/TJCVirtualGoods$1;)V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->fetchPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;

    .line 4984
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->fetchPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4985
    return-void
.end method

.method public DisconnectDetailPBar(Ljava/lang/String;)V
    .locals 3
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 5122
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5126
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5128
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 5129
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    .line 5130
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 5132
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5134
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    .line 5135
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 5137
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 5140
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    .line 5142
    :cond_3
    return-void
.end method

.method public SetPogressBar(ILjava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "vgId"    # Ljava/lang/String;
    .param p3, "pDetailBar"    # Landroid/widget/ProgressBar;
    .param p4, "actiontext"    # Landroid/widget/TextView;
    .param p5, "retryDetailBtn"    # Landroid/widget/Button;
    .param p6, "errorMsgDetail"    # Landroid/widget/ImageView;

    .prologue
    .line 3194
    iput p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->detailIndex:I

    .line 3197
    :try_start_0
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    .line 3199
    .local v0, "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    if-eqz v0, :cond_9

    .line 3201
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "Download Completed"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3203
    const/16 v3, 0x8

    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3204
    const/16 v3, 0x8

    invoke-virtual {p5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 3205
    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3206
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3207
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3293
    .end local v0    # "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    :goto_0
    return-void

    .line 3211
    .restart local v0    # "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    :cond_0
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3212
    iput-object p4, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    .line 3214
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "Download Pending"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3216
    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3217
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_1

    .line 3218
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3238
    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    .line 3239
    .local v2, "p":Landroid/widget/ProgressBar;
    iput-object p3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 3240
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 3241
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3243
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->retryDetailClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3244
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 3245
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMsgClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3246
    :cond_2
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMsgClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3247
    iput-object p5, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    .line 3248
    iput-object p6, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    .line 3249
    iget-boolean v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadCancel:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 3251
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3252
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v4, "Download Failed"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3253
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3254
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3263
    :goto_2
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "Download Failed"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "Downloading Failed"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3265
    :cond_3
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3266
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3267
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3288
    .end local v0    # "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    .end local v2    # "p":Landroid/widget/ProgressBar;
    :catch_0
    move-exception v1

    .line 3290
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    .line 3222
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    :cond_4
    :try_start_1
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "Download Failed"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "Downloading Failed"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3224
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {p5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 3225
    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3226
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 3230
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3231
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_1

    .line 3232
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 3259
    .restart local v2    # "p":Landroid/widget/ProgressBar;
    :cond_7
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3260
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3272
    :cond_8
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3273
    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3280
    .end local v2    # "p":Landroid/widget/ProgressBar;
    :cond_9
    const/16 v3, 0x8

    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3281
    const/16 v3, 0x8

    invoke-virtual {p5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 3282
    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3283
    const-string v3, "Download Completed"

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3285
    const-string v3, "Virtual Goods"

    const-string v4, "*** Download completed ***"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public cancleCheckForVirtualGoods()V
    .locals 2

    .prologue
    .line 4989
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->fetchPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->fetchPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;

    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 4990
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->fetchPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$FetchPurchasedVGItems;->cancel(Z)Z

    .line 4991
    :cond_0
    return-void
.end method

.method public downLoadPurcahasedVirtualGood(Ljava/util/List;Landroid/widget/TableLayout;ILandroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/Button;Landroid/widget/ImageView;)V
    .locals 19
    .param p2, "table"    # Landroid/widget/TableLayout;
    .param p3, "start"    # I
    .param p4, "actionTxt"    # Landroid/widget/TextView;
    .param p5, "detailBar"    # Landroid/widget/ProgressBar;
    .param p6, "retryDetailBtn"    # Landroid/widget/Button;
    .param p7, "errorMsgDetail"    # Landroid/widget/ImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;",
            "Landroid/widget/TableLayout;",
            "I",
            "Landroid/widget/TextView;",
            "Landroid/widget/ProgressBar;",
            "Landroid/widget/Button;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3097
    .local p1, "purchasedItems":Ljava/util/List;, "Ljava/util/List<Lcom/tapjoy/VGStoreItem;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3099
    .local v2, "allPurchsedStoreItemsIds":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->myDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v16, "SELECT VGStoreItemID FROM tapjoy_VGStoreItems"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 3100
    .local v3, "cursor":Landroid/database/Cursor;
    const-string v15, "VGStoreItemID"

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3102
    .local v8, "firstNameColumn":I
    if-eqz v3, :cond_1

    .line 3104
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3105
    invoke-interface {v3}, Landroid/database/Cursor;->isFirst()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 3109
    :cond_0
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3110
    .local v7, "firstName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3112
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-nez v15, :cond_0

    .line 3116
    .end local v7    # "firstName":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V

    .line 3117
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3120
    const-string v1, ""

    .line 3122
    .local v1, "allItems":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 3123
    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object/from16 v15, p1

    .line 3128
    check-cast v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->purchaseItems:Ljava/util/ArrayList;

    .line 3132
    move/from16 v9, p3

    .local v9, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_5

    .line 3134
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tapjoy/VGStoreItem;

    .line 3135
    .local v14, "vgItem":Lcom/tapjoy/VGStoreItem;
    if-eqz v14, :cond_4

    .line 3137
    invoke-virtual {v14}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 3139
    const-string v15, "Virtual Goods"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "download this purchased vg: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", name: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    new-instance v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V

    .line 3142
    .local v4, "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    mul-int/lit8 v15, v9, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3143
    .local v13, "v":Landroid/view/View;
    instance-of v15, v13, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_4

    move-object v10, v13

    .line 3145
    check-cast v10, Landroid/widget/LinearLayout;

    .line 3146
    .local v10, "linearLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "ProgressBar01"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    .line 3147
    .local v11, "pBar":Landroid/widget/ProgressBar;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "TextView05"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3149
    .local v5, "downloadText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "RetryBtn"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 3150
    .local v12, "retryBtn":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "errorMsg"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 3151
    .local v6, "errorMsg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->retryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMsgClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3153
    iput-object v11, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    .line 3154
    const/4 v15, 0x0

    iput-object v15, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 3155
    iput-object v5, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    .line 3156
    const/4 v15, 0x0

    iput-object v15, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    .line 3158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    if-eqz v15, :cond_3

    .line 3164
    move-object/from16 v12, p6

    .line 3174
    :cond_3
    iput-object v12, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    .line 3175
    const/4 v15, 0x0

    iput-object v15, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    .line 3176
    const/4 v15, 0x0

    iput-object v15, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    .line 3177
    iput-object v6, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    .line 3178
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v14}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3180
    const-string v15, "Download Pending"

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3181
    const/16 v15, 0x8

    invoke-virtual {v11, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3183
    const/4 v15, 0x1

    new-array v15, v15, [Lcom/tapjoy/VGStoreItem;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    invoke-static {v4, v15}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z

    .line 3132
    .end local v4    # "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    .end local v5    # "downloadText":Landroid/widget/TextView;
    .end local v6    # "errorMsg":Landroid/widget/ImageView;
    .end local v10    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v11    # "pBar":Landroid/widget/ProgressBar;
    .end local v12    # "retryBtn":Landroid/widget/Button;
    .end local v13    # "v":Landroid/view/View;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 3189
    .end local v14    # "vgItem":Lcom/tapjoy/VGStoreItem;
    :cond_5
    return-void
.end method

.method public getPurchasedItemArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5207
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getVG(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4995
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

    .line 4999
    .local v1, "params":Ljava/lang/String;
    :try_start_0
    const-string v2, "https://ws.tapjoyads.com/"

    const-string v3, "get_vg_store_items/purchased?"

    invoke-static {p1, v2, v3, v1}, Lcom/tapjoy/TJCVirtualGoods$TJCWebServiceConnection;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 5001
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 5003
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/tapjoy/TJCVirtualGoods$VGStoreItemsHandler;->parseVG(Ljava/io/InputStream;ILandroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/tapjoy/TJCVirtualGoods$TJCException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 5010
    .end local v0    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 5006
    :catch_0
    move-exception v2

    .line 5010
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getdownloadVirtualGoods()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3080
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    return-object v0
.end method

.method public listAllFiles()[Ljava/io/File;
    .locals 5

    .prologue
    .line 4845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/vgDownloads/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4846
    .local v1, "dirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4847
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4849
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 4850
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 4853
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeAndExecuteNext(Landroid/os/AsyncTask;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            "Ljava/lang/Integer;",
            "Lcom/tapjoy/VGStoreItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "atask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lcom/tapjoy/VGStoreItem;Ljava/lang/Integer;Lcom/tapjoy/VGStoreItem;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5190
    invoke-static {p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->removeTask(Landroid/os/AsyncTask;)Z

    .line 5191
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 5193
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 5194
    .local v0, "task":[Ljava/lang/Object;
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5195
    aget-object v1, v0, v3

    check-cast v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    aget-object v2, v0, v2

    check-cast v2, [Lcom/tapjoy/VGStoreItem;

    check-cast v2, [Lcom/tapjoy/VGStoreItem;

    invoke-static {v1, v2}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z

    .line 5197
    .end local v0    # "task":[Ljava/lang/Object;
    :cond_0
    return v3
.end method

.method public setPurchasedItemArray(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 5202
    .local p1, "purchasedItemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItem;>;"
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;

    .line 5203
    return-void
.end method

.method public showDLErrorDialog()V
    .locals 4

    .prologue
    .line 4809
    const/4 v0, 0x0

    .line 4810
    .local v0, "alert":Landroid/app/AlertDialog;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4811
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMesage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4812
    const-string v2, "An error occured while downloading the contents of acquired item."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4815
    :goto_0
    const-string v2, "OK"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$4;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$4;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4824
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4825
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->DLErrorDialogShown:Z

    .line 4826
    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$5;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$5;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4835
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4840
    :goto_1
    return-void

    .line 4814
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMesage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 4837
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public updateProgress(Landroid/widget/TableLayout;Landroid/widget/ProgressBar;)V
    .locals 19
    .param p1, "table"    # Landroid/widget/TableLayout;
    .param p2, "detailBar"    # Landroid/widget/ProgressBar;

    .prologue
    .line 3297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {v15}, Ljava/util/Hashtable;->size()I

    move-result v2

    .line 3299
    .local v2, "dSize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-static {v15}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 3300
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_7

    .line 3302
    mul-int/lit8 v15, v6, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3303
    .local v14, "v":Landroid/view/View;
    instance-of v15, v14, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_3

    move-object v7, v14

    .line 3305
    check-cast v7, Landroid/widget/LinearLayout;

    .line 3308
    .local v7, "linearLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "ProgressBar01"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    .line 3309
    .local v10, "pBar":Landroid/widget/ProgressBar;
    const/4 v1, 0x0

    .line 3312
    .local v1, "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v15}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    check-cast v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3319
    .restart local v1    # "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v15

    sget-object v16, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 3322
    iget-object v15, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v15}, Landroid/widget/ProgressBar;->getMax()I

    move-result v8

    .line 3323
    .local v8, "max":I
    iput-object v10, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    .line 3324
    iget-object v15, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v15, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 3325
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3327
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "YourItemProgress"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    .line 3328
    .local v11, "pBar1":Landroid/widget/ProgressBar;
    iput-object v11, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 3329
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "TextView05"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3330
    .local v3, "downloadText":Landroid/widget/TextView;
    const-string v13, ""

    .line 3331
    .local v13, "temp":Ljava/lang/String;
    iget-object v15, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 3332
    iget-object v15, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3333
    :cond_0
    iput-object v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    .line 3334
    iget-object v15, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3337
    .end local v3    # "downloadText":Landroid/widget/TextView;
    .end local v8    # "max":I
    .end local v11    # "pBar1":Landroid/widget/ProgressBar;
    .end local v13    # "temp":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    .line 3339
    iget-boolean v15, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadCancel:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 3341
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "TextView05"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3342
    .restart local v3    # "downloadText":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "RetryBtn"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 3343
    .local v12, "retryBtn":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "errorMsg"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 3344
    .local v5, "errorMsg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->retryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3345
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMsgClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3346
    iput-object v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    .line 3347
    iget-object v15, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v16, "Download Failed"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3349
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    if-eqz v15, :cond_2

    .line 3355
    :try_start_1
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$4400()Landroid/widget/Button;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 3365
    :cond_2
    :goto_2
    iput-object v12, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    .line 3366
    iput-object v10, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    .line 3367
    iget-object v15, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 3368
    iput-object v5, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    .line 3369
    iget-object v15, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3300
    .end local v1    # "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    .end local v3    # "downloadText":Landroid/widget/TextView;
    .end local v5    # "errorMsg":Landroid/widget/ImageView;
    .end local v7    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v10    # "pBar":Landroid/widget/ProgressBar;
    .end local v12    # "retryBtn":Landroid/widget/Button;
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 3314
    .restart local v7    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v10    # "pBar":Landroid/widget/ProgressBar;
    :catch_0
    move-exception v4

    .line 3316
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    .restart local v1    # "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    goto/16 :goto_1

    .line 3357
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "downloadText":Landroid/widget/TextView;
    .restart local v5    # "errorMsg":Landroid/widget/ImageView;
    .restart local v12    # "retryBtn":Landroid/widget/Button;
    :catch_1
    move-exception v4

    .line 3362
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_2

    .line 3374
    .end local v3    # "downloadText":Landroid/widget/TextView;
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "errorMsg":Landroid/widget/ImageView;
    .end local v12    # "retryBtn":Landroid/widget/Button;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "RetryBtn"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 3375
    .restart local v12    # "retryBtn":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "errorMsg"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 3376
    .restart local v5    # "errorMsg":Landroid/widget/ImageView;
    iput-object v10, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    .line 3377
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "TextView05"

    const-string v17, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3379
    .restart local v3    # "downloadText":Landroid/widget/TextView;
    const-string v9, ""

    .line 3380
    .local v9, "msg":Ljava/lang/String;
    iget-object v15, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    if-eqz v15, :cond_5

    .line 3381
    iget-object v15, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3383
    :cond_5
    iput-object v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    .line 3384
    iget-object v15, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3386
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    if-eqz v15, :cond_6

    .line 3392
    :try_start_2
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$4400()Landroid/widget/Button;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v12

    .line 3402
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->retryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3403
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMsgClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3404
    iput-object v12, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    .line 3405
    iput-object v5, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    goto/16 :goto_3

    .line 3394
    :catch_2
    move-exception v4

    .line 3399
    .restart local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_4

    .line 3410
    .end local v1    # "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    .end local v3    # "downloadText":Landroid/widget/TextView;
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v5    # "errorMsg":Landroid/widget/ImageView;
    .end local v7    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v9    # "msg":Ljava/lang/String;
    .end local v10    # "pBar":Landroid/widget/ProgressBar;
    .end local v12    # "retryBtn":Landroid/widget/Button;
    .end local v14    # "v":Landroid/view/View;
    :cond_7
    return-void
.end method
