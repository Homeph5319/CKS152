.class Lcom/glu/android/GluPlayHaven$ContentRequest;
.super Ljava/lang/Object;
.source "GluPlayHaven.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest$PHAPIRequestDelegate;
.implements Lcom/playhaven/src/publishersdk/content/PHContentView$PHContentViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluPlayHaven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluPlayHaven;


# direct methods
.method private constructor <init>(Lcom/glu/android/GluPlayHaven;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/glu/android/GluPlayHaven$ContentRequest;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glu/android/GluPlayHaven;Lcom/glu/android/GluPlayHaven$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/glu/android/GluPlayHaven;
    .param p2, "x1"    # Lcom/glu/android/GluPlayHaven$1;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/glu/android/GluPlayHaven$ContentRequest;-><init>(Lcom/glu/android/GluPlayHaven;)V

    return-void
.end method


# virtual methods
.method public borderColor(Lcom/playhaven/src/publishersdk/content/PHContentView;)I
    .locals 1
    .param p1, "pcv"    # Lcom/playhaven/src/publishersdk/content/PHContentView;

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public closeButton(Lcom/playhaven/src/publishersdk/content/PHContentView;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "pcv"    # Lcom/playhaven/src/publishersdk/content/PHContentView;
    .param p2, "paramInt"    # I

    .prologue
    .line 369
    const-string v0, "Close button bitmap requested, returning null. Is this safe?"

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public didDismiss(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 0
    .param p1, "pcv"    # Lcom/playhaven/src/publishersdk/content/PHContentView;

    .prologue
    .line 361
    return-void
.end method

.method public didFail(Lcom/playhaven/src/publishersdk/content/PHContentView;Ljava/lang/String;)V
    .locals 0
    .param p1, "pcv"    # Lcom/playhaven/src/publishersdk/content/PHContentView;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 365
    return-void
.end method

.method public didLoad(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 0
    .param p1, "pcv"    # Lcom/playhaven/src/publishersdk/content/PHContentView;

    .prologue
    .line 357
    return-void
.end method

.method public didShow(Lcom/playhaven/src/publishersdk/content/PHContentView;)V
    .locals 0
    .param p1, "pcv"    # Lcom/playhaven/src/publishersdk/content/PHContentView;

    .prologue
    .line 353
    return-void
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "pr"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 349
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "pr"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 345
    return-void
.end method
