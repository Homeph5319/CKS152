.class public Lcom/glu/android/GluPlayHaven$PublisherContentRequest;
.super Ljava/lang/Object;
.source "GluPlayHaven.java"

# interfaces
.implements Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHPublisherContentRequestDelegate;
.implements Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardDelegate;
.implements Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHFailureDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluPlayHaven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PublisherContentRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluPlayHaven;


# direct methods
.method public constructor <init>(Lcom/glu/android/GluPlayHaven;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contentDidFail(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "pcr"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 440
    const-string v0, "Content did fail..."

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    iget-object v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/glu/android/GluPlayHaven;->access$1100(Lcom/glu/android/GluPlayHaven;Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-static {}, Lcom/glu/android/GluPlayHaven;->access$1400()I

    move-result v2

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/glu/android/GluPlayHaven;->access$400(Lcom/glu/android/GluPlayHaven;II[B)V

    .line 443
    return-void

    .line 442
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public didDismissContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;)V
    .locals 4
    .param p1, "pcr"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "pdt"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    .prologue
    .line 415
    const-string v0, "Did dismiss content..."

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    iget-object v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/glu/android/GluPlayHaven;->access$1100(Lcom/glu/android/GluPlayHaven;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-static {}, Lcom/glu/android/GluPlayHaven;->access$1200()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/glu/android/GluPlayHaven;->access$400(Lcom/glu/android/GluPlayHaven;II[B)V

    .line 418
    return-void
.end method

.method public didDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V
    .locals 4
    .param p1, "pcr"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "pc"    # Lcom/playhaven/src/publishersdk/content/PHContent;

    .prologue
    .line 409
    const-string v0, "Did display content..."

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-static {}, Lcom/glu/android/GluPlayHaven;->access$1000()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/glu/android/GluPlayHaven;->access$400(Lcom/glu/android/GluPlayHaven;II[B)V

    .line 411
    return-void
.end method

.method public didFail(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Ljava/lang/String;)V
    .locals 4
    .param p1, "pcr"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 433
    const-string v0, "Did fail..."

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    iget-object v1, p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->placement:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/glu/android/GluPlayHaven;->access$1100(Lcom/glu/android/GluPlayHaven;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-static {}, Lcom/glu/android/GluPlayHaven;->access$1400()I

    move-result v2

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/glu/android/GluPlayHaven;->access$400(Lcom/glu/android/GluPlayHaven;II[B)V

    .line 436
    return-void

    .line 435
    :cond_0
    invoke-static {p2}, Lcom/glu/android/GluPlayHaven;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "pr"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 392
    const-string v0, "Request failed. This even used?"

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "pr"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 387
    const-string v0, "Request succeeded. This even used?"

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public unlockedReward(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHReward;)V
    .locals 5
    .param p1, "pcr"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "pr"    # Lcom/playhaven/src/publishersdk/content/PHReward;

    .prologue
    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlocked reward. Warning: This may not be implemented in native: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/playhaven/src/publishersdk/content/PHReward;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "count":I
    :try_start_0
    iget-object v2, p2, Lcom/playhaven/src/publishersdk/content/PHReward;->quantity:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 428
    :goto_0
    iget-object v3, p0, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-static {}, Lcom/glu/android/GluPlayHaven;->access$1300()I

    move-result v4

    iget-object v2, p2, Lcom/playhaven/src/publishersdk/content/PHReward;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-static {v3, v4, v0, v2}, Lcom/glu/android/GluPlayHaven;->access$400(Lcom/glu/android/GluPlayHaven;II[B)V

    .line 429
    return-void

    .line 427
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    const/4 v0, 0x1

    goto :goto_0

    .line 428
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p2, Lcom/playhaven/src/publishersdk/content/PHReward;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/glu/android/GluPlayHaven;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_1
.end method

.method public willDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V
    .locals 4
    .param p1, "pcr"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "pc"    # Lcom/playhaven/src/publishersdk/content/PHContent;

    .prologue
    .line 403
    const-string v0, "Will display content..."

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-static {}, Lcom/glu/android/GluPlayHaven;->access$900()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/glu/android/GluPlayHaven;->access$400(Lcom/glu/android/GluPlayHaven;II[B)V

    .line 405
    return-void
.end method

.method public willGetContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V
    .locals 4
    .param p1, "pcr"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .prologue
    .line 397
    const-string v0, "Will get content..."

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven$PublisherContentRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-static {}, Lcom/glu/android/GluPlayHaven;->access$800()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/glu/android/GluPlayHaven;->access$400(Lcom/glu/android/GluPlayHaven;II[B)V

    .line 399
    return-void
.end method
