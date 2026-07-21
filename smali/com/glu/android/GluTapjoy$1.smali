.class Lcom/glu/android/GluTapjoy$1;
.super Ljava/lang/Thread;
.source "GluTapjoy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluTapjoy;->updateDataFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluTapjoy;


# direct methods
.method constructor <init>(Lcom/glu/android/GluTapjoy;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/glu/android/GluTapjoy$1;->this$0:Lcom/glu/android/GluTapjoy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 414
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    sget-object v1, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 415
    iget-object v0, p0, Lcom/glu/android/GluTapjoy$1;->this$0:Lcom/glu/android/GluTapjoy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glu/android/GluTapjoy;->access$002(Lcom/glu/android/GluTapjoy;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 416
    return-void
.end method
