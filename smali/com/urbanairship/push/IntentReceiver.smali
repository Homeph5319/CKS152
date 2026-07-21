.class public Lcom/urbanairship/push/IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IntentReceiver.java"


# static fields
.field public static m_devKey:Ljava/lang/String;

.field public static m_devSecret:Ljava/lang/String;

.field public static m_prodKey:Ljava/lang/String;

.field public static m_prodSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/urbanairship/push/IntentReceiver;->m_devKey:Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/urbanairship/push/IntentReceiver;->m_prodKey:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/urbanairship/push/IntentReceiver;->m_devSecret:Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/urbanairship/push/IntentReceiver;->m_prodSecret:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getExtraParam(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string v0, "extra"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isValid()Z
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/urbanairship/push/IntentReceiver;->m_devKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/push/IntentReceiver;->m_prodKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/push/IntentReceiver;->m_devSecret:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/push/IntentReceiver;->m_prodSecret:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logPushExtras(Landroid/content/Intent;)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 174
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Push Notification Extra: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static onApplicationCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    sget-object v2, Lcom/glu/android/GluApplication;->instance:Lcom/glu/android/GluApplication;

    iget-object v2, v2, Lcom/glu/android/GluApplication;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    const-string v3, "Glu-Push-Key"

    invoke-virtual {v2, v3}, Lcom/glu/android/CaseInsensitiveHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    .local v1, "overrideKey":Ljava/lang/String;
    sget-object v2, Lcom/glu/android/ModuleSettings;->UA_DEBUG_KEY:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    sget v4, Lcom/glu/android/Settings;->BUILD_VARIANT:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/urbanairship/push/IntentReceiver;->m_devKey:Ljava/lang/String;

    .line 38
    if-eqz v1, :cond_2

    .end local v1    # "overrideKey":Ljava/lang/String;
    :goto_0
    sput-object v1, Lcom/urbanairship/push/IntentReceiver;->m_prodKey:Ljava/lang/String;

    .line 40
    sget-object v2, Lcom/glu/android/ModuleSettings;->UA_DEBUG_SECRET:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    sget v4, Lcom/glu/android/Settings;->BUILD_VARIANT:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/urbanairship/push/IntentReceiver;->m_devSecret:Ljava/lang/String;

    .line 41
    sget-object v2, Lcom/glu/android/ModuleSettings;->UA_RELEASE_SECRET:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    sget v4, Lcom/glu/android/Settings;->BUILD_VARIANT:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/urbanairship/push/IntentReceiver;->m_prodSecret:Ljava/lang/String;

    .line 43
    sget-boolean v2, Lcom/glu/android/Settings;->PUSH_ENABLED:Z

    if-nez v2, :cond_0

    .line 46
    sput-object v5, Lcom/urbanairship/push/IntentReceiver;->m_devKey:Ljava/lang/String;

    .line 47
    sput-object v5, Lcom/urbanairship/push/IntentReceiver;->m_prodKey:Ljava/lang/String;

    .line 49
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/urbanairship/push/IntentReceiver;->m_devKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  and  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/urbanairship/push/IntentReceiver;->m_prodKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/urbanairship/push/IntentReceiver;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    sget-object v2, Lcom/glu/android/GluApplication;->instance:Lcom/glu/android/GluApplication;

    invoke-static {v2}, Lcom/urbanairship/AirshipConfigOptions;->loadDefaultOptions(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    .line 54
    .local v0, "options":Lcom/urbanairship/AirshipConfigOptions;
    sget-object v2, Lcom/urbanairship/push/IntentReceiver;->m_devKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/urbanairship/AirshipConfigOptions;->developmentAppKey:Ljava/lang/String;

    .line 55
    sget-object v2, Lcom/urbanairship/push/IntentReceiver;->m_prodKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/urbanairship/AirshipConfigOptions;->productionAppKey:Ljava/lang/String;

    .line 56
    sget-object v2, Lcom/urbanairship/push/IntentReceiver;->m_devSecret:Ljava/lang/String;

    iput-object v2, v0, Lcom/urbanairship/AirshipConfigOptions;->developmentAppSecret:Ljava/lang/String;

    .line 57
    sget-object v2, Lcom/urbanairship/push/IntentReceiver;->m_prodSecret:Ljava/lang/String;

    iput-object v2, v0, Lcom/urbanairship/AirshipConfigOptions;->productionAppSecret:Ljava/lang/String;

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    .line 60
    sget-object v2, Lcom/glu/android/GluApplication;->instance:Lcom/glu/android/GluApplication;

    invoke-static {v2, v0}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;)V

    .line 61
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    const-class v3, Lcom/urbanairship/push/IntentReceiver;

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/PushManager;->setIntentReceiver(Ljava/lang/Class;)V

    .line 62
    invoke-static {}, Lcom/urbanairship/push/IntentReceiver;->setEnabledDisabled()V

    .line 64
    :cond_1
    return-void

    .line 38
    .end local v0    # "options":Lcom/urbanairship/AirshipConfigOptions;
    .restart local v1    # "overrideKey":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/glu/android/ModuleSettings;->UA_RELEASE_KEY:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    sget v4, Lcom/glu/android/Settings;->BUILD_VARIANT:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto/16 :goto_0
.end method

.method public static setEnabledDisabled()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/urbanairship/push/IntentReceiver;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    .local v0, "prefs":Lcom/urbanairship/push/PushPreferences;
    :goto_0
    return-void

    .line 71
    .end local v0    # "prefs":Lcom/urbanairship/push/PushPreferences;
    :cond_0
    sget-boolean v1, Lcom/glu/android/GluEmbeddedPush;->ENABLED:Z

    if-eqz v1, :cond_1

    .line 83
    invoke-static {}, Lcom/urbanairship/push/PushManager;->enablePush()V

    .line 84
    invoke-static {}, Lcom/urbanairship/push/PushManager;->startService()V

    .line 99
    :goto_1
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    .line 100
    .restart local v0    # "prefs":Lcom/urbanairship/push/PushPreferences;
    sget-boolean v1, Lcom/glu/android/GluEmbeddedPush;->ENABLED:Z

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setPushEnabled(Z)Z

    .line 101
    sget-boolean v1, Lcom/glu/android/GluEmbeddedPush;->ENABLED:Z

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setSoundEnabled(Z)Z

    .line 102
    sget-boolean v1, Lcom/glu/android/GluEmbeddedPush;->ENABLED:Z

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setVibrateEnabled(Z)Z

    .line 103
    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/GluEmbeddedPush;->setUserAPID(Ljava/lang/String;)V

    .line 104
    sget-boolean v1, Lcom/glu/android/GluEmbeddedPush;->ENABLED:Z

    if-eqz v1, :cond_2

    .line 105
    invoke-static {}, Lcom/urbanairship/push/PushManager;->startService()V

    goto :goto_0

    .line 90
    .end local v0    # "prefs":Lcom/urbanairship/push/PushPreferences;
    :cond_1
    invoke-static {}, Lcom/urbanairship/push/PushManager;->disablePush()V

    .line 91
    invoke-static {}, Lcom/urbanairship/push/PushManager;->stopService()V

    goto :goto_1

    .line 107
    .restart local v0    # "prefs":Lcom/urbanairship/push/PushPreferences;
    :cond_2
    invoke-static {}, Lcom/urbanairship/push/PushManager;->stopService()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v12, 0x10000000

    .line 112
    invoke-static {}, Lcom/urbanairship/push/IntentReceiver;->isValid()Z

    move-result v10

    if-nez v10, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "action":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received intent: action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   string="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 118
    const-string v10, "com.urbanairship.push.PUSH_RECEIVED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 120
    const-string v10, "com.urbanairship.push.ALERT"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "event":Ljava/lang/String;
    const-string v10, "extra"

    invoke-static {p2, v10}, Lcom/urbanairship/push/IntentReceiver;->getExtraParam(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "extra":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/glu/android/GluEmbeddedPush;->setPendingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received notification. Message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Payload: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "extra":Ljava/lang/String;
    :cond_2
    const-string v10, "com.urbanairship.push.NOTIFICATION_OPENED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "com.urbanairship.push.NOTIFICATION_OPENED_PROXY"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 128
    :cond_3
    const-string v10, "com.urbanairship.push.ALERT"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .restart local v1    # "event":Ljava/lang/String;
    const-string v10, "extra"

    invoke-static {p2, v10}, Lcom/urbanairship/push/IntentReceiver;->getExtraParam(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .restart local v2    # "extra":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/glu/android/GluEmbeddedPush;->setPendingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notification clicked.Message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Payload: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 135
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 137
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "url"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 138
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 142
    .local v7, "uri":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v9, v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    .local v9, "urllaunch":Landroid/content/Intent;
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v10

    invoke-virtual {v10}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 150
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "urllaunch":Landroid/content/Intent;
    :cond_5
    sget-object v10, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-nez v10, :cond_6

    .line 151
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/glu/android/GluEmbeddedPush;->setNotificationLaunchedGame(Z)V

    .line 154
    :cond_6
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v6, "launch":Landroid/content/Intent;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v10

    invoke-virtual {v10}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/glu/android/GluEmbeddedPush;->sm_activityClass:Ljava/lang/Class;

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v10

    invoke-virtual {v10}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 159
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "extra":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "launch":Landroid/content/Intent;
    :cond_7
    const-string v10, "com.urbanairship.push.REGISTRATION_FINISHED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 161
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Registered. APID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.urbanairship.push.APID"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Valid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.urbanairship.push.REGISTRATION_VALID"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 162
    const-string v10, "apid"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/glu/android/GluEmbeddedPush;->setUserAPID(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
