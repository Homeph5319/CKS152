.class Lcom/tapjoy/TJCVirtualGoods$1;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$1;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 494
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 495
    .local v0, "connectInstance":Lcom/tapjoy/TapjoyConnect;
    sput-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->offersFromVG:Z

    .line 496
    sput-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->vgFromOffers:Z

    .line 497
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 499
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$100()Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$1;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$100()Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->getPointsID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyConnect;->showOffers(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$1;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->showOffers(Landroid/content/Context;)V

    goto :goto_0
.end method
