.class public Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;
.super Ljava/lang/Object;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/common/PHAsyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PHHttpConn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;
    }
.end annotation


# instance fields
.field protected client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private max_redirects:I

.field private password:Ljava/lang/String;

.field private redirectUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalRedirects:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const v0, 0x7fffffff

    iput v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->max_redirects:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, v2}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->enableRedirecting(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 119
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;

    invoke-direct {v1, p0, v2}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn$PHRedirectHandler;-><init>(Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;Lcom/playhaven/src/common/PHAsyncRequest$1;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const v0, 0x7fffffff

    iput v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->max_redirects:I

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 124
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->enableRedirecting(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 125
    return-void
.end method

.method private enableRedirecting(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/params/HttpParams;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 180
    if-nez p1, :cond_0

    .line 181
    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 183
    :cond_0
    const-string v0, "http.protocol.allow-circular-redirects"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 184
    invoke-static {p1, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 185
    return-object p1
.end method

.method private isRedirectResponse(I)Z
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x133

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addRedirectUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 216
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 226
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    :try_start_3
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 223
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public clearRedirects()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    return-void
.end method

.method public getLastRedirect()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRedirectLocation(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->isRedirectResponse(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "Location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setMaxRedirect(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->max_redirects:I

    .line 113
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->password:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->username:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public shouldRedirect(Lorg/apache/http/HttpResponse;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    const-string v0, "Should we redirect?"

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 164
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirect status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->isRedirectResponse(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Are redirecting: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->max_redirects:I

    if-gt v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " with total redirects: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    iget v3, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->max_redirects:I

    if-gt v0, v3, :cond_1

    .line 172
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 168
    goto :goto_0

    :cond_1
    move v1, v2

    .line 169
    goto :goto_1

    :cond_2
    move v1, v2

    .line 172
    goto :goto_1
.end method

.method public start(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 199
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->cur_request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 201
    iput v3, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->totalRedirects:I

    .line 202
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->clearRedirects()V

    .line 205
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v1, "Basic %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
