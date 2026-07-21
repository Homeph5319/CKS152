.class Lcom/glu/android/TestIAP$2;
.super Ljava/lang/Thread;
.source "TestIAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/TestIAP;->querySingleProduct(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/TestIAP;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/glu/android/TestIAP;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/glu/android/TestIAP$2;->this$0:Lcom/glu/android/TestIAP;

    iput-object p2, p0, Lcom/glu/android/TestIAP$2;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 419
    iget-object v1, p0, Lcom/glu/android/TestIAP$2;->val$productId:Ljava/lang/String;

    .line 421
    .local v1, "savedProductId":Ljava/lang/String;
    invoke-static {}, Lcom/glu/android/GluUtil;->getRandomBoolean()Z

    move-result v0

    .line 423
    .local v0, "alreadyOwned":Z
    sget-boolean v2, Lcom/glu/android/TestIAP;->SIMULATE_RESTORE:Z

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/glu/android/TestIAP$2;->this$0:Lcom/glu/android/TestIAP;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Imaginary product query for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ALREADY OWNED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/glu/android/TestIAP;->access$000(Lcom/glu/android/TestIAP;Ljava/lang/String;)V

    .line 430
    :goto_0
    iget-object v2, p0, Lcom/glu/android/TestIAP$2;->this$0:Lcom/glu/android/TestIAP;

    invoke-static {v2}, Lcom/glu/android/TestIAP;->access$300(Lcom/glu/android/TestIAP;)I

    move-result v2

    iget-object v3, p0, Lcom/glu/android/TestIAP$2;->this$0:Lcom/glu/android/TestIAP;

    invoke-static {v3}, Lcom/glu/android/TestIAP;->access$400(Lcom/glu/android/TestIAP;)I

    move-result v3

    if-le v2, v3, :cond_2

    .line 432
    iget-object v2, p0, Lcom/glu/android/TestIAP$2;->this$0:Lcom/glu/android/TestIAP;

    invoke-static {v2}, Lcom/glu/android/TestIAP;->access$200(Lcom/glu/android/TestIAP;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 433
    :try_start_0
    sget-boolean v2, Lcom/glu/android/TestIAP;->SIMULATE_RESTORE:Z

    if-eqz v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/glu/android/TestIAP$2;->this$0:Lcom/glu/android/TestIAP;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/glu/android/TestIAP;->access$502(Lcom/glu/android/TestIAP;I)I

    .line 438
    :goto_1
    iget-object v2, p0, Lcom/glu/android/TestIAP$2;->this$0:Lcom/glu/android/TestIAP;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/glu/android/TestIAP;->access$702(Lcom/glu/android/TestIAP;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 439
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    return-void

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/glu/android/TestIAP$2;->this$0:Lcom/glu/android/TestIAP;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Imaginary product query for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT YET PURCHASED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/glu/android/TestIAP;->access$000(Lcom/glu/android/TestIAP;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/glu/android/TestIAP$2;->this$0:Lcom/glu/android/TestIAP;

    invoke-virtual {v2, v1}, Lcom/glu/android/TestIAP;->buyProduct(Ljava/lang/String;)V

    goto :goto_1

    .line 439
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 443
    :cond_2
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Lcom/glu/android/GluUtil;->sleep(J)V

    goto :goto_0
.end method
