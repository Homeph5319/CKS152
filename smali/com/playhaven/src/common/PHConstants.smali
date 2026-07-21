.class public Lcom/playhaven/src/common/PHConstants;
.super Ljava/lang/Object;
.source "PHConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/common/PHConstants$Production;,
        Lcom/playhaven/src/common/PHConstants$Environment;
    }
.end annotation


# static fields
.field private static environment:Lcom/playhaven/src/common/PHConstants$Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/playhaven/src/common/PHConstants$Production;

    invoke-direct {v0}, Lcom/playhaven/src/common/PHConstants$Production;-><init>()V

    sput-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    return-void
.end method

.method private static didSetKeys()Z
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->access$000(Lcom/playhaven/src/common/PHConstants$Environment;)Z

    move-result v0

    return v0
.end method

.method public static dipToPixels(F)F
    .locals 1

    .prologue
    .line 408
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->dipToPixels(F)F

    move-result v0

    return v0
.end method

.method public static findDeviceInfo(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->findDeviceInfo(Landroid/app/Activity;)V

    .line 405
    return-void
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableHeight(Landroid/app/Activity;)I
    .locals 1

    .prologue
    .line 478
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->getAvailableHeight(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public static getAvailableWidth(Landroid/app/Activity;)I
    .locals 1

    .prologue
    .line 482
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->getAvailableWidth(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public static getBasicAuthPass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getBasicAuthPass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBasicAuthUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getBasicAuthUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIdiom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getDeviceIdiom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceOrientation(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getEnvironment()Lcom/playhaven/src/common/PHConstants$Environment;
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    return-object v0
.end method

.method public static getOSName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getOSName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOriginalConnectionType()I
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getOriginalConnectionType()I

    move-result v0

    return v0
.end method

.method public static getOriginalHeight()I
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getOriginalHeight()I

    move-result v0

    return v0
.end method

.method public static getOriginalWidth()I
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getOriginalWidth()I

    move-result v0

    return v0
.end method

.method public static getProtocolVersion()I
    .locals 1

    .prologue
    .line 498
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getProtocolVersion()I

    move-result v0

    return v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenDensity()F
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getScreenDensity()F

    move-result v0

    return v0
.end method

.method public static getScreenDensityType()I
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getScreenDensityType()I

    move-result v0

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 474
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 470
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTemplateURL(Lcom/playhaven/src/publishersdk/content/PHContent;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 442
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->getTemplateURL(Lcom/playhaven/src/publishersdk/content/PHContent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTopBarHeight(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->getTopBarHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->isOnline(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static phFormatUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->phFormatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static phLog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 436
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->phLog(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public static phURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0}, Lcom/playhaven/src/common/PHConstants$Environment;->phURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setEnvironment(Lcom/playhaven/src/common/PHConstants$Environment;)V
    .locals 0

    .prologue
    .line 382
    sput-object p0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    .line 383
    return-void
.end method

.method public static setKeys(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 392
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0, p0, p1}, Lcom/playhaven/src/common/PHConstants$Environment;->setKeys(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public static shouldCacheWebView()Z
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->shouldCacheWebView()Z

    move-result v0

    return v0
.end method

.method public static shouldRecycleContentViews()Z
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->shouldRecycleContentViews()Z

    move-result v0

    return v0
.end method

.method public static useBasicAuth()Z
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/playhaven/src/common/PHConstants;->environment:Lcom/playhaven/src/common/PHConstants$Environment;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHConstants$Environment;->useBasicAuth()Z

    move-result v0

    return v0
.end method
