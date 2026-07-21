.class public Lcom/glu/android/IAP;
.super Ljava/lang/Object;
.source "IAP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/IAP$Inventory;,
        Lcom/glu/android/IAP$DummyIAP;,
        Lcom/glu/android/IAP$IAPView;,
        Lcom/glu/android/IAP$IAPObject;
    }
.end annotation


# static fields
.field public static final ANDROID_PRODUCT_TYPE_CONSUMABLE:I = 0x1

.field public static final ANDROID_PRODUCT_TYPE_NON_CONSUMABLE:I = 0x2

.field public static final IAP_CALLBACK_ADD_ITEM_ASYNCHRONOUSLY:I = 0x5

.field public static final IAP_CALLBACK_ITEM_NOT_AVAILABLE_IN_REGION:I = 0x7

.field public static final IAP_CALLBACK_PRODUCT_DATA_RECEIVED:I = 0x3

.field public static final IAP_CALLBACK_REMOVE_ITEM_ASYNCHRONOUSLY:I = 0x6

.field public static final IAP_CALLBACK_TRANSACTION_CANCELLED:I = 0x1

.field public static final IAP_CALLBACK_TRANSACTION_COMPLETED:I = 0x2

.field public static final IAP_CALLBACK_TRANSACTION_FAILED:I = 0x4

.field public static final IAP_CALLBACK_TRANSACTION_NOTIFY_USER_ASYNCHRONOUS_ITEMS_AWARDED:I = 0x9

.field public static final IAP_CALLBACK_TRANSACTION_TIMEOUT:I = 0x8

.field public static final IAP_EVENT_BUY_PRODUCT:I = 0x2

.field public static final IAP_EVENT_DOES_IAP_HAVE_BUTTON:I = 0x9

.field public static final IAP_EVENT_FORCE_ASYNCHRONOUS_PURCHASE_AWARD:I = 0x11

.field public static final IAP_EVENT_GET_PRODUCT_TYPE:I = 0x7

.field public static final IAP_EVENT_GET_TRANSACTION_STATE:I = 0x5

.field public static final IAP_EVENT_HAS_REMOTE_INVENTORY_LOADED:I = 0xf

.field public static final IAP_EVENT_INIT:I = 0x4

.field public static final IAP_EVENT_IS_GOOGLE_SERVICE_AVAILABLE:I = 0x10

.field public static final IAP_EVENT_IS_IAP_CONNECTED:I = 0xc

.field public static final IAP_EVENT_IS_IAP_SUPPORTED:I = 0x1

.field public static final IAP_EVENT_IS_ITEM_SUPPORTED:I = 0xe

.field public static final IAP_EVENT_IS_PRODUCT_VALID:I = 0x8

.field public static final IAP_EVENT_QUERY_SINGLE_PRODUCT:I = 0xd

.field public static final IAP_EVENT_REQUEST_ITEM_CURRENCY_SYMBOL:I = 0x69

.field public static final IAP_EVENT_REQUEST_ITEM_PRODUCT_DESCRIPTION:I = 0x67

.field public static final IAP_EVENT_REQUEST_ITEM_PRODUCT_NAME:I = 0x66

.field public static final IAP_EVENT_REQUEST_ITEM_PRODUCT_PRICE:I = 0x68

.field public static final IAP_EVENT_REQUEST_ITEM_REAL_PRODUCT_ID:I = 0x65

.field public static final IAP_EVENT_RESTORE_UNCLAIMED_ITEMS:I = 0x3

.field public static final IAP_EVENT_SET_BUTTON_CENTER_XY:I = 0xa

.field public static final IAP_EVENT_SET_BUTTON_VISIBLE:I = 0xb

.field public static final IAP_EVENT_TICK:I = 0x6

.field public static final IAP_MASK_ALL:J = 0xfL

.field public static final IAP_MASK_BANGO:J = 0x10L

.field public static final IAP_MASK_BOKU:J = 0x8L

.field public static final IAP_MASK_GOOGLE:J = 0x2L

.field public static final IAP_MASK_NONE:J = 0x1L

.field public static final IAP_MASK_PAYPAL:J = 0x4L

.field public static final IAP_MASK_VERIZON:J = 0x40L

.field public static final IAP_MASK_VODAFONE:J = 0x20L

.field public static final IAP_PROVIDER_BANGO:I = 0x4

.field public static final IAP_PROVIDER_BOKU:I = 0x3

.field public static final IAP_PROVIDER_COUNT:I = 0x4

.field public static final IAP_PROVIDER_GOOGLE:I = 0x1

.field public static final IAP_PROVIDER_NONE:I = 0x0

.field public static final IAP_PROVIDER_PAYPAL:I = 0x2

.field public static final IAP_PROVIDER_VERIZON:I = 0x6

.field public static final IAP_PROVIDER_VODAFONE:I = 0x5

.field public static final IAP_SUBVIEW_COUNT:I = 0x2

.field public static final IAP_SUBVIEW_DIALOG:I = 0x1

.field public static final IAP_SUBVIEW_PAYPAL_BUTTON:I = 0x0

.field private static JSON_PROPERTY_GAME:Ljava/lang/String; = null

.field private static JSON_PROPERTY_MARKET:Ljava/lang/String; = null

.field private static JSON_PROPERTY_PRODUCTS:Ljava/lang/String; = null

.field private static JSON_PROPERTY_PRODUCTS_NAME:Ljava/lang/String; = null

.field private static JSON_PROPERTY_PRODUCTS_PRICE:Ljava/lang/String; = null

.field private static JSON_PROPERTY_PRODUCTS_PRODUCT:Ljava/lang/String; = null

.field public static final TRANSACTION_COMPLETE:I = 0x0

.field public static final TRANSACTION_NONE:I = -0x1

.field public static instance:Lcom/glu/android/IAP$IAPObject;

.field private static m_getDataFromServerThread:Ljava/lang/Thread;

.field public static m_realToNativeProductIdHash:Ljava/util/Hashtable;
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

.field public static sm_transactionState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    sput-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    .line 74
    const/4 v0, -0x1

    sput v0, Lcom/glu/android/IAP;->sm_transactionState:I

    .line 92
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    .line 715
    sput-object v1, Lcom/glu/android/IAP;->m_getDataFromServerThread:Ljava/lang/Thread;

    .line 738
    const-string v0, "game"

    sput-object v0, Lcom/glu/android/IAP;->JSON_PROPERTY_GAME:Ljava/lang/String;

    .line 739
    const-string v0, "market"

    sput-object v0, Lcom/glu/android/IAP;->JSON_PROPERTY_MARKET:Ljava/lang/String;

    .line 740
    const-string v0, "products"

    sput-object v0, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS:Ljava/lang/String;

    .line 741
    const-string v0, "product"

    sput-object v0, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_PRODUCT:Ljava/lang/String;

    .line 742
    const-string v0, "price_us"

    sput-object v0, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_PRICE:Ljava/lang/String;

    .line 743
    const-string v0, "name"

    sput-object v0, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 21
    invoke-static {p0}, Lcom/glu/android/IAP;->doGetDataFromServer(I)V

    return-void
.end method

.method static synthetic access$102(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 21
    sput-object p0, Lcom/glu/android/IAP;->m_getDataFromServerThread:Ljava/lang/Thread;

    return-object p0
.end method

.method private static constructURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "providerName"    # Ljava/lang/String;

    .prologue
    .line 735
    const-string v0, "http://www.pamelabowman.org/gunbros.txt"

    return-object v0
.end method

.method public static createIAPInstance()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 241
    sput-object v4, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    .line 243
    const/4 v2, -0x1

    sput v2, Lcom/glu/android/IAP;->sm_transactionState:I

    .line 245
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v2, v2, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    const-string v3, "Glu-No-IAP"

    invoke-virtual {v2, v3}, Lcom/glu/android/CaseInsensitiveHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "noIAP":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    :cond_0
    return-void

    .line 255
    :cond_1
    sget-boolean v2, Lcom/glu/android/Settings;->MARKET_ENABLED:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget v2, v2, Lcom/glu/android/GameLet;->m_platformVersionI:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 257
    const-string v2, "payment: Google"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 258
    new-instance v2, Lcom/glu/android/GluGoogleIAP;

    invoke-direct {v2, v4}, Lcom/glu/android/GluGoogleIAP;-><init>(Lcom/glu/android/IAP;)V

    sput-object v2, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    .line 288
    :goto_0
    sget-object v2, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    if-eqz v2, :cond_0

    .line 290
    sget-object v2, Lcom/glu/android/ModuleSettings;->IAP_PROVIDER_MASKS:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 291
    .local v0, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/glu/android/IAP;->initSingleProduct(Ljava/lang/String;)V

    goto :goto_1

    .line 260
    .end local v0    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    sget-boolean v2, Lcom/glu/android/Settings;->BOKU_ENABLED:Z

    if-eqz v2, :cond_3

    .line 262
    const-string v2, "payment: BOKU"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 263
    new-instance v2, Lcom/glu/android/GluBokuIAP;

    invoke-direct {v2}, Lcom/glu/android/GluBokuIAP;-><init>()V

    sput-object v2, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    goto :goto_0

    .line 265
    :cond_3
    sget-boolean v2, Lcom/glu/android/Settings;->BANGO_ENABLED:Z

    if-eqz v2, :cond_4

    .line 267
    const-string v2, "payment: Bongo [TODO]"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_4
    sget-boolean v2, Lcom/glu/android/Settings;->VERIZON_IAP_ENABLED:Z

    if-eqz v2, :cond_5

    .line 271
    const-string v2, "payment: Verizon IAP [TODO]"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_5
    sget-boolean v2, Lcom/glu/android/Settings;->VODAFONE_IAP_ENABLED:Z

    if-eqz v2, :cond_6

    .line 275
    const-string v2, "payment: Verizon IAP [TODO]"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_6
    sget-boolean v2, Lcom/glu/android/Settings;->PAYPAL_ENABLED:Z

    if-eqz v2, :cond_7

    .line 279
    const-string v2, "payment: PayPal"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 280
    new-instance v2, Lcom/glu/android/GluPaypal;

    invoke-direct {v2}, Lcom/glu/android/GluPaypal;-><init>()V

    sput-object v2, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    goto :goto_0

    .line 284
    :cond_7
    const-string v2, "payment not supported"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static destroyIAPInstance()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    const/4 v0, -0x1

    sput v0, Lcom/glu/android/IAP;->sm_transactionState:I

    .line 300
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v0}, Lcom/glu/android/IAP$IAPObject;->onIAPDestroy()V

    .line 303
    :cond_0
    sput-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    .line 304
    sput-object v1, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    .line 305
    sput-object v1, Lcom/glu/android/IAP;->m_getDataFromServerThread:Ljava/lang/Thread;

    .line 306
    return-void
.end method

.method public static displayAsyncFailureMessage()V
    .locals 2

    .prologue
    .line 883
    const v0, 0x7f070033

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/glu/android/NonModalAlertView;->queueAlert(Ljava/lang/String;I)V

    .line 884
    return-void
.end method

.method public static displayAsyncSuccessMessage()V
    .locals 2

    .prologue
    .line 878
    const v0, 0x7f070032

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lcom/glu/android/NonModalAlertView;->queueAlert(Ljava/lang/String;I)V

    .line 879
    return-void
.end method

.method private static doGetDataFromServer(I)V
    .locals 4
    .param p0, "iapVariant"    # I

    .prologue
    .line 747
    :try_start_0
    invoke-static {p0}, Lcom/glu/android/IAP;->iapVariantToGluServerName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/IAP;->constructURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getByteArrayContentsFromURL(Ljava/lang/String;)[B

    move-result-object v1

    .line 749
    .local v1, "jsonBA":[B
    invoke-static {v1, p0}, Lcom/glu/android/IAP;->parseJSONData([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    .end local v1    # "jsonBA":[B
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse inventory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 752
    sget-object v2, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v2}, Lcom/glu/android/IAP$IAPObject;->onInventoryFailure()V

    goto :goto_0
.end method

.method private static doSanityTestOnServerData(Lcom/glu/android/MixedHash;I)Ljava/lang/String;
    .locals 5
    .param p0, "props"    # Lcom/glu/android/MixedHash;
    .param p1, "iapVariant"    # I

    .prologue
    const/4 v4, 0x0

    .line 831
    if-nez p0, :cond_0

    .line 832
    const-string v2, "props is null"

    .line 862
    :goto_0
    return-object v2

    .line 833
    :cond_0
    sget-object v2, Lcom/glu/android/IAP;->JSON_PROPERTY_GAME:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_GAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " prop is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 835
    :cond_1
    sget-object v2, Lcom/glu/android/IAP;->JSON_PROPERTY_GAME:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bounty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_GAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is wrong. expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bounty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_GAME:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 837
    :cond_2
    sget-object v2, Lcom/glu/android/IAP;->JSON_PROPERTY_MARKET:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_MARKET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " prop is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 839
    :cond_3
    sget-object v2, Lcom/glu/android/IAP;->JSON_PROPERTY_MARKET:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/glu/android/IAP;->iapVariantToGluServerName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_MARKET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is wrong. expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/glu/android/IAP;->iapVariantToGluServerName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_MARKET:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 842
    :cond_4
    sget-object v2, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/glu/android/MixedHash;->getMixedHashVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 844
    .local v1, "products":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/glu/android/MixedHash;>;"
    if-nez v1, :cond_5

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " prop is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 846
    :cond_5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on array"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 848
    :cond_6
    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/MixedHash;

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first product property \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 850
    :cond_7
    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/MixedHash;

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_PRICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first product property \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_PRICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 852
    :cond_8
    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/MixedHash;

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first product property \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 857
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 858
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/MixedHash;

    sget-object v3, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_PRICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has negative value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 857
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 862
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static doesIAPHaveButton()Z
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    instance-of v0, v0, Lcom/glu/android/GluPaypal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enablePropertiesDecidedVariant(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 120
    if-nez p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/glu/android/IAP;->iapVariantToGluServerName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    sput-boolean v1, Lcom/glu/android/Settings;->MARKET_ENABLED:Z

    .line 125
    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glu/android/IAP;->iapVariantToGluServerName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    sput-boolean v1, Lcom/glu/android/Settings;->PAYPAL_ENABLED:Z

    .line 127
    :cond_3
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/glu/android/IAP;->iapVariantToGluServerName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 128
    sput-boolean v1, Lcom/glu/android/Settings;->BOKU_ENABLED:Z

    .line 129
    :cond_4
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/glu/android/IAP;->iapVariantToGluServerName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 130
    sput-boolean v1, Lcom/glu/android/Settings;->BANGO_ENABLED:Z

    .line 131
    :cond_5
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/glu/android/IAP;->iapVariantToGluServerName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 132
    sput-boolean v1, Lcom/glu/android/Settings;->VODAFONE_IAP_ENABLED:Z

    .line 133
    :cond_6
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/glu/android/IAP;->iapVariantToGluServerName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sput-boolean v1, Lcom/glu/android/Settings;->VERIZON_IAP_ENABLED:Z

    goto :goto_0
.end method

.method public static eventToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "event"    # I

    .prologue
    .line 147
    sparse-switch p0, :sswitch_data_0

    .line 189
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

    .line 150
    :sswitch_0
    const-string v0, "IAP_EVENT_IS_IAP_SUPPORTED"

    goto :goto_0

    .line 152
    :sswitch_1
    const-string v0, "IAP_EVENT_BUY_PRODUCT"

    goto :goto_0

    .line 154
    :sswitch_2
    const-string v0, "IAP_EVENT_RESTORE_UNCLAIMED_ITEMS"

    goto :goto_0

    .line 156
    :sswitch_3
    const-string v0, "IAP_EVENT_INIT"

    goto :goto_0

    .line 158
    :sswitch_4
    const-string v0, "IAP_EVENT_GET_TRANSACTION_STATE"

    goto :goto_0

    .line 160
    :sswitch_5
    const-string v0, "IAP_EVENT_TICK"

    goto :goto_0

    .line 162
    :sswitch_6
    const-string v0, "IAP_EVENT_GET_PRODUCT_TYPE"

    goto :goto_0

    .line 164
    :sswitch_7
    const-string v0, "IAP_EVENT_IS_PRODUCT_VALID"

    goto :goto_0

    .line 166
    :sswitch_8
    const-string v0, "IAP_EVENT_DOES_IAP_HAVE_BUTTON"

    goto :goto_0

    .line 168
    :sswitch_9
    const-string v0, "IAP_EVENT_SET_BUTTON_CENTER_XY"

    goto :goto_0

    .line 170
    :sswitch_a
    const-string v0, "IAP_EVENT_SET_BUTTON_VISIBLE"

    goto :goto_0

    .line 172
    :sswitch_b
    const-string v0, "IAP_EVENT_IS_IAP_CONNECTED"

    goto :goto_0

    .line 174
    :sswitch_c
    const-string v0, "IAP_EVENT_QUERY_SINGLE_PRODUCT"

    goto :goto_0

    .line 176
    :sswitch_d
    const-string v0, "IAP_EVENT_IS_ITEM_SUPPORTED"

    goto :goto_0

    .line 178
    :sswitch_e
    const-string v0, "IAP_EVENT_REQUEST_ITEM_REAL_PRODUCT_ID"

    goto :goto_0

    .line 180
    :sswitch_f
    const-string v0, "IAP_EVENT_REQUEST_ITEM_PRODUCT_NAME"

    goto :goto_0

    .line 182
    :sswitch_10
    const-string v0, "IAP_EVENT_REQUEST_ITEM_PRODUCT_DESCRIPTION"

    goto :goto_0

    .line 184
    :sswitch_11
    const-string v0, "IAP_EVENT_REQUEST_ITEM_PRODUCT_PRICE"

    goto :goto_0

    .line 186
    :sswitch_12
    const-string v0, "IAP_EVENT_REQUEST_ITEM_CURRENCY_SYMBOL"

    goto :goto_0

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
        0x67 -> :sswitch_10
        0x68 -> :sswitch_11
        0x69 -> :sswitch_12
    .end sparse-switch
.end method

.method public static final getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v0, "$"

    return-object v0
.end method

.method public static getDataFromServer(I)Z
    .locals 1
    .param p0, "iapVariant"    # I

    .prologue
    .line 718
    sget-object v0, Lcom/glu/android/IAP;->m_getDataFromServerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 720
    new-instance v0, Lcom/glu/android/IAP$1;

    invoke-direct {v0, p0}, Lcom/glu/android/IAP$1;-><init>(I)V

    sput-object v0, Lcom/glu/android/IAP;->m_getDataFromServerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 726
    const/4 v0, 0x1

    .line 728
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIAPView()Lcom/glu/android/IAP$IAPView;
    .locals 2

    .prologue
    .line 343
    sget-object v0, Lcom/glu/android/GluCanvasOverlayGroup;->instance:Lcom/glu/android/GluCanvasOverlayGroup;

    iget-object v0, v0, Lcom/glu/android/GluCanvasOverlayGroup;->m_views:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;

    iget-object v0, v0, Lcom/glu/android/GluCanvasOverlayGroup$GCOGView;->m_view:Landroid/view/View;

    check-cast v0, Lcom/glu/android/IAP$IAPView;

    return-object v0
.end method

.method public static getLocalJSONData(I)V
    .locals 11
    .param p0, "iapVariant"    # I

    .prologue
    const v10, 0x49f3d12a    # 1997349.2f

    .line 758
    const-string v8, "Getting local data..."

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 761
    :try_start_0
    sget-object v8, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v8}, Lcom/glu/android/GameLet;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "title.dat"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 763
    .local v6, "raw":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 764
    .local v5, "len":I
    new-array v2, v5, [B

    .line 765
    .local v2, "encData":[B
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 766
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 768
    shr-int/lit8 v8, v5, 0x1

    new-array v0, v8, [C

    .line 769
    .local v0, "decData":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v0

    if-ge v4, v8, :cond_1

    .line 771
    shl-int/lit8 v8, v4, 0x1

    aget-byte v8, v2, v8

    invoke-static {v8}, Lcom/glu/android/GluUtil;->unsignedByteToInt(B)I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    shl-int/lit8 v9, v4, 0x1

    or-int/lit8 v9, v9, 0x1

    aget-byte v9, v2, v9

    invoke-static {v9}, Lcom/glu/android/GluUtil;->unsignedByteToInt(B)I

    move-result v9

    or-int v1, v8, v9

    .line 778
    .local v1, "enc":I
    rem-int/lit8 v8, v4, 0x3

    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int v8, v10, v8

    mul-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v7, v8, 0x8

    .line 779
    .local v7, "v3":I
    rem-int/lit8 v8, v4, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int v8, v10, v8

    mul-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    sub-int v9, v1, v8

    rem-int/lit8 v8, v4, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int v8, v10, v8

    mul-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    sub-int v8, v1, v8

    if-le v7, v8, :cond_0

    const/4 v8, 0x0

    :goto_1
    sub-int v8, v9, v8

    rem-int/lit8 v9, v4, 0x3

    rsub-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x3

    shr-int v9, v10, v9

    add-int/2addr v9, v4

    and-int/lit8 v9, v9, 0x7

    shr-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v0, v4

    .line 769
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 779
    :cond_0
    int-to-char v8, v7

    goto :goto_1

    .line 785
    .end local v1    # "enc":I
    .end local v7    # "v3":I
    :cond_1
    invoke-static {v0, p0}, Lcom/glu/android/IAP;->parseJSONData([CI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    .end local v0    # "decData":[C
    .end local v2    # "encData":[B
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v6    # "raw":Ljava/io/InputStream;
    :goto_2
    return-void

    .line 786
    :catch_0
    move-exception v3

    .line 787
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse inventory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 788
    sget-object v8, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v8}, Lcom/glu/android/IAP$IAPObject;->onInventoryFailure()V

    goto :goto_2
.end method

.method public static getTransactionState()I
    .locals 1

    .prologue
    .line 333
    sget v0, Lcom/glu/android/IAP;->sm_transactionState:I

    return v0
.end method

.method public static hasInventoryLoaded()Z
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v0}, Lcom/glu/android/IAP$IAPObject;->hasInventoryLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method public static final iapVariantToGluServerName(I)Ljava/lang/String;
    .locals 2
    .param p0, "iapVariant"    # I

    .prologue
    .line 96
    packed-switch p0, :pswitch_data_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->devDie(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    const-string v0, "test"

    goto :goto_0

    .line 101
    :pswitch_1
    const-string v0, "google"

    goto :goto_0

    .line 103
    :pswitch_2
    const-string v0, "paypal"

    goto :goto_0

    .line 105
    :pswitch_3
    const-string v0, "boku"

    goto :goto_0

    .line 107
    :pswitch_4
    const-string v0, "bango"

    goto :goto_0

    .line 109
    :pswitch_5
    const-string v0, "vodafone"

    goto :goto_0

    .line 111
    :pswitch_6
    const-string v0, "verizon"

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static initSingleProduct(Ljava/lang/String;)V
    .locals 3
    .param p0, "productId"    # Ljava/lang/String;

    .prologue
    .line 139
    sget-object v1, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v1, p0}, Lcom/glu/android/IAP$IAPObject;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "realProductId":Ljava/lang/String;
    sget-object v1, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ...to hash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static isGoogleServiceConnected()Z
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v0}, Lcom/glu/android/IAP$IAPObject;->isGoogleServiceConnected()Z

    move-result v0

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIAPSupported()Z
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v0}, Lcom/glu/android/IAP$IAPObject;->isIAPSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public static isItemSupported(Lcom/glu/android/IAP$IAPObject;Ljava/lang/String;)Z
    .locals 6
    .param p0, "thiz"    # Lcom/glu/android/IAP$IAPObject;
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 211
    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 213
    :cond_1
    sget-object v2, Lcom/glu/android/ModuleSettings;->IAP_PROVIDER_MASKS:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 214
    .local v0, "mask":Ljava/lang/Long;
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 217
    invoke-interface {p0}, Lcom/glu/android/IAP$IAPObject;->getIAPId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 219
    .local v1, "successSoFar":Z
    :cond_2
    if-eqz v1, :cond_0

    .line 220
    invoke-interface {p0, p1}, Lcom/glu/android/IAP$IAPObject;->isItemAvailable(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static nativeIsItemSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "item"    # Ljava/lang/String;

    .prologue
    .line 206
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-static {v0, p0}, Lcom/glu/android/IAP;->isItemSupported(Lcom/glu/android/IAP$IAPObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static onAppStart()V
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v0}, Lcom/glu/android/IAP$IAPObject;->onAppStart()V

    .line 318
    :cond_0
    return-void
.end method

.method public static onAppStop()V
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v0}, Lcom/glu/android/IAP$IAPObject;->onAppStop()V

    .line 312
    :cond_0
    return-void
.end method

.method private static parseJSONData([BI)V
    .locals 2
    .param p0, "jsonBA"    # [B
    .param p1, "iapVariant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 794
    if-eqz p0, :cond_0

    .line 795
    invoke-static {p0}, Lcom/glu/android/GluUtil;->byteArrayToCharArray([B)[C

    move-result-object v0

    invoke-static {v0, p1}, Lcom/glu/android/IAP;->parseJSONData([CI)V

    .line 798
    return-void

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Something went wrong."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseJSONData([CI)V
    .locals 9
    .param p0, "jsonCA"    # [C
    .param p1, "iapVariant"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 802
    if-eqz p0, :cond_2

    .line 804
    invoke-static {p0}, Lcom/glu/android/GluUtil;->parseJSONAsMixedHash([C)Lcom/glu/android/MixedHash;

    move-result-object v5

    .line 807
    .local v5, "props":Lcom/glu/android/MixedHash;
    invoke-static {v5, p1}, Lcom/glu/android/IAP;->doSanityTestOnServerData(Lcom/glu/android/MixedHash;I)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "exString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 809
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sanity test failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 811
    :cond_0
    const-string v6, "Successful get from server."

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 814
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 815
    .local v3, "inventory":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/glu/android/IAP$Inventory;>;"
    sget-object v6, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/glu/android/MixedHash;->getMixedHashVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v4

    .line 816
    .local v4, "products":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/glu/android/MixedHash;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 818
    new-instance v2, Lcom/glu/android/IAP$Inventory;

    invoke-direct {v2}, Lcom/glu/android/IAP$Inventory;-><init>()V

    .line 819
    .local v2, "inv":Lcom/glu/android/IAP$Inventory;
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/glu/android/MixedHash;

    sget-object v7, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_PRICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/glu/android/IAP$Inventory;->m_priceUS:Ljava/lang/String;

    .line 820
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/glu/android/MixedHash;

    sget-object v7, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/glu/android/IAP$Inventory;->m_name:Ljava/lang/String;

    .line 821
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/glu/android/MixedHash;

    sget-object v7, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 823
    .end local v2    # "inv":Lcom/glu/android/IAP$Inventory;
    :cond_1
    sget-object v6, Lcom/glu/android/IAP;->instance:Lcom/glu/android/IAP$IAPObject;

    invoke-interface {v6, v3}, Lcom/glu/android/IAP$IAPObject;->onInventoryReceived(Ljava/util/Hashtable;)V

    .line 827
    return-void

    .line 826
    .end local v0    # "exString":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "inventory":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/glu/android/IAP$Inventory;>;"
    .end local v4    # "products":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/glu/android/MixedHash;>;"
    .end local v5    # "props":Lcom/glu/android/MixedHash;
    :cond_2
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Something went wrong."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static printTestJSONParse(Lcom/glu/android/MixedHash;)V
    .locals 3
    .param p0, "props"    # Lcom/glu/android/MixedHash;

    .prologue
    .line 867
    const-string v0, "Parsed the JSON. (probably) Lets see what we have..."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/glu/android/IAP;->JSON_PROPERTY_GAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/glu/android/IAP;->JSON_PROPERTY_GAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/glu/android/IAP;->JSON_PROPERTY_MARKET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/glu/android/IAP;->JSON_PROPERTY_MARKET:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/glu/android/MixedHash;->getMixedHashVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/MixedHash;

    sget-object v2, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fifth price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/glu/android/MixedHash;->getMixedHashVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/MixedHash;

    sget-object v2, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_PRICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "twelth name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/glu/android/MixedHash;->getMixedHashVector(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/MixedHash;

    sget-object v2, Lcom/glu/android/IAP;->JSON_PROPERTY_PRODUCTS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/glu/android/MixedHash;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method public static setTransactionState(I)V
    .locals 0
    .param p0, "s"    # I

    .prologue
    .line 334
    sput p0, Lcom/glu/android/IAP;->sm_transactionState:I

    return-void
.end method
