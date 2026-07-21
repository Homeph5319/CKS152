.class public Lcom/paypal/android/MEP/PayPalPayment;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/math/BigDecimal;

.field private d:Lcom/paypal/android/MEP/PayPalInvoiceData;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:Ljava/math/BigDecimal;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:Lcom/paypal/android/MEP/PayPalInvoiceData;

    const/4 v0, 0x3

    iput v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->f:I

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/paypal/android/MEP/PayPalPayment;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrencyType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getInvoiceData()Lcom/paypal/android/MEP/PayPalInvoiceData;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:Lcom/paypal/android/MEP/PayPalInvoiceData;

    return-object v0
.end method

.method public getIpnUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentSubtype()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->f:I

    return v0
.end method

.method public getPaymentType()I
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:I

    return v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtotal()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public setCurrencyType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->a:Ljava/lang/String;

    return-void
.end method

.method public setCustomID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->h:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->g:Ljava/lang/String;

    return-void
.end method

.method public setInvoiceData(Lcom/paypal/android/MEP/PayPalInvoiceData;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->d:Lcom/paypal/android/MEP/PayPalInvoiceData;

    return-void
.end method

.method public setIpnUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->j:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->k:Ljava/lang/String;

    return-void
.end method

.method public setMerchantName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->i:Ljava/lang/String;

    return-void
.end method

.method public setPaymentSubtype(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->f:I

    return-void
.end method

.method public setPaymentType(I)V
    .locals 0

    iput p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->e:I

    return-void
.end method

.method public setRecipient(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->b:Ljava/lang/String;

    return-void
.end method

.method public setSubtotal(Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/PayPalPayment;->c:Ljava/math/BigDecimal;

    return-void
.end method
