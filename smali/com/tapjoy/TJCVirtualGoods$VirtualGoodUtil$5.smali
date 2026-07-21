.class Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$5;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->showDLErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V
    .locals 0

    .prologue
    .line 4827
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$5;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 4830
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->DLErrorDialogShown:Z

    .line 4831
    return-void
.end method
