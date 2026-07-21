.class public Lcom/glu/android/GluPlayHaven;
.super Ljava/lang/Object;
.source "GluPlayHaven.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GluPlayHaven$1;,
        Lcom/glu/android/GluPlayHaven$RequestRunner;,
        Lcom/glu/android/GluPlayHaven$PublisherContentRequest;,
        Lcom/glu/android/GluPlayHaven$ContentRequest;,
        Lcom/glu/android/GluPlayHaven$PublisherOpenRequest;
    }
.end annotation


# static fields
.field private static final HANDLER_START_PUBLISHER_CONTENT_REQUEST:I = 0x1

.field private static PLAYHAVEN_CALLBACK_CONTENT_DISMISSED:I = 0x0

.field private static PLAYHAVEN_CALLBACK_CONTENT_DISPLAYED:I = 0x0

.field private static PLAYHAVEN_CALLBACK_CONTENT_DISPLAY_ERROR:I = 0x0

.field private static PLAYHAVEN_CALLBACK_CONTENT_REQUEST_FAILED:I = 0x0

.field private static PLAYHAVEN_CALLBACK_CONTENT_REQUEST_SUCCEEDED:I = 0x0

.field private static PLAYHAVEN_CALLBACK_ON_REWARD_RECEIVED:I = 0x0

.field private static PLAYHAVEN_CALLBACK_OPEN_FAILED:I = 0x0

.field private static PLAYHAVEN_CALLBACK_OPEN_SUCCEEDED:I = 0x0

.field private static PLAYHAVEN_CALLBACK_WILL_DISPLAY_CONTENT:I = 0x0

.field private static PLAYHAVEN_CALLBACK_WILL_GET_CONTENT:I = 0x0

.field public static final PLAYHAVEN_EVENT_DESTROY:I = 0x3

.field public static final PLAYHAVEN_EVENT_HIDE_NOTIFICATION_VIEW:I = 0x8

.field public static final PLAYHAVEN_EVENT_INIT_STEP_1_TOKEN:I = 0x1

.field public static final PLAYHAVEN_EVENT_INIT_STEP_2_SECRET:I = 0x2

.field public static final PLAYHAVEN_EVENT_IS_PUBLISHER_CONTENT_REQUEST_ACTIVE:I = 0x6

.field public static final PLAYHAVEN_EVENT_SHOW_NOTIFICATION_VIEW:I = 0x7

.field public static final PLAYHAVEN_EVENT_START_PUBLISHER_CONTENT_REQUEST:I = 0x5

.field public static final PLAYHAVEN_EVENT_START_PUBLISHER_OPEN_REQUEST:I = 0x4

.field protected static instance:Lcom/glu/android/GluPlayHaven;


# instance fields
.field private m_activity:Landroid/app/Activity;

.field protected m_activityNotificationParam:Ljava/lang/String;

.field private m_atLibrary:Ljava/lang/String;

.field private m_contentRequest:Lcom/glu/android/GluPlayHaven$ContentRequest;

.field private m_loadedATLibrary:Z

.field private m_pendingRequests:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_publisherContentRequest:Lcom/glu/android/GluPlayHaven$PublisherContentRequest;

.field private m_publisherOpenRequest:Lcom/glu/android/GluPlayHaven$PublisherOpenRequest;

.field private m_secret:Ljava/lang/String;

.field private m_token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    :try_start_0
    const-string v0, "gluph"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    .line 301
    const/4 v0, 0x1

    sput v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_OPEN_SUCCEEDED:I

    .line 302
    const/4 v0, 0x2

    sput v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_OPEN_FAILED:I

    .line 303
    const/4 v0, 0x3

    sput v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_CONTENT_REQUEST_SUCCEEDED:I

    .line 304
    const/4 v0, 0x4

    sput v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_CONTENT_REQUEST_FAILED:I

    .line 305
    const/4 v0, 0x5

    sput v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_WILL_GET_CONTENT:I

    .line 306
    const/4 v0, 0x6

    sput v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_WILL_DISPLAY_CONTENT:I

    .line 307
    const/4 v0, 0x7

    sput v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_CONTENT_DISPLAYED:I

    .line 308
    const/16 v0, 0x8

    sput v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_CONTENT_DISMISSED:I

    .line 309
    const/16 v0, 0x9

    sput v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_CONTENT_DISPLAY_ERROR:I

    .line 310
    const/16 v0, 0xa

    sput v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_ON_REWARD_RECEIVED:I

    return-void

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object v1, p0, Lcom/glu/android/GluPlayHaven;->m_activity:Landroid/app/Activity;

    .line 116
    iput-object v1, p0, Lcom/glu/android/GluPlayHaven;->m_token:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/glu/android/GluPlayHaven;->m_secret:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GluPlayHaven;->m_loadedATLibrary:Z

    .line 119
    iput-object v1, p0, Lcom/glu/android/GluPlayHaven;->m_atLibrary:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluPlayHaven;->m_pendingRequests:Ljava/util/Hashtable;

    .line 122
    iput-object v1, p0, Lcom/glu/android/GluPlayHaven;->m_activityNotificationParam:Ljava/lang/String;

    .line 324
    new-instance v0, Lcom/glu/android/GluPlayHaven$PublisherOpenRequest;

    invoke-direct {v0, p0, v1}, Lcom/glu/android/GluPlayHaven$PublisherOpenRequest;-><init>(Lcom/glu/android/GluPlayHaven;Lcom/glu/android/GluPlayHaven$1;)V

    iput-object v0, p0, Lcom/glu/android/GluPlayHaven;->m_publisherOpenRequest:Lcom/glu/android/GluPlayHaven$PublisherOpenRequest;

    .line 340
    new-instance v0, Lcom/glu/android/GluPlayHaven$ContentRequest;

    invoke-direct {v0, p0, v1}, Lcom/glu/android/GluPlayHaven$ContentRequest;-><init>(Lcom/glu/android/GluPlayHaven;Lcom/glu/android/GluPlayHaven$1;)V

    iput-object v0, p0, Lcom/glu/android/GluPlayHaven;->m_contentRequest:Lcom/glu/android/GluPlayHaven$ContentRequest;

    .line 379
    new-instance v0, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;

    invoke-direct {v0, p0}, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;-><init>(Lcom/glu/android/GluPlayHaven;)V

    iput-object v0, p0, Lcom/glu/android/GluPlayHaven;->m_publisherContentRequest:Lcom/glu/android/GluPlayHaven$PublisherContentRequest;

    .line 126
    iput-object p1, p0, Lcom/glu/android/GluPlayHaven;->m_activity:Landroid/app/Activity;

    .line 127
    sput-object p0, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    .line 128
    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_CONTENT_DISPLAYED:I

    return v0
.end method

.method static synthetic access$1100(Lcom/glu/android/GluPlayHaven;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluPlayHaven;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/glu/android/GluPlayHaven;->onContentRequestFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_CONTENT_DISMISSED:I

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_ON_REWARD_RECEIVED:I

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_CONTENT_DISPLAY_ERROR:I

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_OPEN_SUCCEEDED:I

    return v0
.end method

.method static synthetic access$400(Lcom/glu/android/GluPlayHaven;II[B)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluPlayHaven;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/glu/android/GluPlayHaven;->callbackEventI(II[B)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_OPEN_FAILED:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_WILL_GET_CONTENT:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/glu/android/GluPlayHaven;->PLAYHAVEN_CALLBACK_WILL_DISPLAY_CONTENT:I

    return v0
.end method

.method public static native callbackEvent(II[B)V
.end method

.method private callbackEventI(II[B)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "iParam"    # I
    .param p3, "paramBA"    # [B

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/glu/android/GluPlayHaven;->m_loadedATLibrary:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/GluPlayHaven;->m_atLibrary:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven;->m_atLibrary:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :goto_0
    :try_start_1
    const-string v0, "gamelib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GluPlayHaven;->m_loadedATLibrary:Z

    .line 322
    :cond_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    goto :goto_1

    .line 318
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static final charArrayToByteArray([C)[B
    .locals 1
    .param p0, "ca"    # [C

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/glu/android/GluPlayHaven;->charArrayToByteArray([CZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static final charArrayToByteArray([CZ)[B
    .locals 5
    .param p0, "ca"    # [C
    .param p1, "nullTerminate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 487
    array-length v4, p0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int/2addr v2, v4

    new-array v0, v2, [B

    .line 489
    .local v0, "ba":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 490
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "ba":[B
    .end local v1    # "i":I
    :cond_0
    move v2, v3

    .line 487
    goto :goto_0

    .line 492
    .restart local v0    # "ba":[B
    .restart local v1    # "i":I
    :cond_1
    if-eqz p1, :cond_2

    .line 493
    array-length v2, p0

    aput-byte v3, v0, v2

    .line 495
    :cond_2
    return-object v0
.end method

.method private hideNotificationView(Ljava/lang/String;)V
    .locals 2
    .param p1, "sParam"    # Ljava/lang/String;

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hiding notification view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;)V

    .line 295
    const-string v0, "If the notification view were displayed on Android, this could never get called..."

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 1
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    .line 99
    new-instance v0, Lcom/glu/android/GluPlayHaven;

    invoke-direct {v0, p0}, Lcom/glu/android/GluPlayHaven;-><init>(Landroid/app/Activity;)V

    .line 100
    return-void
.end method

.method private initSecret(Ljava/lang/String;)V
    .locals 2
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v0, "Initting secret."

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/glu/android/GluPlayHaven;->m_secret:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven;->m_token:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PH ASSERTION FAILED: Secret before token."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven;->m_secret:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 194
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PH ASSERTION FAILED: Secret is null."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven;->m_token:Ljava/lang/String;

    iget-object v1, p0, Lcom/glu/android/GluPlayHaven;->m_secret:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/playhaven/src/common/PHConstants;->setKeys(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->findDeviceInfo(Landroid/app/Activity;)V

    .line 210
    return-void
.end method

.method private initToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initting token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;)V

    .line 180
    iput-object p1, p0, Lcom/glu/android/GluPlayHaven;->m_token:Ljava/lang/String;

    .line 181
    return-void
.end method

.method private isPublisherContentRequestActive(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sParam"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven;->m_pendingRequests:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    const-string v0, "GluGame/PlayHaven"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    :cond_0
    return-void
.end method

.method private onContentRequestFinished(Ljava/lang/String;)V
    .locals 3
    .param p1, "sParam"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/glu/android/GluPlayHaven;->m_pendingRequests:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/glu/android/GluPlayHaven;->m_pendingRequests:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, "count":I
    iget-object v1, p0, Lcom/glu/android/GluPlayHaven;->m_pendingRequests:Ljava/util/Hashtable;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v0    # "count":I
    :goto_0
    return-void

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Odd, unaccounted for content request finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDestroy()V
    .locals 1

    .prologue
    .line 214
    const-string v0, "Destroying."

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    .line 216
    return-void
.end method

.method public static playHavenEvent(II[B)I
    .locals 8
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "paramBA"    # [B

    .prologue
    const v6, 0xffff

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "sParam":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "trueLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_0

    .line 65
    aget-byte v5, p2, v0

    if-nez v5, :cond_3

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/String;

    .end local v1    # "sParam":Ljava/lang/String;
    invoke-direct {v1, p2, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 72
    .end local v0    # "i":I
    .end local v2    # "trueLen":I
    .restart local v1    # "sParam":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    if-nez v5, :cond_4

    .line 94
    :cond_2
    :goto_1
    return v4

    .line 67
    .restart local v0    # "i":I
    .restart local v2    # "trueLen":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    .end local v2    # "trueLen":I
    :cond_4
    if-ne p0, v3, :cond_5

    .line 78
    sget-object v3, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    invoke-direct {v3, v1}, Lcom/glu/android/GluPlayHaven;->initToken(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_5
    const/4 v5, 0x2

    if-ne p0, v5, :cond_6

    .line 80
    sget-object v3, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    invoke-direct {v3, v1}, Lcom/glu/android/GluPlayHaven;->initSecret(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_6
    const/4 v5, 0x3

    if-ne p0, v5, :cond_7

    .line 82
    sget-object v3, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    invoke-direct {v3}, Lcom/glu/android/GluPlayHaven;->onDestroy()V

    goto :goto_1

    .line 83
    :cond_7
    const/4 v5, 0x4

    if-ne p0, v5, :cond_8

    .line 84
    sget-object v3, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    invoke-direct {v3}, Lcom/glu/android/GluPlayHaven;->startPublisherOpenRequest()V

    goto :goto_1

    .line 85
    :cond_8
    const/4 v5, 0x5

    if-ne p0, v5, :cond_b

    .line 86
    sget-object v6, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_9

    move v5, v3

    :goto_2
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_a

    :goto_3
    invoke-direct {v6, v1, v5, v3}, Lcom/glu/android/GluPlayHaven;->startPublisherContentRequest(Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_9
    move v5, v4

    goto :goto_2

    :cond_a
    move v3, v4

    goto :goto_3

    .line 87
    :cond_b
    const/4 v5, 0x6

    if-ne p0, v5, :cond_d

    .line 88
    sget-object v5, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    invoke-direct {v5, v1}, Lcom/glu/android/GluPlayHaven;->isPublisherContentRequestActive(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    :goto_4
    move v4, v3

    goto :goto_1

    :cond_c
    move v3, v4

    goto :goto_4

    .line 89
    :cond_d
    const/4 v3, 0x7

    if-ne p0, v3, :cond_e

    .line 90
    sget-object v3, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    shr-int/lit8 v5, p1, 0x10

    and-int/2addr v5, v6

    and-int/2addr v6, p1

    invoke-direct {v3, v1, v5, v6}, Lcom/glu/android/GluPlayHaven;->showNotificationView(Ljava/lang/String;II)V

    goto :goto_1

    .line 91
    :cond_e
    const/16 v3, 0x8

    if-ne p0, v3, :cond_2

    .line 92
    sget-object v3, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    invoke-direct {v3, v1}, Lcom/glu/android/GluPlayHaven;->hideNotificationView(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setATLibrary(Ljava/lang/String;)V
    .locals 1
    .param p0, "atLibrary"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/glu/android/GluPlayHaven;->instance:Lcom/glu/android/GluPlayHaven;

    iput-object p0, v0, Lcom/glu/android/GluPlayHaven;->m_atLibrary:Ljava/lang/String;

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v0, "*\n*\n*\nWARNING: instance is null!!\n*\n*\n*"

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showNotificationView(Ljava/lang/String;II)V
    .locals 2
    .param p1, "sParam"    # Ljava/lang/String;
    .param p2, "cx"    # I
    .param p3, "cy"    # I

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing notification view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x/y: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/glu/android/GluPlayHaven;->m_activityNotificationParam:Ljava/lang/String;

    .line 289
    return-void
.end method

.method private startPublisherContentRequest(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "sParam"    # Ljava/lang/String;
    .param p2, "immediately"    # Z
    .param p3, "showErrorMessage"    # Z

    .prologue
    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting content request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "pcr":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    if-nez p1, :cond_0

    .line 241
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .end local v1    # "pcr":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    iget-object v2, p0, Lcom/glu/android/GluPlayHaven;->m_publisherContentRequest:Lcom/glu/android/GluPlayHaven$PublisherContentRequest;

    iget-object v3, p0, Lcom/glu/android/GluPlayHaven;->m_activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;Landroid/app/Activity;)V

    .line 246
    .restart local v1    # "pcr":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    :goto_0
    iget-object v2, p0, Lcom/glu/android/GluPlayHaven;->m_pendingRequests:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/glu/android/GluPlayHaven;->m_pendingRequests:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    .local v0, "count":I
    iget-object v2, p0, Lcom/glu/android/GluPlayHaven;->m_pendingRequests:Ljava/util/Hashtable;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v0    # "count":I
    :goto_1
    new-instance v2, Lcom/glu/android/GluPlayHaven$RequestRunner;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/glu/android/GluPlayHaven$RequestRunner;-><init>(Lcom/glu/android/GluPlayHaven;Lcom/glu/android/GluPlayHaven$1;)V

    iget-object v3, p0, Lcom/glu/android/GluPlayHaven;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/glu/android/GluPlayHaven$RequestRunner;->run(Landroid/app/Activity;Lcom/playhaven/src/common/PHAPIRequest;)V

    .line 257
    return-void

    .line 243
    :cond_0
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .end local v1    # "pcr":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    iget-object v2, p0, Lcom/glu/android/GluPlayHaven;->m_publisherContentRequest:Lcom/glu/android/GluPlayHaven$PublisherContentRequest;

    iget-object v3, p0, Lcom/glu/android/GluPlayHaven;->m_activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3, p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;-><init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;Landroid/app/Activity;Ljava/lang/String;)V

    .restart local v1    # "pcr":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    goto :goto_0

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/glu/android/GluPlayHaven;->m_pendingRequests:Ljava/util/Hashtable;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private startPublisherOpenRequest()V
    .locals 2

    .prologue
    .line 220
    const-string v1, "Starting open request."

    invoke-static {v1}, Lcom/glu/android/GluPlayHaven;->log(Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;

    iget-object v1, p0, Lcom/glu/android/GluPlayHaven;->m_publisherOpenRequest:Lcom/glu/android/GluPlayHaven$PublisherOpenRequest;

    invoke-direct {v0, v1}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;-><init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V

    .line 224
    .local v0, "por":Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;
    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->send()V

    .line 225
    return-void
.end method

.method public static final stringToByteArray(Ljava/lang/String;)[B
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glu/android/GluPlayHaven;->charArrayToByteArray([CZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static final stringToNativeByteArray(Ljava/lang/String;)[B
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glu/android/GluPlayHaven;->charArrayToByteArray([CZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static final stringToNativeCharArray(Ljava/lang/String;)[C
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 462
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 463
    .local v2, "src":[C
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [C

    .line 464
    .local v1, "ret":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 465
    aget-char v3, v2, v0

    aput-char v3, v1, v0

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    aput-char v4, v1, v3

    .line 467
    return-object v1
.end method

.method public static final stringToTruncatedNativeCharArray(Ljava/lang/String;I)[C
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxNotIncludingNull"    # I

    .prologue
    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 473
    .local v3, "src":[C
    array-length v4, v3

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 474
    .local v1, "len":I
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [C

    .line 475
    .local v2, "ret":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 476
    aget-char v4, v3, v0

    aput-char v4, v2, v0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_0
    const/4 v4, 0x0

    aput-char v4, v2, v1

    .line 478
    return-object v2
.end method
