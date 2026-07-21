.class Lcom/tapjoy/TapjoyConnect$PayPerActionTask;
.super Landroid/os/AsyncTask;
.source "TapjoyConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PayPerActionTask"
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
    .line 563
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnect$PayPerActionTask;->this$0:Lcom/tapjoy/TapjoyConnect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyConnect;Lcom/tapjoy/TapjoyConnect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TapjoyConnect;
    .param p2, "x1"    # Lcom/tapjoy/TapjoyConnect$1;

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnect$PayPerActionTask;-><init>(Lcom/tapjoy/TapjoyConnect;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 568
    const/4 v1, 0x0

    .line 571
    .local v1, "returnValue":Z
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->access$300()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v2

    const-string v3, "https://ws.tapjoyads.com/connect?"

    iget-object v4, p0, Lcom/tapjoy/TapjoyConnect$PayPerActionTask;->this$0:Lcom/tapjoy/TapjoyConnect;

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnect;->access$1000(Lcom/tapjoy/TapjoyConnect;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 575
    iget-object v2, p0, Lcom/tapjoy/TapjoyConnect$PayPerActionTask;->this$0:Lcom/tapjoy/TapjoyConnect;

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyConnect;->access$1100(Lcom/tapjoy/TapjoyConnect;Ljava/lang/String;)Z

    move-result v1

    .line 577
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 563
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyConnect$PayPerActionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
