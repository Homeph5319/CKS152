.class public Lcom/glu/android/GluEmbeddedPush;
.super Ljava/lang/Object;
.source "GluEmbeddedPush.java"


# static fields
.field private static final EMBEDDED_PUSH_FILENAME:Ljava/lang/String; = "ep"

.field public static ENABLED:Z = false

.field public static final PUSH_EVENT_CONSUME_CURRENT_EVENT:I = 0x7

.field public static final PUSH_EVENT_DOES_BUILD_HAVE_PUSH:I = 0x8

.field public static final PUSH_EVENT_GET_EVENT_STRING:I = 0x5

.field public static final PUSH_EVENT_GET_EXTRA_STRING:I = 0x6

.field public static final PUSH_EVENT_GET_MENU_ITEM_STRING:I = 0x1

.field public static final PUSH_EVENT_GET_USER_APID:I = 0x9

.field public static final PUSH_EVENT_QUERY_NOTIFICATION_LAUNCHED_GAME:I = 0xa

.field public static final PUSH_EVENT_QUERY_PUSH_PENDING:I = 0x4

.field public static final PUSH_EVENT_QUERY_PUSH_REFUSED:I = 0x2

.field public static final PUSH_EVENT_USER_REQUESTED_PUSH:I = 0x3

.field public static sm_activityClass:Ljava/lang/Class;

.field private static sm_notificationLaunchedGame:Z

.field private static sm_pendingEvent:Ljava/lang/String;

.field private static sm_pendingExtra:Ljava/lang/String;

.field private static sm_reserved:[B

.field private static sm_userAPID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    sput-object v1, Lcom/glu/android/GluEmbeddedPush;->sm_pendingEvent:Ljava/lang/String;

    .line 65
    sput-object v1, Lcom/glu/android/GluEmbeddedPush;->sm_pendingExtra:Ljava/lang/String;

    .line 66
    sput-object v1, Lcom/glu/android/GluEmbeddedPush;->sm_userAPID:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/glu/android/GluEmbeddedPush;->sm_notificationLaunchedGame:Z

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/glu/android/GluEmbeddedPush;->ENABLED:Z

    .line 76
    const/16 v0, 0xff

    new-array v0, v0, [B

    sput-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_reserved:[B

    .line 78
    sput-object v1, Lcom/glu/android/GluEmbeddedPush;->sm_activityClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consumeEvent()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    sput-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_pendingEvent:Ljava/lang/String;

    .line 139
    sput-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_pendingExtra:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    sput-boolean v0, Lcom/glu/android/GluEmbeddedPush;->sm_notificationLaunchedGame:Z

    .line 141
    return-void
.end method

.method public static didNotificationLaunchGame()Z
    .locals 1

    .prologue
    .line 201
    sget-boolean v0, Lcom/glu/android/GluEmbeddedPush;->sm_notificationLaunchedGame:Z

    return v0
.end method

.method public static doesBuildHavePush()Z
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/glu/android/Settings;->PUSH_ENABLED:Z

    return v0
.end method

.method public static getCurrentAlert()[B
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_pendingEvent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_pendingEvent:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->utf16ToUtf8(Ljava/lang/String;Z)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentPayload()[B
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_pendingExtra:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_pendingExtra:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->utf16ToUtf8(Ljava/lang/String;Z)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static getFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ep"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserAPID()[B
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_userAPID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_userAPID:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->utf16ToUtf8(Ljava/lang/String;Z)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static hasPushBeenSet()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public static isPushDisabled()Z
    .locals 1

    .prologue
    .line 152
    sget-boolean v0, Lcom/glu/android/GluEmbeddedPush;->ENABLED:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPushPending()I
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/glu/android/GluEmbeddedPush;->ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_pendingEvent:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_pendingExtra:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadPushSettings()V
    .locals 5

    .prologue
    .line 166
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->getFile()Ljava/io/File;

    move-result-object v1

    .line 167
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    :goto_0
    return-void

    .line 171
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 172
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/glu/android/GluUtil;->readBoolean(Ljava/io/FileInputStream;)Z

    move-result v3

    sput-boolean v3, Lcom/glu/android/GluEmbeddedPush;->ENABLED:Z

    .line 173
    sget-object v3, Lcom/glu/android/GluEmbeddedPush;->sm_reserved:[B

    invoke-static {v2, v3}, Lcom/glu/android/GluUtil;->readByteArray(Ljava/io/FileInputStream;[B)V

    .line 174
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read file for some reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onApplicationCreate()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_reserved:[B

    invoke-static {v0}, Lcom/glu/android/GluUtil;->zero([B)V

    .line 100
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->loadPushSettings()V

    .line 101
    invoke-static {}, Lcom/urbanairship/push/IntentReceiver;->onApplicationCreate()V

    .line 102
    return-void
.end method

.method public static pushEvent(II[B)[B
    .locals 5
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "paramBA"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 23
    const/4 v0, 0x0

    .line 26
    .local v0, "iRet":I
    const/4 v4, 0x4

    if-ne p0, v4, :cond_1

    .line 27
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->isPushPending()I

    move-result v0

    .line 45
    :cond_0
    :goto_0
    if-nez v0, :cond_c

    .line 46
    const/4 v1, 0x0

    .line 49
    :goto_1
    return-object v1

    .line 28
    :cond_1
    const/4 v4, 0x5

    if-ne p0, v4, :cond_2

    .line 29
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->getCurrentAlert()[B

    move-result-object v1

    goto :goto_1

    .line 30
    :cond_2
    const/4 v4, 0x6

    if-ne p0, v4, :cond_3

    .line 31
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->getCurrentPayload()[B

    move-result-object v1

    goto :goto_1

    .line 32
    :cond_3
    const/4 v4, 0x7

    if-ne p0, v4, :cond_4

    .line 33
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->consumeEvent()V

    goto :goto_0

    .line 34
    :cond_4
    const/4 v4, 0x2

    if-ne p0, v4, :cond_6

    .line 35
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->isPushDisabled()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2

    .line 36
    :cond_6
    const/4 v4, 0x3

    if-ne p0, v4, :cond_7

    .line 37
    invoke-static {p1}, Lcom/glu/android/GluEmbeddedPush;->togglePushSetting(I)V

    goto :goto_0

    .line 38
    :cond_7
    const/16 v4, 0x8

    if-ne p0, v4, :cond_9

    .line 39
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->doesBuildHavePush()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v2

    :goto_3
    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_3

    .line 40
    :cond_9
    const/16 v4, 0x9

    if-ne p0, v4, :cond_a

    .line 41
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->getUserAPID()[B

    move-result-object v1

    goto :goto_1

    .line 42
    :cond_a
    const/16 v4, 0xa

    if-ne p0, v4, :cond_0

    .line 43
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->didNotificationLaunchGame()Z

    move-result v4

    if-eqz v4, :cond_b

    move v0, v2

    :goto_4
    goto :goto_0

    :cond_b
    move v0, v3

    goto :goto_4

    .line 48
    :cond_c
    new-array v1, v2, [B

    int-to-byte v2, v0

    aput-byte v2, v1, v3

    .line 49
    .local v1, "ret":[B
    goto :goto_1
.end method

.method public static savePushSettings()V
    .locals 5

    .prologue
    .line 182
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->getFile()Ljava/io/File;

    move-result-object v1

    .line 185
    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 186
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-boolean v3, Lcom/glu/android/GluEmbeddedPush;->ENABLED:Z

    invoke-static {v2, v3}, Lcom/glu/android/GluUtil;->writeBoolean(Ljava/io/FileOutputStream;Z)V

    .line 187
    sget-object v3, Lcom/glu/android/GluEmbeddedPush;->sm_reserved:[B

    invoke-static {v2, v3}, Lcom/glu/android/GluUtil;->writeByteArray(Ljava/io/FileOutputStream;[B)V

    .line 188
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write file for some reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setNotificationLaunchedGame(Z)V
    .locals 0
    .param p0, "didIt"    # Z

    .prologue
    .line 94
    sput-boolean p0, Lcom/glu/android/GluEmbeddedPush;->sm_notificationLaunchedGame:Z

    .line 95
    return-void
.end method

.method public static setPendingData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 82
    sput-object p0, Lcom/glu/android/GluEmbeddedPush;->sm_pendingEvent:Ljava/lang/String;

    .line 83
    sput-object p1, Lcom/glu/android/GluEmbeddedPush;->sm_pendingExtra:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static setUserAPID(Ljava/lang/String;)V
    .locals 1
    .param p0, "apid"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lcom/glu/android/GluEmbeddedPush;->sm_userAPID:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 89
    sput-object p0, Lcom/glu/android/GluEmbeddedPush;->sm_userAPID:Ljava/lang/String;

    .line 90
    :cond_0
    return-void
.end method

.method public static togglePushSetting(I)V
    .locals 1
    .param p0, "iParam"    # I

    .prologue
    const/4 v0, 0x1

    .line 145
    if-ne p0, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/glu/android/GluEmbeddedPush;->ENABLED:Z

    .line 146
    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->savePushSettings()V

    .line 147
    invoke-static {}, Lcom/urbanairship/push/IntentReceiver;->setEnabledDisabled()V

    .line 148
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
