.class Lcom/tapjoy/TJCVirtualGoods$9$2;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TJCVirtualGoods$9;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$9;)V
    .locals 0

    .prologue
    .line 1956
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$9$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$9$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$9;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v1, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$9$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$9;

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1202(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    .line 1960
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$9$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$9;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$9$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$9;

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1300(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->storeItemsTableLayout:Landroid/widget/TableLayout;

    .line 1962
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$9$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$9;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$9$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$9;

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1400(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TabHost;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateTabhost:Landroid/widget/TabHost;

    .line 1963
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$9$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$9;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$9$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$9;

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1500(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateDetailView:Landroid/widget/LinearLayout;

    .line 1964
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$9$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$9;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$9$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$9;

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->ctx:Landroid/content/Context;

    .line 1965
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$9$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$9;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1967
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1968
    return-void
.end method
