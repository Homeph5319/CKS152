.class public Lcom/urbanairship/push/embedded/BoxOfficeClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;,
        Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;
    }
.end annotation


# static fields
.field private static final CACHE_TTL:J = 0x5265c00L

.field protected static currentKey:Ljava/util/UUID;

.field private static deviceId:Ljava/lang/String;


# instance fields
.field private currentServer:Ljava/lang/String;

.field private final ms:Ljava/text/DecimalFormat;

.field private prefs:Lcom/urbanairship/push/PushPreferences;

.field private final servers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->currentKey:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->currentServer:Ljava/lang/String;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->ms:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->getHashedDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->deviceId:Ljava/lang/String;

    return-void
.end method

.method private doLookup()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;
        }
    .end annotation

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "apid"

    iget-object v2, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v2}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "secret"

    iget-object v3, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->getPushSecret()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/urbanairship/restclient/Request;

    const-string v0, "POST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/urbanairship/push/embedded/Config$BoxOffice;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lookup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/urbanairship/restclient/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/urbanairship/restclient/Request;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->setRequestHeaders(Lcom/urbanairship/restclient/Request;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set version header :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    const-string v2, "X-UA-Package-Version"

    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v2, "Embedded Push/%s Android/%s [%s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "3.0.0"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1}, Lcom/urbanairship/restclient/Request;->execute()Lcom/urbanairship/restclient/Response;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Error posting to /lookup"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Error posting to /lookup"

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Failed to post to /furstrun; UTF-8 unsupported!"

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "Unavailable"

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "Error posting to /lookup"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Error posting to /lookup"

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->contentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->validateResponse(Lcom/urbanairship/restclient/Response;)Lcom/urbanairship/restclient/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->processJSONLookup(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Received invalid BoxOffice response; content type is not application/json"

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateApid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generating APID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/PushPreferences;->setPushId(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static getHashedDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const-string v0, ""

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

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
    if-ge v1, v4, :cond_2

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

    :cond_2
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

.method private setRequestHeaders(Lcom/urbanairship/restclient/Request;)V
    .locals 6

    const-string v0, "X-UA-Device-Family"

    const-string v1, "Android"

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-UA-Device-Model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-UA-OS-Version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-UA-Lib-Version"

    const-string v1, "3.0.0"

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-UA-Package-Name"

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-UA-Sent-At"

    iget-object v1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->ms:Ljava/text/DecimalFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-UA-App-Key"

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "X-UA-Device-ID"

    sget-object v1, Lcom/urbanairship/push/embedded/BoxOfficeClient;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "Authorization"

    const-string v1, "Basic cU9ES09HVEFTMGVqa1pvTUZRTkt3ZzptMVF4bmFBcFN0cU1BekN5Y2ppQkJn"

    invoke-virtual {p1, v0, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public firstRun()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->generateApid()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "package"

    invoke-static {}, Lcom/urbanairship/UAirship;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "apid"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v0, Lcom/urbanairship/restclient/Request;

    const-string v2, "POST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/urbanairship/push/embedded/Config$BoxOffice;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/firstrun"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/urbanairship/restclient/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/urbanairship/restclient/Request;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->setRequestHeaders(Lcom/urbanairship/restclient/Request;)V

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Request;->execute()Lcom/urbanairship/restclient/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->validateResponse(Lcom/urbanairship/restclient/Response;)Lcom/urbanairship/restclient/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->setSecret(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Failed to post to /firstrun; UTF-8 unsupported!"

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    const-string v0, "Error posting to /firstrun"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Failed to post to /furstrun"

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentServerAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->currentServer:Ljava/lang/String;

    return-object v0
.end method

.method public incrementFailureCount()V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->currentServer:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->incrementFailureCount(Ljava/lang/String;)V

    return-void
.end method

.method public incrementFailureCount(Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;

    invoke-static {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->access$000(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->access$108(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting failure count for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->access$100(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public lookup()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;
        }
    .end annotation

    iget-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->getPushSecret()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->firstRun()Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->doLookup()V

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "No Helium servers returned from BoxOffice lookup."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->access$000(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    new-instance v1, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v2, "Got invalid server: \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_2
    invoke-virtual {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->access$000(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->currentServer:Ljava/lang/String;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->access$000(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public processJSONLookup(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-string v0, "Received lookup response from BoxOffice."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "retry_after"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->shared()Lcom/urbanairship/push/embedded/EmbeddedPushManager;

    move-result-object v1

    const-string v3, "retry_after"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/urbanairship/push/embedded/EmbeddedPushManager;->setHoldingPattern(J)Z

    invoke-static {}, Lcom/urbanairship/push/PushManager;->stopService()V

    const-string v0, "This application is in a holding pattern, most likely because your account does not have Helium access. To sign up for a free trial, visit https://go.urbanairship.com/apps/free-trial/.  Once granted permission, youshould fully uninstall the app before testing again, in order to clear this flag."

    invoke-static {v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "tut"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcom/urbanairship/push/embedded/BoxOfficeClient;->currentKey:Ljava/util/UUID;

    iget-object v3, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const-string v1, "servers"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_2

    iget-object v6, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    new-instance v7, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;-><init>(Lcom/urbanairship/push/embedded/BoxOfficeClient;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "max_keepalive_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "max_keepalive_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/urbanairship/push/embedded/Config$Helium;->max_keepalive_interval:J
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Unparseable JSON: \'%s\'"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Invalid Response: \'%s\'"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected resetFailureCount(Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->servers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;

    invoke-static {v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->access$000(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting failure count for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to 0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->access$102(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;I)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->prefs:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v0, p1}, Lcom/urbanairship/push/PushPreferences;->setPushSecret(Ljava/lang/String;)Z

    return-void
.end method

.method public validateResponse(Lcom/urbanairship/restclient/Response;)Lcom/urbanairship/restclient/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad BoxOffice Response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "404 - Not Found"

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Internal Server Error"

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x194 -> :sswitch_0
        0x1f4 -> :sswitch_1
    .end sparse-switch
.end method
