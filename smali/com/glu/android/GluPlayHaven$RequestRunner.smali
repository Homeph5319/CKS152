.class Lcom/glu/android/GluPlayHaven$RequestRunner;
.super Ljava/lang/Object;
.source "GluPlayHaven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluPlayHaven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestRunner"
.end annotation


# instance fields
.field private request:Lcom/playhaven/src/common/PHAPIRequest;

.field private requestRun:Z

.field final synthetic this$0:Lcom/glu/android/GluPlayHaven;


# direct methods
.method private constructor <init>(Lcom/glu/android/GluPlayHaven;)V
    .locals 1

    .prologue
    .line 507
    iput-object p1, p0, Lcom/glu/android/GluPlayHaven$RequestRunner;->this$0:Lcom/glu/android/GluPlayHaven;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluPlayHaven$RequestRunner;->request:Lcom/playhaven/src/common/PHAPIRequest;

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GluPlayHaven$RequestRunner;->requestRun:Z

    .line 508
    const-string v0, "Request runner created."

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method synthetic constructor <init>(Lcom/glu/android/GluPlayHaven;Lcom/glu/android/GluPlayHaven$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/glu/android/GluPlayHaven;
    .param p2, "x1"    # Lcom/glu/android/GluPlayHaven$1;

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/glu/android/GluPlayHaven$RequestRunner;-><init>(Lcom/glu/android/GluPlayHaven;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/glu/android/GluPlayHaven$RequestRunner;->requestRun:Z

    if-nez v0, :cond_0

    .line 521
    const-string v0, "Sending request."

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GluPlayHaven$RequestRunner;->requestRun:Z

    .line 523
    iget-object v0, p0, Lcom/glu/android/GluPlayHaven$RequestRunner;->request:Lcom/playhaven/src/common/PHAPIRequest;

    invoke-virtual {v0}, Lcom/playhaven/src/common/PHAPIRequest;->send()V

    .line 527
    :goto_0
    return-void

    .line 526
    :cond_0
    const-string v0, "WARNING: Request send made an additional time..."

    invoke-static {v0}, Lcom/glu/android/GluPlayHaven;->access$200(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run(Landroid/app/Activity;Lcom/playhaven/src/common/PHAPIRequest;)V
    .locals 0
    .param p1, "currentActivity"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/playhaven/src/common/PHAPIRequest;

    .prologue
    .line 513
    iput-object p2, p0, Lcom/glu/android/GluPlayHaven$RequestRunner;->request:Lcom/playhaven/src/common/PHAPIRequest;

    .line 514
    invoke-virtual {p1, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 515
    return-void
.end method
