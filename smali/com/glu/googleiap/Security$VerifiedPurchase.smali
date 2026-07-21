.class public Lcom/glu/googleiap/Security$VerifiedPurchase;
.super Ljava/lang/Object;
.source "Security.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/googleiap/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifiedPurchase"
.end annotation


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public notificationId:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/glu/googleiap/Consts$PurchaseState;

.field public purchaseTime:J


# direct methods
.method public constructor <init>(Lcom/glu/googleiap/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "purchaseState"    # Lcom/glu/googleiap/Consts$PurchaseState;
    .param p2, "notificationId"    # Ljava/lang/String;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;
    .param p5, "purchaseTime"    # J
    .param p7, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/glu/googleiap/Security$VerifiedPurchase;->purchaseState:Lcom/glu/googleiap/Consts$PurchaseState;

    .line 72
    iput-object p2, p0, Lcom/glu/googleiap/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/glu/googleiap/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/glu/googleiap/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    .line 75
    iput-wide p5, p0, Lcom/glu/googleiap/Security$VerifiedPurchase;->purchaseTime:J

    .line 76
    iput-object p7, p0, Lcom/glu/googleiap/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    .line 77
    return-void
.end method
