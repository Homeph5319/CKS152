.class public Lcom/glu/android/GluOfflineNotify;
.super Landroid/content/BroadcastReceiver;
.source "GluOfflineNotify.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static processReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const-string v1, "GluOfflineNotify.onReceive()"

    invoke-static {v1}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 22
    if-nez p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GluOfflineNotify action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 27
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    const-string v1, "GluOfflineNotify.onReceive(BOOT_COMPLETED)"

    invoke-static {v1}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/glu/android/OfflineNotificationManager;->getONMEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {p0}, Lcom/glu/android/OfflineNotificationManager;->loadONMService(Landroid/content/Context;)V

    goto :goto_0

    .line 35
    :cond_2
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    const-string v1, "GluOfflineNotify.onReceive(ACTION_SHUTDOWN)"

    invoke-static {v1}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/glu/android/OfflineNotificationManager;->unloadONMService()V

    goto :goto_0

    .line 41
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 43
    const-string v1, "GluOfflineNotify.onReceive(SCREEN_ON)"

    invoke-static {v1}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/glu/android/OfflineNotificationManager;->processNotificationQueue(J)V

    goto :goto_0

    .line 48
    :cond_4
    const-string v1, "com.glu.android.ONM_TOGGLED_BY_USER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 50
    invoke-static {}, Lcom/glu/android/OfflineNotificationManager;->getONMEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    const-string v1, "GluOfflineNotify.onReceive(com.glu.android.ONM_TOGGLED_BY_USER)"

    invoke-static {v1}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 52
    :cond_5
    invoke-static {}, Lcom/glu/android/OfflineNotificationManager;->getONMEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {p0}, Lcom/glu/android/OfflineNotificationManager;->loadONMService(Landroid/content/Context;)V

    goto :goto_0

    .line 55
    :cond_6
    const-string v1, "com.glu.android.GAME_QUIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lcom/glu/android/OfflineNotificationManager;->getONMEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-static {}, Lcom/glu/android/OfflineNotificationManager;->unloadONMService()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/glu/android/GluOfflineNotify;->processReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 16
    return-void
.end method
