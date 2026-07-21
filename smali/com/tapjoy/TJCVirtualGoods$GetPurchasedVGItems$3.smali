.class Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$3;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->onPostExecute(Lcom/tapjoy/VGStoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;)V
    .locals 0

    .prologue
    .line 2632
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$3;->this$1:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

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

    .line 2636
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 2637
    .local v0, "connectInstance":Lcom/tapjoy/TapjoyConnect;
    sput-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->offersFromVG:Z

    .line 2638
    sput-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->vgFromOffers:Z

    .line 2639
    sput-boolean v3, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 2641
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$100()Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2643
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$3;->this$1:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$100()Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->getPointsID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyConnect;->showOffers(Landroid/content/Context;Ljava/lang/String;)V

    .line 2650
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$3;->this$1:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setGetMoreItemDialogVisible(Z)V

    .line 2651
    return-void

    .line 2647
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems$3;->this$1:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->showOffers(Landroid/content/Context;)V

    goto :goto_0
.end method
