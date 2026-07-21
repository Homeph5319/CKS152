.class public Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;
.super Lcom/playhaven/src/common/PHAPIRequest;
.source "PHPublisherSubContentRequest.java"


# instance fields
.field public callback:Ljava/lang/String;

.field public source:Lcom/playhaven/src/publishersdk/content/PHContentView;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V

    .line 13
    return-void
.end method


# virtual methods
.method public URL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->fullUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->baseURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->fullUrl:Ljava/lang/String;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->fullUrl:Ljava/lang/String;

    return-object v0
.end method
