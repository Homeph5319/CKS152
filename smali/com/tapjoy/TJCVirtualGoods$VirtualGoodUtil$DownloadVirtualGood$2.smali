.class Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;
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
    .line 3847
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/16 v7, 0x64

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 3851
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    sget v4, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_ZIP_FILE_TO_SD_CARD:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    sget v4, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_SD_CARD:I

    if-ne v3, v4, :cond_3

    .line 3856
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 3858
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 3860
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v4, "Download Pending"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3863
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 3865
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v4, "Download Pending"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3868
    :cond_2
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_3

    .line 3870
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 3871
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3872
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3877
    :cond_3
    new-instance v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-direct {v1, v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V

    .line 3878
    .local v1, "downloadAgain":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3879
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    iput-object v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    .line 3880
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    iput-object v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    .line 3881
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    iput-object v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    .line 3882
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3884
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    iput-object v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 3885
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    .line 3886
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    iput-object v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    .line 3887
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5200(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 3889
    .local v0, "connectInstance":Lcom/tapjoy/TapjoyConnect;
    if-eqz v0, :cond_4

    .line 3895
    :try_start_0
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v4, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    iput-object v4, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3906
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    iput-object v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    .line 3907
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    .line 3909
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    iput v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 3910
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-wide v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->size:J

    iput-wide v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->size:J

    .line 3911
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStream:Ljava/io/InputStream;

    iput-object v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStream:Ljava/io/InputStream;

    .line 3912
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-boolean v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    iput-boolean v3, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    .line 3914
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->access$5400(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;)Lcom/tapjoy/VGStoreItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3916
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/tapjoy/VGStoreItem;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->access$5400(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;)Lcom/tapjoy/VGStoreItem;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z

    .line 3917
    return-void

    .line 3897
    :catch_0
    move-exception v2

    .line 3902
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method
