.class public Lcom/glu/android/OfflineNotificationManager;
.super Landroid/app/Service;
.source "OfflineNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/OfflineNotificationManager$ONMObject;
    }
.end annotation


# static fields
.field private static final FILENAME:Ljava/lang/String; = "onm"

.field public static final INTENT_ACTION_GAME_QUIT:Ljava/lang/String; = "com.glu.android.GAME_QUIT"

.field public static final INTENT_ACTION_ONM_TOGGLED:Ljava/lang/String; = "com.glu.android.ONM_TOGGLED_BY_USER"

.field public static final INTENT_PARAM_TOGGLED:Ljava/lang/String; = "toggled"

.field private static final NOTIFICATION_EVENT_ADD_NOTIFICATION:I = 0x1

.field private static final NOTIFICATION_EVENT_ADD_NOTIFICATION_DISPLAY_FROM_NOW:I = 0x5

.field private static final NOTIFICATION_EVENT_CLEAR_PAYLOAD:I = 0x8

.field private static final NOTIFICATION_EVENT_GET_ENABLED_STATUS:I = 0xc

.field private static final NOTIFICATION_EVENT_GET_PAYLOAD_HASH:I = 0x7

.field private static final NOTIFICATION_EVENT_HAS_PAYLOAD:I = 0x6

.field private static final NOTIFICATION_EVENT_INSTANT_NOTIFICATION:I = 0x4

.field private static final NOTIFICATION_EVENT_REMOVE_ALL_NOTIFICATIONS:I = 0x3

.field private static final NOTIFICATION_EVENT_REMOVE_NOTIFICATION:I = 0x2

.field private static final NOTIFICATION_EVENT_REMOVE_NOTIFICATIONS_WITH_THIS_PAYLOAD:I = 0x9

.field public static final NOTIFICATION_EVENT_SET_DISABLED:I = 0xb

.field public static final NOTIFICATION_EVENT_SET_ENABLED:I = 0xa

.field private static final ONM_SETTING_FILENAME:Ljava/lang/String; = "onm_on"

.field private static final SLEEP_TIMER:I = 0x4e20

.field public static instance:Lcom/glu/android/OfflineNotificationManager;

.field public static m_onmEnabled:I


# instance fields
.field private m_lastPayload:Ljava/lang/String;

.field private m_notificationThread:Ljava/lang/Thread;

.field private m_objects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/OfflineNotificationManager$ONMObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    .line 360
    const/4 v0, -0x1

    sput v0, Lcom/glu/android/OfflineNotificationManager;->m_onmEnabled:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/glu/android/OfflineNotificationManager;->m_lastPayload:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    .line 114
    new-instance v0, Lcom/glu/android/OfflineNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/glu/android/OfflineNotificationManager$1;-><init>(Lcom/glu/android/OfflineNotificationManager;)V

    iput-object v0, p0, Lcom/glu/android/OfflineNotificationManager;->m_notificationThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$400(Lcom/glu/android/OfflineNotificationManager;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/OfflineNotificationManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/glu/android/OfflineNotificationManager;->m_notificationThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/glu/android/OfflineNotificationManager;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/OfflineNotificationManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    return-object v0
.end method

.method public static getONMEnabled()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 364
    sget-object v6, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    if-eqz v6, :cond_0

    sget v6, Lcom/glu/android/OfflineNotificationManager;->m_onmEnabled:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 366
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/OfflineNotificationManager;->getONMEnabledFilename()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    :cond_1
    move v4, v5

    .line 383
    .local v0, "ex":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return v4

    .line 371
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 372
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/glu/android/GluUtil;->readInt(Ljava/io/FileInputStream;)I

    move-result v3

    .line 373
    .local v3, "retI":I
    sput v3, Lcom/glu/android/OfflineNotificationManager;->m_onmEnabled:I

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ONM ENABLED:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    if-nez v3, :cond_2

    move v4, v5

    goto :goto_0

    .line 377
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "retI":I
    :catch_0
    move-exception v0

    .line 378
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v4, "Exception reading onm enabled file."

    invoke-static {v4, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    move v4, v5

    .line 379
    goto :goto_0

    .line 383
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "f":Ljava/io/File;
    :cond_4
    sget v6, Lcom/glu/android/OfflineNotificationManager;->m_onmEnabled:I

    if-nez v6, :cond_2

    move v4, v5

    goto :goto_0
.end method

.method public static getONMEnabledFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onm_on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handleGameLetDestroy()V
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/glu/android/GluApplication;->instance:Lcom/glu/android/GluApplication;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.glu.android.GAME_QUIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/glu/android/GluOfflineNotify;->processReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method private loadFile()V
    .locals 12

    .prologue
    .line 306
    new-instance v9, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "onm"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v9, "f":Ljava/io/File;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    .line 308
    const-string v0, "Loading notification file..."

    invoke-static {v0}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const-string v0, "...is what this would say if the file existed."

    invoke-static {v0}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 316
    :cond_0
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 321
    .local v10, "fis":Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    .line 323
    invoke-static {v10}, Lcom/glu/android/GluUtil;->readLong(Ljava/io/FileInputStream;)J

    move-result-wide v1

    .line 324
    .local v1, "displayAt":J
    invoke-static {v10}, Lcom/glu/android/GluUtil;->readLong(Ljava/io/FileInputStream;)J

    move-result-wide v3

    .line 325
    .local v3, "expiresAt":J
    invoke-static {v10}, Lcom/glu/android/GluUtil;->readString(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "message":Ljava/lang/String;
    invoke-static {v10}, Lcom/glu/android/GluUtil;->readString(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "payload":Ljava/lang/String;
    iget-object v11, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    new-instance v0, Lcom/glu/android/OfflineNotificationManager$ONMObject;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/glu/android/OfflineNotificationManager$ONMObject;-><init>(JJLjava/lang/String;Ljava/lang/String;Lcom/glu/android/OfflineNotificationManager$1;)V

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 330
    .end local v1    # "displayAt":J
    .end local v3    # "expiresAt":J
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "payload":Ljava/lang/String;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    .line 331
    .local v8, "ex":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading onm: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 329
    .end local v8    # "ex":Ljava/lang/Exception;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static loadONMService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    sget-object v1, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    if-nez v1, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/glu/android/OfflineNotificationManager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "onmService":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    .end local v0    # "onmService":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private printNotification(Lcom/glu/android/OfflineNotificationManager$ONMObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "obj"    # Lcom/glu/android/OfflineNotificationManager$ONMObject;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 104
    return-void
.end method

.method private saveFile()V
    .locals 6

    .prologue
    .line 337
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "onm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, "f":Ljava/io/File;
    const-string v4, "Saving notification file..."

    invoke-static {v4}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 341
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 342
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 344
    iget-object v4, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/glu/android/OfflineNotificationManager$ONMObject;

    invoke-static {v4}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$100(Lcom/glu/android/OfflineNotificationManager$ONMObject;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/glu/android/GluUtil;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 345
    iget-object v4, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/glu/android/OfflineNotificationManager$ONMObject;

    invoke-static {v4}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$000(Lcom/glu/android/OfflineNotificationManager$ONMObject;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/glu/android/GluUtil;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 346
    iget-object v4, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/glu/android/OfflineNotificationManager$ONMObject;

    invoke-static {v4}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$200(Lcom/glu/android/OfflineNotificationManager$ONMObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/glu/android/GluUtil;->writeString(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    .line 347
    iget-object v4, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/glu/android/OfflineNotificationManager$ONMObject;

    invoke-static {v4}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$300(Lcom/glu/android/OfflineNotificationManager$ONMObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/glu/android/GluUtil;->writeString(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    :goto_1
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception writing onm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 349
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "i":I
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static saveONMEnabled()V
    .locals 5

    .prologue
    .line 388
    sget-object v3, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    if-eqz v3, :cond_0

    sget v3, Lcom/glu/android/OfflineNotificationManager;->m_onmEnabled:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 390
    :cond_0
    const-string v3, "Invalid call to saveONMEnabled()"

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 403
    .local v1, "f":Ljava/io/File;
    :goto_0
    return-void

    .line 394
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/OfflineNotificationManager;->getONMEnabledFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    .restart local v1    # "f":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 397
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget v3, Lcom/glu/android/OfflineNotificationManager;->m_onmEnabled:I

    invoke-static {v2, v3}, Lcom/glu/android/GluUtil;->writeInt(Ljava/io/FileOutputStream;I)V

    .line 398
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ONM SAVED:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/glu/android/OfflineNotificationManager;->m_onmEnabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 401
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "Exception saving onm enabled file."

    invoke-static {v3, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static unloadONMService()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    invoke-virtual {v0}, Lcom/glu/android/OfflineNotificationManager;->destroyNotificationThread()V

    .line 95
    sget-object v0, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    invoke-virtual {v0}, Lcom/glu/android/OfflineNotificationManager;->stopSelf()V

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    .line 97
    const-string v0, "ONM UNLOAD"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized destroyNotificationThread()V
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/glu/android/OfflineNotificationManager;->m_notificationThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleEvent(IJJ[C[C)I
    .locals 13
    .param p1, "event"    # I
    .param p2, "displayAt"    # J
    .param p4, "expiresAt"    # J
    .param p6, "messageCA"    # [C
    .param p7, "payloadCA"    # [C

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    const-string v1, "handleevent called"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 191
    if-nez p6, :cond_3

    const-string v6, ""

    .line 192
    .local v6, "message":Ljava/lang/String;
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_0

    .line 193
    const-wide p4, 0x7fffffffffffffffL

    .line 195
    :cond_0
    if-nez p7, :cond_4

    move-object v7, v6

    .line 197
    .local v7, "payload":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 199
    const/4 p1, 0x1

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr p2, v1

    .line 203
    :cond_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_5

    .line 205
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    iget-object v1, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v10, v1, :cond_c

    .line 207
    iget-object v1, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/OfflineNotificationManager$ONMObject;

    invoke-static {v1}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$300(Lcom/glu/android/OfflineNotificationManager$ONMObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->removeElementAt(I)V

    .line 210
    add-int/lit8 v10, v10, -0x1

    .line 205
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 191
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "payload":Ljava/lang/String;
    .end local v10    # "i":I
    :cond_3
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 195
    .restart local v6    # "message":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_1

    .line 214
    .restart local v7    # "payload":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_e

    .line 216
    :cond_6
    if-nez p6, :cond_7

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null message when adding/removing notification.  e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    const/4 v1, 0x0

    .line 301
    :goto_3
    monitor-exit p0

    return v1

    .line 222
    :cond_7
    const/4 v9, -0x1

    .line 223
    .local v9, "foundAt":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    :try_start_2
    iget-object v1, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v10, v1, :cond_8

    .line 225
    iget-object v1, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/glu/android/OfflineNotificationManager$ONMObject;

    .line 226
    .local v11, "obj":Lcom/glu/android/OfflineNotificationManager$ONMObject;
    invoke-static {v11}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$200(Lcom/glu/android/OfflineNotificationManager$ONMObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v11}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$100(Lcom/glu/android/OfflineNotificationManager$ONMObject;)J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-nez v1, :cond_9

    invoke-static {v11}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$000(Lcom/glu/android/OfflineNotificationManager$ONMObject;)J

    move-result-wide v1

    cmp-long v1, p4, v1

    if-nez v1, :cond_9

    .line 228
    move v9, v10

    .line 233
    .end local v11    # "obj":Lcom/glu/android/OfflineNotificationManager$ONMObject;
    :cond_8
    const/4 v1, -0x1

    if-eq v9, v1, :cond_a

    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing a notification..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->removeElementAt(I)V

    .line 237
    invoke-direct {p0}, Lcom/glu/android/OfflineNotificationManager;->saveFile()V

    .line 238
    const/4 v1, 0x1

    goto :goto_3

    .line 223
    .restart local v11    # "obj":Lcom/glu/android/OfflineNotificationManager$ONMObject;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 240
    .end local v11    # "obj":Lcom/glu/android/OfflineNotificationManager$ONMObject;
    :cond_a
    const/4 v1, -0x1

    if-ne v9, v1, :cond_b

    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding a notification..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 243
    iget-object v12, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    new-instance v1, Lcom/glu/android/OfflineNotificationManager$ONMObject;

    const/4 v8, 0x0

    move-wide v2, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v1 .. v8}, Lcom/glu/android/OfflineNotificationManager$ONMObject;-><init>(JJLjava/lang/String;Ljava/lang/String;Lcom/glu/android/OfflineNotificationManager$1;)V

    invoke-virtual {v12, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 244
    invoke-direct {p0}, Lcom/glu/android/OfflineNotificationManager;->saveFile()V

    .line 245
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 249
    :cond_b
    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    .line 250
    const-string v1, "Attempting to remove notification that doesn\'t exist."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 301
    .end local v9    # "foundAt":I
    .end local v10    # "i":I
    :cond_c
    :goto_5
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 252
    .restart local v9    # "foundAt":I
    .restart local v10    # "i":I
    :cond_d
    const-string v1, "Attempting to add a duplicate notification."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 255
    .end local v9    # "foundAt":I
    .end local v10    # "i":I
    :cond_e
    const/4 v1, 0x3

    if-ne p1, v1, :cond_f

    .line 257
    iget-object v1, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 259
    iget-object v1, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 260
    invoke-direct {p0}, Lcom/glu/android/OfflineNotificationManager;->saveFile()V

    .line 261
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 264
    :cond_f
    const/4 v1, 0x4

    if-ne p1, v1, :cond_11

    .line 266
    if-nez p6, :cond_10

    .line 268
    const-string v1, "Null message when attempting instant notification."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 269
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 272
    :cond_10
    const/16 v1, 0x7b

    invoke-static {v6, v7, v1}, Lcom/glu/android/GluUtil;->sendNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 275
    :cond_11
    const/4 v1, 0x6

    if-ne p1, v1, :cond_13

    .line 277
    iget-object v1, p0, Lcom/glu/android/OfflineNotificationManager;->m_lastPayload:Ljava/lang/String;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_12
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 279
    :cond_13
    const/4 v1, 0x7

    if-ne p1, v1, :cond_14

    .line 281
    iget-object v1, p0, Lcom/glu/android/OfflineNotificationManager;->m_lastPayload:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 282
    const/16 v1, 0xb

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/glu/android/OfflineNotificationManager;->m_lastPayload:Ljava/lang/String;

    invoke-static {v3}, Lcom/glu/android/GluUtil;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/glu/android/GluJNI;->systemEvent(II[B)I

    move-result v1

    goto/16 :goto_3

    .line 284
    :cond_14
    const/16 v1, 0x8

    if-ne p1, v1, :cond_15

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/glu/android/OfflineNotificationManager;->m_lastPayload:Ljava/lang/String;

    goto :goto_5

    .line 294
    :cond_15
    const/16 v1, 0xc

    if-ne p1, v1, :cond_c

    .line 296
    sget v1, Lcom/glu/android/OfflineNotificationManager;->m_onmEnabled:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz v1, :cond_16

    .line 297
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 298
    :cond_16
    const/4 v1, 0x1

    goto/16 :goto_3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 62
    sput-object p0, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    .line 64
    invoke-direct {p0}, Lcom/glu/android/OfflineNotificationManager;->loadFile()V

    .line 65
    iget-object v0, p0, Lcom/glu/android/OfflineNotificationManager;->m_notificationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    .line 71
    return-void
.end method

.method public declared-synchronized processNotificationQueue(J)V
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ONM ticking...now="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "modified":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 145
    iget-object v3, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/OfflineNotificationManager$ONMObject;

    .line 146
    .local v2, "obj":Lcom/glu/android/OfflineNotificationManager$ONMObject;
    invoke-static {v2}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$000(Lcom/glu/android/OfflineNotificationManager$ONMObject;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gtz v3, :cond_1

    .line 148
    const-string v3, "Notification expired. Removing..."

    invoke-direct {p0, v2, v3}, Lcom/glu/android/OfflineNotificationManager;->printNotification(Lcom/glu/android/OfflineNotificationManager$ONMObject;Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 150
    const/4 v1, 0x1

    .line 143
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_1
    invoke-static {v2}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$100(Lcom/glu/android/OfflineNotificationManager$ONMObject;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-gtz v3, :cond_0

    .line 154
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v3}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v3}, Lcom/glu/android/GameLet;->nativeSuspended()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    :cond_2
    const-string v3, "Ready to display notification..."

    invoke-direct {p0, v2, v3}, Lcom/glu/android/OfflineNotificationManager;->printNotification(Lcom/glu/android/OfflineNotificationManager$ONMObject;Ljava/lang/String;)V

    .line 158
    invoke-static {v2}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$200(Lcom/glu/android/OfflineNotificationManager$ONMObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$300(Lcom/glu/android/OfflineNotificationManager$ONMObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$100(Lcom/glu/android/OfflineNotificationManager$ONMObject;)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v3, v4, v5}, Lcom/glu/android/GluUtil;->sendNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    :goto_2
    invoke-static {v2}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$300(Lcom/glu/android/OfflineNotificationManager$ONMObject;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/glu/android/OfflineNotificationManager;->m_lastPayload:Ljava/lang/String;

    .line 179
    iget-object v3, p0, Lcom/glu/android/OfflineNotificationManager;->m_objects:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 180
    const/4 v1, 0x1

    goto :goto_1

    .line 160
    :cond_3
    sget-object v3, Lcom/glu/android/NonModalAlertView;->instance:Lcom/glu/android/NonModalAlertView;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v3, :cond_4

    .line 170
    const-string v3, "Tossing out notification while user in game..."

    invoke-direct {p0, v2, v3}, Lcom/glu/android/OfflineNotificationManager;->printNotification(Lcom/glu/android/OfflineNotificationManager$ONMObject;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 140
    .end local v0    # "i":I
    .end local v1    # "modified":Z
    .end local v2    # "obj":Lcom/glu/android/OfflineNotificationManager$ONMObject;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 175
    .restart local v0    # "i":I
    .restart local v1    # "modified":Z
    .restart local v2    # "obj":Lcom/glu/android/OfflineNotificationManager$ONMObject;
    :cond_4
    :try_start_1
    const-string v3, "Tossing out notification..."

    invoke-direct {p0, v2, v3}, Lcom/glu/android/OfflineNotificationManager;->printNotification(Lcom/glu/android/OfflineNotificationManager$ONMObject;Ljava/lang/String;)V

    goto :goto_2

    .line 184
    .end local v2    # "obj":Lcom/glu/android/OfflineNotificationManager$ONMObject;
    :cond_5
    if-eqz v1, :cond_6

    .line 185
    invoke-direct {p0}, Lcom/glu/android/OfflineNotificationManager;->saveFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_6
    monitor-exit p0

    return-void
.end method
