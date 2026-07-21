.class public final Lcom/dataManager/StorageChecker$Result;
.super Ljava/lang/Object;
.source "StorageChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dataManager/StorageChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final availableBytes:J

.field public final hasEnoughSpace:Z

.field public final requiredBytes:J

.field public final shortageDescription:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$smtoMb(J)D
    .locals 0

    invoke-static {p0, p1}, Lcom/dataManager/StorageChecker$Result;->toMb(J)D

    move-result-wide p0

    return-wide p0
.end method

.method private constructor <init>(ZJJLjava/lang/String;)V
    .locals 0
    .param p1, "ok"    # Z
    .param p2, "available"    # J
    .param p4, "required"    # J
    .param p6, "desc"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/dataManager/StorageChecker$Result;->hasEnoughSpace:Z

    .line 38
    iput-wide p2, p0, Lcom/dataManager/StorageChecker$Result;->availableBytes:J

    .line 39
    iput-wide p4, p0, Lcom/dataManager/StorageChecker$Result;->requiredBytes:J

    .line 40
    iput-object p6, p0, Lcom/dataManager/StorageChecker$Result;->shortageDescription:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static insufficient(JJ)Lcom/dataManager/StorageChecker$Result;
    .locals 13
    .param p0, "available"    # J
    .param p2, "required"    # J

    .line 48
    sub-long v0, p2, p0

    .line 49
    .local v0, "missing":J
    nop

    .line 50
    invoke-static/range {p2 .. p3}, Lcom/dataManager/StorageChecker$Result;->toMb(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/dataManager/StorageChecker$Result;->toMb(J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/dataManager/StorageChecker$Result;->toMb(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    .line 49
    const-string v2, "Need %.1f MB but only %.1f MB free (%.1f MB short)"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 51
    .local v12, "desc":Ljava/lang/String;
    new-instance v6, Lcom/dataManager/StorageChecker$Result;

    const/4 v7, 0x0

    move-wide v8, p0

    move-wide v10, p2

    invoke-direct/range {v6 .. v12}, Lcom/dataManager/StorageChecker$Result;-><init>(ZJJLjava/lang/String;)V

    return-object v6
.end method

.method static ok(JJ)Lcom/dataManager/StorageChecker$Result;
    .locals 7
    .param p0, "available"    # J
    .param p2, "required"    # J

    .line 44
    new-instance v0, Lcom/dataManager/StorageChecker$Result;

    const/4 v1, 0x1

    const/4 v6, 0x0

    move-wide v2, p0

    move-wide v4, p2

    .end local p0    # "available":J
    .end local p2    # "required":J
    .local v2, "available":J
    .local v4, "required":J
    invoke-direct/range {v0 .. v6}, Lcom/dataManager/StorageChecker$Result;-><init>(ZJJLjava/lang/String;)V

    return-object v0
.end method

.method private static toMb(J)D
    .locals 4
    .param p0, "bytes"    # J

    .line 55
    long-to-double v0, p0

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method
