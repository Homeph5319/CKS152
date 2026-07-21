.class Lcom/tapjoy/TJCVirtualGoods$9;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods;->showFetchAllItemsDialog()V
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
    .line 1939
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1944
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1947
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Cancel"

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$9$1;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$9$1;-><init>(Lcom/tapjoy/TJCVirtualGoods$9;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1955
    const-string v1, "Retry"

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$9$2;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$9$2;-><init>(Lcom/tapjoy/TJCVirtualGoods$9;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1970
    const-string v1, "Service is unreachable.\nDo you want to try again?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1972
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods;->allItemAlert:Landroid/app/AlertDialog;

    .line 1973
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods;->allItemAlert:Landroid/app/AlertDialog;

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$9$3;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$9$3;-><init>(Lcom/tapjoy/TJCVirtualGoods$9;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1981
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$9;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods;->allItemAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1987
    :goto_0
    return-void

    .line 1983
    :catch_0
    move-exception v1

    goto :goto_0
.end method
