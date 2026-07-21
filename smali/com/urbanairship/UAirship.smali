.class public Lcom/urbanairship/UAirship;
.super Ljava/lang/Object;
.source "UAirship.java"


# static fields
.field private static final sharedAirship:Lcom/urbanairship/UAirship;

.field private static final version:Ljava/lang/String; = "1.0.1"


# instance fields
.field private airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

.field private analytics:Lcom/urbanairship/analytics/Analytics;

.field private applicationContext:Landroid/content/Context;

.field private flying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/urbanairship/UAirship;

    invoke-direct {v0}, Lcom/urbanairship/UAirship;-><init>()V

    sput-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/UAirship;->flying:Z

    return-void
.end method

.method private checkManifest()V
    .locals 13

    .prologue
    .line 156
    iget-object v11, p0, Lcom/urbanairship/UAirship;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 157
    .local v9, "localPackageManager":Landroid/content/pm/PackageManager;
    const-string v11, "android.permission.INTERNET"

    invoke-direct {p0, v11}, Lcom/urbanairship/UAirship;->checkRequiredPermission(Ljava/lang/String;)V

    .line 158
    const-string v11, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v11}, Lcom/urbanairship/UAirship;->checkRequiredPermission(Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/urbanairship/CoreReceiver;

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v0, "localComponentName1":Landroid/content/ComponentName;
    const/16 v11, 0x80

    :try_start_0
    invoke-virtual {v9, v0, v11}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    iget-object v11, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    iget-boolean v11, v11, Lcom/urbanairship/AirshipConfigOptions;->pushServiceEnabled:Z

    if-eqz v11, :cond_4

    .line 172
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/urbanairship/push/PushService;

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v1, "localComponentName2":Landroid/content/ComponentName;
    const/16 v11, 0x80

    :try_start_1
    invoke-virtual {v9, v1, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :goto_1
    sget-object v11, Lcom/urbanairship/AirshipConfigOptions$TransportType;->C2DM:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    iget-object v12, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v12}, Lcom/urbanairship/AirshipConfigOptions;->getTransport()Lcom/urbanairship/AirshipConfigOptions$TransportType;

    move-result-object v12

    if-eq v11, v12, :cond_0

    sget-object v11, Lcom/urbanairship/AirshipConfigOptions$TransportType;->HYBRID:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    iget-object v12, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v12}, Lcom/urbanairship/AirshipConfigOptions;->getTransport()Lcom/urbanairship/AirshipConfigOptions$TransportType;

    move-result-object v12

    if-ne v11, v12, :cond_2

    .line 183
    :cond_0
    const-string v8, "com.google.android.c2dm.permission.RECEIVE"

    .line 184
    .local v8, "localObject":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .end local v8    # "localObject":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/urbanairship/UAirship;->checkRequiredPermission(Ljava/lang/String;)V

    .line 185
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".permission.C2D_MESSAGE"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 186
    .local v10, "str":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/urbanairship/UAirship;->checkRequiredPermission(Ljava/lang/String;)V

    .line 187
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lcom/urbanairship/push/c2dm/C2DMPushReceiver;

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v2, "localComponentName4":Landroid/content/ComponentName;
    const/16 v11, 0x80

    :try_start_2
    invoke-virtual {v9, v2, v11}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 191
    new-instance v3, Landroid/content/Intent;

    const-string v11, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v3, "localIntent1":Landroid/content/Intent;
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const/4 v11, 0x0

    invoke-virtual {v9, v3, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 194
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AndroidManifest.xml\'s "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/urbanairship/push/c2dm/C2DMPushReceiver;

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " declaration missing required "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " filter with category="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 195
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v11, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v4, "localIntent2":Landroid/content/Intent;
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const/4 v11, 0x0

    invoke-virtual {v9, v3, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 198
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AndroidManifest.xml\'s "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/urbanairship/push/c2dm/C2DMPushReceiver;

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " declaration missing required "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " filter with category="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 205
    .end local v2    # "localComponentName4":Landroid/content/ComponentName;
    .end local v3    # "localIntent1":Landroid/content/Intent;
    .end local v4    # "localIntent2":Landroid/content/Intent;
    .end local v10    # "str":Ljava/lang/String;
    :cond_2
    :goto_2
    sget-object v11, Lcom/urbanairship/AirshipConfigOptions$TransportType;->HELIUM:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    iget-object v12, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v12}, Lcom/urbanairship/AirshipConfigOptions;->getTransport()Lcom/urbanairship/AirshipConfigOptions$TransportType;

    move-result-object v12

    if-eq v11, v12, :cond_3

    sget-object v11, Lcom/urbanairship/AirshipConfigOptions$TransportType;->HYBRID:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    iget-object v12, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v12}, Lcom/urbanairship/AirshipConfigOptions;->getTransport()Lcom/urbanairship/AirshipConfigOptions$TransportType;

    move-result-object v12

    if-ne v11, v12, :cond_4

    .line 206
    :cond_3
    const-string v11, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-direct {p0, v11}, Lcom/urbanairship/UAirship;->checkRequiredPermission(Ljava/lang/String;)V

    .line 208
    .end local v1    # "localComponentName2":Landroid/content/ComponentName;
    :cond_4
    return-void

    .line 164
    :catch_0
    move-exception v5

    .line 166
    .local v5, "localNameNotFoundException1":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AndroidManifest.xml missing required receiver: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/urbanairship/CoreReceiver;

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    .end local v5    # "localNameNotFoundException1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "localComponentName2":Landroid/content/ComponentName;
    :catch_1
    move-exception v6

    .line 179
    .local v6, "localNameNotFoundException2":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AndroidManifest.xml missing required service: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/urbanairship/push/PushService;

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 200
    .end local v6    # "localNameNotFoundException2":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "localComponentName4":Landroid/content/ComponentName;
    .restart local v10    # "str":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 202
    .local v7, "localNameNotFoundException5":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AndroidManifest.xml missing required receiver: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-class v12, Lcom/urbanairship/push/c2dm/C2DMPushReceiver;

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private checkRequiredPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/urbanairship/UAirship;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 213
    .local v0, "localPackageManager":Landroid/content/pm/PackageManager;
    const/4 v1, -0x1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidManifest.xml missing required permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method

.method public static getAppIcon()I
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    return v0
.end method

.method public static getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 5

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 108
    .local v0, "localApplicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v1

    .line 112
    .local v1, "localNameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameNotFound for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Disabling."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 94
    :try_start_0
    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    .local v0, "localNameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v1

    .line 96
    .end local v0    # "localNameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    move-exception v0

    .line 98
    .restart local v0    # "localNameNotFoundException":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameNotFound for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Disabling."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    iget-object v0, v0, Lcom/urbanairship/UAirship;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    iget-object v0, v0, Lcom/urbanairship/UAirship;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "1.0.1"

    return-object v0
.end method

.method public static land()V
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/urbanairship/UAirship;->flying:Z

    .line 78
    return-void
.end method

.method public static shared()Lcom/urbanairship/UAirship;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    return-object v0
.end method

.method public static takeOff(Landroid/app/Application;)V
    .locals 1
    .param p0, "paramApplication"    # Landroid/app/Application;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;)V

    .line 35
    return-void
.end method

.method public static takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;)V
    .locals 4
    .param p0, "paramApplication"    # Landroid/app/Application;
    .param p1, "paramAirshipConfigOptions"    # Lcom/urbanairship/AirshipConfigOptions;

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Application argument must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_0
    sget-object v2, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    iget-boolean v2, v2, Lcom/urbanairship/UAirship;->flying:Z

    if-eqz v2, :cond_1

    .line 43
    const-string v2, "You can only call UAirship.takeOff once."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 46
    :cond_1
    sget-object v2, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v2, Lcom/urbanairship/UAirship;->applicationContext:Landroid/content/Context;

    .line 47
    .local v1, "localContext":Landroid/content/Context;
    if-nez p1, :cond_2

    .line 48
    invoke-static {v1}, Lcom/urbanairship/AirshipConfigOptions;->loadDefaultOptions(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;

    move-result-object p1

    .line 49
    :cond_2
    sget-object v2, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    iput-object p1, v2, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    .line 50
    iget-boolean v2, p1, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-nez v2, :cond_3

    .line 51
    const/4 v2, 0x3

    sput v2, Lcom/urbanairship/Logger;->logLevel:I

    .line 54
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - UALib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Airship Take Off! Lib Version: 1.0.1 / App key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / secret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In Production? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/urbanairship/AirshipConfigOptions;->isValid()Z

    move-result v2

    if-nez v2, :cond_4

    .line 59
    const-string v2, "AirshipConfigOptions are not valid. Unable to take off! Check your airshipconfig.properties file for the errors listed above."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 60
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Application configuration is invalid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_3
    const/4 v2, 0x6

    sput v2, Lcom/urbanairship/Logger;->logLevel:I

    goto :goto_1

    .line 62
    :cond_4
    sget-object v2, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    invoke-direct {v2}, Lcom/urbanairship/UAirship;->checkManifest()V

    .line 63
    invoke-static {v1}, Lcom/urbanairship/InternalOptions;->loadDefaultOptions(Landroid/content/Context;)Lcom/urbanairship/InternalOptions;

    .line 64
    sget-object v2, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/urbanairship/UAirship;->flying:Z

    .line 65
    iget-boolean v2, p1, Lcom/urbanairship/AirshipConfigOptions;->pushServiceEnabled:Z

    if-eqz v2, :cond_5

    .line 67
    const-string v2, "Initializing Push."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/urbanairship/push/PushManager;->init()V

    .line 70
    :cond_5
    const-string v2, "Initializing Analytics."

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/urbanairship/analytics/Analytics;

    invoke-direct {v0}, Lcom/urbanairship/analytics/Analytics;-><init>()V

    .line 72
    .local v0, "localAnalytics":Lcom/urbanairship/analytics/Analytics;
    sget-object v2, Lcom/urbanairship/UAirship;->sharedAirship:Lcom/urbanairship/UAirship;

    iput-object v0, v2, Lcom/urbanairship/UAirship;->analytics:Lcom/urbanairship/analytics/Analytics;

    goto/16 :goto_0
.end method


# virtual methods
.method public getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/urbanairship/UAirship;->airshipConfigOptions:Lcom/urbanairship/AirshipConfigOptions;

    return-object v0
.end method

.method public getAnalytics()Lcom/urbanairship/analytics/Analytics;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/urbanairship/UAirship;->analytics:Lcom/urbanairship/analytics/Analytics;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/urbanairship/UAirship;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public isFlying()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/urbanairship/UAirship;->flying:Z

    return v0
.end method
