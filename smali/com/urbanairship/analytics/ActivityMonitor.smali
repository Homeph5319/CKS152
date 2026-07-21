.class Lcom/urbanairship/analytics/ActivityMonitor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/analytics/ActivityMonitor$Delegate;
    }
.end annotation


# static fields
.field private static final BACKGROUND_DELAY_MS:I = 0x7d0


# instance fields
.field private activities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lcom/urbanairship/analytics/ActivityMonitor$Delegate;


# direct methods
.method public constructor <init>(Lcom/urbanairship/analytics/ActivityMonitor$Delegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activities:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->delegate:Lcom/urbanairship/analytics/ActivityMonitor$Delegate;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/analytics/ActivityMonitor;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activities:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/urbanairship/analytics/ActivityMonitor;)Lcom/urbanairship/analytics/ActivityMonitor$Delegate;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->delegate:Lcom/urbanairship/analytics/ActivityMonitor$Delegate;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activities:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor;->delegate:Lcom/urbanairship/analytics/ActivityMonitor$Delegate;

    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityMonitor$Delegate;->onForeground()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityMonitor;->activities:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/urbanairship/analytics/ActivityMonitor$1;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/analytics/ActivityMonitor$1;-><init>(Lcom/urbanairship/analytics/ActivityMonitor;Landroid/app/Activity;)V

    new-instance v1, Lcom/urbanairship/analytics/ActivityMonitor$2;

    invoke-direct {v1, p0, v0}, Lcom/urbanairship/analytics/ActivityMonitor$2;-><init>(Lcom/urbanairship/analytics/ActivityMonitor;Landroid/os/Handler;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
