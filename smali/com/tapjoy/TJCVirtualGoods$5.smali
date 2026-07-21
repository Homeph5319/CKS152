.class Lcom/tapjoy/TJCVirtualGoods$5;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods;->showGetItemDetailDialog(Ljava/lang/String;)V
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
    .line 1719
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$5;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1722
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 1723
    .local v0, "connectInstance":Lcom/tapjoy/TapjoyConnect;
    sput-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->offersFromVG:Z

    .line 1724
    sput-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->vgFromOffers:Z

    .line 1725
    sput-boolean v3, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 1727
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$100()Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1728
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$5;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$100()Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->getPointsID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyConnect;->showOffers(Landroid/content/Context;Ljava/lang/String;)V

    .line 1734
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$5;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setGetMoreItemDialogVisible(Z)V

    .line 1735
    return-void

    .line 1731
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$5;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->showOffers(Landroid/content/Context;)V

    goto :goto_0
.end method
