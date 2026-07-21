.class public Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;
.super Lcom/playhaven/src/common/PHAPIRequest;
.source "PHPublisherMetadataRequest.java"


# instance fields
.field private placement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->placement:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;)V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->placement:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->placement:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->placement:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->placement:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public baseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "/v3/publisher/content/"

    invoke-static {v0}, Lcom/playhaven/src/common/PHConstants;->phURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalParams()Ljava/util/HashMap;
    .locals 3
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
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    const-string v1, "placement_id"

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->placement:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "metadata"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->placement:Ljava/lang/String;

    return-object v0
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->placement:Ljava/lang/String;

    .line 45
    return-void
.end method
