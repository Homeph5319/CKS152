.class Lcom/tapjoy/TJCVirtualGoods$15;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
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
    .line 2170
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$15;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 2173
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$15;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$2100(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2175
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$15;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$2212(Lcom/tapjoy/TJCVirtualGoods;I)I

    .line 2176
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$15;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v1, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$15;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1602(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;)Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    .line 2178
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$15;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$15;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1700(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->purchasedItemTableLayout:Landroid/widget/TableLayout;

    .line 2179
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$15;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$15;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->ctx:Landroid/content/Context;

    .line 2180
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$15;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2181
    return-void
.end method
