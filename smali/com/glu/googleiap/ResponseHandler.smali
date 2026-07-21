.class public Lcom/glu/googleiap/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    sget-object v0, Lcom/glu/googleiap/ResponseHandler;->sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/glu/googleiap/ResponseHandler;->sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lcom/glu/googleiap/PurchaseObserver;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1
    .param p0, "supported"    # Z

    .prologue
    .line 58
    sget-object v0, Lcom/glu/googleiap/ResponseHandler;->sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/glu/googleiap/ResponseHandler;->sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;

    invoke-virtual {v0, p0}, Lcom/glu/googleiap/PurchaseObserver;->onBillingSupported(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public static purchaseResponse(Landroid/content/Context;Lcom/glu/googleiap/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "purchaseState"    # Lcom/glu/googleiap/Consts$PurchaseState;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 121
    const-class v7, Lcom/glu/googleiap/ResponseHandler;

    monitor-enter v7

    .line 122
    :try_start_0
    sget-object v0, Lcom/glu/googleiap/ResponseHandler;->sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/glu/googleiap/ResponseHandler;->sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;

    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/glu/googleiap/PurchaseObserver;->postPurchaseStateChange(Lcom/glu/googleiap/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    .line 125
    :cond_0
    monitor-exit v7

    .line 128
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized register(Lcom/glu/googleiap/PurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/glu/googleiap/PurchaseObserver;

    .prologue
    .line 40
    const-class v0, Lcom/glu/googleiap/ResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/glu/googleiap/ResponseHandler;->sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v0

    return-void

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/glu/android/GluGoogleIAP$RequestPurchase;Lcom/glu/googleiap/Consts$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/glu/android/GluGoogleIAP$RequestPurchase;
    .param p2, "responseCode"    # Lcom/glu/googleiap/Consts$ResponseCode;

    .prologue
    .line 145
    sget-object v0, Lcom/glu/googleiap/ResponseHandler;->sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/glu/googleiap/ResponseHandler;->sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/glu/googleiap/PurchaseObserver;->onRequestPurchaseResponse(Lcom/glu/android/GluGoogleIAP$RequestPurchase;Lcom/glu/googleiap/Consts$ResponseCode;)V

    .line 148
    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/glu/android/GluGoogleIAP$RestoreTransactions;Lcom/glu/googleiap/Consts$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/glu/android/GluGoogleIAP$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/glu/googleiap/Consts$ResponseCode;

    .prologue
    .line 161
    sget-object v0, Lcom/glu/googleiap/ResponseHandler;->sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/glu/googleiap/ResponseHandler;->sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/glu/googleiap/PurchaseObserver;->onRestoreTransactionsResponse(Lcom/glu/android/GluGoogleIAP$RestoreTransactions;Lcom/glu/googleiap/Consts$ResponseCode;)V

    .line 164
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lcom/glu/googleiap/PurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/glu/googleiap/PurchaseObserver;

    .prologue
    .line 48
    const-class v0, Lcom/glu/googleiap/ResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/glu/googleiap/ResponseHandler;->sPurchaseObserver:Lcom/glu/googleiap/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
