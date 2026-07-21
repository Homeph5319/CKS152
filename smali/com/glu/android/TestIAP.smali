.class public Lcom/glu/android/TestIAP;
.super Ljava/lang/Object;
.source "TestIAP.java"

# interfaces
.implements Lcom/glu/android/IAP$IAPObject;


# static fields
.field public static CURRENT_TEST:I = 0x0

.field private static final FAILURE_CLIENT_CONDITION_NOT_SATISFIED:I = 0x5

.field private static final FAILURE_NETWORK_REFUSED_PURCHASE:I = 0x2

.field private static final FAILURE_NETWORK_TIMEOUT:I = 0x3

.field private static final FAILURE_NOT_AVAILALE_IN_REGION:I = 0x6

.field private static final FAILURE_NO_CONNECTION:I = 0x4

.field public static SIMULATE_RESTORE:Z = false

.field private static final SUCCESS:I = 0x1

.field public static TEST_ASYNCHRONOUS_IAP_ITEM:Ljava/lang/String; = null

.field public static TEST_ASYNCHRONOUS_IAP_ITEM_SECOND:Ljava/lang/String; = null

.field private static final USER_CANCELLED:I = 0x7

.field private static m_asynchCount:I

.field private static m_asynchTimer:I


# instance fields
.field private final IAP_TEST_DECORATION:Ljava/lang/String;

.field private NETWORK_COMMUNICATION_TIMER:I

.field private final PURCHASE_COMPLETION_LOCK:Ljava/lang/Object;

.field private final TAG:Ljava/lang/String;

.field private m_fakeDescriptions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_fakeNames:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_fakePrices:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_fakeValidities:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_imaginaryQueryProductThread:Ljava/lang/Thread;

.field private m_invalidProductDoneAlready:Z

.field private m_isInit:Z

.field private m_networkCommunicationTimer:I

.field private m_pretendToBuyAProductThread:Ljava/lang/Thread;

.field private m_purchaseTimeoutTimer:I

.field private m_purchasingState:I

.field private m_savedProductId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 41
    sput-object v0, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM:Ljava/lang/String;

    .line 42
    sput-object v0, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM_SECOND:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/glu/android/TestIAP;->CURRENT_TEST:I

    .line 44
    sput-boolean v1, Lcom/glu/android/TestIAP;->SIMULATE_RESTORE:Z

    .line 266
    sput v1, Lcom/glu/android/TestIAP;->m_asynchTimer:I

    .line 267
    sput v1, Lcom/glu/android/TestIAP;->m_asynchCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_fakePrices:Ljava/util/Hashtable;

    .line 70
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_fakeNames:Ljava/util/Hashtable;

    .line 71
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_fakeDescriptions:Ljava/util/Hashtable;

    .line 72
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_fakeValidities:Ljava/util/Hashtable;

    .line 74
    iput v1, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    .line 107
    iput-boolean v1, p0, Lcom/glu/android/TestIAP;->m_invalidProductDoneAlready:Z

    .line 118
    const/16 v0, 0x1388

    iput v0, p0, Lcom/glu/android/TestIAP;->NETWORK_COMMUNICATION_TIMER:I

    .line 119
    const v0, 0xfacade

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    .line 120
    iput v1, p0, Lcom/glu/android/TestIAP;->m_networkCommunicationTimer:I

    .line 127
    iput-object v2, p0, Lcom/glu/android/TestIAP;->m_pretendToBuyAProductThread:Ljava/lang/Thread;

    .line 128
    iput-object v2, p0, Lcom/glu/android/TestIAP;->m_imaginaryQueryProductThread:Ljava/lang/Thread;

    .line 259
    iput-boolean v1, p0, Lcom/glu/android/TestIAP;->m_isInit:Z

    .line 269
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/glu/android/TestIAP;->PURCHASE_COMPLETION_LOCK:Ljava/lang/Object;

    .line 474
    iput-object v2, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    .line 516
    const-string v0, "IAPTest"

    iput-object v0, p0, Lcom/glu/android/TestIAP;->TAG:Ljava/lang/String;

    .line 517
    const-string v0, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~IAP Test Bed~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    iput-object v0, p0, Lcom/glu/android/TestIAP;->IAP_TEST_DECORATION:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "!!! remove my instantiation !!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/glu/android/TestIAP;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/TestIAP;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/glu/android/TestIAP;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/glu/android/TestIAP;I)I
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/TestIAP;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    return p1
.end method

.method static synthetic access$200(Lcom/glu/android/TestIAP;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/TestIAP;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/glu/android/TestIAP;->PURCHASE_COMPLETION_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/glu/android/TestIAP;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/TestIAP;

    .prologue
    .line 28
    iget v0, p0, Lcom/glu/android/TestIAP;->m_networkCommunicationTimer:I

    return v0
.end method

.method static synthetic access$400(Lcom/glu/android/TestIAP;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/TestIAP;

    .prologue
    .line 28
    iget v0, p0, Lcom/glu/android/TestIAP;->NETWORK_COMMUNICATION_TIMER:I

    return v0
.end method

.method static synthetic access$502(Lcom/glu/android/TestIAP;I)I
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/TestIAP;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    return p1
.end method

.method static synthetic access$600(Lcom/glu/android/TestIAP;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/TestIAP;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/glu/android/TestIAP;->m_pretendToBuyAProductThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$602(Lcom/glu/android/TestIAP;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/TestIAP;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/glu/android/TestIAP;->m_pretendToBuyAProductThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$702(Lcom/glu/android/TestIAP;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/TestIAP;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/glu/android/TestIAP;->m_imaginaryQueryProductThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private assertIsInit()V
    .locals 2

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/glu/android/TestIAP;->m_isInit:Z

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempted to perform a buy related function without initting IAP.\nYou need to call glujni_iapEvent(ANDROID_IAP_EVENT_INIT, 0, 0, 0) before doing this."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    const-string v0, "Init assertion successful."

    invoke-direct {p0, v0}, Lcom/glu/android/TestIAP;->log(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private asynchronousGiveUserItem(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "realProductId"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 471
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

    .line 466
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

.method private cancelCurrentItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 485
    const/4 v1, 0x1

    sget-object v0, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    .line 487
    const v0, 0xfacade

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    .line 488
    iput v3, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    .line 489
    return-void
.end method

.method private currentItemFailed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 493
    const/4 v1, 0x4

    sget-object v0, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    .line 495
    const v0, 0xfacade

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    .line 496
    iput v3, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    .line 497
    return-void
.end method

.method private currentItemNotInRegion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 509
    const/4 v1, 0x7

    sget-object v0, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    .line 511
    const v0, 0xfacade

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    .line 512
    iput v3, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    .line 513
    return-void
.end method

.method private currentItemTimeout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 501
    const/16 v1, 0x8

    sget-object v0, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    .line 503
    const v0, 0xfacade

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    .line 504
    iput v3, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    .line 505
    return-void
.end method

.method private getFakeDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/glu/android/TestIAP;->m_fakeDescriptions:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/glu/android/TestIAP;->m_fakeDescriptions:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It\'s a shiny "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/glu/android/GluUtil;->stripPackagePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". It\'s really nice...and shiny...BUY IT!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_0
    return-object v0
.end method

.method private getFakeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/glu/android/TestIAP;->m_fakeNames:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/glu/android/TestIAP;->m_fakeNames:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shiny "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/glu/android/GluUtil;->stripPackagePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_0
    return-object v0
.end method

.method private getFakePrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/glu/android/TestIAP;->m_fakePrices:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/glu/android/TestIAP;->m_fakePrices:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x63

    invoke-static {v3, v4}, Lcom/glu/android/GluUtil;->getRandomInt(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".99"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_0
    return-object v0
.end method

.method private getFakeValidity(Ljava/lang/String;)Z
    .locals 5
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "ret":Ljava/lang/Boolean;
    :goto_0
    iget-object v1, p0, Lcom/glu/android/TestIAP;->m_fakeValidities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .restart local v0    # "ret":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 112
    iget-object v3, p0, Lcom/glu/android/TestIAP;->m_fakeValidities:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Boolean;

    invoke-static {}, Lcom/glu/android/GluUtil;->getRandomBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/glu/android/TestIAP;->m_invalidProductDoneAlready:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    invoke-direct {v4, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v3, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    iput-boolean v2, p0, Lcom/glu/android/TestIAP;->m_invalidProductDoneAlready:Z

    .line 115
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private giveUserCurrentItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 477
    const/4 v1, 0x2

    sget-object v0, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    .line 479
    const v0, 0xfacade

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    .line 480
    iput v3, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    .line 481
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 520
    const-string v0, "IAPTest"

    const-string v1, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~IAP Test Bed~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v0, "IAPTest"

    invoke-static {v0, p1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v0, "IAPTest"

    const-string v1, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~IAP Test Bed~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method private setupFakeCommunication()V
    .locals 2

    .prologue
    .line 123
    const/16 v0, 0xbb8

    const/16 v1, 0x1b58

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->getRandomInt(II)I

    move-result v0

    iput v0, p0, Lcom/glu/android/TestIAP;->NETWORK_COMMUNICATION_TIMER:I

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/TestIAP;->m_networkCommunicationTimer:I

    .line 125
    return-void
.end method

.method public static testIdToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "testId"    # I

    .prologue
    .line 48
    packed-switch p0, :pswitch_data_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    const-string v0, "SUCCESS"

    goto :goto_0

    .line 53
    :pswitch_1
    const-string v0, "FAILURE_NETWORK_REFUSED_PURCHASE"

    goto :goto_0

    .line 55
    :pswitch_2
    const-string v0, "FAILURE_NETWORK_TIMEOUT"

    goto :goto_0

    .line 57
    :pswitch_3
    const-string v0, "FAILURE_NO_CONNECTION"

    goto :goto_0

    .line 59
    :pswitch_4
    const-string v0, "FAILURE_CLIENT_CONDITION_NOT_SATISFIED"

    goto :goto_0

    .line 61
    :pswitch_5
    const-string v0, "FAILURE_NOT_AVAILALE_IN_REGION"

    goto :goto_0

    .line 63
    :pswitch_6
    const-string v0, "USER_CANCELLED"

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public buyProduct(Ljava/lang/String;)V
    .locals 3
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Lcom/glu/android/TestIAP;->assertIsInit()V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/glu/android/TestIAP;->giveAsynchronousItems(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Lcom/glu/android/TestIAP;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    .line 146
    const v0, 0xea60

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    .line 147
    iput v1, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    .line 149
    invoke-direct {p0}, Lcom/glu/android/TestIAP;->setupFakeCommunication()V

    .line 151
    iget-object v1, p0, Lcom/glu/android/TestIAP;->PURCHASE_COMPLETION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/glu/android/TestIAP;->m_networkCommunicationTimer:I

    .line 153
    sget v0, Lcom/glu/android/TestIAP;->CURRENT_TEST:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 155
    const-string v0, "Simulated purchase: Immediate failure (client dislikes something)"

    invoke-direct {p0, v0}, Lcom/glu/android/TestIAP;->log(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x2

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    .line 159
    monitor-exit v1

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 161
    :cond_1
    :try_start_1
    sget v0, Lcom/glu/android/TestIAP;->CURRENT_TEST:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 163
    const/4 v0, 0x4

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    .line 164
    monitor-exit v1

    goto :goto_0

    .line 166
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    new-instance v0, Lcom/glu/android/TestIAP$1;

    invoke-direct {v0, p0, p1}, Lcom/glu/android/TestIAP$1;-><init>(Lcom/glu/android/TestIAP;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_pretendToBuyAProductThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final forceAsynchronousPurchaseAward()Z
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/glu/android/TestIAP;->giveAsynchronousItems(Z)Z

    move-result v0

    return v0
.end method

.method public getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # I
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-virtual {p0, p2}, Lcom/glu/android/TestIAP;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "realProductId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 343
    .local v1, "ret":Ljava/lang/String;
    const/16 v2, 0x65

    if-ne p1, v2, :cond_2

    .line 344
    move-object v1, v0

    .line 352
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const-string v1, "^"

    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 345
    .restart local v1    # "ret":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x66

    if-ne p1, v2, :cond_3

    .line 346
    invoke-direct {p0, p2}, Lcom/glu/android/TestIAP;->getFakeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 347
    :cond_3
    const/16 v2, 0x67

    if-ne p1, v2, :cond_4

    .line 348
    invoke-direct {p0, p2}, Lcom/glu/android/TestIAP;->getFakeDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 349
    :cond_4
    const/16 v2, 0x68

    if-ne p1, v2, :cond_0

    .line 350
    invoke-direct {p0, p2}, Lcom/glu/android/TestIAP;->getFakePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    const-string v0, "en"

    const-string v1, "US"

    invoke-static {v0, v1}, Lcom/glu/android/IAP;->getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIAPId()I
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public getProductType(Ljava/lang/String;)I
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/glu/android/TestIAP;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "realProductId":Ljava/lang/String;
    const/4 v1, 0x1

    return v1
.end method

.method public getRealProductId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 251
    return-object p1
.end method

.method public giveAsynchronousItems(Z)Z
    .locals 4
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 311
    sget-object v1, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 313
    sget-object v1, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/glu/android/TestIAP;->asynchronousGiveUserItem(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asynchronous give item successful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/glu/android/TestIAP;->log(Ljava/lang/String;)V

    .line 316
    sput-object v3, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM:Ljava/lang/String;

    .line 317
    sget-object v1, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM_SECOND:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 319
    sget-object v1, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM_SECOND:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/glu/android/TestIAP;->asynchronousGiveUserItem(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asynchronous give item (second in a row) successful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM_SECOND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/glu/android/TestIAP;->log(Ljava/lang/String;)V

    .line 323
    :cond_0
    sput-object v3, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM_SECOND:Ljava/lang/String;

    .line 325
    :cond_1
    const/16 v1, 0x9

    invoke-static {v1, v0, v3}, Lcom/glu/android/GluJNI;->iapCallbackEvent(II[B)I

    .line 326
    const/4 v0, 0x1

    .line 335
    :cond_2
    return v0

    .line 321
    :cond_3
    if-eqz p1, :cond_0

    .line 322
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Second item failed. Force is set to true. Real IAP will throw a RuntimeException here as well."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asynchronous give item failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/glu/android/TestIAP;->TEST_ASYNCHRONOUS_IAP_ITEM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/glu/android/TestIAP;->log(Ljava/lang/String;)V

    .line 331
    if-eqz p1, :cond_2

    .line 332
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Force is set to true. Real IAP will throw a RuntimeException here as well."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasInventoryLoaded()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 262
    const-string v0, "init (test IAP)"

    invoke-direct {p0, v0}, Lcom/glu/android/TestIAP;->log(Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/TestIAP;->m_isInit:Z

    .line 264
    return-void
.end method

.method public final isGoogleServiceConnected()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public isIAPConnected()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    return v0
.end method

.method public isIAPSupported()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public final isItemAvailable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public isProductValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/glu/android/TestIAP;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "realProductId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/glu/android/TestIAP;->getFakeValidity(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onAppStart()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public onAppStop()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public onIAPDestroy()V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public final onInventoryFailure()V
    .locals 0

    .prologue
    .line 458
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
    .line 457
    .local p1, "inventory":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/glu/android/IAP$Inventory;>;"
    return-void
.end method

.method public querySingleProduct(Ljava/lang/String;)V
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/glu/android/TestIAP;->assertIsInit()V

    .line 409
    invoke-virtual {p0, p1}, Lcom/glu/android/TestIAP;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_savedProductId:Ljava/lang/String;

    .line 410
    const v0, 0xea60

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    .line 411
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    .line 415
    invoke-direct {p0}, Lcom/glu/android/TestIAP;->setupFakeCommunication()V

    .line 417
    new-instance v0, Lcom/glu/android/TestIAP$2;

    invoke-direct {v0, p0, p1}, Lcom/glu/android/TestIAP$2;-><init>(Lcom/glu/android/TestIAP;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_imaginaryQueryProductThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 447
    return-void
.end method

.method public restoreUnclaimedItems()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public setButtonCenterXY(I)V
    .locals 0
    .param p1, "xy"    # I

    .prologue
    .line 393
    return-void
.end method

.method public setButtonVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 398
    return-void
.end method

.method public tick(I)V
    .locals 4
    .param p1, "deltaMS"    # I

    .prologue
    const v3, 0xfacade

    .line 273
    iget-object v1, p0, Lcom/glu/android/TestIAP;->PURCHASE_COMPLETION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget v0, p0, Lcom/glu/android/TestIAP;->m_networkCommunicationTimer:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/TestIAP;->m_networkCommunicationTimer:I

    .line 276
    iget v0, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 277
    invoke-direct {p0}, Lcom/glu/android/TestIAP;->giveUserCurrentItem()V

    .line 299
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    sget v0, Lcom/glu/android/TestIAP;->m_asynchTimer:I

    const v1, 0xea60

    div-int/2addr v0, v1

    sget v1, Lcom/glu/android/TestIAP;->m_asynchCount:I

    if-ne v0, v1, :cond_1

    .line 303
    sget v0, Lcom/glu/android/TestIAP;->m_asynchCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/glu/android/TestIAP;->m_asynchCount:I

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/glu/android/TestIAP;->giveAsynchronousItems(Z)Z

    .line 306
    :cond_1
    sget v0, Lcom/glu/android/TestIAP;->m_asynchTimer:I

    add-int/2addr v0, p1

    sput v0, Lcom/glu/android/TestIAP;->m_asynchTimer:I

    .line 307
    return-void

    .line 278
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 279
    invoke-direct {p0}, Lcom/glu/android/TestIAP;->currentItemFailed()V

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 280
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 281
    invoke-direct {p0}, Lcom/glu/android/TestIAP;->cancelCurrentItem()V

    goto :goto_0

    .line 282
    :cond_4
    iget v0, p0, Lcom/glu/android/TestIAP;->m_purchasingState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 283
    invoke-direct {p0}, Lcom/glu/android/TestIAP;->currentItemNotInRegion()V

    goto :goto_0

    .line 284
    :cond_5
    iget v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    if-eq v0, v3, :cond_0

    .line 286
    iget v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    .line 288
    iget v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    if-gtz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/glu/android/TestIAP;->m_pretendToBuyAProductThread:Ljava/lang/Thread;

    if-eqz v0, :cond_7

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_pretendToBuyAProductThread:Ljava/lang/Thread;

    .line 295
    :cond_6
    :goto_1
    const v0, 0xfacade

    iput v0, p0, Lcom/glu/android/TestIAP;->m_purchaseTimeoutTimer:I

    .line 296
    invoke-direct {p0}, Lcom/glu/android/TestIAP;->currentItemTimeout()V

    goto :goto_0

    .line 292
    :cond_7
    iget-object v0, p0, Lcom/glu/android/TestIAP;->m_imaginaryQueryProductThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/TestIAP;->m_imaginaryQueryProductThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
