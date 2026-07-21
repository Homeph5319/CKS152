.class Lcom/glu/android/OfflineNotificationManager$1;
.super Ljava/lang/Thread;
.source "OfflineNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/OfflineNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/OfflineNotificationManager;


# direct methods
.method constructor <init>(Lcom/glu/android/OfflineNotificationManager;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/glu/android/OfflineNotificationManager$1;->this$0:Lcom/glu/android/OfflineNotificationManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x32

    .line 117
    :goto_0
    sget-object v7, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/glu/android/OfflineNotificationManager$1;->this$0:Lcom/glu/android/OfflineNotificationManager;

    invoke-static {v7}, Lcom/glu/android/OfflineNotificationManager;->access$400(Lcom/glu/android/OfflineNotificationManager;)Ljava/lang/Thread;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 121
    .local v3, "now":J
    sget-object v7, Lcom/glu/android/OfflineNotificationManager;->instance:Lcom/glu/android/OfflineNotificationManager;

    invoke-virtual {v7, v3, v4}, Lcom/glu/android/OfflineNotificationManager;->processNotificationQueue(J)V

    .line 123
    const-wide/16 v0, 0x32

    .line 125
    .local v0, "TIMER_OFFSET":J
    const-wide/16 v7, 0x4e20

    add-long/2addr v7, v3

    sub-long v5, v7, v9

    .line 126
    .local v5, "optimalFutureTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/glu/android/OfflineNotificationManager$1;->this$0:Lcom/glu/android/OfflineNotificationManager;

    invoke-static {v7}, Lcom/glu/android/OfflineNotificationManager;->access$500(Lcom/glu/android/OfflineNotificationManager;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 128
    iget-object v7, p0, Lcom/glu/android/OfflineNotificationManager$1;->this$0:Lcom/glu/android/OfflineNotificationManager;

    invoke-static {v7}, Lcom/glu/android/OfflineNotificationManager;->access$500(Lcom/glu/android/OfflineNotificationManager;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/glu/android/OfflineNotificationManager$ONMObject;

    invoke-static {v7}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$100(Lcom/glu/android/OfflineNotificationManager$ONMObject;)J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    .line 129
    iget-object v7, p0, Lcom/glu/android/OfflineNotificationManager$1;->this$0:Lcom/glu/android/OfflineNotificationManager;

    invoke-static {v7}, Lcom/glu/android/OfflineNotificationManager;->access$500(Lcom/glu/android/OfflineNotificationManager;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/glu/android/OfflineNotificationManager$ONMObject;

    invoke-static {v7}, Lcom/glu/android/OfflineNotificationManager$ONMObject;->access$100(Lcom/glu/android/OfflineNotificationManager$ONMObject;)J

    move-result-wide v5

    .line 126
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    :cond_1
    sub-long v7, v5, v3

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Lcom/glu/android/GluUtil;->sleep(J)V

    goto :goto_0

    .line 134
    .end local v0    # "TIMER_OFFSET":J
    .end local v2    # "i":I
    .end local v3    # "now":J
    .end local v5    # "optimalFutureTime":J
    :cond_2
    const-string v7, "ONM STOPPED"

    invoke-static {v7}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 135
    return-void
.end method
