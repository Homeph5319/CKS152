.class public Lcom/playhaven/src/common/PHAPIRequest;
.super Ljava/lang/Object;
.source "PHAPIRequest.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;
    }
.end annotation


# static fields
.field private static allRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/playhaven/src/common/PHAPIRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private additionalParams:Ljava/util/HashMap;
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

.field private conn:Lcom/playhaven/src/common/PHAsyncRequest;

.field public delegate:Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;

.field protected fullUrl:Ljava/lang/String;

.field private hashCode:I

.field public secret:Ljava/lang/String;

.field private signedParams:Ljava/util/HashMap;
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

.field public token:Ljava/lang/String;

.field private urlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getSecret()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;

    .line 56
    iput-object p2, p0, Lcom/playhaven/src/common/PHAPIRequest;->token:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/playhaven/src/common/PHAPIRequest;->secret:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static addRequest(Lcom/playhaven/src/common/PHAPIRequest;)V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/playhaven/src/common/PHAPIRequest;->getAllRequests()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method private static base64Sig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-static {p0}, Lcom/playhaven/src/common/PHStringUtil;->base64Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cancelRequests(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/playhaven/src/common/PHAPIRequest;->getAllRequests()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/common/PHAPIRequest;

    .line 76
    iget-object v2, v0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;

    if-ne v2, p0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/playhaven/src/common/PHAPIRequest;->cancel()V

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method public static getAllRequests()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/playhaven/src/common/PHAPIRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/playhaven/src/common/PHAPIRequest;->allRequests:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/playhaven/src/common/PHAPIRequest;->allRequests:Ljava/util/ArrayList;

    .line 87
    :cond_0
    sget-object v0, Lcom/playhaven/src/common/PHAPIRequest;->allRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static removeRequest(Lcom/playhaven/src/common/PHAPIRequest;)V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/playhaven/src/common/PHAPIRequest;->getAllRequests()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method


# virtual methods
.method public URL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->fullUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 210
    const-string v0, "%s?%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->baseURL()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->signedParamsStr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->fullUrl:Ljava/lang/String;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->fullUrl:Ljava/lang/String;

    return-object v0
.end method

.method public baseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->urlPath:Ljava/lang/String;

    return-object v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " canceled!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->finish()V

    .line 203
    return-void
.end method

.method protected finish()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->cancel(Z)Z

    .line 197
    invoke-static {p0}, Lcom/playhaven/src/common/PHAPIRequest;->removeRequest(Lcom/playhaven/src/common/PHAPIRequest;)V

    .line 198
    return-void
.end method

.method public getAdditionalParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->additionalParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHashCode()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->hashCode:I

    return v0
.end method

.method protected handleRequestSuccess(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;

    invoke-interface {v0, p0, p1}, Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;->requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;

    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Couldn\'t parse json"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;->requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public processRequestResponse(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 249
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/playhaven/src/common/PHAPIRequest;->handleRequestSuccess(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    iget-object v1, p0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;

    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Couldn\'t parse json"

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;->requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V

    .line 255
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestFailed(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;

    invoke-interface {v0, p0, p1}, Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;->requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V

    .line 291
    return-void
.end method

.method public requestFinished(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 264
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 266
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, v1}, Lcom/playhaven/src/common/PHAPIRequest;->processRequestResponse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 271
    :catch_1
    move-exception v0

    .line 272
    const-string v0, "Couldn\'t parse json response. Perhaps non json?"

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 275
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 277
    :try_start_1
    const-string v1, "response"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    invoke-virtual {p0, v0}, Lcom/playhaven/src/common/PHAPIRequest;->processRequestResponse(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 279
    :catch_2
    move-exception v0

    .line 280
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestProgressUpdate(I)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public requestResponseCode(I)V
    .locals 4

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request got response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 295
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->delegate:Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "API Request failed with code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;->requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V

    .line 298
    :cond_0
    return-void
.end method

.method public send()V
    .locals 4

    .prologue
    .line 180
    new-instance v0, Lcom/playhaven/src/common/PHAsyncRequest;

    invoke-direct {v0, p0}, Lcom/playhaven/src/common/PHAsyncRequest;-><init>(Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;)V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    .line 183
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->useBasicAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getBasicAuthUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->setUsername(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getBasicAuthPass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->setPassword(Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    sget-object v1, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Get:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    iput-object v1, v0, Lcom/playhaven/src/common/PHAsyncRequest;->request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/playhaven/src/common/PHAPIRequest;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->URL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 191
    return-void
.end method

.method public setBaseURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/playhaven/src/common/PHAPIRequest;->urlPath:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setHashCode(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/playhaven/src/common/PHAPIRequest;->hashCode:I

    .line 64
    return-void
.end method

.method public signedParams()Ljava/util/HashMap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 111
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getUniqueID()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getDeviceIdiom()Ljava/lang/String;

    move-result-object v4

    .line 113
    const-string v5, "0"

    .line 117
    invoke-static {}, Lcom/playhaven/src/common/PHStringUtil;->getUUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/playhaven/src/common/PHAPIRequest;->base64Sig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    const-string v2, "%s:%s:%s:%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/playhaven/src/common/PHAPIRequest;->token:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v6, v7, v8

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/playhaven/src/common/PHAPIRequest;->secret:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v2}, Lcom/playhaven/src/common/PHAPIRequest;->base64Sig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 120
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getAppID()Ljava/lang/String;

    move-result-object v8

    .line 121
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    .line 122
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getDeviceModel()Ljava/lang/String;

    move-result-object v10

    .line 123
    const-string v2, "%s %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getOSName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getOSVersion()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 124
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getAppVersion()Ljava/lang/String;

    move-result-object v12

    .line 125
    const-string v13, "android"

    .line 126
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getOriginalWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 127
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getOriginalHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 128
    invoke-static {}, Lcom/playhaven/src/common/PHConstants;->getScreenDensity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v16

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/playhaven/src/common/PHAPIRequest;->getAdditionalParams()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Lcom/playhaven/src/common/PHAPIRequest;->getAdditionalParams()Ljava/util/HashMap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 135
    :goto_0
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v18, "device"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v17, "token"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/playhaven/src/common/PHAPIRequest;->token:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v17, "signature"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v7, "nonce"

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v6, "app"

    invoke-virtual {v3, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v6, "app_version"

    invoke-virtual {v3, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v6, "hardware"

    invoke-virtual {v3, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v6, "os"

    invoke-virtual {v3, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v6, "idiom"

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v4, "width"

    invoke-virtual {v3, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v4, "height"

    invoke-virtual {v3, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v4, "sdk_version"

    invoke-virtual {v3, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v4, "sdk_platform"

    invoke-virtual {v3, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v4, "orientation"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    const-string v4, "dpi"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 162
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    .line 165
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signed params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/playhaven/src/common/PHAPIRequest;->signedParams:Ljava/util/HashMap;

    return-object v2

    .line 133
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_0
.end method

.method public signedParamsStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAPIRequest;->signedParams()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/additions/ObjectExtensions$DictionaryExtensions;->createQuery(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
