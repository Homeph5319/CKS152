.class public Lcom/playhaven/src/publishersdk/promos/PHPublisherPromoRequest;
.super Lcom/playhaven/src/common/PHAPIRequest;
.source "PHPublisherPromoRequest.java"


# direct methods
.method public constructor <init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V

    .line 15
    return-void
.end method


# virtual methods
.method public baseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "/v3/publisher/promos/"

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phFormatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
