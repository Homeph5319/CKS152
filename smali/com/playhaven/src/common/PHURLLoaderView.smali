.class public Lcom/playhaven/src/common/PHURLLoaderView;
.super Landroid/app/ProgressDialog;
.source "PHURLLoaderView.java"

# interfaces
.implements Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;


# instance fields
.field private context:Landroid/content/Context;

.field public delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

.field private json_context:Lorg/json/JSONObject;

.field private loader:Lcom/playhaven/src/common/PHURLLoader;

.field private targetUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 32
    iput-object p1, p0, Lcom/playhaven/src/common/PHURLLoaderView;->delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

    .line 33
    iput-object p2, p0, Lcom/playhaven/src/common/PHURLLoaderView;->context:Landroid/content/Context;

    .line 35
    const-string v0, "Loading.."

    invoke-virtual {p0, v0}, Lcom/playhaven/src/common/PHURLLoaderView;->setMessage(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 54
    return-void
.end method

.method public getJSONContext()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->loader:Lcom/playhaven/src/common/PHURLLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->loader:Lcom/playhaven/src/common/PHURLLoader;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHURLLoader;->getJSONContext()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->json_context:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public loaderFailed(Lcom/playhaven/src/common/PHURLLoader;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

    invoke-interface {v0, p1}, Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;->loaderFailed(Lcom/playhaven/src/common/PHURLLoader;)V

    .line 87
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHURLLoaderView;->dismiss()V

    .line 88
    return-void
.end method

.method public loaderFinished(Lcom/playhaven/src/common/PHURLLoader;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->delegate:Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;

    invoke-interface {v0, p1}, Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;->loaderFinished(Lcom/playhaven/src/common/PHURLLoader;)V

    .line 81
    invoke-virtual {p0}, Lcom/playhaven/src/common/PHURLLoaderView;->dismiss()V

    .line 82
    return-void
.end method

.method public setJSONContext(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Lcom/playhaven/src/common/PHURLLoaderView;->json_context:Lorg/json/JSONObject;

    .line 43
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->loader:Lcom/playhaven/src/common/PHURLLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->loader:Lcom/playhaven/src/common/PHURLLoader;

    invoke-virtual {v0, p1}, Lcom/playhaven/src/common/PHURLLoader;->setJSONContext(Lorg/json/JSONObject;)V

    .line 44
    :cond_0
    return-void
.end method

.method public setTargetURL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->targetUri:Landroid/net/Uri;

    .line 74
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->targetUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/playhaven/src/common/PHURLLoader;

    iget-object v1, p0, Lcom/playhaven/src/common/PHURLLoaderView;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/playhaven/src/common/PHURLLoader;-><init>(Landroid/content/Context;Lcom/playhaven/src/common/PHURLLoader$PHURLLoaderDelegate;)V

    iput-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->loader:Lcom/playhaven/src/common/PHURLLoader;

    .line 65
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->loader:Lcom/playhaven/src/common/PHURLLoader;

    iget-object v1, p0, Lcom/playhaven/src/common/PHURLLoaderView;->json_context:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/playhaven/src/common/PHURLLoader;->setJSONContext(Lorg/json/JSONObject;)V

    .line 66
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->loader:Lcom/playhaven/src/common/PHURLLoader;

    iget-object v1, p0, Lcom/playhaven/src/common/PHURLLoaderView;->targetUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/playhaven/src/common/PHURLLoader;->targetURI:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/playhaven/src/common/PHURLLoaderView;->loader:Lcom/playhaven/src/common/PHURLLoader;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHURLLoader;->open()V

    .line 69
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
