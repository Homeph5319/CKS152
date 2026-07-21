.class public Lcom/glu/android/GluGoogleIAP$ConfirmNotifications;
.super Lcom/glu/android/GluGoogleIAP$BillingRequest;
.source "GluGoogleIAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluGoogleIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmNotifications"
.end annotation


# instance fields
.field final m_notifyIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 960
    invoke-direct {p0, p1}, Lcom/glu/android/GluGoogleIAP$BillingRequest;-><init>(I)V

    .line 961
    iput-object p2, p0, Lcom/glu/android/GluGoogleIAP$ConfirmNotifications;->m_notifyIds:[Ljava/lang/String;

    .line 962
    return-void
.end method


# virtual methods
.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 966
    const-string v2, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v2}, Lcom/glu/android/GluGoogleIAP$ConfirmNotifications;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 967
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NOTIFY_IDS"

    iget-object v3, p0, Lcom/glu/android/GluGoogleIAP$ConfirmNotifications;->m_notifyIds:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 968
    sget-object v2, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {}, Lcom/glu/android/GluGoogleIAP;->access$500()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 969
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "confirmNotifications"

    invoke-virtual {p0, v2, v1}, Lcom/glu/android/GluGoogleIAP$ConfirmNotifications;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 970
    const-string v2, "REQUEST_ID"

    sget-wide v3, Lcom/glu/googleiap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
