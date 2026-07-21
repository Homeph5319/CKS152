.class public Lcom/glu/android/GluPaypal;
.super Ljava/lang/Object;
.source "GluPaypal.java"

# interfaces
.implements Lcom/glu/android/IAP$IAPObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GluPaypal$GluPaypalResultDelegate;
    }
.end annotation


# static fields
.field private static final INVENTORY_RETRY_TIMER:I = 0x2710

.field public static final KEY_PAYMENT_SPEC:Ljava/lang/String; = "Glu-Payment-Spec"

.field public static final PAYMENT_SPEC_NONE:I = 0x0

.field public static final PAYMENT_SPEC_TEST:I = 0x1

.field private static final PAYPAL_BUTTON_SIZE:I = 0x1

.field private static final PAYPAL_BUTTON_TYPE:I = 0x0

.field private static final PAYPAL_GOODS_TYPE:I = 0x1

.field private static final PAYPAL_TIMEOUT_TIMER:I = 0x1388

.field public static final STUB:Z

.field public static instance:Lcom/glu/android/GluPaypal;

.field private static m_buttonH:I

.field private static m_buttonW:I


# instance fields
.field private m_buttonPressed:Z

.field private m_initButtonThread:Ljava/lang/Thread;

.field private m_initThread:Ljava/lang/Thread;

.field private m_inventory:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glu/android/IAP$Inventory;",
            ">;"
        }
    .end annotation
.end field

.field private m_inventoryRetryTimer:I

.field public m_paymentSpec:I

.field public m_paymentSpecEmail:Ljava/lang/String;

.field public m_paymentSpecString:Ljava/lang/String;

.field public m_paymentSpecThirdPartyCut:I

.field private m_paypal:Lcom/paypal/android/MEP/PayPal;

.field private m_paypalButton:Lcom/paypal/android/MEP/CheckoutButton;

.field private m_paypalTimeoutTimer:I

.field private m_purchasingState:I

.field private m_savedProductId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluPaypal;->instance:Lcom/glu/android/GluPaypal;

    .line 258
    sput v1, Lcom/glu/android/GluPaypal;->m_buttonH:I

    .line 259
    sput v1, Lcom/glu/android/GluPaypal;->m_buttonW:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const v3, 0xfacade

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v4, p0, Lcom/glu/android/GluPaypal;->m_savedProductId:Ljava/lang/String;

    .line 50
    iput v3, p0, Lcom/glu/android/GluPaypal;->m_paypalTimeoutTimer:I

    .line 52
    iput v3, p0, Lcom/glu/android/GluPaypal;->m_inventoryRetryTimer:I

    .line 55
    iput v5, p0, Lcom/glu/android/GluPaypal;->m_purchasingState:I

    .line 58
    iput-object v4, p0, Lcom/glu/android/GluPaypal;->m_inventory:Ljava/util/Hashtable;

    .line 65
    iput v5, p0, Lcom/glu/android/GluPaypal;->m_paymentSpec:I

    .line 66
    iput-object v4, p0, Lcom/glu/android/GluPaypal;->m_paymentSpecString:Ljava/lang/String;

    .line 67
    iput-object v4, p0, Lcom/glu/android/GluPaypal;->m_paymentSpecEmail:Ljava/lang/String;

    .line 68
    const/4 v3, -0x1

    iput v3, p0, Lcom/glu/android/GluPaypal;->m_paymentSpecThirdPartyCut:I

    .line 262
    iput-object v4, p0, Lcom/glu/android/GluPaypal;->m_paypal:Lcom/paypal/android/MEP/PayPal;

    .line 263
    iput-object v4, p0, Lcom/glu/android/GluPaypal;->m_paypalButton:Lcom/paypal/android/MEP/CheckoutButton;

    .line 264
    iput-boolean v5, p0, Lcom/glu/android/GluPaypal;->m_buttonPressed:Z

    .line 291
    iput-object v4, p0, Lcom/glu/android/GluPaypal;->m_initButtonThread:Ljava/lang/Thread;

    .line 380
    iput-object v4, p0, Lcom/glu/android/GluPaypal;->m_initThread:Ljava/lang/Thread;

    .line 72
    const-string v3, "APP-52C934282P992892B"

    if-nez v3, :cond_0

    .line 73
    const-string v3, "You need a live PayPal app ID."

    invoke-static {v3}, Lcom/glu/android/Debug;->relDie(Ljava/lang/String;)V

    .line 74
    :cond_0
    sput-object p0, Lcom/glu/android/GluPaypal;->instance:Lcom/glu/android/GluPaypal;

    .line 75
    invoke-direct {p0}, Lcom/glu/android/GluPaypal;->setButtonVariables()V

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "prop":Ljava/lang/String;
    const/4 v1, 0x0

    .line 79
    .local v1, "realProp":Ljava/lang/String;
    sget-boolean v3, Lcom/glu/android/Settings;->AMAZON_BUILD:Z

    if-eqz v3, :cond_1

    .line 80
    const-string v0, "Amazon.com, LLC"

    .line 82
    :cond_1
    if-nez v0, :cond_2

    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v3, v3, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    const-string v4, "Glu-Payment-Spec"

    invoke-virtual {v3, v4}, Lcom/glu/android/CaseInsensitiveHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "realProp":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "realProp":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 84
    :cond_2
    if-eqz v1, :cond_3

    .line 85
    move-object v0, v1

    .line 86
    :cond_3
    const/4 v2, 0x0

    .line 87
    .local v2, "testProp":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_4
    const-string v3, "test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    const/4 v3, 0x1

    iput v3, p0, Lcom/glu/android/GluPaypal;->m_paymentSpec:I

    .line 94
    iput-object v0, p0, Lcom/glu/android/GluPaypal;->m_paymentSpecString:Ljava/lang/String;

    .line 95
    const/16 v3, 0x14

    iput v3, p0, Lcom/glu/android/GluPaypal;->m_paymentSpecThirdPartyCut:I

    .line 96
    const-string v3, "fake@test.com"

    iput-object v3, p0, Lcom/glu/android/GluPaypal;->m_paymentSpecEmail:Ljava/lang/String;

    .line 97
    const-string v3, "don\'t ship with test spec."

    invoke-static {v3}, Lcom/glu/android/Debug;->relDie(Ljava/lang/String;)V

    .line 100
    :cond_5
    iput-object v0, p0, Lcom/glu/android/GluPaypal;->m_paymentSpecString:Ljava/lang/String;

    .line 102
    .end local v2    # "testProp":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/glu/android/GluPaypal;)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluPaypal;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/glu/android/GluPaypal;->doInit()V

    return-void
.end method

.method static synthetic access$100(Lcom/glu/android/GluPaypal;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluPaypal;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/glu/android/GluPaypal;->doHandleResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createIPNURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized doHandleResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "payKey"    # Ljava/lang/String;
    .param p3, "errorID"    # Ljava/lang/String;
    .param p4, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/glu/android/GluPaypal;->m_savedProductId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    const v0, 0xfacade

    :try_start_1
    iput v0, p0, Lcom/glu/android/GluPaypal;->m_paypalTimeoutTimer:I

    .line 124
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 128
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase succeeded (immediate award): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/glu/android/GluPaypal;->m_savedProductId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/GluPaypal;->m_purchasingState:I

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluPaypal;->m_savedProductId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :pswitch_2
    :try_start_2
    const-string v0, "Purchase cancelled by user."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x3

    iput v0, p0, Lcom/glu/android/GluPaypal;->m_purchasingState:I

    goto :goto_0

    .line 143
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x3

    iput v0, p0, Lcom/glu/android/GluPaypal;->m_purchasingState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private doInit()V
    .locals 7

    .prologue
    .line 393
    const-string v4, "doInit (PayPal)"

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 396
    :try_start_0
    iget-object v4, p0, Lcom/glu/android/GluPaypal;->m_paypal:Lcom/paypal/android/MEP/PayPal;

    if-nez v4, :cond_0

    .line 398
    const-string v4, "Creating PayPal instance..."

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 401
    const-string v3, "en_US"

    .line 402
    .local v3, "lang":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Language="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 410
    :try_start_1
    sget-object v4, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const-string v5, "APP-52C934282P992892B"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/paypal/android/MEP/PayPal;->initWithAppID(Landroid/content/Context;Ljava/lang/String;I)Lcom/paypal/android/MEP/PayPal;

    move-result-object v4

    iput-object v4, p0, Lcom/glu/android/GluPaypal;->m_paypal:Lcom/paypal/android/MEP/PayPal;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/glu/android/GluPaypal;->m_paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {v4, v3}, Lcom/paypal/android/MEP/PayPal;->setLanguage(Ljava/lang/String;)V

    .line 424
    iget-object v4, p0, Lcom/glu/android/GluPaypal;->m_paypal:Lcom/paypal/android/MEP/PayPal;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/paypal/android/MEP/PayPal;->setShippingEnabled(Z)V

    .line 429
    .end local v3    # "lang":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/glu/android/GluPaypal;->getDataFromServer()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 434
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/glu/android/GluPaypal;->m_initThread:Ljava/lang/Thread;

    .line 435
    return-void

    .line 411
    .restart local v3    # "lang":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 413
    .local v1, "exx":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "Init failure...lets try loading the instance instead."

    invoke-static {v4, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 414
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v4

    iput-object v4, p0, Lcom/glu/android/GluPaypal;->m_paypal:Lcom/paypal/android/MEP/PayPal;

    .line 415
    iget-object v4, p0, Lcom/glu/android/GluPaypal;->m_paypal:Lcom/paypal/android/MEP/PayPal;

    if-nez v4, :cond_1

    .line 416
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Failure. (null)"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 418
    :catch_1
    move-exception v2

    .line 419
    .local v2, "exxx":Ljava/lang/Exception;
    :try_start_4
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 430
    .end local v1    # "exx":Ljava/lang/Exception;
    .end local v2    # "exxx":Ljava/lang/Exception;
    .end local v3    # "lang":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 431
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "Init failure...lets try loading the instance instead."

    invoke-static {v4, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 417
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "exx":Ljava/lang/Exception;
    .restart local v3    # "lang":Ljava/lang/String;
    :cond_1
    :try_start_5
    const-string v4, "Success."

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method private getButtonX()I
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method private getButtonY()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method private getDataFromServer()V
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/glu/android/GluPaypal;->getIAPId()I

    move-result v0

    invoke-static {v0}, Lcom/glu/android/IAP;->getLocalJSONData(I)V

    .line 328
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 111
    sget-object v0, Lcom/glu/android/GluPaypal;->instance:Lcom/glu/android/GluPaypal;

    const-string v1, "com.paypal.android.PAY_KEY"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.paypal.android.ERROR_ID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.paypal.android.ERROR_MESSAGE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/glu/android/GluPaypal;->doHandleResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private openDialog(Ljava/lang/String;)V
    .locals 26
    .param p1, "realProductId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    const/16 v23, 0x1388

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/glu/android/GluPaypal;->m_paypalTimeoutTimer:I

    .line 155
    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_deviceID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/glu/android/GluUtil;->hexStringToLongString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 157
    .local v22, "udidLongString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluPaypal;->m_inventory:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/glu/android/IAP$Inventory;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/IAP$Inventory;->m_priceUS:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 158
    .local v21, "totalStr":Ljava/lang/String;
    const-string v18, "0.00"

    .line 159
    .local v18, "taxStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluPaypal;->m_inventory:Ljava/util/Hashtable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/glu/android/IAP$Inventory;

    move-object/from16 v0, v23

    iget-object v13, v0, Lcom/glu/android/IAP$Inventory;->m_name:Ljava/lang/String;

    .line 160
    .local v13, "nameStr":Ljava/lang/String;
    const-string v11, "android.revenue@glu.com"

    .line 161
    .local v11, "merchantEmailStr":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "UDID="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_deviceID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";ITEM="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluPaypal;->m_paymentSpecString:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    const-string v23, ""

    :goto_0
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "customId":Ljava/lang/String;
    const/high16 v23, 0x7f070000

    invoke-static/range {v23 .. v23}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 163
    .local v12, "merchantName":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " | for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluPaypal;->m_paymentSpecString:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    const-string v23, ""

    :goto_1
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-nez v22, :cond_3

    const-string v23, ""

    :goto_2
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, "memo":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "metadata="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 171
    new-instance v6, Lcom/paypal/android/MEP/PayPalInvoiceData;

    invoke-direct {v6}, Lcom/paypal/android/MEP/PayPalInvoiceData;-><init>()V

    .line 172
    .local v6, "invoice":Lcom/paypal/android/MEP/PayPalInvoiceData;
    new-instance v23, Ljava/math/BigDecimal;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/paypal/android/MEP/PayPalInvoiceData;->setTax(Ljava/math/BigDecimal;)V

    .line 173
    new-instance v23, Ljava/math/BigDecimal;

    const-string v24, "0.00"

    invoke-direct/range {v23 .. v24}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/paypal/android/MEP/PayPalInvoiceData;->setShipping(Ljava/math/BigDecimal;)V

    .line 174
    new-instance v9, Lcom/paypal/android/MEP/PayPalInvoiceItem;

    invoke-direct {v9}, Lcom/paypal/android/MEP/PayPalInvoiceItem;-><init>()V

    .line 176
    .local v9, "item":Lcom/paypal/android/MEP/PayPalInvoiceItem;
    invoke-virtual {v9, v13}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->setName(Ljava/lang/String;)V

    .line 177
    new-instance v23, Ljava/math/BigDecimal;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->setTotalPrice(Ljava/math/BigDecimal;)V

    .line 178
    new-instance v23, Ljava/math/BigDecimal;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->setUnitPrice(Ljava/math/BigDecimal;)V

    .line 179
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->setQuantity(I)V

    .line 180
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v7, "invoiceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/paypal/android/MEP/PayPalInvoiceItem;>;"
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v6, v7}, Lcom/paypal/android/MEP/PayPalInvoiceData;->setInvoiceItems(Ljava/util/ArrayList;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluPaypal;->m_paymentSpecEmail:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/glu/android/GluPaypal;->m_paymentSpecThirdPartyCut:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 186
    const-string v23, "Advanced payment."

    invoke-static/range {v23 .. v23}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluPaypal;->m_paymentSpecEmail:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 188
    .local v16, "paymentSpecEmail":Ljava/lang/String;
    new-instance v15, Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    invoke-direct {v15}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;-><init>()V

    .line 190
    .local v15, "payment":Lcom/paypal/android/MEP/PayPalAdvancedPayment;
    const-string v23, "USD"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->setCurrencyType(Ljava/lang/String;)V

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/glu/android/GluPaypal;->createIPNURL()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, "ipnURL":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 193
    invoke-virtual {v15, v8}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->setIpnUrl(Ljava/lang/String;)V

    .line 195
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/glu/android/GluPaypal;->m_paymentSpecThirdPartyCut:I

    move/from16 v23, v0

    rsub-int/lit8 v23, v23, 0x64

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->getStringCurrencyFromPercent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 196
    .local v5, "gluCut":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/glu/android/GluPaypal;->m_paymentSpecThirdPartyCut:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->getStringCurrencyFromPercent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 197
    .local v20, "thirdPartyCut":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "glu="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "   thirdParty="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 199
    new-instance v4, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-direct {v4}, Lcom/paypal/android/MEP/PayPalReceiverDetails;-><init>()V

    .line 200
    .local v4, "glu":Lcom/paypal/android/MEP/PayPalReceiverDetails;
    invoke-virtual {v4, v11}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setRecipient(Ljava/lang/String;)V

    .line 202
    new-instance v23, Ljava/math/BigDecimal;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setSubtotal(Ljava/math/BigDecimal;)V

    .line 203
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setIsPrimary(Z)V

    .line 204
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setPaymentType(I)V

    .line 205
    invoke-virtual {v4, v6}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setInvoiceData(Lcom/paypal/android/MEP/PayPalInvoiceData;)V

    .line 206
    invoke-virtual {v4, v3}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setCustomID(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v4, v12}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setMerchantName(Ljava/lang/String;)V

    .line 208
    new-instance v19, Lcom/paypal/android/MEP/PayPalReceiverDetails;

    invoke-direct/range {v19 .. v19}, Lcom/paypal/android/MEP/PayPalReceiverDetails;-><init>()V

    .line 209
    .local v19, "thirdParty":Lcom/paypal/android/MEP/PayPalReceiverDetails;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setRecipient(Ljava/lang/String;)V

    .line 210
    new-instance v23, Ljava/math/BigDecimal;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setSubtotal(Ljava/math/BigDecimal;)V

    .line 211
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setIsPrimary(Z)V

    .line 212
    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setPaymentType(I)V

    .line 213
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setInvoiceData(Lcom/paypal/android/MEP/PayPalInvoiceData;)V

    .line 214
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setCustomID(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/paypal/android/MEP/PayPalReceiverDetails;->setMerchantName(Ljava/lang/String;)V

    .line 216
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v17, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/paypal/android/MEP/PayPalReceiverDetails;>;"
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->setReceivers(Ljava/util/ArrayList;)V

    .line 221
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v23

    sget-object v24, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    new-instance v25, Lcom/glu/android/GluPaypal$GluPaypalResultDelegate;

    invoke-direct/range {v25 .. v25}, Lcom/glu/android/GluPaypal$GluPaypalResultDelegate;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v15, v1, v2}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalAdvancedPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;

    move-result-object v14

    .line 223
    .local v14, "payPalIntent":Landroid/content/Intent;
    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const v24, -0x53521ff

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/glu/android/GameLet;->startActivityForResult(Landroid/content/Intent;I)V

    .line 250
    .end local v4    # "glu":Lcom/paypal/android/MEP/PayPalReceiverDetails;
    .end local v5    # "gluCut":Ljava/lang/String;
    .end local v15    # "payment":Lcom/paypal/android/MEP/PayPalAdvancedPayment;
    .end local v16    # "paymentSpecEmail":Ljava/lang/String;
    .end local v17    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/paypal/android/MEP/PayPalReceiverDetails;>;"
    .end local v19    # "thirdParty":Lcom/paypal/android/MEP/PayPalReceiverDetails;
    .end local v20    # "thirdPartyCut":Ljava/lang/String;
    :goto_3
    return-void

    .line 161
    .end local v3    # "customId":Ljava/lang/String;
    .end local v6    # "invoice":Lcom/paypal/android/MEP/PayPalInvoiceData;
    .end local v7    # "invoiceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/paypal/android/MEP/PayPalInvoiceItem;>;"
    .end local v8    # "ipnURL":Ljava/lang/String;
    .end local v9    # "item":Lcom/paypal/android/MEP/PayPalInvoiceItem;
    .end local v10    # "memo":Ljava/lang/String;
    .end local v12    # "merchantName":Ljava/lang/String;
    .end local v14    # "payPalIntent":Landroid/content/Intent;
    :cond_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ";SPEC="

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluPaypal;->m_paymentSpecString:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 163
    .restart local v3    # "customId":Ljava/lang/String;
    .restart local v12    # "merchantName":Ljava/lang/String;
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " | via "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluPaypal;->m_paymentSpecString:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_1

    :cond_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " | Customer #"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_2

    .line 227
    .restart local v6    # "invoice":Lcom/paypal/android/MEP/PayPalInvoiceData;
    .restart local v7    # "invoiceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/paypal/android/MEP/PayPalInvoiceItem;>;"
    .restart local v9    # "item":Lcom/paypal/android/MEP/PayPalInvoiceItem;
    .restart local v10    # "memo":Ljava/lang/String;
    :cond_4
    const-string v23, "Simple payment."

    invoke-static/range {v23 .. v23}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 228
    new-instance v15, Lcom/paypal/android/MEP/PayPalPayment;

    invoke-direct {v15}, Lcom/paypal/android/MEP/PayPalPayment;-><init>()V

    .line 230
    .local v15, "payment":Lcom/paypal/android/MEP/PayPalPayment;
    new-instance v23, Ljava/math/BigDecimal;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/paypal/android/MEP/PayPalPayment;->setSubtotal(Ljava/math/BigDecimal;)V

    .line 231
    invoke-virtual {v15, v11}, Lcom/paypal/android/MEP/PayPalPayment;->setRecipient(Ljava/lang/String;)V

    .line 232
    const-string v23, "USD"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/paypal/android/MEP/PayPalPayment;->setCurrencyType(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v15, v12}, Lcom/paypal/android/MEP/PayPalPayment;->setMerchantName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v15, v3}, Lcom/paypal/android/MEP/PayPalPayment;->setCustomID(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v15, v10}, Lcom/paypal/android/MEP/PayPalPayment;->setMemo(Ljava/lang/String;)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/glu/android/GluPaypal;->createIPNURL()Ljava/lang/String;

    move-result-object v8

    .line 240
    .restart local v8    # "ipnURL":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 241
    invoke-virtual {v15, v8}, Lcom/paypal/android/MEP/PayPalPayment;->setIpnUrl(Ljava/lang/String;)V

    .line 242
    :cond_5
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/paypal/android/MEP/PayPalPayment;->setPaymentType(I)V

    .line 244
    invoke-virtual {v15, v6}, Lcom/paypal/android/MEP/PayPalPayment;->setInvoiceData(Lcom/paypal/android/MEP/PayPalInvoiceData;)V

    .line 246
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v23

    sget-object v24, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    new-instance v25, Lcom/glu/android/GluPaypal$GluPaypalResultDelegate;

    invoke-direct/range {v25 .. v25}, Lcom/glu/android/GluPaypal$GluPaypalResultDelegate;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v15, v1, v2}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;

    move-result-object v14

    .line 248
    .restart local v14    # "payPalIntent":Landroid/content/Intent;
    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const v24, -0x53521ff

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/glu/android/GameLet;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3
.end method

.method private realInitButton()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method private setButtonVariables()V
    .locals 1

    .prologue
    .line 270
    const/16 v0, 0xc2

    sput v0, Lcom/glu/android/GluPaypal;->m_buttonW:I

    const/16 v0, 0x25

    sput v0, Lcom/glu/android/GluPaypal;->m_buttonH:I

    .line 277
    sget v0, Lcom/glu/android/GluPaypal;->m_buttonW:I

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GluPaypal;->m_buttonW:I

    .line 278
    sget v0, Lcom/glu/android/GluPaypal;->m_buttonH:I

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToG1(I)I

    move-result v0

    sput v0, Lcom/glu/android/GluPaypal;->m_buttonH:I

    .line 279
    return-void
.end method


# virtual methods
.method public buyProduct(Ljava/lang/String;)V
    .locals 7
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 345
    iput-object p1, p0, Lcom/glu/android/GluPaypal;->m_savedProductId:Ljava/lang/String;

    .line 347
    invoke-virtual {p0, p1}, Lcom/glu/android/GluPaypal;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "realProductId":Ljava/lang/String;
    iget-object v2, p0, Lcom/glu/android/GluPaypal;->m_inventory:Ljava/util/Hashtable;

    if-nez v2, :cond_0

    .line 352
    invoke-static {v6, v4, v5}, Lcom/glu/android/GluJNI;->iapCallbackEvent(II[B)I

    .line 364
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/glu/android/GluPaypal;->m_inventory:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 354
    const/4 v2, 0x7

    invoke-static {v2, v4, v5}, Lcom/glu/android/GluJNI;->iapCallbackEvent(II[B)I

    goto :goto_0

    .line 358
    :cond_1
    :try_start_0
    invoke-direct {p0, v1}, Lcom/glu/android/GluPaypal;->openDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 361
    invoke-static {v6, v4, v5}, Lcom/glu/android/GluJNI;->iapCallbackEvent(II[B)I

    goto :goto_0
.end method

.method public final forceAsynchronousPurchaseAward()Z
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "event"    # I
    .param p2, "productId"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-virtual {p0, p2}, Lcom/glu/android/GluPaypal;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "realProductId":Ljava/lang/String;
    iget-object v2, p0, Lcom/glu/android/GluPaypal;->m_inventory:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/IAP$Inventory;

    .line 491
    .local v0, "inv":Lcom/glu/android/IAP$Inventory;
    if-nez v0, :cond_0

    const/16 v2, 0x65

    if-eq p1, v2, :cond_0

    .line 492
    const-string v1, "0"

    .line 507
    .end local v1    # "realProductId":Ljava/lang/String;
    :goto_0
    :pswitch_0
    return-object v1

    .line 494
    .restart local v1    # "realProductId":Ljava/lang/String;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 507
    const-string v1, "0"

    goto :goto_0

    .line 499
    :pswitch_1
    iget-object v1, v0, Lcom/glu/android/IAP$Inventory;->m_name:Ljava/lang/String;

    goto :goto_0

    .line 501
    :pswitch_2
    const-string v1, "0"

    goto :goto_0

    .line 503
    :pswitch_3
    iget-object v1, v0, Lcom/glu/android/IAP$Inventory;->m_priceUS:Ljava/lang/String;

    goto :goto_0

    .line 505
    :pswitch_4
    invoke-virtual {p0}, Lcom/glu/android/GluPaypal;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 528
    const-string v0, "en"

    const-string v1, "US"

    invoke-static {v0, v1}, Lcom/glu/android/IAP;->getCurrencySymbol(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIAPId()I
    .locals 1

    .prologue
    .line 573
    const/4 v0, 0x2

    return v0
.end method

.method public getProductType(Ljava/lang/String;)I
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lcom/glu/android/GluPaypal;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "realProductId":Ljava/lang/String;
    const/4 v1, -0x1

    return v1
.end method

.method public getRealProductId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 368
    return-object p1
.end method

.method public final hasInventoryLoaded()Z
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/glu/android/GluPaypal;->m_inventory:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/glu/android/GluPaypal;->m_initThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/glu/android/GluPaypal$1;

    invoke-direct {v0, p0}, Lcom/glu/android/GluPaypal$1;-><init>(Lcom/glu/android/GluPaypal;)V

    iput-object v0, p0, Lcom/glu/android/GluPaypal;->m_initThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 389
    :cond_0
    return-void
.end method

.method public final isGoogleServiceConnected()Z
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x1

    return v0
.end method

.method public isIAPConnected()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/glu/android/GluPaypal;->m_inventory:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIAPSupported()Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public isItemAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 589
    invoke-virtual {p0, p1}, Lcom/glu/android/GluPaypal;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "realProductId":Ljava/lang/String;
    iget-object v2, p0, Lcom/glu/android/GluPaypal;->m_inventory:Ljava/util/Hashtable;

    if-nez v2, :cond_1

    .line 594
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/glu/android/GluPaypal;->m_inventory:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProductValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lcom/glu/android/GluPaypal;->getRealProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "realProductId":Ljava/lang/String;
    const/4 v1, 0x1

    return v1
.end method

.method public onAppStart()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method public onAppStop()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method public onIAPDestroy()V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public onInventoryFailure()V
    .locals 1

    .prologue
    .line 584
    const/16 v0, 0x2710

    iput v0, p0, Lcom/glu/android/GluPaypal;->m_inventoryRetryTimer:I

    .line 585
    return-void
.end method

.method public final onInventoryReceived(Ljava/util/Hashtable;)V
    .locals 1
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
    .line 578
    .local p1, "inventory":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/glu/android/IAP$Inventory;>;"
    const-string v0, "PayPal inventory set."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 579
    iput-object p1, p0, Lcom/glu/android/GluPaypal;->m_inventory:Ljava/util/Hashtable;

    .line 580
    return-void
.end method

.method public querySingleProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Lcom/glu/android/GluPaypal;->buyProduct(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public restoreUnclaimedItems()V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public setButtonCenterXY(I)V
    .locals 8
    .param p1, "xy"    # I

    .prologue
    .line 547
    shr-int/lit8 v6, p1, 0x10

    .line 548
    .local v6, "x":I
    const v1, 0xffff

    and-int v7, p1, v1

    .line 549
    .local v7, "y":I
    invoke-static {}, Lcom/glu/android/IAP;->getIAPView()Lcom/glu/android/IAP$IAPView;

    move-result-object v0

    .line 550
    .local v0, "view":Lcom/glu/android/IAP$IAPView;
    sget v1, Lcom/glu/android/GluPaypal;->m_buttonW:I

    shr-int/lit8 v1, v1, 0x1

    sub-int v2, v6, v1

    .line 551
    .local v2, "x1":I
    sget v1, Lcom/glu/android/GluPaypal;->m_buttonH:I

    shr-int/lit8 v1, v1, 0x1

    sub-int v3, v7, v1

    .line 552
    .local v3, "y1":I
    sget v1, Lcom/glu/android/GluPaypal;->m_buttonW:I

    add-int v4, v2, v1

    .line 553
    .local v4, "x2":I
    sget v1, Lcom/glu/android/GluPaypal;->m_buttonH:I

    add-int v5, v3, v1

    .line 554
    .local v5, "y2":I
    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/glu/android/IAP$IAPView;->setSubviewBounds(IIIII)V

    .line 555
    return-void
.end method

.method public setButtonVisible(I)V
    .locals 3
    .param p1, "visible"    # I

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-static {}, Lcom/glu/android/IAP;->getIAPView()Lcom/glu/android/IAP$IAPView;

    move-result-object v2

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/glu/android/IAP$IAPView;->setSubviewVisible(IZ)V

    .line 560
    return-void

    .line 559
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public tick(I)V
    .locals 5
    .param p1, "deltaMS"    # I

    .prologue
    const/4 v4, 0x1

    const v1, 0xfacade

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 442
    iget v0, p0, Lcom/glu/android/GluPaypal;->m_paypalTimeoutTimer:I

    if-eq v0, v1, :cond_0

    .line 444
    iget v0, p0, Lcom/glu/android/GluPaypal;->m_paypalTimeoutTimer:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/GluPaypal;->m_paypalTimeoutTimer:I

    .line 445
    iget v0, p0, Lcom/glu/android/GluPaypal;->m_paypalTimeoutTimer:I

    if-gtz v0, :cond_0

    .line 449
    invoke-static {v4, v2, v3}, Lcom/glu/android/GluJNI;->iapCallbackEvent(II[B)I

    .line 450
    iput v1, p0, Lcom/glu/android/GluPaypal;->m_paypalTimeoutTimer:I

    .line 451
    iput v2, p0, Lcom/glu/android/GluPaypal;->m_purchasingState:I

    .line 452
    iput-object v3, p0, Lcom/glu/android/GluPaypal;->m_savedProductId:Ljava/lang/String;

    .line 456
    :cond_0
    iget v0, p0, Lcom/glu/android/GluPaypal;->m_inventoryRetryTimer:I

    if-eq v0, v1, :cond_1

    .line 458
    iget v0, p0, Lcom/glu/android/GluPaypal;->m_inventoryRetryTimer:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/glu/android/GluPaypal;->m_inventoryRetryTimer:I

    .line 459
    iget v0, p0, Lcom/glu/android/GluPaypal;->m_inventoryRetryTimer:I

    if-gtz v0, :cond_1

    .line 461
    iput v1, p0, Lcom/glu/android/GluPaypal;->m_inventoryRetryTimer:I

    .line 462
    invoke-direct {p0}, Lcom/glu/android/GluPaypal;->getDataFromServer()V

    .line 472
    :cond_1
    iget v0, p0, Lcom/glu/android/GluPaypal;->m_purchasingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 474
    const/4 v0, 0x4

    invoke-static {v0, v2, v3}, Lcom/glu/android/GluJNI;->iapCallbackEvent(II[B)I

    .line 475
    iput v2, p0, Lcom/glu/android/GluPaypal;->m_purchasingState:I

    .line 476
    iput-object v3, p0, Lcom/glu/android/GluPaypal;->m_savedProductId:Ljava/lang/String;

    .line 484
    :cond_2
    :goto_0
    return-void

    .line 478
    :cond_3
    iget v0, p0, Lcom/glu/android/GluPaypal;->m_purchasingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 480
    invoke-static {v4, v2, v3}, Lcom/glu/android/GluJNI;->iapCallbackEvent(II[B)I

    .line 481
    iput v2, p0, Lcom/glu/android/GluPaypal;->m_purchasingState:I

    .line 482
    iput-object v3, p0, Lcom/glu/android/GluPaypal;->m_savedProductId:Ljava/lang/String;

    goto :goto_0
.end method
