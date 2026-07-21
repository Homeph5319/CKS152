.class public Lcom/playhaven/src/common/PHAsyncRequest;
.super Landroid/os/AsyncTask;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/common/PHAsyncRequest$1;,
        Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;,
        Lcom/playhaven/src/common/PHAsyncRequest$RequestType;,
        Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Integer;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INFINITE_REDIRECTS:I = 0x7fffffff


# instance fields
.field private client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

.field protected delegate:Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;

.field private isDownloading:Z

.field private lastError:Ljava/lang/Exception;

.field public params:Lorg/apache/http/params/HttpParams;

.field private password:Ljava/lang/String;

.field private postParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

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

.field public request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

.field private responseCode:I

.field private signal:Ljava/util/concurrent/CountDownLatch;

.field public url:Landroid/net/Uri;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;)V
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->isDownloading:Z

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->redirectUrls:Ljava/util/ArrayList;

    .line 266
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->delegate:Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;

    .line 267
    new-instance v0, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-direct {v0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    .line 268
    sget-object v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Get:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    .line 269
    return-void
.end method

.method private addRedirectUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method private clearRedirects()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    return-void
.end method

.method private varargs execRequest([Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 317
    .line 318
    iget-object v2, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    monitor-enter v2

    .line 319
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->isDownloading:Z

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->lastError:Ljava/lang/Exception;

    .line 322
    invoke-direct {p0}, Lcom/playhaven/src/common/PHAsyncRequest;->clearRedirects()V

    .line 324
    array-length v0, p1

    if-lez v0, :cond_7

    .line 325
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 328
    iget-object v3, p0, Lcom/playhaven/src/common/PHAsyncRequest;->url:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/playhaven/src/common/PHAsyncRequest;->url:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 329
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->url:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAsyncRequest;->isCancelled()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    :goto_0
    return-object v1

    .line 336
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Net uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lcom/playhaven/src/common/PHAsyncRequest;->request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    sget-object v4, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Post:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    if-ne v3, v4, :cond_2

    .line 341
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 343
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v4, p0, Lcom/playhaven/src/common/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 345
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, v3}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->start(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 356
    :goto_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 359
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    iput v4, p0, Lcom/playhaven/src/common/PHAsyncRequest;->responseCode:I

    .line 362
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/playhaven/src/common/PHAsyncRequest;->publishProgress([Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAsyncRequest;->isCancelled()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    :try_start_4
    monitor-exit v2

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 347
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/playhaven/src/common/PHAsyncRequest;->request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    sget-object v4, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Get:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    if-ne v3, v4, :cond_3

    .line 348
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, v3}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->start(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_1

    .line 351
    :cond_3
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, v3}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->start(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_1

    .line 367
    :cond_4
    iget-object v4, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v4, v0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->shouldRedirect(Lorg/apache/http/HttpResponse;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 368
    const-string v4, "Since we should redirect...getting new location"

    invoke-static {v4}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 370
    iget-object v4, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v4, v0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->getRedirectLocation(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Redirect URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, v0}, Lcom/playhaven/src/common/PHAsyncRequest;->addRedirectUrl(Ljava/lang/String;)V

    .line 374
    const-string v4, "requesting again (though on current thread)"

    invoke-static {v4}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 378
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v4}, Lcom/playhaven/src/common/PHAsyncRequest;->doInBackground([Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    .line 381
    :cond_5
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHAsyncRequest;->isCancelled()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 383
    :cond_6
    if-eqz v3, :cond_8

    .line 384
    :try_start_7
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 386
    invoke-static {v3}, Lcom/playhaven/src/common/PHAsyncRequest;->readStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 388
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    move-object v1, v0

    .line 396
    :cond_7
    :goto_3
    :try_start_9
    monitor-exit v2

    goto/16 :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    :goto_4
    iput-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->lastError:Ljava/lang/Exception;

    .line 393
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 391
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method

.method public static readStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 469
    const/16 v1, 0x400

    .line 470
    new-array v1, v1, [B

    .line 473
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 475
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 479
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/playhaven/src/common/PHAsyncRequest;->readStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected addPostParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method protected addPostParams(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 303
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 304
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    iget-object v3, p0, Lcom/playhaven/src/common/PHAsyncRequest;->postParams:Ljava/util/ArrayList;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/playhaven/src/common/PHAsyncRequest;->doInBackground([Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAsyncRequest;->execRequest([Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getLastRedirect()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->getLastRedirect()Ljava/lang/String;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->redirectUrls:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->redirectUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->isDownloading:Z

    .line 443
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->cancel()V

    .line 445
    const-string v0, "Canceld PHAsyncRequest..."

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/playhaven/src/common/PHAsyncRequest;->onPostExecute(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->isDownloading:Z

    .line 453
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->signal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->signal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->lastError:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->delegate:Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;

    iget-object v1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->lastError:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;->requestFailed(Ljava/lang/Exception;)V

    .line 463
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->delegate:Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;

    invoke-interface {v0, p1}, Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;->requestFinished(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 425
    array-length v0, p1

    if-lez v0, :cond_0

    .line 426
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 429
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 431
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->delegate:Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;

    iget v1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->responseCode:I

    invoke-interface {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;->requestResponseCode(I)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    if-lez v0, :cond_0

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/playhaven/src/common/PHAsyncRequest;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setCountDownLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .prologue
    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    iget-boolean v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->isDownloading:Z

    if-nez v0, :cond_0

    .line 419
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->signal:Ljava/util/concurrent/CountDownLatch;

    .line 420
    :cond_0
    monitor-exit p0

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHttpClient(Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    .line 413
    return-void
.end method

.method public setMaxRedirects(I)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, p1}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->setMaxRedirect(I)V

    .line 294
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 406
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->password:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, p1}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->setPassword(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 401
    iput-object p1, p0, Lcom/playhaven/src/common/PHAsyncRequest;->username:Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/playhaven/src/common/PHAsyncRequest;->client:Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;

    invoke-virtual {v0, p1}, Lcom/playhaven/src/common/PHAsyncRequest$PHHttpConn;->setUsername(Ljava/lang/String;)V

    .line 403
    return-void
.end method
