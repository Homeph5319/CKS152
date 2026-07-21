.class Lcom/tapjoy/TJCVirtualGoods$DialogStatus;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogStatus"
.end annotation


# instance fields
.field private exceptionDialog:Z

.field private exceptionDialogMsg:Ljava/lang/String;

.field private getItemDialogMsg:Ljava/lang/String;

.field private getItemDialogVisible:Z

.field private getMoreItemDialogMsg:Ljava/lang/String;

.field private getMoreItemDialogVisible:Z

.field private itemDownloadedDialog:Z

.field private itemDownloadedMsg:Ljava/lang/String;

.field private progressDialogMsg:Ljava/lang/String;

.field private progressDialogVisible:Z

.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;

.field private vgStoreItem:Lcom/tapjoy/VGStoreItem;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2735
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2736
    iput-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getItemDialogVisible:Z

    .line 2737
    iput-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getMoreItemDialogVisible:Z

    .line 2738
    iput-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->progressDialogVisible:Z

    .line 2739
    iput-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->itemDownloadedDialog:Z

    .line 2741
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getItemDialogMsg:Ljava/lang/String;

    .line 2742
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getMoreItemDialogMsg:Ljava/lang/String;

    .line 2743
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->progressDialogMsg:Ljava/lang/String;

    .line 2744
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->itemDownloadedMsg:Ljava/lang/String;

    .line 2745
    return-void
.end method


# virtual methods
.method public getExceptionDialogMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2839
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->exceptionDialogMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getGetItemDialogMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getItemDialogMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getGetMoreItemDialogMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getMoreItemDialogMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getItemDownloadedMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->itemDownloadedMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressDialogMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->progressDialogMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getVgStoreItem()Lcom/tapjoy/VGStoreItem;
    .locals 1

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->vgStoreItem:Lcom/tapjoy/VGStoreItem;

    return-object v0
.end method

.method public isExceptionDialog()Z
    .locals 1

    .prologue
    .line 2829
    iget-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->exceptionDialog:Z

    return v0
.end method

.method public isGetItemDialogVisible()Z
    .locals 1

    .prologue
    .line 2726
    iget-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getItemDialogVisible:Z

    return v0
.end method

.method public isGetMoreItemDialogVisible()Z
    .locals 1

    .prologue
    .line 2749
    iget-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getMoreItemDialogVisible:Z

    return v0
.end method

.method public isItemDownloadedDialog()Z
    .locals 1

    .prologue
    .line 2769
    iget-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->itemDownloadedDialog:Z

    return v0
.end method

.method public isProgressDialogVisible()Z
    .locals 1

    .prologue
    .line 2759
    iget-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->progressDialogVisible:Z

    return v0
.end method

.method public setExceptionDialog(Z)V
    .locals 0
    .param p1, "exceptionDialog"    # Z

    .prologue
    .line 2834
    iput-boolean p1, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->exceptionDialog:Z

    .line 2835
    return-void
.end method

.method public setExceptionDialogMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "exceptionDialogMsg"    # Ljava/lang/String;

    .prologue
    .line 2844
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->exceptionDialogMsg:Ljava/lang/String;

    .line 2845
    return-void
.end method

.method public setGetItemDialogMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "getItemDialogMsg"    # Ljava/lang/String;

    .prologue
    .line 2784
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getItemDialogMsg:Ljava/lang/String;

    .line 2785
    return-void
.end method

.method public setGetItemDialogVisible(Z)V
    .locals 0
    .param p1, "getItemDialogVisible"    # Z

    .prologue
    .line 2731
    iput-boolean p1, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getItemDialogVisible:Z

    .line 2732
    return-void
.end method

.method public setGetMoreItemDialogMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "getMoreItemDialogMsg"    # Ljava/lang/String;

    .prologue
    .line 2794
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getMoreItemDialogMsg:Ljava/lang/String;

    .line 2795
    return-void
.end method

.method public setGetMoreItemDialogVisible(Z)V
    .locals 0
    .param p1, "getMoreItemDialogVisible"    # Z

    .prologue
    .line 2754
    iput-boolean p1, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getMoreItemDialogVisible:Z

    .line 2755
    return-void
.end method

.method public setItemDownloadedDialog(Z)V
    .locals 0
    .param p1, "itemDownloadedDialog"    # Z

    .prologue
    .line 2774
    iput-boolean p1, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->itemDownloadedDialog:Z

    .line 2775
    return-void
.end method

.method public setItemDownloadedMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemDownloadedMsg"    # Ljava/lang/String;

    .prologue
    .line 2814
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->itemDownloadedMsg:Ljava/lang/String;

    .line 2815
    return-void
.end method

.method public setProgressDialogMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "progressDialogMsg"    # Ljava/lang/String;

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->progressDialogMsg:Ljava/lang/String;

    .line 2805
    return-void
.end method

.method public setProgressDialogVisible(Z)V
    .locals 0
    .param p1, "progressDialogVisible"    # Z

    .prologue
    .line 2764
    iput-boolean p1, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->progressDialogVisible:Z

    .line 2765
    return-void
.end method

.method public setVgStoreItem(Lcom/tapjoy/VGStoreItem;)V
    .locals 0
    .param p1, "vgStoreItem"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 2824
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->vgStoreItem:Lcom/tapjoy/VGStoreItem;

    .line 2825
    return-void
.end method
