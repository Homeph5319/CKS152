.class public Lcom/glu/android/GluTapjoy;
.super Ljava/lang/Object;
.source "GluTapjoy.java"

# interfaces
.implements Lcom/tapjoy/TapjoyNotifier;
.implements Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;
.implements Lcom/tapjoy/TapjoyFeaturedAppNotifier;
.implements Lcom/tapjoy/TapjoyDisplayAdNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GluTapjoy$tTapjoyData;,
        Lcom/glu/android/GluTapjoy$TapjoyItemList;,
        Lcom/glu/android/GluTapjoy$TapjoyItem;
    }
.end annotation


# static fields
.field private static final DO_NOT_RETRY:I = 0xfacade

.field private static final RETRY_TIMER:I = 0x2710

.field public static final TAPJOY_EVENT_ARE_ALL_ITEMS_CLAIMED:I = 0xd

.field public static final TAPJOY_EVENT_CAN_DISPLAY_INTERFACE:I = 0x6

.field public static final TAPJOY_EVENT_CLOSE_INTERFACE:I = 0x2

.field public static final TAPJOY_EVENT_CONSUME_TJ_POINTS:I = 0x4

.field public static final TAPJOY_EVENT_CONSUME_VIRTUAL_GOOD:I = 0xc

.field public static final TAPJOY_EVENT_DEBUG_GIVE_POINTS:I = -0x1

.field public static final TAPJOY_EVENT_GET_FEATURED_AMOUNT:I = 0x64

.field public static final TAPJOY_EVENT_GET_FEATURED_APP_DESCRIPTION:I = 0xcb

.field public static final TAPJOY_EVENT_GET_FEATURED_APP_NAME:I = 0xca

.field public static final TAPJOY_EVENT_GET_FEATURED_COST:I = 0xc8

.field public static final TAPJOY_EVENT_GET_FEATURED_CURRENCY_NAME:I = 0xcf

.field public static final TAPJOY_EVENT_GET_FEATURED_FULLSCREEN_URL:I = 0xce

.field public static final TAPJOY_EVENT_GET_FEATURED_ICON_URL:I = 0xcc

.field public static final TAPJOY_EVENT_GET_FEATURED_MAX_DISPLAY:I = 0x65

.field public static final TAPJOY_EVENT_GET_FEATURED_STORE_ID:I = 0xc9

.field public static final TAPJOY_EVENT_GET_FEATURED_TARGET_URL:I = 0xcd

.field public static final TAPJOY_EVENT_GET_LAST_CONSUMED:I = 0x8

.field public static final TAPJOY_EVENT_GET_LAST_POINT_TOTAL:I = 0xf

.field public static final TAPJOY_EVENT_GET_REMAINING_ITEM_COUNT:I = 0xb

.field public static final TAPJOY_EVENT_GET_TJ_POINTS:I = 0x3

.field public static final TAPJOY_EVENT_HANDLE_RESUME:I = 0x9

.field public static final TAPJOY_EVENT_IS_FEATURED_APP_READY:I = 0x11

.field public static final TAPJOY_EVENT_IS_INTERFACE_OPEN:I = 0x7

.field public static final TAPJOY_EVENT_IS_TAPJOY_READY:I = 0xe

.field public static final TAPJOY_EVENT_OPEN_INTERFACE:I = 0x1

.field public static final TAPJOY_EVENT_SHOW_FEATURED_APP:I = 0x10

.field public static final TAPJOY_EVENT_SHOW_IAP_INTERFACE:I = 0xa

.field public static final TAPJOY_EVENT_TICK:I = 0x5

.field public static final TAPJOY_STATUS_FILENAME:Ljava/lang/String; = "tapjoy.dat"

.field private static final UPDATE_POINTS_RETRY_TIMER:I = 0xea60

.field public static instance:Lcom/glu/android/GluTapjoy;


# instance fields
.field private m_bannerAdRetryTimer:I

.field private m_featuredAdGetInProgress:Z

.field private m_featuredAppRetryTimer:I

.field private m_getTapPointsThread:Ljava/lang/Thread;

.field public m_gotDataFromServer:Z

.field public m_lastConsumed:I

.field public m_tickCount:I

.field private m_updatePointsRetryTimer:I

.field public m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

.field private m_usingOldTapjoyFile:Z

.field private retryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const v0, 0xfacade

    const/4 v1, 0x0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput v1, p0, Lcom/glu/android/GluTapjoy;->m_lastConsumed:I

    .line 280
    iput v1, p0, Lcom/glu/android/GluTapjoy;->m_tickCount:I

    .line 281
    iput-boolean v1, p0, Lcom/glu/android/GluTapjoy;->m_gotDataFromServer:Z

    .line 284
    iput-object v2, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    .line 288
    iput v0, p0, Lcom/glu/android/GluTapjoy;->m_updatePointsRetryTimer:I

    .line 291
    iput v0, p0, Lcom/glu/android/GluTapjoy;->m_featuredAppRetryTimer:I

    .line 292
    iput v0, p0, Lcom/glu/android/GluTapjoy;->m_bannerAdRetryTimer:I

    .line 318
    iput-boolean v1, p0, Lcom/glu/android/GluTapjoy;->m_usingOldTapjoyFile:Z

    .line 406
    iput-object v2, p0, Lcom/glu/android/GluTapjoy;->m_getTapPointsThread:Ljava/lang/Thread;

    .line 702
    iput-boolean v1, p0, Lcom/glu/android/GluTapjoy;->m_featuredAdGetInProgress:Z

    .line 799
    iput v1, p0, Lcom/glu/android/GluTapjoy;->retryCount:I

    .line 296
    sput-object p0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    .line 298
    sget-boolean v0, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    .line 301
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->setUserDefinedColor(I)V

    .line 303
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/glu/android/GluTapjoy;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluTapjoy;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/glu/android/GluTapjoy;->m_getTapPointsThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private copyDataFileToNewLocation()V
    .locals 4

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->getOldDataFile()Ljava/io/File;

    move-result-object v0

    .line 322
    .local v0, "oldF":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->getDataFile()Ljava/io/File;

    move-result-object v2

    .line 325
    .local v2, "trueF":Ljava/io/File;
    invoke-static {}, Lcom/glu/android/GluUtil;->getTmpSecureFile()Ljava/io/File;

    move-result-object v1

    .line 326
    .local v1, "tmp":Ljava/io/File;
    const/4 v3, 0x4

    invoke-static {v0, v1, v3}, Lcom/glu/android/GluUtil;->copyFile(Ljava/io/File;Ljava/io/File;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    invoke-static {v2}, Lcom/glu/android/GluUtil;->saveSecureFile(Ljava/io/File;)Z

    .line 329
    const-string v3, "Copied old Tapjoy file to new location."

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 338
    .end local v1    # "tmp":Ljava/io/File;
    .end local v2    # "trueF":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 334
    .restart local v1    # "tmp":Ljava/io/File;
    .restart local v2    # "trueF":Ljava/io/File;
    :cond_1
    const-string v3, "Error: Could not copy old Tapjoy file for some reason."

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 335
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/glu/android/GluTapjoy;->m_usingOldTapjoyFile:Z

    goto :goto_0
.end method

.method private getDataFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/glu/android/GluTapjoy;->m_usingOldTapjoyFile:Z

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->getOldDataFile()Ljava/io/File;

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tapjoy.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOldDataFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 342
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tapjoy.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private loadData()V
    .locals 6

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->copyDataFileToNewLocation()V

    .line 356
    const/4 v2, 0x0

    .line 359
    .local v2, "success":Z
    :try_start_0
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->getDataFile()Ljava/io/File;

    move-result-object v3

    .line 360
    .local v3, "tjFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    const-string v4, "Reading Tapjoy save file."

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 363
    invoke-static {v3}, Lcom/glu/android/GluUtil;->getFISCrc32(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 364
    .local v1, "fis":Ljava/io/FileInputStream;
    iget-object v4, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    invoke-virtual {v4, v1}, Lcom/glu/android/GluTapjoy$tTapjoyData;->read(Ljava/io/FileInputStream;)Z

    move-result v2

    .line 365
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 367
    invoke-static {v3}, Lcom/glu/android/GluUtil;->verifySecureFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " integrity failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 371
    iget-object v4, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    invoke-virtual {v4}, Lcom/glu/android/GluTapjoy$tTapjoyData;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "tjFile":Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 383
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->saveData()V

    .line 384
    :cond_1
    return-void

    .line 376
    .restart local v3    # "tjFile":Ljava/io/File;
    :cond_2
    :try_start_1
    const-string v4, "Tapjoy data file not present."

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 378
    .end local v3    # "tjFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "GluTapjoy.loadData() failed."

    invoke-static {v4, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    sget-boolean v0, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    if-eqz v0, :cond_2

    .line 312
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->finalize()V

    .line 314
    :cond_2
    sget-object v0, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    iput-object v1, v0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    .line 315
    sput-object v1, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    goto :goto_0
.end method

.method private populateUpdatedVGData()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method private saveData()V
    .locals 5

    .prologue
    .line 389
    :try_start_0
    const-string v4, "Writing Tapjoy save file."

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/glu/android/GluUtil;->getTmpSecureFile()Ljava/io/File;

    move-result-object v3

    .line 391
    .local v3, "tmp":Ljava/io/File;
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->getDataFile()Ljava/io/File;

    move-result-object v0

    .line 392
    .local v0, "dataFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 393
    .local v2, "fos":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    invoke-virtual {v4, v2}, Lcom/glu/android/GluTapjoy$tTapjoyData;->write(Ljava/io/FileOutputStream;)V

    .line 394
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 397
    invoke-static {v0}, Lcom/glu/android/GluUtil;->saveSecureFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v0    # "dataFile":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "tmp":Ljava/io/File;
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v1

    .line 402
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "GluTapjoy.saveData() failed."

    invoke-static {v4, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private updateDataFromServer()V
    .locals 1

    .prologue
    .line 409
    const-string v0, "Getting TJ data from server..."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/glu/android/GluTapjoy;->m_getTapPointsThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Lcom/glu/android/GluTapjoy$1;

    invoke-direct {v0, p0}, Lcom/glu/android/GluTapjoy$1;-><init>(Lcom/glu/android/GluTapjoy;)V

    iput-object v0, p0, Lcom/glu/android/GluTapjoy;->m_getTapPointsThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 420
    :goto_0
    return-void

    .line 419
    :cond_0
    const-string v0, "Attempted to update TJ data from server while it\'s already being done..."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateVGDataFromServer()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method


# virtual methods
.method public areAllItemsClaimed()Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x1

    return v0
.end method

.method public canDisplayInterface()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 564
    sget-boolean v1, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    if-nez v1, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closeInterface()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public consumeTapjoyPoints(I)Z
    .locals 2
    .param p1, "points"    # I

    .prologue
    const/4 v0, 0x0

    .line 500
    sget-boolean v1, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    if-nez v1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    iget v1, v1, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_remainingPointsToAward:I

    if-gt p1, v1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    iget v1, v0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_remainingPointsToAward:I

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_remainingPointsToAward:I

    .line 507
    iput p1, p0, Lcom/glu/android/GluTapjoy;->m_lastConsumed:I

    .line 508
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->saveData()V

    .line 509
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public consumeVirtualGood(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "itemID"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public debugGivePoints(I)V
    .locals 0
    .param p1, "amount"    # I

    .prologue
    .line 716
    return-void
.end method

.method public displayInterface()V
    .locals 2

    .prologue
    .line 482
    sget-boolean v0, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 485
    :cond_0
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->showOffers(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getDisplayAdResponse(Landroid/view/View;)V
    .locals 3
    .param p1, "adView"    # Landroid/view/View;

    .prologue
    .line 837
    const-string v0, "getDisplayAdResponse()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 838
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    sget-object v1, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/tapjoy/TapjoyDisplayAd;->adClickURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setBannerAd(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method public getDisplayAdResponseFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayAdResponseFailed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 844
    const/16 v0, 0x2710

    iput v0, p0, Lcom/glu/android/GluTapjoy;->m_bannerAdRetryTimer:I

    .line 845
    return-void
.end method

.method public getFeaturedAppIntAttribute(I)I
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 660
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd;->queueFeaturedAdRotation()V

    .line 662
    packed-switch p1, :pswitch_data_0

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid featured app event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 671
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 665
    :pswitch_0
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getAmount()I

    move-result v0

    goto :goto_0

    .line 667
    :pswitch_1
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getAdIterations()I

    move-result v0

    goto :goto_0

    .line 662
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFeaturedAppResponse(Lcom/tapjoy/TapjoyFeaturedAppObject;)V
    .locals 3
    .param p1, "featuredAppObject"    # Lcom/tapjoy/TapjoyFeaturedAppObject;

    .prologue
    .line 771
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/glu/android/GluTapjoy;->m_featuredAdGetInProgress:Z

    .line 772
    const-string v1, "Get featured app success."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->cost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->amount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iconURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->iconURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redirectURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->redirectURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxTimesToDisplayThisApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->maxTimesToDisplayThisApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fullScreenAdURL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 784
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    .line 785
    .local v0, "tmp":Lcom/glu/android/FeaturedAppAd;
    if-eqz v0, :cond_0

    .line 787
    sget-object v1, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v1, v1, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->cost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setCost(Ljava/lang/String;)V

    .line 788
    sget-object v1, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v1, v1, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setStoreId(Ljava/lang/String;)V

    .line 789
    sget-object v1, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v1, v1, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setAppName(Ljava/lang/String;)V

    .line 790
    sget-object v1, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v1, v1, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setAppDescription(Ljava/lang/String;)V

    .line 791
    sget-object v1, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v1, v1, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    iget v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->amount:I

    invoke-virtual {v1, v2}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setAmount(I)V

    .line 792
    sget-object v1, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v1, v1, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->iconURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setIcon(Ljava/lang/String;)V

    .line 793
    sget-object v1, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v1, v1, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->redirectURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setTargetURL(Ljava/lang/String;)V

    .line 794
    sget-object v1, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v2, v1, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    iget v1, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->maxTimesToDisplayThisApp:I

    if-nez v1, :cond_1

    const/4 v1, 0x5

    :goto_0
    invoke-virtual {v2, v1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setAdIterations(I)V

    .line 795
    sget-object v1, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v1, v1, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    iget-object v2, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setFullScreenAdURL(Ljava/lang/String;)V

    .line 797
    :cond_0
    return-void

    .line 794
    :cond_1
    iget v1, p1, Lcom/tapjoy/TapjoyFeaturedAppObject;->maxTimesToDisplayThisApp:I

    goto :goto_0
.end method

.method public getFeaturedAppResponseFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GluTapjoy;->m_featuredAdGetInProgress:Z

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFeaturedAppResponseFailed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 805
    iget v0, p0, Lcom/glu/android/GluTapjoy;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glu/android/GluTapjoy;->retryCount:I

    .line 807
    iget v0, p0, Lcom/glu/android/GluTapjoy;->retryCount:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 808
    const/16 v0, 0x2710

    iput v0, p0, Lcom/glu/android/GluTapjoy;->m_featuredAppRetryTimer:I

    .line 814
    :cond_0
    iget v0, p0, Lcom/glu/android/GluTapjoy;->retryCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 816
    :cond_1
    return-void
.end method

.method public getFeaturedAppStringAttribute(I)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 676
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd;->queueFeaturedAdRotation()V

    .line 678
    packed-switch p1, :pswitch_data_0

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid featured app event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 699
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 681
    :pswitch_0
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getCost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 683
    :pswitch_1
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getStoreId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 685
    :pswitch_2
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getAppName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 687
    :pswitch_3
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getAppDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 689
    :pswitch_4
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getIcon()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 691
    :pswitch_5
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getTargetURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 693
    :pswitch_6
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getFullScreenAdURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 695
    :pswitch_7
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->getCurrencyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getLastConsumed()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/glu/android/GluTapjoy;->m_lastConsumed:I

    return v0
.end method

.method public getLastPointTotal()I
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    iget v0, v0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_totalPointsHandled:I

    return v0
.end method

.method public getRemainingItemCount(Ljava/lang/String;)I
    .locals 1
    .param p1, "itemID"    # Ljava/lang/String;

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public getTapjoyPoints()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    iget v0, v0, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_remainingPointsToAward:I

    return v0
.end method

.method public getUpdatePoints(Ljava/lang/String;I)V
    .locals 4
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "pointTotal"    # I

    .prologue
    .line 750
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-nez v1, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdatePoints got currency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " points="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    iget v2, v1, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_remainingPointsToAward:I

    iget-object v3, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    iget v3, v3, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_totalPointsHandled:I

    sub-int v3, p2, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_remainingPointsToAward:I

    .line 756
    iget-object v1, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    iput p2, v1, Lcom/glu/android/GluTapjoy$tTapjoyData;->m_totalPointsHandled:I

    .line 757
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->saveData()V

    .line 759
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    .line 760
    .local v0, "tmp":Lcom/glu/android/FeaturedAppAd;
    if-eqz v0, :cond_0

    .line 762
    sget-object v1, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v1, v1, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v1, p1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setCurrencyName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUpdatePointsFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 740
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-nez v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 743
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUpdatePointsFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 745
    const v0, 0xea60

    iput v0, p0, Lcom/glu/android/GluTapjoy;->m_updatePointsRetryTimer:I

    goto :goto_0
.end method

.method public handleResume(Z)V
    .locals 1
    .param p1, "virtualGoodsEnabled"    # Z

    .prologue
    .line 582
    sget-boolean v0, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    if-nez v0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->updateDataFromServer()V

    goto :goto_0
.end method

.method public initUserData()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/glu/android/GluTapjoy$tTapjoyData;

    invoke-direct {v0}, Lcom/glu/android/GluTapjoy$tTapjoyData;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    .line 466
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->loadData()V

    .line 467
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->updateDataFromServer()V

    .line 469
    :cond_0
    return-void
.end method

.method public internalShowFeaturedApp()V
    .locals 2

    .prologue
    .line 705
    sget-boolean v0, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GluTapjoy;->m_featuredAdGetInProgress:Z

    if-eqz v0, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GluTapjoy;->m_featuredAdGetInProgress:Z

    .line 709
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0, v1, p0}, Lcom/tapjoy/TapjoyConnect;->getFeaturedApp(Landroid/content/Context;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V

    goto :goto_0
.end method

.method public isFeaturedAppReady()Z
    .locals 1

    .prologue
    .line 655
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-virtual {v0}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->isFeaturedAdValid()Z

    move-result v0

    return v0
.end method

.method public isInit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 637
    sget-boolean v1, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    if-nez v1, :cond_1

    .line 640
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/glu/android/GluTapjoy;->m_userData:Lcom/glu/android/GluTapjoy$tTapjoyData;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInterfaceOpen()Z
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public onDownLoad(Lcom/tapjoy/VGStoreItem;)V
    .locals 0
    .param p1, "downloadItem"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 736
    return-void
.end method

.method public requestNewBannerAd()V
    .locals 2

    .prologue
    .line 473
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0, v1, p0}, Lcom/tapjoy/TapjoyConnect;->getDisplayAd(Landroid/content/Context;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 474
    return-void
.end method

.method public setupFakeFeaturedApp()V
    .locals 2

    .prologue
    .line 821
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    const-string v1, "0.00"

    invoke-virtual {v0, v1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setCost(Ljava/lang/String;)V

    .line 822
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    const-string v1, "S25C1FAKE6NV"

    invoke-virtual {v0, v1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setStoreId(Ljava/lang/String;)V

    .line 823
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    const-string v1, "pwnz0r lolcat"

    invoke-virtual {v0, v1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setAppName(Ljava/lang/String;)V

    .line 824
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    const-string v1, "Watch lolcats in harrowing situations, for free!"

    invoke-virtual {v0, v1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setAppDescription(Ljava/lang/String;)V

    .line 825
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setAmount(I)V

    .line 826
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    const-string v1, "http://www.pamelabowman.org/lolcat.png"

    invoke-virtual {v0, v1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setIcon(Ljava/lang/String;)V

    .line 827
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    const-string v1, "http://www.slashdot.org"

    invoke-virtual {v0, v1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setTargetURL(Ljava/lang/String;)V

    .line 828
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setAdIterations(I)V

    .line 829
    sget-object v0, Lcom/glu/android/FeaturedAppAd;->instance:Lcom/glu/android/FeaturedAppAd;

    iget-object v0, v0, Lcom/glu/android/FeaturedAppAd;->m_view:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    const-string v1, "http://news.google.com"

    invoke-virtual {v0, v1}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setFullScreenAdURL(Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public showFeaturedApp()V
    .locals 0

    .prologue
    .line 651
    return-void
.end method

.method public showIAPInterface()V
    .locals 1

    .prologue
    .line 594
    sget-boolean v0, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    if-nez v0, :cond_0

    .line 599
    :cond_0
    return-void
.end method

.method public tick(I)V
    .locals 3
    .param p1, "deltaMS"    # I

    .prologue
    const v2, 0xfacade

    .line 514
    sget-boolean v0, Lcom/glu/android/Settings;->TAPJOY_ENABLED:Z

    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget v0, p0, Lcom/glu/android/GluTapjoy;->m_tickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/glu/android/GluTapjoy;->m_tickCount:I

    .line 520
    iget v0, p0, Lcom/glu/android/GluTapjoy;->m_tickCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 523
    invoke-virtual {p0}, Lcom/glu/android/GluTapjoy;->internalShowFeaturedApp()V

    .line 524
    invoke-virtual {p0}, Lcom/glu/android/GluTapjoy;->requestNewBannerAd()V

    .line 526
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->handlerInitTapjoyUserData()V

    .line 531
    :cond_2
    iget v0, p0, Lcom/glu/android/GluTapjoy;->m_featuredAppRetryTimer:I

    if-eq v0, v2, :cond_3

    .line 533
    iget v0, p0, Lcom/glu/android/GluTapjoy;->m_featuredAppRetryTimer:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/GluTapjoy;->m_featuredAppRetryTimer:I

    .line 534
    iget v0, p0, Lcom/glu/android/GluTapjoy;->m_featuredAppRetryTimer:I

    if-gtz v0, :cond_3

    .line 536
    iput v2, p0, Lcom/glu/android/GluTapjoy;->m_featuredAppRetryTimer:I

    .line 537
    invoke-virtual {p0}, Lcom/glu/android/GluTapjoy;->internalShowFeaturedApp()V

    .line 541
    :cond_3
    iget v0, p0, Lcom/glu/android/GluTapjoy;->m_bannerAdRetryTimer:I

    if-eq v0, v2, :cond_4

    .line 543
    iget v0, p0, Lcom/glu/android/GluTapjoy;->m_bannerAdRetryTimer:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/GluTapjoy;->m_bannerAdRetryTimer:I

    .line 544
    iget v0, p0, Lcom/glu/android/GluTapjoy;->m_bannerAdRetryTimer:I

    if-gtz v0, :cond_4

    .line 546
    iput v2, p0, Lcom/glu/android/GluTapjoy;->m_bannerAdRetryTimer:I

    .line 547
    invoke-virtual {p0}, Lcom/glu/android/GluTapjoy;->requestNewBannerAd()V

    .line 551
    :cond_4
    iget v0, p0, Lcom/glu/android/GluTapjoy;->m_updatePointsRetryTimer:I

    if-eq v0, v2, :cond_0

    .line 553
    iget v0, p0, Lcom/glu/android/GluTapjoy;->m_updatePointsRetryTimer:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/GluTapjoy;->m_updatePointsRetryTimer:I

    .line 554
    iget v0, p0, Lcom/glu/android/GluTapjoy;->m_updatePointsRetryTimer:I

    if-gtz v0, :cond_0

    .line 556
    iput v2, p0, Lcom/glu/android/GluTapjoy;->m_updatePointsRetryTimer:I

    .line 557
    invoke-direct {p0}, Lcom/glu/android/GluTapjoy;->updateDataFromServer()V

    goto :goto_0
.end method
