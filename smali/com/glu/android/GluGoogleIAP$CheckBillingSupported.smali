.class public Lcom/glu/android/GluGoogleIAP$CheckBillingSupported;
.super Lcom/glu/android/GluGoogleIAP$BillingRequest;
.source "GluGoogleIAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluGoogleIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckBillingSupported"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 877
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/glu/android/GluGoogleIAP$BillingRequest;-><init>(I)V

    .line 879
    const-string v0, "~~ CheckBillingSupported"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 880
    return-void
.end method


# virtual methods
.method protected run()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 884
    const-string v4, "Running CheckBillingSupported"

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 886
    const-string v4, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v4}, Lcom/glu/android/GluGoogleIAP$CheckBillingSupported;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 887
    .local v1, "request":Landroid/os/Bundle;
    sget-object v4, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {}, Lcom/glu/android/GluGoogleIAP;->access$500()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 888
    .local v2, "response":Landroid/os/Bundle;
    const-string v4, "RESPONSE_CODE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 889
    .local v3, "responseCode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckBillingSupported response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/glu/googleiap/Consts$ResponseCode;->valueOf(I)Lcom/glu/googleiap/Consts$ResponseCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  packageID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_packageID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 890
    sget-object v4, Lcom/glu/googleiap/Consts$ResponseCode;->RESULT_OK:Lcom/glu/googleiap/Consts$ResponseCode;

    invoke-virtual {v4}, Lcom/glu/googleiap/Consts$ResponseCode;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 891
    .local v0, "billingSupported":Z
    :goto_0
    invoke-static {v0}, Lcom/glu/googleiap/ResponseHandler;->checkBillingSupportedResponse(Z)V

    .line 892
    sget-wide v4, Lcom/glu/googleiap/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    return-wide v4

    .line 890
    .end local v0    # "billingSupported":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
