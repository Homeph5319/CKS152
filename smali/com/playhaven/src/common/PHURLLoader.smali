.class public Lcom/playhaven/src/common/PHURLLoader;
.super Ljava/lang/Object;
.source "PHURLLoader.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;
    }
.end annotation


# static fields
.field private static allLoaders:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/playhaven/src/common/PHURLLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAXIMUM_REDIRECTS:I

.field private alreadyFinished:Z

.field private conn:Lcom/playhaven/src/common/PHAsyncRequest;

.field private context:Landroid/content/Context;

.field public delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

.field private json_context:Lorg/json/JSONObject;

.field public opensFinalURLOnDevice:Z

.field public targetURI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/playhaven/src/common/PHURLLoader;->allLoaders:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/src/common/PHURLLoader;->alreadyFinished:Z

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/playhaven/src/common/PHURLLoader;->MAXIMUM_REDIRECTS:I

    .line 52
    iput-object p1, p0, Lcom/playhaven/src/common/PHURLLoader;->context:Landroid/content/Context;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playhaven/src/common/PHURLLoader;->opensFinalURLOnDevice:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/src/common/PHURLLoader;->alreadyFinished:Z

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcom/playhaven/src/common/PHURLLoader;->MAXIMUM_REDIRECTS:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playhaven/src/common/PHURLLoader;->opensFinalURLOnDevice:Z

    .line 48
    iput-object p1, p0, Lcom/playhaven/src/common/PHURLLoader;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

    .line 50
    return-void
.end method

.method public static addLoader(Lcom/playhaven/src/common/PHURLLoader;)V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/playhaven/src/common/PHURLLoader;->allLoaders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method private fail()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

    invoke-interface {v0, p0}, Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;->loaderFailed(Lcom/playhaven/src/common/PHURLLoader;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHURLLoader;->invalidate()V

    .line 149
    return-void
.end method

.method private finish()V
    .locals 3

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/playhaven/src/common/PHURLLoader;->alreadyFinished:Z

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

    invoke-interface {v0, p0}, Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;->loaderFinished(Lcom/playhaven/src/common/PHURLLoader;)V

    .line 115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playhaven/src/common/PHURLLoader;->alreadyFinished:Z

    .line 117
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHAsyncRequest;->getLastRedirect()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last redirect uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHURLLoader;->invalidate()V

    .line 126
    iget-boolean v0, p0, Lcom/playhaven/src/common/PHURLLoader;->opensFinalURLOnDevice:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    iget-object v1, p0, Lcom/playhaven/src/common/PHURLLoader;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    :cond_2
    return-void
.end method

.method public static invalidateLoaders(Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;)V
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/playhaven/src/common/PHURLLoader;->allLoaders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/common/PHURLLoader;

    .line 74
    iget-object v2, v0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

    if-ne v2, p0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/playhaven/src/common/PHURLLoader;->invalidate()V

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method

.method public static openDeviceURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public static removeLoader(Lcom/playhaven/src/common/PHURLLoader;)V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/playhaven/src/common/PHURLLoader;->allLoaders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method


# virtual methods
.method public getJSONContext()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->json_context:Lorg/json/JSONObject;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->cancel(Z)Z

    .line 140
    invoke-static {p0}, Lcom/playhaven/src/common/PHURLLoader;->removeLoader(Lcom/playhaven/src/common/PHURLLoader;)V

    .line 141
    monitor-exit p0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public open()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "Opening url in PHURLLoader: %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 96
    iput-boolean v3, p0, Lcom/playhaven/src/common/PHURLLoader;->alreadyFinished:Z

    .line 98
    new-instance v0, Lcom/playhaven/src/common/PHAsyncRequest;

    invoke-direct {v0, p0}, Lcom/playhaven/src/common/PHAsyncRequest;-><init>(Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;)V

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    .line 99
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->setMaxRedirects(I)V

    .line 100
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    sget-object v1, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Get:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    iput-object v1, v0, Lcom/playhaven/src/common/PHAsyncRequest;->request_type:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    .line 101
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoader;->conn:Lcom/playhaven/src/common/PHAsyncRequest;

    new-array v1, v4, [Landroid/net/Uri;

    iget-object v2, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHAsyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    invoke-static {p0}, Lcom/playhaven/src/common/PHURLLoader;->addLoader(Lcom/playhaven/src/common/PHURLLoader;)V

    .line 105
    monitor-exit p0

    .line 107
    :cond_0
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestFailed(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHURLLoader failed with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/playhaven/src/common/PHURLLoader;->fail()V

    .line 162
    return-void
.end method

.method public requestFinished(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/playhaven/src/common/PHURLLoader;->finish()V

    .line 157
    return-void
.end method

.method public requestProgressUpdate(I)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public requestResponseCode(I)V
    .locals 2

    .prologue
    .line 165
    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHURLLoader finishing from initial url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/playhaven/src/common/PHURLLoader;->finish()V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHURLLoader failing from initial url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phLog(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/playhaven/src/common/PHURLLoader;->fail()V

    goto :goto_0
.end method

.method public setJSONContext(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/playhaven/src/common/PHURLLoader;->json_context:Lorg/json/JSONObject;

    .line 63
    return-void
.end method
