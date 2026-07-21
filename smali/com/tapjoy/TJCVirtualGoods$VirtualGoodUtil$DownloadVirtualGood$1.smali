.class Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->onPostExecute(Lcom/tapjoy/VGStoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;)V
    .locals 0

    .prologue
    .line 3814
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 3817
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3819
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3820
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v1, "Download Failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3821
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 3823
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3824
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v1, "Download Failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3827
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 3829
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3830
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v1, "Download Failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3833
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 3834
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3835
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 3836
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3837
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 3838
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 3839
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 3840
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 3842
    :cond_6
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    const-string v1, "No more space is available on Device."

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMesage:Ljava/lang/String;

    .line 3843
    return-void
.end method
