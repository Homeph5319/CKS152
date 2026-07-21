.class public Lcom/urbanairship/push/embedded/Config$Helium;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/embedded/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helium"
.end annotation


# static fields
.field public static initialRetryInterval:I

.field public static maxRetryInterval:J

.field public static max_keepalive_interval:J

.field public static readSleep:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x2710

    sput v0, Lcom/urbanairship/push/embedded/Config$Helium;->initialRetryInterval:I

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/urbanairship/push/embedded/Config$Helium;->maxRetryInterval:J

    const/16 v0, 0x64

    sput v0, Lcom/urbanairship/push/embedded/Config$Helium;->readSleep:I

    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/urbanairship/push/embedded/Config$Helium;->max_keepalive_interval:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
