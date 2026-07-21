.class public Lcom/glu/android/GluGoogleIAP;
.super Landroid/app/Service;
.source "GluGoogleIAP.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/glu/android/IAP$IAPObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;,
        Lcom/glu/android/GluGoogleIAP$GluPurchaseObserver;,
        Lcom/glu/android/GluGoogleIAP$RestoreTransactions;,
        Lcom/glu/android/GluGoogleIAP$GetPurchaseInformation;,
        Lcom/glu/android/GluGoogleIAP$ConfirmNotifications;,
        Lcom/glu/android/GluGoogleIAP$RequestPurchase;,
        Lcom/glu/android/GluGoogleIAP$CheckBillingSupported;,
        Lcom/glu/android/GluGoogleIAP$BillingRequest;
    }
.end annotation


# static fields
.field private static final DB_INITIALIZED:Ljava/lang/String; = "db_initialized"

.field private static final DEFAULT_LANGUAGE:Ljava/lang/String; = "en"

.field private static final GOOGLE_IAP_FAILED_STRING:Ljava/lang/String; = "~"

.field private static final ITEM_MANAGEMENT_LOCK:Ljava/lang/Object;

.field public static instance:Lcom/glu/android/GluGoogleIAP;

.field private static m_asynchronousItemGiveTimer:I

.field private static m_asynchronousItemRemoveTimer:I

.field private static m_billingService:Lcom/android/vending/billing/IMarketBillingService;

.field private static m_billingSupported:Z

.field private static m_billingVerified:Z

.field private static m_buyProductThread:Ljava/lang/Thread;

.field private static m_handler:Landroid/os/Handler;

.field private static m_initRetryTimer:I

.field private static m_initialized:Z

.field private static m_pendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/glu/android/GluGoogleIAP$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static m_purchaseObserver:Lcom/glu/android/GluGoogleIAP$GluPurchaseObserver;

.field private static m_purchaseTimeoutTimer:I

.field private static m_purchasedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

.field private static m_purchasingState:I

.field private static m_refundedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

.field private static m_restoreTransactionsInProgress:Z

.field private static m_restoredTransactions:Z

.field private static m_savedProductId:Ljava/lang/String;

.field private static m_sentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/glu/android/GluGoogleIAP$BillingRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    .line 232
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->ITEM_MANAGEMENT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 90
    const-string v0, "ggiap instantiated by system. (don\'t initialize anything)"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/glu/android/IAP;)V
    .locals 1
    .param p1, "fake"    # Lcom/glu/android/IAP;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->initStatics()V

    .line 98
    const-string v0, "ggiap instantiated intentionally"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 100
    sput-object p0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    .line 101
    sput-object p0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    .line 103
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {p0, v0}, Lcom/glu/android/GluGoogleIAP;->attachBaseContext(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/glu/android/GluGoogleIAP;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/glu/android/GluGoogleIAP;->doBuyProduct(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->ITEM_MANAGEMENT_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/glu/android/GluGoogleIAP;)Z
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->transactionInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 51
    sput p0, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I

    return p0
.end method

.method static synthetic access$1300(Lcom/glu/android/GluGoogleIAP;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/glu/android/GluGoogleIAP;->storeItemToAdd(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/glu/android/GluGoogleIAP;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/glu/android/GluGoogleIAP;->storeItemToRemove(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/glu/android/GluGoogleIAP;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/glu/android/GluGoogleIAP;->asynchronousGiveUserItem(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/glu/android/GluGoogleIAP;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/glu/android/GluGoogleIAP;->asynchronousRemoveUserItem(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 51
    sput-object p0, Lcom/glu/android/GluGoogleIAP;->m_buyProductThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$300(Lcom/glu/android/GluGoogleIAP;)Z
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_pendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_billingService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/vending/billing/IMarketBillingService;

    .prologue
    .line 51
    sput-object p0, Lcom/glu/android/GluGoogleIAP;->m_billingService:Lcom/android/vending/billing/IMarketBillingService;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_sentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/glu/android/GluGoogleIAP;)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluGoogleIAP;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->currentItemFailed()V

    return-void
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 51
    sput-boolean p0, Lcom/glu/android/GluGoogleIAP;->m_billingSupported:Z

    return p0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 51
    sput-boolean p0, Lcom/glu/android/GluGoogleIAP;->m_billingVerified:Z

    return p0
.end method

.method private asynchronousGiveUserItem(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "realProductId"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 453
    const/4 v4, 0x5

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    sget-object v0, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v1, v0}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private asynchronousRemoveUserItem(Ljava/lang/String;)Z
    .locals 3
    .param p1, "realProductId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 458
    const/4 v2, 0x6

    sget-object v0, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private bindToMarketBillingService()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 754
    sget-object v5, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-nez v5, :cond_0

    .line 756
    const-string v4, "bindToMarketBillingService() before activity instantiated."

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 777
    :goto_0
    return v3

    .line 761
    :cond_0
    :try_start_0
    const-string v5, "binding to Market billing service"

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 762
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 763
    .local v2, "i":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 765
    const-string v4, "Could not create market billing service intent..."

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 774
    .end local v2    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 775
    .local v1, "ex":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Security exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 768
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .restart local v2    # "i":Landroid/content/Intent;
    :cond_1
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {p0, v2, p0, v5}, Lcom/glu/android/GluGoogleIAP;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 770
    .local v0, "bindResult":Z
    if-eqz v0, :cond_2

    move v3, v4

    .line 771
    goto :goto_0

    .line 773
    :cond_2
    const-string v4, "Could not bind to service."

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private cancelCurrentItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 419
    const/4 v1, 0x1

    sget-object v0, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    sget-object v2, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    .line 420
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    .line 421
    const v0, 0xfacade

    sput v0, Lcom/glu/android/GluGoogleIAP;->m_purchaseTimeoutTimer:I

    .line 422
    sput v3, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I

    .line 423
    return-void
.end method

.method private checkBillingSupported()Z
    .locals 1

    .prologue
    .line 552
    new-instance v0, Lcom/glu/android/GluGoogleIAP$CheckBillingSupported;

    invoke-direct {v0}, Lcom/glu/android/GluGoogleIAP$CheckBillingSupported;-><init>()V

    invoke-virtual {v0}, Lcom/glu/android/GluGoogleIAP$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method private checkResponseCode(JLcom/glu/googleiap/Consts$ResponseCode;)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "responseCode"    # Lcom/glu/googleiap/Consts$ResponseCode;

    .prologue
    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received response for request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 681
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->m_sentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/GluGoogleIAP$BillingRequest;

    .line 682
    .local v0, "request":Lcom/glu/android/GluGoogleIAP$BillingRequest;
    if-nez v0, :cond_0

    .line 701
    :goto_0
    return-void

    .line 686
    :cond_0
    sget-object v2, Lcom/glu/android/GluGoogleIAP;->ITEM_MANAGEMENT_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 687
    :try_start_0
    instance-of v1, v0, Lcom/glu/android/GluGoogleIAP$RequestPurchase;

    if-eqz v1, :cond_1

    .line 689
    sget-object v1, Lcom/glu/googleiap/Consts$ResponseCode;->RESULT_OK:Lcom/glu/googleiap/Consts$ResponseCode;

    if-ne p3, v1, :cond_2

    .line 696
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    invoke-virtual {v0, p3}, Lcom/glu/android/GluGoogleIAP$BillingRequest;->responseCodeReceived(Lcom/glu/googleiap/Consts$ResponseCode;)V

    .line 700
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->m_sentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 691
    :cond_2
    :try_start_1
    sget-object v1, Lcom/glu/googleiap/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/glu/googleiap/Consts$ResponseCode;

    if-ne p3, v1, :cond_3

    .line 692
    const/4 v1, 0x3

    sput v1, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I

    goto :goto_1

    .line 696
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 694
    :cond_3
    const/4 v1, 0x2

    :try_start_2
    sput v1, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 572
    new-instance v0, Lcom/glu/android/GluGoogleIAP$ConfirmNotifications;

    invoke-direct {v0, p1, p2}, Lcom/glu/android/GluGoogleIAP$ConfirmNotifications;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/glu/android/GluGoogleIAP$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private currentItemFailed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 427
    const/4 v1, 0x4

    sget-object v0, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    sget-object v2, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    .line 428
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    .line 429
    const v0, 0xfacade

    sput v0, Lcom/glu/android/GluGoogleIAP;->m_purchaseTimeoutTimer:I

    .line 430
    sput v3, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I

    .line 431
    return-void
.end method

.method private currentItemTimeout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 435
    const/16 v1, 0x8

    sget-object v0, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    sget-object v2, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    .line 436
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    .line 437
    const v0, 0xfacade

    sput v0, Lcom/glu/android/GluGoogleIAP;->m_purchaseTimeoutTimer:I

    .line 438
    sput v3, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I

    .line 439
    return-void
.end method

.method private doBuyProduct(Ljava/lang/String;)V
    .locals 3
    .param p1, "realProductId"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting purchase for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 186
    move-object v0, p1

    .line 187
    .local v0, "product":Ljava/lang/String;
    sget-object v1, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    iget-object v1, v1, Lcom/glu/android/Debug$Console;->GOOGLE_IAP_OVERRIDE_ITEM:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "No hack for you!"

    invoke-static {v1}, Lcom/glu/android/Debug;->relDie(Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcom/glu/android/Debug;->CONSOLE:Lcom/glu/android/Debug$Console;

    iget-object v0, v1, Lcom/glu/android/Debug$Console;->GOOGLE_IAP_OVERRIDE_ITEM:Ljava/lang/String;

    .line 193
    :cond_0
    invoke-direct {p0, v0}, Lcom/glu/android/GluGoogleIAP;->requestPurchase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    const-string v1, "Request purchase failed for some reason. (probably bad connection)"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 196
    const/4 v1, 0x2

    sput v1, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I

    .line 199
    :cond_1
    return-void
.end method

.method private getPurchaseInformation(ILjava/lang/String;)Z
    .locals 3
    .param p1, "startId"    # I
    .param p2, "notifyId"    # Ljava/lang/String;

    .prologue
    .line 577
    new-instance v0, Lcom/glu/android/GluGoogleIAP$GetPurchaseInformation;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {v0, p1, v1}, Lcom/glu/android/GluGoogleIAP$GetPurchaseInformation;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/glu/android/GluGoogleIAP$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private giveUserCurrentItem()V
    .locals 2

    .prologue
    .line 411
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_purchasedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    sget-object v1, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->immediatelyGiveSpecificItem(Ljava/lang/String;)Z

    .line 412
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    .line 413
    const v0, 0xfacade

    sput v0, Lcom/glu/android/GluGoogleIAP;->m_purchaseTimeoutTimer:I

    .line 414
    const/4 v0, 0x0

    sput v0, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I

    .line 415
    return-void
.end method

.method private handleCommand(Landroid/content/Intent;I)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 593
    if-nez p1, :cond_1

    .line 595
    sget-object v9, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v9, :cond_0

    .line 596
    const-string v9, "Why the hell are we getting null intents here? GAH..."

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "action":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleCommand() action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 602
    const-string v9, "com.glu.googleiap.CONFIRM_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 604
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lcom/glu/android/GluGoogleIAP;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 607
    .end local v2    # "notifyIds":[Ljava/lang/String;
    :cond_2
    const-string v9, "com.glu.googleiap.GET_PURCHASE_INFORMATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 609
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "notifyId":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/glu/android/GluGoogleIAP;->getPurchaseInformation(ILjava/lang/String;)Z

    goto :goto_0

    .line 612
    .end local v1    # "notifyId":Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 614
    const-string v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 615
    .local v8, "signedData":Ljava/lang/String;
    const-string v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 616
    .local v7, "signature":Ljava/lang/String;
    invoke-direct {p0, p2, v8, v7}, Lcom/glu/android/GluGoogleIAP;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    .end local v7    # "signature":Ljava/lang/String;
    .end local v8    # "signedData":Ljava/lang/String;
    :cond_4
    const-string v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 620
    const-string v9, "request_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 621
    .local v3, "requestId":J
    const-string v9, "response_code"

    sget-object v10, Lcom/glu/googleiap/Consts$ResponseCode;->RESULT_ERROR:Lcom/glu/googleiap/Consts$ResponseCode;

    invoke-virtual {v10}, Lcom/glu/googleiap/Consts$ResponseCode;->ordinal()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 622
    .local v6, "responseCodeIndex":I
    invoke-static {v6}, Lcom/glu/googleiap/Consts$ResponseCode;->valueOf(I)Lcom/glu/googleiap/Consts$ResponseCode;

    move-result-object v5

    .line 623
    .local v5, "responseCode":Lcom/glu/googleiap/Consts$ResponseCode;
    invoke-direct {p0, v3, v4, v5}, Lcom/glu/android/GluGoogleIAP;->checkResponseCode(JLcom/glu/googleiap/Consts$ResponseCode;)V

    goto :goto_0
.end method

.method private initStatics()V
    .locals 4

    .prologue
    const v3, 0xfacade

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    const-string v0, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\ninitializing statics\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 112
    sput-object v2, Lcom/glu/android/GluGoogleIAP;->m_billingService:Lcom/android/vending/billing/IMarketBillingService;

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_pendingRequests:Ljava/util/LinkedList;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_sentRequests:Ljava/util/HashMap;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_handler:Landroid/os/Handler;

    .line 116
    sput-object v2, Lcom/glu/android/GluGoogleIAP;->m_purchaseObserver:Lcom/glu/android/GluGoogleIAP$GluPurchaseObserver;

    .line 117
    sput-boolean v1, Lcom/glu/android/GluGoogleIAP;->m_billingVerified:Z

    .line 118
    const/4 v0, 0x1

    sput-boolean v0, Lcom/glu/android/GluGoogleIAP;->m_billingSupported:Z

    .line 119
    sput v3, Lcom/glu/android/GluGoogleIAP;->m_initRetryTimer:I

    .line 120
    sput v3, Lcom/glu/android/GluGoogleIAP;->m_purchaseTimeoutTimer:I

    .line 121
    const v0, 0xea60

    sput v0, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemGiveTimer:I

    .line 122
    sput v3, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemRemoveTimer:I

    .line 123
    sput v1, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I

    .line 124
    sput-boolean v1, Lcom/glu/android/GluGoogleIAP;->m_restoredTransactions:Z

    .line 125
    sput-boolean v1, Lcom/glu/android/GluGoogleIAP;->m_restoreTransactionsInProgress:Z

    .line 126
    sput-object v2, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    .line 127
    sput-boolean v1, Lcom/glu/android/GluGoogleIAP;->m_initialized:Z

    .line 128
    sput-object v2, Lcom/glu/android/GluGoogleIAP;->m_buyProductThread:Ljava/lang/Thread;

    .line 129
    new-instance v0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    const-string v1, "giapa.dat"

    invoke-direct {v0, v1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_purchasedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    .line 130
    new-instance v0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    const-string v1, "giapr.dat"

    invoke-direct {v0, v1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_refundedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    .line 131
    return-void
.end method

.method private managedCallRestoreTransactions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 507
    sget-boolean v2, Lcom/glu/android/GluGoogleIAP;->m_restoreTransactionsInProgress:Z

    if-eqz v2, :cond_0

    .line 527
    :goto_0
    return-void

    .line 510
    :cond_0
    const-string v2, "managedCallRestoreTransactions() [FIXME: this is not complete]"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 511
    sput-boolean v4, Lcom/glu/android/GluGoogleIAP;->m_restoreTransactionsInProgress:Z

    .line 516
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2, v3}, Lcom/glu/android/GameLet;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 517
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "db_initialized"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 518
    .local v0, "initialized":Z
    const-string v2, "db_initialized"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 520
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->restoreTransactions()Z

    move-result v2

    sput-boolean v2, Lcom/glu/android/GluGoogleIAP;->m_restoredTransactions:Z

    goto :goto_0

    .line 524
    :cond_1
    sput-boolean v4, Lcom/glu/android/GluGoogleIAP;->m_restoredTransactions:Z

    .line 525
    sput-boolean v3, Lcom/glu/android/GluGoogleIAP;->m_restoreTransactionsInProgress:Z

    goto :goto_0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "startId"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "purchaseStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 640
    invoke-static {p2, p3}, Lcom/glu/googleiap/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 641
    .local v10, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/glu/googleiap/Security$VerifiedPurchase;>;"
    if-nez v10, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v9, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/glu/googleiap/Security$VerifiedPurchase;

    .line 647
    .local v11, "vp":Lcom/glu/googleiap/Security$VerifiedPurchase;
    iget-object v0, v11, Lcom/glu/googleiap/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 648
    iget-object v0, v11, Lcom/glu/googleiap/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_2
    iget-object v1, v11, Lcom/glu/googleiap/Security$VerifiedPurchase;->purchaseState:Lcom/glu/googleiap/Consts$PurchaseState;

    iget-object v2, v11, Lcom/glu/googleiap/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    iget-object v3, v11, Lcom/glu/googleiap/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v4, v11, Lcom/glu/googleiap/Security$VerifiedPurchase;->purchaseTime:J

    iget-object v6, v11, Lcom/glu/googleiap/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/glu/googleiap/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/glu/googleiap/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 652
    .end local v11    # "vp":Lcom/glu/googleiap/Security$VerifiedPurchase;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 661
    .local v8, "notifyIds":[Ljava/lang/String;
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_purchasedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    invoke-virtual {v0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-direct {p0, p1, v8}, Lcom/glu/android/GluGoogleIAP;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private requestPurchase(Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 557
    new-instance v0, Lcom/glu/android/GluGoogleIAP$RequestPurchase;

    invoke-direct {v0, p1}, Lcom/glu/android/GluGoogleIAP$RequestPurchase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/glu/android/GluGoogleIAP$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method private requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 562
    new-instance v0, Lcom/glu/android/GluGoogleIAP$RequestPurchase;

    invoke-direct {v0, p1, p2}, Lcom/glu/android/GluGoogleIAP$RequestPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/glu/android/GluGoogleIAP$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method private restoreTransactions()Z
    .locals 1

    .prologue
    .line 567
    new-instance v0, Lcom/glu/android/GluGoogleIAP$RestoreTransactions;

    invoke-direct {v0}, Lcom/glu/android/GluGoogleIAP$RestoreTransactions;-><init>()V

    invoke-virtual {v0}, Lcom/glu/android/GluGoogleIAP$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method private runPendingRequests()V
    .locals 4

    .prologue
    .line 709
    const-string v2, "runPendingRequests()"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 711
    const/4 v0, -0x1

    .line 713
    .local v0, "maxStartId":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/glu/android/GluGoogleIAP;->m_pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluGoogleIAP$BillingRequest;

    .local v1, "request":Lcom/glu/android/GluGoogleIAP$BillingRequest;
    if-eqz v1, :cond_2

    .line 715
    invoke-virtual {v1}, Lcom/glu/android/GluGoogleIAP$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    sget-object v2, Lcom/glu/android/GluGoogleIAP;->m_pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 722
    invoke-virtual {v1}, Lcom/glu/android/GluGoogleIAP$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 723
    invoke-virtual {v1}, Lcom/glu/android/GluGoogleIAP$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 729
    :cond_1
    const-string v2, "short circuited out"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 730
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->bindToMarketBillingService()Z

    .line 745
    :goto_1
    return-void

    .line 738
    :cond_2
    if-ltz v0, :cond_3

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopping service, startId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0, v0}, Lcom/glu/android/GluGoogleIAP;->stopSelf(I)V

    .line 744
    :cond_3
    const-string v2, "end runPendingRequests()"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private storeItemToAdd(Ljava/lang/String;J)V
    .locals 1
    .param p1, "realProductId"    # Ljava/lang/String;
    .param p2, "longId"    # J

    .prologue
    .line 443
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_purchasedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->addItem(Ljava/lang/String;J)V

    .line 444
    return-void
.end method

.method private storeItemToRemove(Ljava/lang/String;J)V
    .locals 1
    .param p1, "realProductId"    # Ljava/lang/String;
    .param p2, "longId"    # J

    .prologue
    .line 448
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_refundedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->addItem(Ljava/lang/String;J)V

    .line 449
    return-void
.end method

.method private transactionInProgress()Z
    .locals 2

    .prologue
    .line 463
    sget v0, Lcom/glu/android/GluGoogleIAP;->m_purchaseTimeoutTimer:I

    const v1, 0xfacade

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buyProduct(Ljava/lang/String;)V
    .locals 3
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0, p1}, Lcom/glu/android/GluGoogleIAP;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "realProductId":Ljava/lang/String;
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->m_buyProductThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 156
    const-string v1, "Attempted to buy product while purchase in progress."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    sget-boolean v1, Lcom/glu/android/GluGoogleIAP;->m_billingSupported:Z

    if-nez v1, :cond_2

    .line 163
    const/4 v1, 0x4

    invoke-static {v1, v2, p1}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/glu/android/GluGoogleIAP;->forceAsynchronousPurchaseAward()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    .line 172
    const v1, 0xea60

    sput v1, Lcom/glu/android/GluGoogleIAP;->m_purchaseTimeoutTimer:I

    .line 173
    sput v2, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I

    .line 174
    new-instance v1, Lcom/glu/android/GluGoogleIAP$1;

    invoke-direct {v1, p0}, Lcom/glu/android/GluGoogleIAP$1;-><init>(Lcom/glu/android/GluGoogleIAP;)V

    sput-object v1, Lcom/glu/android/GluGoogleIAP;->m_buyProductThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final forceAsynchronousPurchaseAward()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "oldItemsProvided":Z
    :cond_0
    sget-object v3, Lcom/glu/android/GluGoogleIAP;->m_purchasedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    invoke-virtual {v3}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->hasUnhandledItems()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    const/4 v0, 0x1

    .line 314
    sget-object v3, Lcom/glu/android/GluGoogleIAP;->m_purchasedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    invoke-virtual {v3, v1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->tryGivingOneItem(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "this MUST succeed. fix your native code."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_1
    if-eqz v0, :cond_2

    .line 319
    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/glu/android/GluJNI;->iapCallbackEvent(II[B)I

    .line 323
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # I
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string v0, "~"

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    const-string v0, "en"

    const-string v1, "US"

    invoke-static {v0, v1}, Lcom/glu/android/IAP;->getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIAPId()I
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method public getProductType(Ljava/lang/String;)I
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lcom/glu/android/GluGoogleIAP;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "realProductId":Ljava/lang/String;
    const-string v1, "this getting called? hope not..."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 359
    const/4 v1, 0x1

    return v1
.end method

.method public getRealProductId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasInventoryLoaded()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    const v2, 0xea60

    .line 208
    const-string v0, "init (google)"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 211
    sget-boolean v0, Lcom/glu/android/GluGoogleIAP;->m_initialized:Z

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Lcom/glu/android/GluGoogleIAP$GluPurchaseObserver;

    sget-object v1, Lcom/glu/android/GluGoogleIAP;->m_handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/glu/android/GluGoogleIAP$GluPurchaseObserver;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_purchaseObserver:Lcom/glu/android/GluGoogleIAP$GluPurchaseObserver;

    .line 215
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_purchaseObserver:Lcom/glu/android/GluGoogleIAP$GluPurchaseObserver;

    invoke-static {v0}, Lcom/glu/googleiap/ResponseHandler;->register(Lcom/glu/googleiap/PurchaseObserver;)V

    .line 217
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_purchasedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    invoke-virtual {v0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->hasUnhandledItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    sput v2, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemGiveTimer:I

    .line 219
    :cond_0
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_refundedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    invoke-virtual {v0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->hasUnhandledItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    sput v2, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemRemoveTimer:I

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->checkBillingSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    const/4 v0, 0x0

    sput-boolean v0, Lcom/glu/android/GluGoogleIAP;->m_billingSupported:Z

    .line 226
    const/16 v0, 0x2710

    sput v0, Lcom/glu/android/GluGoogleIAP;->m_initRetryTimer:I

    .line 229
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/glu/android/GluGoogleIAP;->m_initialized:Z

    .line 230
    return-void
.end method

.method public isGoogleServiceConnected()Z
    .locals 1

    .prologue
    .line 395
    sget-boolean v0, Lcom/glu/android/GluGoogleIAP;->m_billingSupported:Z

    return v0
.end method

.method public isIAPConnected()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public isIAPSupported()Z
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget v0, v0, Lcom/glu/android/GameLet;->m_platformVersionI:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/glu/android/GluGoogleIAP;->m_billingSupported:Z

    goto :goto_0
.end method

.method public final isItemAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public isProductValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/glu/android/GluGoogleIAP;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "realProductId":Ljava/lang/String;
    const-string v1, "or is this getting called? still hope not..."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 366
    const/4 v1, 0x1

    return v1
.end method

.method public onAppStart()V
    .locals 1

    .prologue
    .line 334
    sget-boolean v0, Lcom/glu/android/GluGoogleIAP;->m_initialized:Z

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_purchaseObserver:Lcom/glu/android/GluGoogleIAP$GluPurchaseObserver;

    invoke-static {v0}, Lcom/glu/googleiap/ResponseHandler;->register(Lcom/glu/googleiap/PurchaseObserver;)V

    .line 336
    :cond_0
    return-void
.end method

.method public onAppStop()V
    .locals 1

    .prologue
    .line 340
    sget-boolean v0, Lcom/glu/android/GluGoogleIAP;->m_initialized:Z

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->m_purchaseObserver:Lcom/glu/android/GluGoogleIAP$GluPurchaseObserver;

    invoke-static {v0}, Lcom/glu/googleiap/ResponseHandler;->unregister(Lcom/glu/googleiap/PurchaseObserver;)V

    .line 342
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 491
    const-string v0, "on service bind"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 493
    const/4 v0, 0x0

    return-object v0
.end method

.method public onIAPDestroy()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/glu/googleiap/ResponseHandler;->unregister(Lcom/glu/googleiap/PurchaseObserver;)V

    .line 329
    invoke-virtual {p0}, Lcom/glu/android/GluGoogleIAP;->unbind()V

    .line 330
    return-void
.end method

.method public final onInventoryFailure()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public final onInventoryReceived(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glu/android/IAP$Inventory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "inventory":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/glu/android/IAP$Inventory;>;"
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 471
    const-string v0, "on service connected"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 473
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_billingService:Lcom/android/vending/billing/IMarketBillingService;

    .line 477
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 481
    const-string v0, "on service disconnected"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluGoogleIAP;->m_billingService:Lcom/android/vending/billing/IMarketBillingService;

    .line 484
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 532
    const-string v0, "ggi ~~ onstart"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 535
    sget-object v0, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-nez v0, :cond_2

    .line 537
    :cond_0
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v0, :cond_1

    .line 538
    const-string v0, "Unauthorized GluGoogleIAP service creation blocked."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 543
    :cond_1
    :goto_0
    return-void

    .line 542
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/glu/android/GluGoogleIAP;->handleCommand(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public querySingleProduct(Ljava/lang/String;)V
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lcom/glu/android/GluGoogleIAP;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "realProductId":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/glu/android/GluGoogleIAP;->buyProduct(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public restoreUnclaimedItems()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public setButtonCenterXY(I)V
    .locals 0
    .param p1, "xy"    # I

    .prologue
    .line 372
    return-void
.end method

.method public setButtonVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 377
    return-void
.end method

.method public tick(I)V
    .locals 6
    .param p1, "deltaMS"    # I

    .prologue
    const v5, 0xfacade

    .line 236
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->m_pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 237
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->runPendingRequests()V

    .line 241
    :cond_0
    :goto_0
    sget-object v2, Lcom/glu/android/GluGoogleIAP;->ITEM_MANAGEMENT_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 242
    :try_start_0
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_purchaseTimeoutTimer:I

    if-eq v1, v5, :cond_1

    .line 244
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_purchaseTimeoutTimer:I

    sub-int/2addr v1, p1

    sput v1, Lcom/glu/android/GluGoogleIAP;->m_purchaseTimeoutTimer:I

    .line 245
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GIAP Success. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    sget-object v4, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->giveUserCurrentItem()V

    .line 266
    :cond_1
    :goto_1
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemGiveTimer:I

    if-eq v1, v5, :cond_3

    .line 268
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemGiveTimer:I

    sub-int/2addr v1, p1

    sput v1, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemGiveTimer:I

    .line 269
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemGiveTimer:I

    if-gtz v1, :cond_3

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "itemsAwarded":Z
    :goto_2
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->m_purchasedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    invoke-virtual {v1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->hasUnhandledItems()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->m_purchasedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->tryGivingOneItem(Z)Z

    move-result v1

    if-nez v1, :cond_b

    .line 281
    :cond_2
    const v1, 0xea60

    sput v1, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemGiveTimer:I

    .line 283
    if-eqz v0, :cond_3

    .line 284
    const/16 v1, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/glu/android/GluJNI;->iapCallbackEvent(II[B)I

    .line 287
    .end local v0    # "itemsAwarded":Z
    :cond_3
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemRemoveTimer:I

    if-eq v1, v5, :cond_6

    .line 289
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemRemoveTimer:I

    sub-int/2addr v1, p1

    sput v1, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemRemoveTimer:I

    .line 290
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemRemoveTimer:I

    if-gtz v1, :cond_5

    .line 292
    :cond_4
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->m_refundedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    invoke-virtual {v1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->hasUnhandledItems()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->m_refundedItemLog:Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;

    invoke-virtual {v1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->tryRefundingOneItem()Z

    move-result v1

    if-nez v1, :cond_4

    .line 296
    const v1, 0xea60

    sput v1, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemRemoveTimer:I

    .line 301
    :cond_5
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemRemoveTimer:I

    if-gtz v1, :cond_6

    .line 302
    const v1, 0xfacade

    sput v1, Lcom/glu/android/GluGoogleIAP;->m_asynchronousItemRemoveTimer:I

    .line 304
    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    return-void

    .line 238
    :cond_7
    sget-boolean v1, Lcom/glu/android/GluGoogleIAP;->m_restoredTransactions:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/glu/android/GluGoogleIAP;->m_billingSupported:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/glu/android/GluGoogleIAP;->m_billingVerified:Z

    if-eqz v1, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->managedCallRestoreTransactions()V

    goto/16 :goto_0

    .line 250
    :cond_8
    :try_start_1
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GIAP Failure. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    sget-object v4, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->currentItemFailed()V

    goto/16 :goto_1

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 255
    :cond_9
    :try_start_2
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_purchasingState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_a

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GIAP Cancelled. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    sget-object v4, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->cancelCurrentItem()V

    goto/16 :goto_1

    .line 260
    :cond_a
    sget v1, Lcom/glu/android/GluGoogleIAP;->m_purchaseTimeoutTimer:I

    if-gtz v1, :cond_1

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase timed out. Will need to apply items asynchronously later if applicable. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    sget-object v4, Lcom/glu/android/GluGoogleIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP;->currentItemTimeout()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 279
    .restart local v0    # "itemsAwarded":Z
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_2
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 499
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/glu/android/GluGoogleIAP;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    goto :goto_0
.end method
