.class Lcom/tapjoy/TJCVirtualGoods$14;
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
    .line 2150
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 2155
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1900(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2157
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$2012(Lcom/tapjoy/TJCVirtualGoods;I)I

    .line 2158
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v1, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1202(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    .line 2159
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1300(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->storeItemsTableLayout:Landroid/widget/TableLayout;

    .line 2161
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1400(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TabHost;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateTabhost:Landroid/widget/TabHost;

    .line 2162
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1500(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateDetailView:Landroid/widget/LinearLayout;

    .line 2163
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->ctx:Landroid/content/Context;

    .line 2164
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$14;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2165
    return-void
.end method
