.class public Lcom/glu/android/GluGoogleIAP$RequestPurchase;
.super Lcom/glu/android/GluGoogleIAP$BillingRequest;
.source "GluGoogleIAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluGoogleIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestPurchase"
.end annotation


# instance fields
.field public final m_developerPayload:Ljava/lang/String;

.field public final m_productId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "realProductId"    # Ljava/lang/String;

    .prologue
    .line 904
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/glu/android/GluGoogleIAP$RequestPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "realProductId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 912
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/glu/android/GluGoogleIAP$BillingRequest;-><init>(I)V

    .line 913
    iput-object p1, p0, Lcom/glu/android/GluGoogleIAP$RequestPurchase;->m_productId:Ljava/lang/String;

    .line 914
    iput-object p2, p0, Lcom/glu/android/GluGoogleIAP$RequestPurchase;->m_developerPayload:Ljava/lang/String;

    .line 915
    return-void
.end method


# virtual methods
.method protected responseCodeReceived(Lcom/glu/googleiap/Consts$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/glu/googleiap/Consts$ResponseCode;

    .prologue
    .line 949
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {v0, p0, p1}, Lcom/glu/googleiap/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/glu/android/GluGoogleIAP$RequestPurchase;Lcom/glu/googleiap/Consts$ResponseCode;)V

    .line 950
    return-void
.end method

.method protected run()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 919
    const-string v6, "REQUEST_PURCHASE"

    invoke-virtual {p0, v6}, Lcom/glu/android/GluGoogleIAP$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 920
    .local v2, "request":Landroid/os/Bundle;
    const-string v6, "ITEM_ID"

    iget-object v7, p0, Lcom/glu/android/GluGoogleIAP$RequestPurchase;->m_productId:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v6, p0, Lcom/glu/android/GluGoogleIAP$RequestPurchase;->m_developerPayload:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 924
    const-string v6, "DEVELOPER_PAYLOAD"

    iget-object v7, p0, Lcom/glu/android/GluGoogleIAP$RequestPurchase;->m_developerPayload:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_0
    sget-object v6, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {}, Lcom/glu/android/GluGoogleIAP;->access$500()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 927
    .local v5, "response":Landroid/os/Bundle;
    const-string v6, "PURCHASE_INTENT"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 928
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v1, :cond_1

    .line 930
    const-string v6, "Error with requestPurchase"

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 931
    sget-object v6, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {v6}, Lcom/glu/android/GluGoogleIAP;->access$700(Lcom/glu/android/GluGoogleIAP;)V

    .line 932
    sget-wide v3, Lcom/glu/googleiap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 944
    :goto_0
    return-wide v3

    .line 939
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 940
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "Starting RequestPurchase"

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 941
    invoke-static {v1, v0}, Lcom/glu/googleiap/ResponseHandler;->buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 942
    const-string v6, "REQUEST_ID"

    sget-wide v7, Lcom/glu/googleiap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 943
    .local v3, "requestId":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Done with RequestPurchase, requestId(this still valid?) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
