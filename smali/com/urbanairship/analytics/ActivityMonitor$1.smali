.class Lcom/urbanairship/analytics/ActivityMonitor$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/analytics/ActivityMonitor;->removeActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/analytics/ActivityMonitor;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/ActivityMonitor;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->this$0:Lcom/urbanairship/analytics/ActivityMonitor;

    iput-object p2, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->this$0:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-static {v1}, Lcom/urbanairship/analytics/ActivityMonitor;->access$000(Lcom/urbanairship/analytics/ActivityMonitor;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->this$0:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-static {v0}, Lcom/urbanairship/analytics/ActivityMonitor;->access$000(Lcom/urbanairship/analytics/ActivityMonitor;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityMonitor$1;->this$0:Lcom/urbanairship/analytics/ActivityMonitor;

    invoke-static {v0}, Lcom/urbanairship/analytics/ActivityMonitor;->access$100(Lcom/urbanairship/analytics/ActivityMonitor;)Lcom/urbanairship/analytics/ActivityMonitor$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/ActivityMonitor$Delegate;->onBackground()V

    :cond_0
    return-void
.end method
