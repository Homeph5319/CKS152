.class public Lcom/glu/android/GluGoogleIAP$RestoreTransactions;
.super Lcom/glu/android/GluGoogleIAP$BillingRequest;
.source "GluGoogleIAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluGoogleIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestoreTransactions"
.end annotation


# instance fields
.field m_cryptographicNonce:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1014
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/glu/android/GluGoogleIAP$BillingRequest;-><init>(I)V

    .line 1015
    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "ex"    # Landroid/os/RemoteException;

    .prologue
    .line 1030
    invoke-super {p0, p1}, Lcom/glu/android/GluGoogleIAP$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 1031
    iget-wide v0, p0, Lcom/glu/android/GluGoogleIAP$RestoreTransactions;->m_cryptographicNonce:J

    invoke-static {v0, v1}, Lcom/glu/googleiap/Security;->removeNonce(J)V

    .line 1032
    return-void
.end method

.method protected responseCodeReceived(Lcom/glu/googleiap/Consts$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/glu/googleiap/Consts$ResponseCode;

    .prologue
    .line 1036
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {v0, p0, p1}, Lcom/glu/googleiap/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/glu/android/GluGoogleIAP$RestoreTransactions;Lcom/glu/googleiap/Consts$ResponseCode;)V

    .line 1037
    return-void
.end method

.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1019
    invoke-static {}, Lcom/glu/googleiap/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/glu/android/GluGoogleIAP$RestoreTransactions;->m_cryptographicNonce:J

    .line 1021
    const-string v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v2}, Lcom/glu/android/GluGoogleIAP$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1022
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/glu/android/GluGoogleIAP$RestoreTransactions;->m_cryptographicNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1023
    sget-object v2, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {}, Lcom/glu/android/GluGoogleIAP;->access$500()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1024
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "restoreTransactions"

    invoke-virtual {p0, v2, v1}, Lcom/glu/android/GluGoogleIAP$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1025
    const-string v2, "REQUEST_ID"

    sget-wide v3, Lcom/glu/googleiap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
