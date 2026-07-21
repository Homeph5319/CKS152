.class public Lcom/tapjoy/DownloadVirtualGood;
.super Landroid/app/Activity;
.source "DownloadVirtualGood.java"


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field cancelListener:Landroid/view/View$OnClickListener;

.field private downloadBtn:Landroid/widget/Button;

.field downloadListener:Landroid/view/View$OnClickListener;

.field private vgAcquiredMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Lcom/tapjoy/DownloadVirtualGood$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/DownloadVirtualGood$1;-><init>(Lcom/tapjoy/DownloadVirtualGood;)V

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->downloadListener:Landroid/view/View$OnClickListener;

    .line 49
    new-instance v0, Lcom/tapjoy/DownloadVirtualGood$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/DownloadVirtualGood$2;-><init>(Lcom/tapjoy/DownloadVirtualGood;)V

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->cancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tapjoy/DownloadVirtualGood;->requestWindowFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "tapjoy_virtualgoods_reconnectvirtualgoods"

    const-string v3, "layout"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tapjoy/DownloadVirtualGood;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "DownloadBtn"

    const-string v3, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tapjoy/DownloadVirtualGood;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->downloadBtn:Landroid/widget/Button;

    .line 29
    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "CancelBtn"

    const-string v3, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tapjoy/DownloadVirtualGood;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->cancelBtn:Landroid/widget/Button;

    .line 31
    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "VGAcquiredMsgText"

    const-string v3, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tapjoy/DownloadVirtualGood;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->vgAcquiredMsg:Landroid/widget/TextView;

    .line 33
    iget-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->downloadBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/tapjoy/DownloadVirtualGood;->downloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->cancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/tapjoy/DownloadVirtualGood;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->vgAcquiredMsg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You have successfully acquired item \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Would you like to download it now?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method
