.class Lcom/dataManager/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/dataManager/ArchiveExtractor$ExtractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dataManager/MainActivity;->startExtraction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dataManager/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$PZ7pfF1SHRic2tX3FqscuQLcdR4(Lcom/dataManager/MainActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/dataManager/MainActivity$1;->lambda$onFailure$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$b8teW_VX3SqQWrAqr5S978Fue0A(Lcom/dataManager/MainActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/dataManager/MainActivity$1;->lambda$onCancelled$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$pYGMpZF5U4shhU4-56p1pN3f8bc(Lcom/dataManager/MainActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/dataManager/MainActivity$1;->lambda$onSuccess$0()V

    return-void
.end method

.method constructor <init>(Lcom/dataManager/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dataManager/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lcom/dataManager/MainActivity$1;->this$0:Lcom/dataManager/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCancelled$2()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/dataManager/MainActivity$1;->this$0:Lcom/dataManager/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dataManager/MainActivity;->-$$Nest$monExtractionDone(Lcom/dataManager/MainActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onFailure$1()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/dataManager/MainActivity$1;->this$0:Lcom/dataManager/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dataManager/MainActivity;->-$$Nest$monExtractionDone(Lcom/dataManager/MainActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/dataManager/MainActivity$1;->this$0:Lcom/dataManager/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dataManager/MainActivity;->-$$Nest$monExtractionDone(Lcom/dataManager/MainActivity;Z)V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/dataManager/MainActivity$1;->this$0:Lcom/dataManager/MainActivity;

    invoke-static {v0}, Lcom/dataManager/MainActivity;->-$$Nest$fgetuiHandler(Lcom/dataManager/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dataManager/MainActivity$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/dataManager/MainActivity$1$$ExternalSyntheticLambda2;-><init>(Lcom/dataManager/MainActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/dataManager/MainActivity$1;->this$0:Lcom/dataManager/MainActivity;

    invoke-static {v0}, Lcom/dataManager/MainActivity;->-$$Nest$fgetlogger(Lcom/dataManager/MainActivity;)Lcom/dataManager/AppLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extraction failure reported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-virtual {v0, v2, v1}, Lcom/dataManager/AppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/dataManager/MainActivity$1;->this$0:Lcom/dataManager/MainActivity;

    invoke-static {v0}, Lcom/dataManager/MainActivity;->-$$Nest$fgetuiHandler(Lcom/dataManager/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dataManager/MainActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/dataManager/MainActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/dataManager/MainActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/dataManager/MainActivity$1;->this$0:Lcom/dataManager/MainActivity;

    invoke-static {v0}, Lcom/dataManager/MainActivity;->-$$Nest$fgetuiHandler(Lcom/dataManager/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dataManager/MainActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/dataManager/MainActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/dataManager/MainActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    return-void
.end method
