.class Lcom/urbanairship/push/PushManager$1;
.super Lcom/urbanairship/restclient/AsyncHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/PushManager;->updateApid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/PushManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/PushManager;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/PushManager$1;->this$0:Lcom/urbanairship/push/PushManager;

    invoke-direct {p0}, Lcom/urbanairship/restclient/AsyncHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/urbanairship/restclient/Response;)V
    .locals 4

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registration status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registration result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    const-string v0, "Registration request succeeded."

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/PushManager$1;->this$0:Lcom/urbanairship/push/PushManager;

    invoke-static {v0}, Lcom/urbanairship/push/PushManager;->access$100(Lcom/urbanairship/push/PushManager;)Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->setApidUpdateNeeded(Z)Z

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getIntentReceiver()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.urbanairship.push.REGISTRATION_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/UAirship;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.APID"

    iget-object v3, p0, Lcom/urbanairship/push/PushManager$1;->this$0:Lcom/urbanairship/push/PushManager;

    invoke-static {v3}, Lcom/urbanairship/push/PushManager;->access$100(Lcom/urbanairship/push/PushManager;)Lcom/urbanairship/push/PushPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->getPushId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.urbanairship.push.REGISTRATION_VALID"

    iget-object v3, p0, Lcom/urbanairship/push/PushManager$1;->this$0:Lcom/urbanairship/push/PushManager;

    invoke-static {v3}, Lcom/urbanairship/push/PushManager;->access$100(Lcom/urbanairship/push/PushManager;)Lcom/urbanairship/push/PushPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/urbanairship/push/PushManager$1;->this$0:Lcom/urbanairship/push/PushManager;

    invoke-static {v1}, Lcom/urbanairship/push/PushManager;->access$100(Lcom/urbanairship/push/PushManager;)Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->getC2DMId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "com.urbanairship.push.C2DM_REGISTRATION_ID"

    iget-object v3, p0, Lcom/urbanairship/push/PushManager$1;->this$0:Lcom/urbanairship/push/PushManager;

    invoke-static {v3}, Lcom/urbanairship/push/PushManager;->access$100(Lcom/urbanairship/push/PushManager;)Lcom/urbanairship/push/PushPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/push/PushPreferences;->getC2DMId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registration request response status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "Error registering APID"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/push/PushManager$1;->this$0:Lcom/urbanairship/push/PushManager;

    invoke-static {v0}, Lcom/urbanairship/push/PushManager;->access$200(Lcom/urbanairship/push/PushManager;)V

    return-void
.end method
