.class public Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/embedded/BoxOfficeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeliumServer"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private discoveredAt:J

.field private failureCount:I

.field final synthetic this$0:Lcom/urbanairship/push/embedded/BoxOfficeClient;


# direct methods
.method public constructor <init>(Lcom/urbanairship/push/embedded/BoxOfficeClient;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->this$0:Lcom/urbanairship/push/embedded/BoxOfficeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->discoveredAt:J

    iput-object p2, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->address:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->address:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)I
    .locals 1

    iget v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;I)I
    .locals 0

    iput p1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;)I
    .locals 2

    iget v0, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    return v0
.end method


# virtual methods
.method public isValid()Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->discoveredAt:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget v1, p0, Lcom/urbanairship/push/embedded/BoxOfficeClient$HeliumServer;->failureCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
