.class Lcom/tapjoy/TJCVirtualGoods$13;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods;->showShowingCachedItemsDialog()V
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
    .line 2078
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$13;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2081
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$13;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2082
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Can\'t load my items"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2084
    const-string v2, "OK"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$13$1;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoods$13$1;-><init>(Lcom/tapjoy/TJCVirtualGoods$13;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2093
    const-string v2, "Service is unreachable.\nOnly showing downloaded items."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2094
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2095
    .local v0, "alert":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$1802(Z)Z

    .line 2096
    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$13$2;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$13$2;-><init>(Lcom/tapjoy/TJCVirtualGoods$13;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2105
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2111
    :goto_0
    return-void

    .line 2107
    :catch_0
    move-exception v2

    goto :goto_0
.end method
