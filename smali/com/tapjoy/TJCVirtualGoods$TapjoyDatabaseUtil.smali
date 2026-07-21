.class public Lcom/tapjoy/TJCVirtualGoods$TapjoyDatabaseUtil;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TapjoyDatabaseUtil"
.end annotation


# static fields
.field public static db:Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5215
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods$TapjoyDatabaseUtil;->db:Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5219
    return-void
.end method

.method public static getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 5223
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods$TapjoyDatabaseUtil;->db:Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;

    if-nez v0, :cond_0

    .line 5224
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods$TapjoyDatabaseUtil;->db:Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;

    .line 5225
    :cond_0
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods$TapjoyDatabaseUtil;->db:Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;

    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;->getTapjoyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
