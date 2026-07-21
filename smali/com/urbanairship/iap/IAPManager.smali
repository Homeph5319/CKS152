.class public final Lcom/urbanairship/iap/IAPManager;
.super Ljava/lang/Object;
.source "IAPManager.java"


# static fields
.field private static final IAP_FIRST_RUN_PREFERENCES:Ljava/lang/String; = "com.urbanairship.iap.first_run"

.field private static final INITIALIZED_KEY:Ljava/lang/String; = "initialized"

.field private static final instance:Lcom/urbanairship/iap/IAPManager;


# instance fields
.field private appIcon:I

.field private appName:Ljava/lang/String;

.field private downloadPath:Ljava/lang/String;

.field private isBillingSupported:Z

.field private tempPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/urbanairship/iap/IAPManager;

    invoke-direct {v0}, Lcom/urbanairship/iap/IAPManager;-><init>()V

    sput-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/iap/IAPManager;->appName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/iap/IAPManager;->isBillingSupported:Z

    return-void
.end method

.method private static checkRequiredPermission(Ljava/lang/String;)V
    .locals 0
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 130
    return-void
.end method

.method static firstRun()V
    .locals 6

    .prologue
    .line 54
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "localContext":Landroid/content/Context;
    const-string v4, "com.urbanairship.iap.first_run"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 58
    .local v3, "localSharedPreferences":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 59
    .local v1, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "initialized"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "localEditor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v2

    .line 64
    .local v2, "localException":Ljava/lang/Exception;
    const-string v4, "Error writing to shared preferences"

    invoke-static {v4}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/iap/IAPManager;->appName:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppIcon()I

    move-result v1

    iput v1, v0, Lcom/urbanairship/iap/IAPManager;->appIcon:I

    .line 37
    return-void
.end method

.method public static isBillingSupported()Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    iget-boolean v0, v0, Lcom/urbanairship/iap/IAPManager;->isBillingSupported:Z

    return v0
.end method

.method static isFirstRun()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 71
    .local v1, "localContext":Landroid/content/Context;
    const-string v4, "com.urbanairship.iap.first_run"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 72
    .local v2, "localSharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "initialized"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    .local v0, "bool":Z
    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method static onBillingSupported(Z)V
    .locals 0
    .param p0, "paramBoolean"    # Z

    .prologue
    .line 50
    return-void
.end method

.method public static shared()Lcom/urbanairship/iap/IAPManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/urbanairship/iap/IAPManager;->instance:Lcom/urbanairship/iap/IAPManager;

    return-object v0
.end method

.method public static tearDown()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public static validateManifest()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method


# virtual methods
.method public getAppIcon()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/urbanairship/iap/IAPManager;->appIcon:I

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->appName:Ljava/lang/String;

    return-object v0
.end method

.method getBillingService()Landroid/app/Service;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->downloadPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->downloadPath:Ljava/lang/String;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iap/downloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->tempPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/urbanairship/iap/IAPManager;->tempPath:Ljava/lang/String;

    .line 95
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iap/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method payForProduct(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "paramActivity"    # Landroid/app/Activity;

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public restoreTransactions()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public setDownloadPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/urbanairship/iap/IAPManager;->downloadPath:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setTempPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/urbanairship/iap/IAPManager;->tempPath:Ljava/lang/String;

    .line 108
    return-void
.end method
