.class public Lcom/tapjoy/TapjoyReferralTracker;
.super Landroid/content/BroadcastReceiver;
.source "TapjoyReferralTracker.java"


# instance fields
.field final REFERRAL_URL:Ljava/lang/String;

.field final TJC_PREFERENCE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 10
    const-string v0, "tjcPrefrences"

    iput-object v0, p0, Lcom/tapjoy/TapjoyReferralTracker;->TJC_PREFERENCE:Ljava/lang/String;

    .line 11
    const-string v0, "InstallReferral"

    iput-object v0, p0, Lcom/tapjoy/TapjoyReferralTracker;->REFERRAL_URL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    const-string v4, "TapjoyReferralTracker"

    const-string v5, "Traversing TapjoyReferralTracker Broadcast Receiver intent\'s info......."

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v3

    .line 19
    .local v3, "uri":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 21
    const-string v4, "referrer="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 22
    .local v1, "index":I
    const/4 v4, -0x1

    if-le v1, v4, :cond_1

    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 25
    const-string v4, "TapjoyReferralTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Referral URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v4, "tjcPrefrences"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 28
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "InstallReferral"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    const-string v4, "TapjoyReferralTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cached Referral URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "index":I
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    const-string v4, "TapjoyReferralTracker"

    const-string v5, "End"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void

    .line 34
    .restart local v1    # "index":I
    :cond_1
    const-string v4, "TapjoyReferralTracker"

    const-string v5, "No Referral URL."

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
