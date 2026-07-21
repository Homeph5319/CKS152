.class public Lcom/glu/android/GluPaypal$GluPaypalResultDelegate;
.super Ljava/lang/Object;
.source "GluPaypal.java"

# interfaces
.implements Lcom/paypal/android/MEP/PayPalResultDelegate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluPaypal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GluPaypalResultDelegate"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2711L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentCanceled(Ljava/lang/String;)V
    .locals 3
    .param p1, "paymentStatus"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPaymentCanceled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 629
    sget-object v0, Lcom/glu/android/GluPaypal;->instance:Lcom/glu/android/GluPaypal;

    if-eqz v0, :cond_0

    .line 630
    sget-object v0, Lcom/glu/android/GluPaypal;->instance:Lcom/glu/android/GluPaypal;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v2, v2}, Lcom/glu/android/GluPaypal;->access$100(Lcom/glu/android/GluPaypal;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_0
    return-void
.end method

.method public onPaymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "paymentStatus"    # Ljava/lang/String;
    .param p2, "correlationID"    # Ljava/lang/String;
    .param p3, "payKey"    # Ljava/lang/String;
    .param p4, "errorID"    # Ljava/lang/String;
    .param p5, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPaymentFailed, status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", correlationID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 622
    sget-object v0, Lcom/glu/android/GluPaypal;->instance:Lcom/glu/android/GluPaypal;

    if-eqz v0, :cond_0

    .line 623
    sget-object v0, Lcom/glu/android/GluPaypal;->instance:Lcom/glu/android/GluPaypal;

    const/4 v1, 0x2

    invoke-static {v0, v1, p3, p4, p5}, Lcom/glu/android/GluPaypal;->access$100(Lcom/glu/android/GluPaypal;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_0
    return-void
.end method

.method public onPaymentSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "payKey"    # Ljava/lang/String;
    .param p2, "paymentStatus"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPaymentSucceeded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->logSafe(Ljava/lang/String;)V

    .line 614
    sget-object v0, Lcom/glu/android/GluPaypal;->instance:Lcom/glu/android/GluPaypal;

    if-eqz v0, :cond_0

    .line 615
    sget-object v0, Lcom/glu/android/GluPaypal;->instance:Lcom/glu/android/GluPaypal;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1, v2, v2}, Lcom/glu/android/GluPaypal;->access$100(Lcom/glu/android/GluPaypal;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_0
    return-void
.end method
