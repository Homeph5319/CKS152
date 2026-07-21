.class Lcom/glu/android/GluPlayHaven$PublisherOpenRequest;
.super Ljava/lang/Object;
.source "GluPlayHaven.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluPlayHaven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublisherOpenRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluPlayHaven;


# direct methods
.method private constructor <init>(Lcom/glu/android/GluPlayHaven;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/glu/android/GluPlayHaven$PublisherOpenRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glu/android/GluPlayHaven;Lcom/glu/android/GluPlayHaven$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/glu/android/GluPlayHaven;
    .param p2, "x1"    # Lcom/glu/android/GluPlayHaven$1;

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/glu/android/GluPlayHaven$PublisherOpenRequest;-><init>(Lcom/glu/android/GluPlayHaven;)V

    return-void
.end method


# virtual methods
.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "pr"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 335
    const-string v0, "Open request failed."

    invoke-static {v0, p2}, Lcom/glu/android/GluPlayHaven;->access$500(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven$PublisherOpenRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-static {}, Lcom/glu/android/GluPlayHaven;->access$600()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/GluPlayHaven;->stringToNativeByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/glu/android/GluPlayHaven;->access$400(Lcom/glu/android/GluPlayHaven;II[B)V

    .line 337
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "pr"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open request succeeded with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven$PublisherOpenRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-static {}, Lcom/glu/android/GluPlayHaven;->access$300()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/glu/android/GluPlayHaven;->access$400(Lcom/glu/android/GluPlayHaven;II[B)V

    .line 331
    return-void
.end method
