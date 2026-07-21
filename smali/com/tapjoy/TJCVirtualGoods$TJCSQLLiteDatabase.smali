.class public Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TJCSQLLiteDatabase"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "TapjoyLocalDB.sql"

.field private static final DATABASE_VERSION:I = 0x1


# instance fields
.field tapjoyDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 5239
    const-string v0, "TapjoyLocalDB.sql"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 5235
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;->tapjoyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 5240
    return-void
.end method


# virtual methods
.method public getTapjoyDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 5260
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 5245
    const-string v0, "CREATE TABLE tapjoy_VGStoreItems(VGStoreItemID TEXT PRIMARY KEY, AppleProductID TEXT(50), Price INTEGER, Name TEXT(100),Description TEXT(1000), ItemTypeName TEXT(100), ItemsOwned INTEGER, ThumbImageName TEXT(100), FullImageName TEXT(100), DataFileName TEXT(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5246
    const-string v0, "CREATE TABLE tapjoy_VGStoreItemAttribute(id INTEGER PRIMARY KEY, VGStoreItemID TEXT, AttributeName TEXT(100), AttributeValue TEXT(100))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5247
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 5252
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5253
    const-string v0, "DROP TABLE IF EXISTS tapjoy_VGStoreItems"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5254
    const-string v0, "DROP TABLE IF EXISTS tapjoy_VGStoreItemAttribute"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5255
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5256
    return-void
.end method
