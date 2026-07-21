.class Lcom/tapjoy/TJCVirtualGoods$12$2;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TJCVirtualGoods$12;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$12;)V
    .locals 0

    .prologue
    .line 2048
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$12$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$12$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$12;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$12;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v1, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$12$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$12;

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoods$12;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1602(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;)Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    .line 2053
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$12$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$12;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$12;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$12$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$12;

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods$12;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1700(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->purchasedItemTableLayout:Landroid/widget/TableLayout;

    .line 2054
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$12$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$12;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$12;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$12$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$12;

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods$12;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->ctx:Landroid/content/Context;

    .line 2055
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$12$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$12;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$12;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2056
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2057
    return-void
.end method
