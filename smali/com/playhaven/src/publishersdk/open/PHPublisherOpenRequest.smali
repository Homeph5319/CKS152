.class public Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;
.super Lcom/playhaven/src/common/PHAPIRequest;
.source "PHPublisherOpenRequest.java"


# direct methods
.method public constructor <init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V

    .line 12
    return-void
.end method


# virtual methods
.method public baseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "/v3/publisher/open/"

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
