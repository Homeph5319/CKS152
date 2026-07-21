.class Lcom/glu/android/GluTestTapjoy$1;
.super Ljava/lang/Thread;
.source "GluTestTapjoy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluTestTapjoy;->displayInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluTestTapjoy;


# direct methods
.method constructor <init>(Lcom/glu/android/GluTestTapjoy;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/glu/android/GluTestTapjoy$1;->this$0:Lcom/glu/android/GluTestTapjoy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 89
    invoke-static {}, Lcom/glu/android/GluUtil;->getRandomBoolean()Z

    move-result v0

    .line 90
    .local v0, "pointsOnReturn":Z
    if-eqz v0, :cond_0

    .line 92
    const/4 v2, 0x1

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/glu/android/GluUtil;->getRandomInt(II)I

    move-result v1

    .line 93
    .local v1, "toAdd":I
    iget-object v2, p0, Lcom/glu/android/GluTestTapjoy$1;->this$0:Lcom/glu/android/GluTestTapjoy;

    invoke-static {v2, v1}, Lcom/glu/android/GluTestTapjoy;->access$012(Lcom/glu/android/GluTestTapjoy;I)I

    .line 94
    iget-object v2, p0, Lcom/glu/android/GluTestTapjoy$1;->this$0:Lcom/glu/android/GluTestTapjoy;

    invoke-static {v2, v1}, Lcom/glu/android/GluTestTapjoy;->access$112(Lcom/glu/android/GluTestTapjoy;I)I

    .line 95
    iget-object v2, p0, Lcom/glu/android/GluTestTapjoy$1;->this$0:Lcom/glu/android/GluTestTapjoy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Test bed is (pretending to) display an interface.\nUser will have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/glu/android/GluTestTapjoy$1;->this$0:Lcom/glu/android/GluTestTapjoy;

    invoke-static {v4}, Lcom/glu/android/GluTestTapjoy;->access$000(Lcom/glu/android/GluTestTapjoy;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " additional points upon return."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/glu/android/GluTestTapjoy;->access$200(Lcom/glu/android/GluTestTapjoy;Ljava/lang/String;)V

    .line 102
    .end local v1    # "toAdd":I
    :goto_0
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Lcom/glu/android/GluUtil;->sleep(J)V

    .line 104
    iget-object v2, p0, Lcom/glu/android/GluTestTapjoy$1;->this$0:Lcom/glu/android/GluTestTapjoy;

    invoke-virtual {v2}, Lcom/glu/android/GluTestTapjoy;->closeInterface()V

    .line 105
    iget-object v2, p0, Lcom/glu/android/GluTestTapjoy$1;->this$0:Lcom/glu/android/GluTestTapjoy;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/glu/android/GluTestTapjoy;->access$302(Lcom/glu/android/GluTestTapjoy;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 106
    return-void

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/glu/android/GluTestTapjoy$1;->this$0:Lcom/glu/android/GluTestTapjoy;

    const-string v3, "Test bed is (pretending to) display an interface.\nUser will have no new points upon return."

    invoke-static {v2, v3}, Lcom/glu/android/GluTestTapjoy;->access$200(Lcom/glu/android/GluTestTapjoy;Ljava/lang/String;)V

    goto :goto_0
.end method
