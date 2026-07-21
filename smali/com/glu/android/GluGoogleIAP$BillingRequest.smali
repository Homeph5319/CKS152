.class public abstract Lcom/glu/android/GluGoogleIAP$BillingRequest;
.super Ljava/lang/Object;
.source "GluGoogleIAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluGoogleIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BillingRequest"
.end annotation


# instance fields
.field protected m_requestId:J

.field private final m_startId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "startId"    # I

    .prologue
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput p1, p0, Lcom/glu/android/GluGoogleIAP$BillingRequest;->m_startId:I

    .line 795
    return-void
.end method


# virtual methods
.method public getStartId()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lcom/glu/android/GluGoogleIAP$BillingRequest;->m_startId:I

    return v0
.end method

.method protected logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Bundle;

    .prologue
    .line 864
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/glu/googleiap/Consts$ResponseCode;->valueOf(I)Lcom/glu/googleiap/Consts$ResponseCode;

    move-result-object v0

    .line 865
    .local v0, "responseCode":Lcom/glu/googleiap/Consts$ResponseCode;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/glu/googleiap/Consts$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method protected makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 855
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 856
    .local v0, "request":Landroid/os/Bundle;
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 858
    const-string v1, "PACKAGE_NAME"

    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v2, v2, Lcom/glu/android/GameLet;->m_packageID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    return-object v0
.end method

.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 1
    .param p1, "ex"    # Landroid/os/RemoteException;

    .prologue
    .line 840
    const-string v0, "remote billing service crashed"

    invoke-static {v0, p1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 841
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/glu/android/GluGoogleIAP;->access$502(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;

    .line 842
    return-void
.end method

.method protected responseCodeReceived(Lcom/glu/googleiap/Consts$ResponseCode;)V
    .locals 0
    .param p1, "responseCode"    # Lcom/glu/googleiap/Consts$ResponseCode;

    .prologue
    .line 851
    return-void
.end method

.method protected abstract run()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public runIfConnected()Z
    .locals 5

    .prologue
    .line 821
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 822
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {}, Lcom/glu/android/GluGoogleIAP;->access$500()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 825
    :try_start_0
    invoke-virtual {p0}, Lcom/glu/android/GluGoogleIAP$BillingRequest;->run()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/glu/android/GluGoogleIAP$BillingRequest;->m_requestId:J

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/glu/android/GluGoogleIAP$BillingRequest;->m_requestId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 827
    iget-wide v1, p0, Lcom/glu/android/GluGoogleIAP$BillingRequest;->m_requestId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 828
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {}, Lcom/glu/android/GluGoogleIAP;->access$600()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, p0, Lcom/glu/android/GluGoogleIAP$BillingRequest;->m_requestId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :cond_0
    const/4 v1, 0x1

    .line 835
    :goto_0
    return v1

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/glu/android/GluGoogleIAP$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 835
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runRequest()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 804
    invoke-virtual {p0}, Lcom/glu/android/GluGoogleIAP$BillingRequest;->runIfConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    :goto_0
    return v0

    .line 809
    :cond_0
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {v1}, Lcom/glu/android/GluGoogleIAP;->access$300(Lcom/glu/android/GluGoogleIAP;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    const-string v1, "Adding pending request..."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 813
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-static {}, Lcom/glu/android/GluGoogleIAP;->access$400()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 816
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
