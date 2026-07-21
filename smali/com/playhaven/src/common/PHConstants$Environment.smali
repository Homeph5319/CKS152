.class public Lcom/playhaven/src/common/PHConstants$Environment;
.super Ljava/lang/Object;
.source "PHConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/common/PHConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Environment"
.end annotation


# instance fields
.field protected PH_SECRET:Ljava/lang/String;

.field protected PH_TOKEN:Ljava/lang/String;

.field protected densityType:I

.field protected device_info:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected displayMetrics:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private idiom_mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected screenDensity:F

.field protected useApiAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->idiom_mappings:Ljava/util/HashMap;

    .line 80
    const-string v0, "your_token"

    iput-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->PH_TOKEN:Ljava/lang/String;

    .line 82
    const-string v0, "your_secret"

    iput-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->PH_SECRET:Ljava/lang/String;

    .line 86
    const/16 v0, 0xa0

    iput v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->densityType:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->screenDensity:F

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/playhaven/src/common/PHConstants$Environment;)Z
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/playhaven/src/common/PHConstants$Environment;->didSetKeys()Z

    move-result v0

    return v0
.end method

.method private didSetKeys()Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->PH_TOKEN:Ljava/lang/String;

    const-string v1, "your_token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->PH_SECRET:Ljava/lang/String;

    const-string v1, "your_secret"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConnectionType(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 140
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 141
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 145
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIosDeviceIdiom(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 160
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 161
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 163
    iget-object v2, p0, Lcom/playhaven/src/common/PHConstants$Environment;->idiom_mappings:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v2, p0, Lcom/playhaven/src/common/PHConstants$Environment;->idiom_mappings:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->idiom_mappings:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->idiom_mappings:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 170
    new-instance v1, Ljava/lang/Integer;

    and-int/lit8 v0, v0, 0xf

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 172
    const-string v0, "Playhaven Debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to iOS type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/playhaven/src/common/PHConstants$Environment;->idiom_mappings:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v3, "device_idiom"

    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->idiom_mappings:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method


# virtual methods
.method public dipToPixels(F)F
    .locals 2

    .prologue
    .line 181
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->displayMetrics:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public findDeviceInfo(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "device_id"

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v2, "app_id"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v2, "app_version"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "device_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "os_name"

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "os_version"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "original_width"

    invoke-virtual {p0, p1}, Lcom/playhaven/src/common/PHConstants$Environment;->getAvailableWidth(Landroid/app/Activity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "original_height"

    invoke-virtual {p0, p1}, Lcom/playhaven/src/common/PHConstants$Environment;->getAvailableHeight(Landroid/app/Activity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->densityType:I

    .line 126
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->screenDensity:F

    .line 128
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->displayMetrics:Ljava/lang/ref/WeakReference;

    .line 131
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHConstants$Environment;->getIosDeviceIdiom(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAPIUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "http://api2.playhaven.com"

    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "app_version"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableHeight(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 292
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getAvailableWidth(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 298
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 301
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 302
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getBasicAuthPass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBasicAuthUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceIdiom()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "device_idiom"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "device_model"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOrientation(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getOSName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "os_name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "os_version"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalConnectionType()I
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "connection"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOriginalHeight()I
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "original_height"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOriginalWidth()I
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "original_width"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x3

    return v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string v0, "1.3.10"

    return-object v0
.end method

.method public getScreenDensity()F
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->screenDensity:F

    return v0
.end method

.method public getScreenDensityType()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->densityType:I

    return v0
.end method

.method public getScreenHeight(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 277
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public getScreenWidth(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 273
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/playhaven/src/common/PHConstants$Environment;->didSetKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->PH_SECRET:Ljava/lang/String;

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must set the secret key"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTemplateURL(Lcom/playhaven/src/publishersdk/content/PHContent;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p1, Lcom/playhaven/src/publishersdk/content/PHContent;->url:Landroid/net/Uri;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/playhaven/src/common/PHConstants$Environment;->didSetKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->PH_TOKEN:Ljava/lang/String;

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must set the token"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTopBarHeight(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 306
    const/4 v0, -0x1

    return v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/playhaven/src/common/PHConstants$Environment;->device_info:Ljava/util/HashMap;

    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isOnline(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 313
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 314
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    return v0
.end method

.method public phFormatUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public phLog(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 208
    const-string v0, "[Playhaven-%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHConstants$Environment;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public phURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/playhaven/src/common/PHConstants$Environment;->didSetKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHConstants$Environment;->getAPIUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You must set the secret and developer keys."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeys(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/playhaven/src/common/PHConstants$Environment;->PH_TOKEN:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/playhaven/src/common/PHConstants$Environment;->PH_SECRET:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public shouldCacheWebView()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRecycleContentViews()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public useBasicAuth()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method
