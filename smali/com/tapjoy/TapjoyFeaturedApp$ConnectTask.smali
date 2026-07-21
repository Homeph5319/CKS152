.class Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;
.super Landroid/os/AsyncTask;
.source "TapjoyFeaturedApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyFeaturedApp;
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
.field final synthetic this$0:Lcom/tapjoy/TapjoyFeaturedApp;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyFeaturedApp;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;->this$0:Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyFeaturedApp;Lcom/tapjoy/TapjoyFeaturedApp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TapjoyFeaturedApp;
    .param p2, "x1"    # Lcom/tapjoy/TapjoyFeaturedApp$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;-><init>(Lcom/tapjoy/TapjoyFeaturedApp;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "returnValue":Z
    invoke-static {}, Lcom/tapjoy/TapjoyFeaturedApp;->access$300()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;->this$0:Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-static {v3}, Lcom/tapjoy/TapjoyFeaturedApp;->access$100(Lcom/tapjoy/TapjoyFeaturedApp;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;->this$0:Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-static {v4}, Lcom/tapjoy/TapjoyFeaturedApp;->access$200(Lcom/tapjoy/TapjoyFeaturedApp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "response":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 92
    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;->this$0:Lcom/tapjoy/TapjoyFeaturedApp;

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyFeaturedApp;->access$400(Lcom/tapjoy/TapjoyFeaturedApp;Ljava/lang/String;)Z

    move-result v1

    .line 95
    :cond_0
    if-nez v1, :cond_1

    .line 96
    invoke-static {}, Lcom/tapjoy/TapjoyFeaturedApp;->access$500()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v2

    const-string v3, "Error retrieving featured app data from the server."

    invoke-interface {v2, v3}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponseFailed(Ljava/lang/String;)V

    .line 98
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
