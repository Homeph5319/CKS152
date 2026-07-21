.class Lcom/tapjoy/TapjoyConnect$ConnectTask;
.super Landroid/os/AsyncTask;
.source "TapjoyConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectTask"
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
    .line 473
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnect$ConnectTask;->this$0:Lcom/tapjoy/TapjoyConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyConnect;Lcom/tapjoy/TapjoyConnect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TapjoyConnect;
    .param p2, "x1"    # Lcom/tapjoy/TapjoyConnect$1;

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnect$ConnectTask;-><init>(Lcom/tapjoy/TapjoyConnect;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 478
    const/4 v2, 0x0

    .line 480
    .local v2, "returnValue":Z
    iget-object v3, p0, Lcom/tapjoy/TapjoyConnect$ConnectTask;->this$0:Lcom/tapjoy/TapjoyConnect;

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnect;->access$100(Lcom/tapjoy/TapjoyConnect;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "connectURLParams":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/TapjoyConnect$ConnectTask;->this$0:Lcom/tapjoy/TapjoyConnect;

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnect;->access$200(Lcom/tapjoy/TapjoyConnect;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyConnect$ConnectTask;->this$0:Lcom/tapjoy/TapjoyConnect;

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnect;->access$200(Lcom/tapjoy/TapjoyConnect;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->access$300()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v3

    const-string v4, "https://ws.tapjoyads.com/connect?"

    invoke-virtual {v3, v4, v0}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 494
    iget-object v3, p0, Lcom/tapjoy/TapjoyConnect$ConnectTask;->this$0:Lcom/tapjoy/TapjoyConnect;

    invoke-static {v3, v1}, Lcom/tapjoy/TapjoyConnect;->access$400(Lcom/tapjoy/TapjoyConnect;Ljava/lang/String;)Z

    move-result v2

    .line 496
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 473
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyConnect$ConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
