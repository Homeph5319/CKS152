.class public final Lcom/tapjoy/TapjoyConnect;
.super Ljava/lang/Object;
.source "TapjoyConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyConnect$1;,
        Lcom/tapjoy/TapjoyConnect$PayPerActionTask;,
        Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;,
        Lcom/tapjoy/TapjoyConnect$ConnectGetPointsTask;,
        Lcom/tapjoy/TapjoyConnect$ConnectTask;
    }
.end annotation


# static fields
.field static final CONTAINS_EXTERNAL_DATA:Ljava/lang/String; = "containsExternalData"

.field static final EMULATOR_DEVICE_ID:Ljava/lang/String; = "emulatorDeviceId"

.field static final EXTRA_CLIENT_PACKAGE:Ljava/lang/String; = "CLIENT_PACKAGE"

.field static final EXTRA_FEATURED_APP_FULLSCREEN_AD_URL:Ljava/lang/String; = "FULLSCREEN_AD_URL"

.field static final EXTRA_URL_BASE:Ljava/lang/String; = "URL_BASE"

.field static final EXTRA_URL_PARAMS:Ljava/lang/String; = "URL_PARAMS"

.field static final EXTRA_USER_ID:Ljava/lang/String; = "USER_ID"

.field static final REFERRAL_URL:Ljava/lang/String; = "InstallReferral"

.field static final TAPJOY_CONNECT:Ljava/lang/String; = "TapjoyConnect"

.field static final TAPJOY_PRIMARY_COLOR:Ljava/lang/String; = "tapjoyPrimaryColor"

.field static final TJC_BASE_REDIRECT_DOMAIN:Ljava/lang/String; = "ws.tapjoyads.com"

.field static final TJC_CONNECT_URL_PATH:Ljava/lang/String; = "connect?"

.field static final TJC_DEVICE_PLATFORM_TYPE:Ljava/lang/String; = "android"

.field public static final TJC_LIBRARY_VERSION_NUMBER:Ljava/lang/String; = "7.1.1"

.field static final TJC_PREFERENCE:Ljava/lang/String; = "tjcPrefrences"

.field static final TJC_SERVICE_URL:Ljava/lang/String; = "https://ws.tapjoyads.com/"

.field static final TJC_SPEND_POINTS_URL_PATH:Ljava/lang/String; = "purchase_vg/spend?"

.field static final TJC_USERDATA_URL_PATH:Ljava/lang/String; = "get_vg_store_items/user_account?"

.field private static tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

.field public static tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

.field public static tapjoyDownloadListener:Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

.field private static tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

.field private static tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

.field private static tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;


# instance fields
.field final TJC_APP_ID_NAME:Ljava/lang/String;

.field final TJC_APP_VERSION_NAME:Ljava/lang/String;

.field final TJC_CONNECT_LIBRARY_VERSION_NAME:Ljava/lang/String;

.field final TJC_DEVICE_COUNTRY_CODE:Ljava/lang/String;

.field final TJC_DEVICE_ID_NAME:Ljava/lang/String;

.field final TJC_DEVICE_LANGUAGE:Ljava/lang/String;

.field final TJC_DEVICE_NAME:Ljava/lang/String;

.field final TJC_DEVICE_OS_VERSION_NAME:Ljava/lang/String;

.field final TJC_DEVICE_SCREEN_DENSITY:Ljava/lang/String;

.field final TJC_DEVICE_SCREEN_LAYOUT_SIZE:Ljava/lang/String;

.field final TJC_DEVICE_TYPE_NAME:Ljava/lang/String;

.field final TJC_MULTIPLE_CURRENCY_ID:Ljava/lang/String;

.field final TJC_MULTIPLE_CURRENCY_SELECTOR_FLAG:Ljava/lang/String;

.field final TJC_SPEND_TAP_POINTS:Ljava/lang/String;

.field final TJC_USER_ID:Ljava/lang/String;

.field private actionURLParams:Ljava/lang/String;

.field private appID:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private clientPackage:Ljava/lang/String;

.field private connectGetPointsTask:Lcom/tapjoy/TapjoyConnect$ConnectGetPointsTask;

.field private connectSpendPointsTask:Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;

.field private connectTask:Lcom/tapjoy/TapjoyConnect$ConnectTask;

.field private context:Landroid/content/Context;

.field private deviceCountryCode:Ljava/lang/String;

.field private deviceID:Ljava/lang/String;

.field private deviceLanguage:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private deviceOSVersion:Ljava/lang/String;

.field private deviceScreenDensity:Ljava/lang/String;

.field private deviceScreenLayoutSize:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private deviceUserID:Ljava/lang/String;

.field private focusListener:Lcom/tapjoy/TJCVirtualGoods$FocusListener;

.field private libraryVersion:Ljava/lang/String;

.field private payPerActionTask:Lcom/tapjoy/TapjoyConnect$PayPerActionTask;

.field private primaryColor:I

.field private referralURL:Ljava/lang/String;

.field private spendTapPoints:Ljava/lang/String;

.field private urlParams:Ljava/lang/String;

.field private virtualgoodsUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 93
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    .line 94
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    .line 95
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 176
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDownloadListener:Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v3, p0, Lcom/tapjoy/TapjoyConnect;->connectTask:Lcom/tapjoy/TapjoyConnect$ConnectTask;

    .line 90
    iput-object v3, p0, Lcom/tapjoy/TapjoyConnect;->context:Landroid/content/Context;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceName:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceType:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceOSVersion:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceCountryCode:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceLanguage:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->appID:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->appVersion:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->libraryVersion:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceScreenDensity:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceScreenLayoutSize:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceUserID:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->spendTapPoints:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->clientPackage:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->referralURL:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    .line 124
    iput-object v3, p0, Lcom/tapjoy/TapjoyConnect;->payPerActionTask:Lcom/tapjoy/TapjoyConnect$PayPerActionTask;

    .line 127
    const-string v0, "udid"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_DEVICE_ID_NAME:Ljava/lang/String;

    .line 128
    const-string v0, "device_name"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_DEVICE_NAME:Ljava/lang/String;

    .line 129
    const-string v0, "device_type"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_DEVICE_TYPE_NAME:Ljava/lang/String;

    .line 130
    const-string v0, "os_version"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_DEVICE_OS_VERSION_NAME:Ljava/lang/String;

    .line 131
    const-string v0, "country_code"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_DEVICE_COUNTRY_CODE:Ljava/lang/String;

    .line 132
    const-string v0, "language"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_DEVICE_LANGUAGE:Ljava/lang/String;

    .line 133
    const-string v0, "app_id"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_APP_ID_NAME:Ljava/lang/String;

    .line 134
    const-string v0, "app_version"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_APP_VERSION_NAME:Ljava/lang/String;

    .line 135
    const-string v0, "library_version"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_CONNECT_LIBRARY_VERSION_NAME:Ljava/lang/String;

    .line 136
    const-string v0, "publisher_user_id"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_USER_ID:Ljava/lang/String;

    .line 137
    const-string v0, "screen_density"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_DEVICE_SCREEN_DENSITY:Ljava/lang/String;

    .line 138
    const-string v0, "screen_layout_size"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_DEVICE_SCREEN_LAYOUT_SIZE:Ljava/lang/String;

    .line 140
    const-string v0, "tap_points"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_SPEND_TAP_POINTS:Ljava/lang/String;

    .line 143
    const-string v0, "currency_id"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_MULTIPLE_CURRENCY_ID:Ljava/lang/String;

    .line 144
    const-string v0, "currency_selector"

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->TJC_MULTIPLE_CURRENCY_SELECTOR_FLAG:Ljava/lang/String;

    .line 169
    iput-object v3, p0, Lcom/tapjoy/TapjoyConnect;->connectGetPointsTask:Lcom/tapjoy/TapjoyConnect$ConnectGetPointsTask;

    .line 172
    iput-object v3, p0, Lcom/tapjoy/TapjoyConnect;->connectSpendPointsTask:Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;

    .line 177
    iput-object v3, p0, Lcom/tapjoy/TapjoyConnect;->virtualgoodsUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    .line 178
    iput-object v3, p0, Lcom/tapjoy/TapjoyConnect;->focusListener:Lcom/tapjoy/TJCVirtualGoods$FocusListener;

    .line 211
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnect;->context:Landroid/content/Context;

    .line 214
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnect;->initMetaData()V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "udid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "os_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceOSVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "country_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "library_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->libraryVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceScreenDensity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "screen_density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceScreenDensity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "screen_layout_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 235
    :cond_0
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v0, Lcom/tapjoy/TapjoyConnect$ConnectTask;

    invoke-direct {v0, p0, v3}, Lcom/tapjoy/TapjoyConnect$ConnectTask;-><init>(Lcom/tapjoy/TapjoyConnect;Lcom/tapjoy/TapjoyConnect$1;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->connectTask:Lcom/tapjoy/TapjoyConnect$ConnectTask;

    .line 238
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->connectTask:Lcom/tapjoy/TapjoyConnect$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    return-void
.end method

.method static synthetic access$100(Lcom/tapjoy/TapjoyConnect;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnect;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tapjoy/TapjoyConnect;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnect;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tapjoy/TapjoyConnect;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnect;->handlePayPerActionResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/tapjoy/TapjoyConnect;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnect;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->referralURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapjoy/TapjoyConnect;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnect;->handleConnectResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/tapjoy/TapjoyConnect;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnect;->handleGetPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Lcom/tapjoy/TapjoyNotifier;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tapjoy/TapjoyConnect;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnect;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->spendTapPoints:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tapjoy/TapjoyConnect;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyConnect;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnect;->handleSpendPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900()Lcom/tapjoy/TapjoySpendPointsNotifier;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    return-object v0
.end method

.method private buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 8
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 755
    const/4 v0, 0x0

    .line 759
    .local v0, "document":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 763
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 765
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 766
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 773
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 768
    :catch_0
    move-exception v2

    .line 770
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "TapjoyConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildDocument exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 9
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v6, 0x0

    .line 784
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 785
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v5, ""

    .line 786
    .local v5, "nodeValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 788
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 790
    .local v2, "itemNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 791
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 793
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 794
    .local v4, "node":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_0

    .line 795
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 791
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 798
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_1
    if-eqz v5, :cond_2

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 800
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 807
    .end local v1    # "i":I
    .end local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "length":I
    :cond_2
    return-object v6
.end method

.method private getTapPointsHelper()V
    .locals 2

    .prologue
    .line 826
    new-instance v0, Lcom/tapjoy/TapjoyConnect$ConnectGetPointsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TapjoyConnect$ConnectGetPointsTask;-><init>(Lcom/tapjoy/TapjoyConnect;Lcom/tapjoy/TapjoyConnect$1;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->connectGetPointsTask:Lcom/tapjoy/TapjoyConnect$ConnectGetPointsTask;

    .line 827
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->connectGetPointsTask:Lcom/tapjoy/TapjoyConnect$ConnectGetPointsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect$ConnectGetPointsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 828
    return-void
.end method

.method public static getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 191
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Lcom/tapjoy/TapjoyConnect;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyConnect;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 194
    :cond_1
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    if-nez v0, :cond_2

    .line 195
    new-instance v0, Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyFeaturedApp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    .line 197
    :cond_2
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    if-nez v0, :cond_3

    .line 198
    new-instance v0, Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyDisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    .line 200
    :cond_3
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    return-object v0
.end method

.method private handleConnectResponse(Ljava/lang/String;)Z
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 592
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_1

    .line 594
    const-string v2, "Success"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tapjoy/TapjoyConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "nodeValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    const-string v2, "TapjoyConnect"

    const-string v3, "Successfully connected to tapjoy site."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/4 v2, 0x1

    .line 608
    .end local v1    # "nodeValue":Ljava/lang/String;
    :goto_0
    return v2

    .line 604
    .restart local v1    # "nodeValue":Ljava/lang/String;
    :cond_0
    const-string v2, "TapjoyConnect"

    const-string v3, "Tapjoy Connect call failed."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    .end local v1    # "nodeValue":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleGetPointsResponse(Ljava/lang/String;)Z
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 622
    .local v1, "document":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_1

    .line 624
    const-string v4, "Success"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tapjoy/TapjoyConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, "nodeValue":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 631
    const-string v4, "TapPoints"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tapjoy/TapjoyConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, "pointsTotal":Ljava/lang/String;
    const-string v4, "CurrencyName"

    invoke-interface {v1, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tapjoy/TapjoyConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "currencyName":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 641
    sget-object v4, Lcom/tapjoy/TapjoyConnect;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v0, v5}, Lcom/tapjoy/TapjoyNotifier;->getUpdatePoints(Ljava/lang/String;I)V

    .line 642
    const/4 v4, 0x1

    .line 655
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v2    # "nodeValue":Ljava/lang/String;
    .end local v3    # "pointsTotal":Ljava/lang/String;
    :goto_0
    return v4

    .line 646
    .restart local v0    # "currencyName":Ljava/lang/String;
    .restart local v2    # "nodeValue":Ljava/lang/String;
    .restart local v3    # "pointsTotal":Ljava/lang/String;
    :cond_0
    const-string v4, "TapjoyConnect"

    const-string v5, "Invalid XML: Missing tags."

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v2    # "nodeValue":Ljava/lang/String;
    .end local v3    # "pointsTotal":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 651
    .restart local v2    # "nodeValue":Ljava/lang/String;
    :cond_2
    const-string v4, "TapjoyConnect"

    const-string v5, "Invalid XML: Missing <Success> tag."

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handlePayPerActionResponse(Ljava/lang/String;)Z
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 728
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_1

    .line 730
    const-string v2, "Success"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tapjoy/TapjoyConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "nodeValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    const-string v2, "TapjoyConnect"

    const-string v3, "Successfully sent completed Pay-Per-Action to Tapjoy server."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const/4 v2, 0x1

    .line 744
    .end local v1    # "nodeValue":Ljava/lang/String;
    :goto_0
    return v2

    .line 740
    .restart local v1    # "nodeValue":Ljava/lang/String;
    :cond_0
    const-string v2, "TapjoyConnect"

    const-string v3, "Completed Pay-Per-Action call failed."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    .end local v1    # "nodeValue":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleSpendPointsResponse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 666
    const-string v2, ""

    .line 669
    .local v2, "message":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 671
    .local v1, "document":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_1

    .line 673
    const-string v6, "Success"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tapjoy/TapjoyConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 680
    const-string v6, "TapPoints"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tapjoy/TapjoyConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, "pointsTotal":Ljava/lang/String;
    const-string v6, "CurrencyName"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tapjoy/TapjoyConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "currencyName":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 690
    sget-object v6, Lcom/tapjoy/TapjoyConnect;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v0, v7}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponse(Ljava/lang/String;I)V

    .line 714
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :goto_0
    return v5

    .line 695
    .restart local v0    # "currencyName":Ljava/lang/String;
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v4    # "pointsTotal":Ljava/lang/String;
    :cond_0
    const-string v5, "TapjoyConnect"

    const-string v6, "Invalid XML: Missing tags."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 700
    .restart local v3    # "nodeValue":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 702
    const-string v6, "Message"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tapjoy/TapjoyConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 703
    const-string v6, "TapjoyConnect"

    invoke-static {v6, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    sget-object v6, Lcom/tapjoy/TapjoyConnect;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    invoke-interface {v6, v2}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponseFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :cond_3
    const-string v5, "TapjoyConnect"

    const-string v6, "Invalid XML: Missing <Success> tag."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initMetaData()V
    .locals 27

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 253
    .local v13, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x80

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 255
    .local v11, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v11, :cond_d

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    .line 259
    const-string v14, "ccca7644-840b-4211-b85e-87148c227f62"

    .line 260
    .local v14, "metaDataValue":Ljava/lang/String;
    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    move-object/from16 v23, v0

    const-string v24, "Glu-Tapjoy-Key"

    invoke-virtual/range {v23 .. v24}, Lcom/glu/android/CaseInsensitiveHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 261
    .local v16, "overrideKey":Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 262
    move-object/from16 v14, v16

    .line 264
    :cond_0
    if-eqz v14, :cond_3

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 266
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->appID:Ljava/lang/String;

    .line 276
    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v23

    iget-object v14, v0, Lcom/glu/android/GameLet;->m_packageID:Ljava/lang/String;

    .line 277
    if-eqz v14, :cond_4

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 279
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tapjoy/TapjoyConnect;->clientPackage:Ljava/lang/String;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 289
    .local v17, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->appVersion:Ljava/lang/String;

    .line 292
    const-string v23, "android"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceType:Ljava/lang/String;

    .line 295
    sget-object v23, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceName:Ljava/lang/String;

    .line 298
    sget-object v23, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceOSVersion:Ljava/lang/String;

    .line 301
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceCountryCode:Ljava/lang/String;

    .line 302
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceLanguage:Ljava/lang/String;

    .line 305
    const-string v23, "7.1.1"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->libraryVersion:Ljava/lang/String;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "tjcPrefrences"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 310
    .local v19, "settings":Landroid/content/SharedPreferences;
    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string v24, "DEVICE_ID"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 313
    if-eqz v14, :cond_5

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 315
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    .line 316
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Using manifest device id = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_1
    :goto_0
    :try_start_1
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 416
    .local v15, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "window"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    .line 417
    .local v22, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 423
    .local v5, "configuration":Landroid/content/res/Configuration;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceScreenDensity:Ljava/lang/String;

    .line 424
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget v0, v5, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0xf

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceScreenLayoutSize:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 432
    .end local v5    # "configuration":Landroid/content/res/Configuration;
    .end local v15    # "metrics":Landroid/util/DisplayMetrics;
    .end local v22    # "windowManager":Landroid/view/WindowManager;
    :goto_1
    :try_start_2
    const-string v23, "InstallReferral"

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 433
    .local v21, "tempReferralURL":Ljava/lang/String;
    if-eqz v21, :cond_2

    const-string v23, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 434
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->referralURL:Ljava/lang/String;

    .line 436
    :cond_2
    const-string v23, "TapjoyConnect"

    const-string v24, "Metadata successfully loaded"

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "APP_ID = ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->appID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CLIENT_PACKAGE = ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->clientPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "deviceID: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "deviceName: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "deviceType: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceType:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "libraryVersion: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->libraryVersion:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "deviceOSVersion: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceOSVersion:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "COUNTRY_CODE: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceCountryCode:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "LANGUAGE_CODE: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceLanguage:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "density: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceScreenDensity:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "screen_layout: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceScreenLayoutSize:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "referralURL: ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->referralURL:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v11    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "metaDataValue":Ljava/lang/String;
    .end local v16    # "overrideKey":Ljava/lang/String;
    .end local v17    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "settings":Landroid/content/SharedPreferences;
    .end local v21    # "tempReferralURL":Ljava/lang/String;
    :goto_2
    return-void

    .line 270
    .restart local v11    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "metaDataValue":Ljava/lang/String;
    .restart local v16    # "overrideKey":Ljava/lang/String;
    :cond_3
    const-string v23, "TapjoyConnect"

    const-string v24, "APP_ID can\'t be empty."

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 463
    .end local v11    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "metaDataValue":Ljava/lang/String;
    .end local v16    # "overrideKey":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 465
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v23, "TapjoyConnect"

    const-string v24, "Add APP_ID to AndroidManifest.xml file. For more detail integration document."

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 283
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "metaDataValue":Ljava/lang/String;
    .restart local v16    # "overrideKey":Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v23, "TapjoyConnect"

    const-string v24, "CLIENT_PACKAGE is missing."

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 322
    .restart local v17    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v19    # "settings":Landroid/content/SharedPreferences;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "phone"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/TelephonyManager;

    .line 324
    .local v20, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v20, :cond_6

    .line 326
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    .line 329
    :cond_6
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "deviceID: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v12, 0x0

    .line 336
    .local v12, "invalidDeviceID":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_8

    .line 338
    const-string v23, "TapjoyConnect"

    const-string v24, "Device id is null."

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v23, "000000000000000"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    .line 340
    const/4 v12, 0x1

    .line 362
    :goto_3
    if-eqz v12, :cond_7

    .line 364
    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_serial:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 367
    const/4 v12, 0x0

    .line 371
    :cond_7
    if-eqz v12, :cond_1

    .line 373
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 374
    .local v3, "buff":Ljava/lang/StringBuffer;
    const-string v23, "EMULATOR"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const-string v23, "emulatorDeviceId"

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, "deviceId":Ljava/lang/String;
    if-eqz v7, :cond_b

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 380
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 403
    .end local v3    # "buff":Ljava/lang/StringBuffer;
    .end local v7    # "deviceId":Ljava/lang/String;
    .end local v12    # "invalidDeviceID":Z
    .end local v20    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v8

    .line 405
    .local v8, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error getting deviceID. e: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 346
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "invalidDeviceID":Z
    .restart local v20    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "000000000000000"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 348
    :cond_9
    const-string v23, "TapjoyConnect"

    const-string v24, "Device id is empty or an emulator."

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 357
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    goto/16 :goto_3

    .line 385
    .restart local v3    # "buff":Ljava/lang/StringBuffer;
    .restart local v7    # "deviceId":Ljava/lang/String;
    :cond_b
    const-string v6, "1234567890abcdefghijklmnopqrstuvw"

    .line 387
    .local v6, "constantChars":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    const/16 v23, 0x20

    move/from16 v0, v23

    if-ge v10, v0, :cond_c

    .line 389
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v23

    const-wide/high16 v25, 0x4059000000000000L    # 100.0

    mul-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v18, v0

    .line 390
    .local v18, "randomChar":I
    rem-int/lit8 v4, v18, 0x1e

    .line 391
    .local v4, "ch":I
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 394
    .end local v4    # "ch":I
    .end local v18    # "randomChar":I
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    .line 397
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 398
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v23, "emulatorDeviceId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 399
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 426
    .end local v3    # "buff":Ljava/lang/StringBuffer;
    .end local v6    # "constantChars":Ljava/lang/String;
    .end local v7    # "deviceId":Ljava/lang/String;
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "i":I
    .end local v12    # "invalidDeviceID":Z
    .end local v20    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_2
    move-exception v8

    .line 428
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v23, "TapjoyConnect"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error getting screen density/dimensions/layout: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 459
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v14    # "metaDataValue":Ljava/lang/String;
    .end local v16    # "overrideKey":Ljava/lang/String;
    .end local v17    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "settings":Landroid/content/SharedPreferences;
    :cond_d
    const-string v23, "TapjoyConnect"

    const-string v24, "Add APP_ID to AndroidManifest.xml file. For more detail integration document."

    invoke-static/range {v23 .. v24}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2
.end method

.method private spendTapPointsHelper()V
    .locals 2

    .prologue
    .line 836
    new-instance v0, Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;-><init>(Lcom/tapjoy/TapjoyConnect;Lcom/tapjoy/TapjoyConnect$1;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->connectSpendPointsTask:Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;

    .line 837
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->connectSpendPointsTask:Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 838
    return-void
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 1073
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "udid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "os_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceOSVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "country_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "library_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->libraryVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    .line 1090
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceScreenDensity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "screen_density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceScreenDensity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "screen_layout_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 1097
    :cond_0
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PPA URL parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect;->actionURLParams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    new-instance v0, Lcom/tapjoy/TapjoyConnect$PayPerActionTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TapjoyConnect$PayPerActionTask;-><init>(Lcom/tapjoy/TapjoyConnect;Lcom/tapjoy/TapjoyConnect$1;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->payPerActionTask:Lcom/tapjoy/TapjoyConnect$PayPerActionTask;

    .line 1100
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->payPerActionTask:Lcom/tapjoy/TapjoyConnect$PayPerActionTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect$PayPerActionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1101
    return-void
.end method

.method public checkForVirtualGoods(Landroid/content/Context;Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    .prologue
    .line 1134
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnect;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->virtualgoodsUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    .line 1135
    sget-boolean v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->VGOpened:Z

    if-nez v0, :cond_1

    .line 1137
    if-eqz p2, :cond_0

    .line 1139
    sput-object p2, Lcom/tapjoy/TapjoyConnect;->tapjoyDownloadListener:Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->virtualgoodsUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->CheckForVirtualGoods(Landroid/content/Context;)V

    .line 1144
    :cond_1
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 816
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 817
    const-string v0, "TapjoyConnect"

    const-string v1, "Cleaning resources."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method public getDisplayAd(Landroid/content/Context;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 1057
    .local v0, "displayAdURLParams":Ljava/lang/String;
    sget-object v1, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    const-string v2, "https://ws.tapjoyads.com/"

    invoke-virtual {v1, v2, v0, p2}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAdDataFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 1058
    return-void
.end method

.method public getFeaturedApp(Landroid/content/Context;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 956
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tapjoy/TapjoyConnect;->getFeaturedApp(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V

    .line 957
    return-void
.end method

.method public getFeaturedApp(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userID"    # Ljava/lang/String;
    .param p3, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 969
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get Featured App (userID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iput-object p2, p0, Lcom/tapjoy/TapjoyConnect;->deviceUserID:Ljava/lang/String;

    .line 974
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    .line 975
    .local v0, "featuredAppURLParams":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&publisher_user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 977
    sget-object v1, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    const-string v2, "https://ws.tapjoyads.com/"

    invoke-virtual {v1, v2, v0, p3}, Lcom/tapjoy/TapjoyFeaturedApp;->getFeaturedAppDataFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V

    .line 978
    return-void
.end method

.method public getFocusListener()Lcom/tapjoy/TJCVirtualGoods$FocusListener;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->focusListener:Lcom/tapjoy/TJCVirtualGoods$FocusListener;

    return-object v0
.end method

.method public getPrimaryColor()I
    .locals 1

    .prologue
    .line 1180
    iget v0, p0, Lcom/tapjoy/TapjoyConnect;->primaryColor:I

    return v0
.end method

.method public getPurchasedItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
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
    .line 1169
    invoke-static {p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->getPurchasedItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1170
    .local v0, "vgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItem;>;"
    return-object v0
.end method

.method public getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyNotifier;

    .prologue
    .line 911
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    if-eqz v0, :cond_0

    .line 913
    sput-object p1, Lcom/tapjoy/TapjoyConnect;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    .line 914
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnect;->getTapPointsHelper()V

    .line 916
    :cond_0
    return-void
.end method

.method public setFeaturedAppDisplayCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1013
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyFeaturedApp;->setDisplayCount(I)V

    .line 1014
    return-void
.end method

.method public setFocusListener(Lcom/tapjoy/TJCVirtualGoods$FocusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tapjoy/TJCVirtualGoods$FocusListener;

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnect;->focusListener:Lcom/tapjoy/TJCVirtualGoods$FocusListener;

    .line 1187
    return-void
.end method

.method public setUserDefinedColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 1154
    iput p1, p0, Lcom/tapjoy/TapjoyConnect;->primaryColor:I

    .line 1155
    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect;->context:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1156
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1157
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "tapjoyPrimaryColor"

    iget v3, p0, Lcom/tapjoy/TapjoyConnect;->primaryColor:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1159
    return-void
.end method

.method public showFeaturedAppFullScreenAd(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1024
    const-string v1, ""

    .line 1026
    .local v1, "fullscreenURL":Ljava/lang/String;
    sget-object v2, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyFeaturedApp;->getFeaturedAppObject()Lcom/tapjoy/TapjoyFeaturedAppObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1027
    sget-object v2, Lcom/tapjoy/TapjoyConnect;->tapjoyFeaturedApp:Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyFeaturedApp;->getFeaturedAppObject()Lcom/tapjoy/TapjoyFeaturedAppObject;

    move-result-object v2

    iget-object v1, v2, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    .line 1029
    :cond_0
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Displaying Full Screen AD with URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1033
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1034
    .local v0, "featuredAppIntent":Landroid/content/Intent;
    const-string v2, "USER_ID"

    iget-object v3, p0, Lcom/tapjoy/TapjoyConnect;->deviceUserID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    const-string v2, "FULLSCREEN_AD_URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    const-string v2, "CLIENT_PACKAGE"

    iget-object v3, p0, Lcom/tapjoy/TapjoyConnect;->clientPackage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1039
    .end local v0    # "featuredAppIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public showOffers(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 850
    const-string v0, "TapjoyConnect"

    const-string v1, "Showing offers without userID."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnect;->deviceID:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/TapjoyConnect;->showOffers(Landroid/content/Context;Ljava/lang/String;)V

    .line 854
    return-void
.end method

.method public showOffers(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userID"    # Ljava/lang/String;

    .prologue
    .line 865
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing offers (userID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 868
    .local v0, "offersIntent":Landroid/content/Intent;
    const-string v1, "USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    const-string v1, "CLIENT_PACKAGE"

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect;->clientPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 872
    return-void
.end method

.method public showVirtualGoods(Landroid/content/Context;Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    .prologue
    .line 1113
    if-eqz p2, :cond_0

    .line 1115
    sput-object p2, Lcom/tapjoy/TapjoyConnect;->tapjoyDownloadListener:Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    .line 1118
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 1119
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->VGOpened:Z

    .line 1121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1122
    .local v0, "vgIntent":Landroid/content/Intent;
    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    const-string v1, "CLIENT_PACKAGE"

    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect;->clientPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1125
    return-void
.end method

.method public spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoySpendPointsNotifier;

    .prologue
    .line 926
    if-gez p1, :cond_1

    .line 928
    const-string v0, "TapjoyConnect"

    const-string v1, "spendTapPoints error: amount must be a positive number"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnect;->spendTapPoints:Ljava/lang/String;

    .line 934
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    if-eqz v0, :cond_0

    .line 936
    sput-object p2, Lcom/tapjoy/TapjoyConnect;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    .line 937
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnect;->spendTapPointsHelper()V

    goto :goto_0
.end method
