.class public Lcom/urbanairship/util/AsyncImageLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/util/AsyncImageLoader$Delegate;
    }
.end annotation


# static fields
.field private static drawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private delegate:Lcom/urbanairship/util/AsyncImageLoader$Delegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/urbanairship/util/AsyncImageLoader;->drawableMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/urbanairship/util/AsyncImageLoader$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/urbanairship/util/AsyncImageLoader;->delegate:Lcom/urbanairship/util/AsyncImageLoader$Delegate;

    invoke-direct {p0, p1}, Lcom/urbanairship/util/AsyncImageLoader;->fetchDrawableOnThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/util/AsyncImageLoader;)Lcom/urbanairship/util/AsyncImageLoader$Delegate;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/util/AsyncImageLoader;->delegate:Lcom/urbanairship/util/AsyncImageLoader$Delegate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/util/AsyncImageLoader;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/urbanairship/util/AsyncImageLoader;->fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 2

    const-class v1, Lcom/urbanairship/util/AsyncImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/util/AsyncImageLoader;->drawableMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private fetch(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    const-class v2, Lcom/urbanairship/util/AsyncImageLoader;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/urbanairship/util/AsyncImageLoader;->drawableMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/util/AsyncImageLoader;->drawableMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/urbanairship/util/AsyncImageLoader;->fetch(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v2, "Async Image"

    invoke-static {v0, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-class v2, Lcom/urbanairship/util/AsyncImageLoader;

    monitor-enter v2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget-object v3, Lcom/urbanairship/util/AsyncImageLoader;->drawableMap:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_0
    move-exception v0

    const-string v2, "fetchDrawable failed"

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catch_1
    move-exception v0

    const-string v2, "fetchDrawable failed"

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "fetchDrawable failed"

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private fetchDrawableOnThread(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/urbanairship/util/AsyncImageLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/util/AsyncImageLoader$1;-><init>(Lcom/urbanairship/util/AsyncImageLoader;Ljava/lang/String;)V

    new-instance v1, Lcom/urbanairship/util/AsyncImageLoader$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/urbanairship/util/AsyncImageLoader$2;-><init>(Lcom/urbanairship/util/AsyncImageLoader;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-class v1, Lcom/urbanairship/util/AsyncImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/util/AsyncImageLoader;->drawableMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
