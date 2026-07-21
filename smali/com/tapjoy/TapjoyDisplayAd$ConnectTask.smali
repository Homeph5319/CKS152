.class Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;
.super Landroid/os/AsyncTask;
.source "TapjoyDisplayAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyDisplayAd;
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
.field final synthetic this$0:Lcom/tapjoy/TapjoyDisplayAd;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;Lcom/tapjoy/TapjoyDisplayAd$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TapjoyDisplayAd;
    .param p2, "x1"    # Lcom/tapjoy/TapjoyDisplayAd$1;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;-><init>(Lcom/tapjoy/TapjoyDisplayAd;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "returnValue":Z
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$300()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-static {v3}, Lcom/tapjoy/TapjoyDisplayAd;->access$100(Lcom/tapjoy/TapjoyDisplayAd;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-static {v4}, Lcom/tapjoy/TapjoyDisplayAd;->access$200(Lcom/tapjoy/TapjoyDisplayAd;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "response":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 90
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$400()Lcom/tapjoy/TapjoyDisplayAdNotifier;

    move-result-object v2

    const-string v3, "Network error."

    invoke-interface {v2, v3}, Lcom/tapjoy/TapjoyDisplayAdNotifier;->getDisplayAdResponseFailed(Ljava/lang/String;)V

    .line 101
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyDisplayAd;->access$500(Lcom/tapjoy/TapjoyDisplayAd;Ljava/lang/String;)Z

    move-result v1

    .line 97
    if-nez v1, :cond_1

    .line 98
    invoke-static {}, Lcom/tapjoy/TapjoyDisplayAd;->access$400()Lcom/tapjoy/TapjoyDisplayAdNotifier;

    move-result-object v2

    const-string v3, "No ad to display."

    invoke-interface {v2, v3}, Lcom/tapjoy/TapjoyDisplayAdNotifier;->getDisplayAdResponseFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
