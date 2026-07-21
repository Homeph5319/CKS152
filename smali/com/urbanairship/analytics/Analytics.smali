.class public Lcom/urbanairship/analytics/Analytics;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/analytics/Analytics$Session;
    }
.end annotation


# static fields
.field public static final ACTION_ANALYTICS_START:Ljava/lang/String; = "com.urbanairship.analytics.START"


# instance fields
.field private activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

.field private conversionPushId:Ljava/lang/String;

.field private dataManager:Lcom/urbanairship/analytics/EventDataManager;

.field private fromBackground:Z

.field private final server:Ljava/lang/String;

.field private session:Lcom/urbanairship/analytics/Analytics$Session;

.field private uploadManager:Lcom/urbanairship/analytics/EventUploadManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->analyticsServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->server:Ljava/lang/String;

    new-instance v0, Lcom/urbanairship/analytics/Analytics$Session;

    invoke-direct {v0, p0}, Lcom/urbanairship/analytics/Analytics$Session;-><init>(Lcom/urbanairship/analytics/Analytics;)V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->session:Lcom/urbanairship/analytics/Analytics$Session;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->fromBackground:Z

    new-instance v0, Lcom/urbanairship/analytics/ActivityMonitor;

    new-instance v1, Lcom/urbanairship/analytics/Analytics$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/analytics/Analytics$1;-><init>(Lcom/urbanairship/analytics/Analytics;)V

    invoke-direct {v0, v1}, Lcom/urbanairship/analytics/ActivityMonitor;-><init>(Lcom/urbanairship/analytics/ActivityMonitor$Delegate;)V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

    new-instance v0, Lcom/urbanairship/analytics/EventDataManager;

    invoke-direct {v0}, Lcom/urbanairship/analytics/EventDataManager;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    new-instance v0, Lcom/urbanairship/analytics/EventUploadManager;

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-direct {v0, v1}, Lcom/urbanairship/analytics/EventUploadManager;-><init>(Lcom/urbanairship/analytics/EventDataManager;)V

    iput-object v0, p0, Lcom/urbanairship/analytics/Analytics;->uploadManager:Lcom/urbanairship/analytics/EventUploadManager;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/analytics/Analytics;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/analytics/Analytics;->fromBackground:Z

    return v0
.end method

.method static synthetic access$002(Lcom/urbanairship/analytics/Analytics;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/analytics/Analytics;->fromBackground:Z

    return p1
.end method

.method static synthetic access$102(Lcom/urbanairship/analytics/Analytics;Lcom/urbanairship/analytics/Analytics$Session;)Lcom/urbanairship/analytics/Analytics$Session;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics;->session:Lcom/urbanairship/analytics/Analytics$Session;

    return-object p1
.end method

.method static synthetic access$202(Lcom/urbanairship/analytics/Analytics;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics;->conversionPushId:Ljava/lang/String;

    return-object p1
.end method

.method static getHashedDeviceId()Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const-string v0, "unavailable"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-byte v5, v2, v1

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Unable to hash the device ID: SHA1 digester not present"

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public activityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/urbanairship/analytics/ActivityMonitor;->addActivity(Landroid/app/Activity;)V

    new-instance v0, Lcom/urbanairship/analytics/ActivityStartedEvent;

    invoke-direct {v0, p1}, Lcom/urbanairship/analytics/ActivityStartedEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    return-void
.end method

.method public activityStopped(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/urbanairship/analytics/ActivityStoppedEvent;

    invoke-direct {v0, p1}, Lcom/urbanairship/analytics/ActivityStoppedEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/analytics/Analytics;->addEvent(Lcom/urbanairship/analytics/Event;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->activityMonitor:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/urbanairship/analytics/ActivityMonitor;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public addEvent(Lcom/urbanairship/analytics/Event;)V
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/AirshipConfigOptions;->analyticsServer:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->log()V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->getDatabaseSize()I

    move-result v0

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->uploadManager:Lcom/urbanairship/analytics/EventUploadManager;

    invoke-virtual {v1}, Lcom/urbanairship/analytics/EventUploadManager;->getMaxTotalDBSize()I

    move-result v1

    if-le v0, v1, :cond_4

    const-string v0, "DB size exceeded. Deleting non-critical events."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    const-string v0, "activity_started"

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "activity_stopped"

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Event;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "Database full. Not logging activity start/stop events"

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "Deleting activity start/stop events."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    const-string v1, "activity_started"

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/EventDataManager;->deleteEventType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    const-string v1, "activity_stopped"

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/EventDataManager;->deleteEventType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->getDatabaseSize()I

    move-result v0

    :cond_4
    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->uploadManager:Lcom/urbanairship/analytics/EventUploadManager;

    invoke-virtual {v1}, Lcom/urbanairship/analytics/EventUploadManager;->getMaxTotalDBSize()I

    move-result v1

    if-le v0, v1, :cond_5

    const-string v0, "Deleting oldest session."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventDataManager;->getOldestSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v1, v0}, Lcom/urbanairship/analytics/EventDataManager;->deleteSession(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->dataManager:Lcom/urbanairship/analytics/EventDataManager;

    invoke-virtual {v0, p1}, Lcom/urbanairship/analytics/EventDataManager;->insertEvent(Lcom/urbanairship/analytics/Event;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.urbanairship.analytics.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/urbanairship/CoreReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public getConversionPushId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->conversionPushId:Ljava/lang/String;

    return-object v0
.end method

.method getServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->server:Ljava/lang/String;

    return-object v0
.end method

.method getSession()Lcom/urbanairship/analytics/Analytics$Session;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->session:Lcom/urbanairship/analytics/Analytics$Session;

    return-object v0
.end method

.method public setConversionPushId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics;->conversionPushId:Ljava/lang/String;

    return-void
.end method

.method public startUploadingIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics;->uploadManager:Lcom/urbanairship/analytics/EventUploadManager;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/EventUploadManager;->startUploadingIfNecessary()V

    return-void
.end method
