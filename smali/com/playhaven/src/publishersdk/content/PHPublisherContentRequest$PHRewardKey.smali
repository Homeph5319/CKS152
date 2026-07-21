.class final enum Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;
.super Ljava/lang/Enum;
.source "PHPublisherContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PHRewardKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

.field public static final enum IDKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

.field public static final enum QuantityKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

.field public static final enum ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

.field public static final enum SignatureKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;


# instance fields
.field private final keyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    const-string v1, "IDKey"

    const-string v2, "reward"

    invoke-direct {v0, v1, v3, v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->IDKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    .line 81
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    const-string v1, "QuantityKey"

    const-string v2, "quantity"

    invoke-direct {v0, v1, v4, v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->QuantityKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    .line 82
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    const-string v1, "ReceiptKey"

    const-string v2, "receipt"

    invoke-direct {v0, v1, v5, v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    .line 83
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    const-string v1, "SignatureKey"

    const-string v2, "signature"

    invoke-direct {v0, v1, v6, v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->SignatureKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->IDKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->QuantityKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->ReceiptKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->SignatureKey:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    aput-object v1, v0, v6

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->$VALUES:[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->keyName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    return-object v0
.end method

.method public static values()[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->$VALUES:[Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    invoke-virtual {v0}, [Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;

    return-object v0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHRewardKey;->keyName:Ljava/lang/String;

    return-object v0
.end method
