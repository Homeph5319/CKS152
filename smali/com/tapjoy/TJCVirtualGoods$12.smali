.class Lcom/tapjoy/TJCVirtualGoods$12;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods;->showPurchasedItemDialog()V
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
    .line 2034
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$12;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2037
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$12;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2038
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Can\'t load my items"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2040
    const-string v2, "Cancel"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$12$1;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoods$12$1;-><init>(Lcom/tapjoy/TJCVirtualGoods$12;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2047
    const-string v2, "Retry"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$12$2;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoods$12$2;-><init>(Lcom/tapjoy/TJCVirtualGoods$12;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2060
    const-string v2, "Service is unreachable.\nDo you want to try again?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2061
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2064
    .local v0, "alert":Landroid/app/AlertDialog;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2070
    :goto_0
    return-void

    .line 2066
    :catch_0
    move-exception v2

    goto :goto_0
.end method
