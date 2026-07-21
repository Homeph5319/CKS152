.class Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;
.super Landroid/os/AsyncTask;
.source "TapjoyConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectSpendPointsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnect;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyConnect;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;->this$0:Lcom/tapjoy/TapjoyConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyConnect;Lcom/tapjoy/TapjoyConnect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TapjoyConnect;
    .param p2, "x1"    # Lcom/tapjoy/TapjoyConnect$1;

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;-><init>(Lcom/tapjoy/TapjoyConnect;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 537
    const/4 v1, 0x0

    .line 540
    .local v1, "returnValue":Z
    const-string v2, "https://ws.tapjoyads.com/purchase_vg/spend?"

    .line 541
    .local v2, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;->this$0:Lcom/tapjoy/TapjoyConnect;

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnect;->access$100(Lcom/tapjoy/TapjoyConnect;)Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "url_params":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&tap_points="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;->this$0:Lcom/tapjoy/TapjoyConnect;

    invoke-static {v5}, Lcom/tapjoy/TapjoyConnect;->access$700(Lcom/tapjoy/TapjoyConnect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 543
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->access$300()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 548
    iget-object v4, p0, Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;->this$0:Lcom/tapjoy/TapjoyConnect;

    invoke-static {v4, v0}, Lcom/tapjoy/TapjoyConnect;->access$800(Lcom/tapjoy/TapjoyConnect;Ljava/lang/String;)Z

    move-result v1

    .line 552
    :cond_0
    if-nez v1, :cond_1

    .line 553
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->access$900()Lcom/tapjoy/TapjoySpendPointsNotifier;

    move-result-object v4

    const-string v5, "Failed to spend points."

    invoke-interface {v4, v5}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponseFailed(Ljava/lang/String;)V

    .line 555
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 532
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyConnect$ConnectSpendPointsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
