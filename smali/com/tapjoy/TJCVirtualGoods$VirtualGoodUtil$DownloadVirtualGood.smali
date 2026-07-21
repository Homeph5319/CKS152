.class public Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
.super Landroid/os/AsyncTask;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadVirtualGood"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/tapjoy/VGStoreItem;",
        "Ljava/lang/Integer;",
        "Lcom/tapjoy/VGStoreItem;",
        ">;"
    }
.end annotation


# instance fields
.field public actionTxt:Landroid/widget/TextView;

.field bytesRead:J

.field public detailProgressBar:Landroid/widget/ProgressBar;

.field public downloadCancel:Z

.field public downloadText:Landroid/widget/TextView;

.field public errorMsg:Landroid/widget/ImageView;

.field public errorMsgDetail:Landroid/widget/ImageView;

.field private exception:Ljava/lang/Exception;

.field inputStream:Ljava/io/InputStream;

.field inputStreamTraversed:Z

.field itemDownLoadFolder:Ljava/lang/String;

.field private itemFolder:Ljava/lang/String;

.field public pBar:Landroid/widget/ProgressBar;

.field prevFailedProcess:I

.field public retryBtn:Landroid/widget/Button;

.field public retryDetailBtn:Landroid/widget/Button;

.field size:J

.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

.field public totalSize:I

.field vgDownloadState:I

.field private vgItem:Lcom/tapjoy/VGStoreItem;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3658
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3635
    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->exception:Ljava/lang/Exception;

    .line 3637
    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 3639
    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgItem:Lcom/tapjoy/VGStoreItem;

    .line 3641
    iput v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->totalSize:I

    .line 3642
    iput-boolean v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadCancel:Z

    .line 3643
    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    .line 3644
    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    .line 3645
    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    .line 3646
    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    .line 3647
    iput-wide v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->size:J

    .line 3648
    iput-wide v3, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->bytesRead:J

    .line 3650
    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->itemFolder:Ljava/lang/String;

    .line 3651
    sget v0, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_INIT:I

    iput v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 3652
    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->prevFailedProcess:I

    .line 3653
    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStream:Ljava/io/InputStream;

    .line 3654
    iput-boolean v2, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    .line 3656
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->itemDownLoadFolder:Ljava/lang/String;

    .line 3659
    return-void
.end method

.method static synthetic access$5400(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;)Lcom/tapjoy/VGStoreItem;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    .prologue
    .line 3619
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgItem:Lcom/tapjoy/VGStoreItem;

    return-object v0
.end method

.method private connectToDownloadZipFile(Lcom/tapjoy/VGStoreItem;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "storeItem"    # Lcom/tapjoy/VGStoreItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4761
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4764
    .local v4, "lst":Ljava/util/ArrayList;
    :try_start_0
    invoke-virtual {p1}, Lcom/tapjoy/VGStoreItem;->getDatafileUrl()Ljava/lang/String;

    move-result-object v1

    .line 4765
    .local v1, "connectTo":Ljava/lang/String;
    const-string v8, " "

    const-string v9, "%20"

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4766
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4767
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 4768
    .local v6, "ucon":Ljava/net/URLConnection;
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 4769
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    .line 4770
    .local v5, "size":I
    const/16 v8, 0x3a98

    invoke-virtual {v6, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 4771
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 4772
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4773
    .local v0, "bis":Ljava/io/BufferedInputStream;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4774
    if-lez v5, :cond_0

    .line 4775
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4776
    :cond_0
    return-object v4

    .line 4778
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "connectTo":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "size":I
    .end local v6    # "ucon":Ljava/net/URLConnection;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 4780
    .local v2, "e":Ljava/net/SocketTimeoutException;
    const-string v8, "Tapjoy"

    const-string v9, "Network request time out."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4781
    new-instance v8, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xc

    invoke-direct {v8, v9, v10}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 4783
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v2

    .line 4785
    .local v2, "e":Ljava/net/MalformedURLException;
    const-string v8, "Virtual Goods"

    const-string v9, "Fail to access URL."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4786
    new-instance v8, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xb

    invoke-direct {v8, v9, v10}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 4788
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v2

    .line 4790
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Virtual Goods"

    const-string v9, "Fail to access URL."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4791
    new-instance v8, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xd

    invoke-direct {v8, v9, v10}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v8
.end method

.method private createFilesAndFolders(Ljava/lang/String;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)V
    .locals 16
    .param p1, "destFolder"    # Ljava/lang/String;
    .param p2, "zipentry"    # Ljava/util/zip/ZipEntry;
    .param p3, "zipFile"    # Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4683
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4687
    .local v5, "entryName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4689
    new-instance v3, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    const-string v15, "%20"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4690
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 4692
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 4694
    const-string v13, "DownloadVirtualGood"

    const-string v14, "Created directory"

    invoke-static {v13, v14}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4757
    .end local v3    # "dir":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 4702
    :cond_1
    :try_start_0
    const-string v9, ""

    .line 4703
    .local v9, "folder":Ljava/lang/String;
    const/16 v13, 0x2f

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-le v13, v14, :cond_2

    .line 4705
    const/4 v13, 0x0

    const-string v14, "/"

    invoke-virtual {v5, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 4707
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4708
    .local v12, "newPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v13, " "

    const-string v14, "%20"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4709
    .restart local v3    # "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 4711
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 4712
    const-string v13, "DownloadVirtualGood"

    const-string v14, "Created directory"

    invoke-static {v13, v14}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4716
    .end local v3    # "dir":Ljava/io/File;
    .end local v12    # "newPath":Ljava/lang/String;
    :cond_2
    const-string v13, "/"

    invoke-virtual {v5, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 4717
    .local v7, "fileName":Ljava/lang/String;
    const-string v13, "."

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 4719
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DOT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4720
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4723
    :cond_3
    const-string v13, " "

    const-string v14, "%20"

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4724
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4725
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 4727
    const/16 v13, 0x400

    new-array v2, v13, [B

    .line 4729
    .local v2, "buf":[B
    const/4 v8, 0x0

    .line 4730
    .local v8, "fileoutputstream":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    .end local v8    # "fileoutputstream":Ljava/io/FileOutputStream;
    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4731
    .restart local v8    # "fileoutputstream":Ljava/io/FileOutputStream;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    .line 4732
    .local v10, "inputStream":Ljava/io/InputStream;
    :goto_1
    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-virtual {v10, v2, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .local v11, "n":I
    const/4 v13, -0x1

    if-le v11, v13, :cond_4

    .line 4733
    const/4 v13, 0x0

    invoke-virtual {v8, v2, v13, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 4741
    .end local v2    # "buf":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileoutputstream":Ljava/io/FileOutputStream;
    .end local v9    # "folder":Ljava/lang/String;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "n":I
    :catch_0
    move-exception v4

    .line 4743
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4744
    throw v4

    .line 4734
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "buf":[B
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "fileoutputstream":Ljava/io/FileOutputStream;
    .restart local v9    # "folder":Ljava/lang/String;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "n":I
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 4746
    .end local v2    # "buf":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileoutputstream":Ljava/io/FileOutputStream;
    .end local v9    # "folder":Ljava/lang/String;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "n":I
    :catch_1
    move-exception v4

    .line 4748
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 4749
    throw v4

    .line 4751
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 4753
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 4754
    throw v4
.end method

.method private deleteDir(Ljava/io/File;)Z
    .locals 7
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 4450
    const-string v4, "File System"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleting directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4451
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4453
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4455
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 4456
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 4458
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 4459
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 4469
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_0
    :goto_1
    return v3

    .line 4456
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "success":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4466
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method private downLoadVirtualGood(Lcom/tapjoy/VGStoreItem;)Z
    .locals 24
    .param p1, "storeItem"    # Lcom/tapjoy/VGStoreItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4137
    const/4 v4, 0x0

    .line 4138
    .local v4, "downloaded":Z
    const-string v11, ""

    .line 4139
    .local v11, "storageRoot":Ljava/lang/String;
    const-string v15, ""

    .line 4140
    .local v15, "tempZipDownloads":Ljava/lang/String;
    const-string v3, ""

    .line 4141
    .local v3, "destFolder":Ljava/lang/String;
    const/16 v19, 0x0

    .line 4143
    .local v19, "vgItemDir":Ljava/io/File;
    const-string v20, "DownloadVirtualGood"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "downloadVirtualGood: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", owned: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getNumberOwned()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    sget v21, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_INIT:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 4146
    const-string v11, "data/data/"

    .line 4155
    :cond_0
    :goto_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/tempZipDownloads/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 4156
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4157
    .local v14, "tempDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_1

    .line 4159
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4160
    const-string v20, "DownloadVirtualGood"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Temp directory ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] created in temp download folder."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4163
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDatafileUrl()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5600(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4164
    .local v12, "storeItemFolder":Ljava/lang/String;
    if-eqz v12, :cond_8

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 4166
    const/16 v20, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 4167
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/vgDownloads/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4168
    new-instance v19, Ljava/io/File;

    .end local v19    # "vgItemDir":Ljava/io/File;
    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4170
    .restart local v19    # "vgItemDir":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_2

    .line 4172
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 4173
    const-string v20, "DownloadVirtualGood"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Directory ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] created."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4176
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    sget v21, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_INIT:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 4177
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_START_DOWNLOAD:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4188
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    sget v21, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_START_DOWNLOAD:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 4195
    :cond_4
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->connectToDownloadZipFile(Lcom/tapjoy/VGStoreItem;)Ljava/util/ArrayList;

    move-result-object v9

    .line 4197
    .local v9, "lst":Ljava/util/ArrayList;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 4199
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->size:J

    .line 4202
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_6

    .line 4204
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/io/InputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStream:Ljava/io/InputStream;

    .line 4206
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 4207
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_ZIP_FILE_TO_PHONE:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4221
    .end local v9    # "lst":Ljava/util/ArrayList;
    :cond_6
    const/16 v16, 0x0

    .line 4222
    .local v16, "tempZipFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    sget v21, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_ZIP_FILE_TO_PHONE:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 4224
    new-instance v6, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data/data/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/tempZipDownloads/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".zip"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4225
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 4227
    const-string v20, "DownloadVirtualGood"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Creating empty zip file for"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " at device."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4228
    move-object/from16 v16, v6

    .line 4229
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    .line 4230
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_PHONE:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    :goto_1
    move-object/from16 v17, v16

    .line 4355
    .end local v6    # "f":Ljava/io/File;
    .end local v16    # "tempZipFile":Ljava/io/File;
    .local v17, "tempZipFile":Ljava/io/File;
    :goto_2
    if-nez v4, :cond_11

    .line 4357
    const/16 v8, 0xa

    .local v8, "j":I
    :goto_3
    const/16 v20, 0x3f1

    move/from16 v0, v20

    if-ge v8, v0, :cond_11

    .line 4358
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    div-int/lit8 v22, v8, 0xa

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->publishProgress([Ljava/lang/Object;)V

    .line 4357
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 4148
    .end local v8    # "j":I
    .end local v12    # "storeItemFolder":Ljava/lang/String;
    .end local v14    # "tempDir":Ljava/io/File;
    .end local v17    # "tempZipFile":Ljava/io/File;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    sget v21, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_ZIP_FILE_TO_SD_CARD:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 4151
    const-string v11, "/sdcard/"

    .line 4152
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/tapjoy/TJCVirtualGoods;->setDataSavedAtSDCard(Z)V

    goto/16 :goto_0

    .line 4181
    .restart local v12    # "storeItemFolder":Ljava/lang/String;
    .restart local v14    # "tempDir":Ljava/io/File;
    :cond_8
    const-string v20, "DownloadVirtualGood"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " do not have any attched file to download"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4182
    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setDatafileUrl(Ljava/lang/String;)V

    .line 4183
    invoke-direct/range {p0 .. p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->saveInfo(Lcom/tapjoy/VGStoreItem;)V

    .line 4184
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_NO_DOWNLOAD_LINK:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4185
    const/16 v20, 0x1

    .line 4445
    :goto_4
    return v20

    .line 4210
    :catch_0
    move-exception v5

    .line 4213
    .local v5, "e":Ljava/lang/Exception;
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_FAIL:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4216
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->deleteDir(Ljava/io/File;)Z

    .line 4217
    throw v5

    .line 4234
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "f":Ljava/io/File;
    .restart local v16    # "tempZipFile":Ljava/io/File;
    :cond_9
    new-instance v6, Ljava/io/File;

    .end local v6    # "f":Ljava/io/File;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/sdcard/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/tempZipDownloads/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".zip"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4236
    .restart local v6    # "f":Ljava/io/File;
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/tapjoy/TJCVirtualGoods;->setDataSavedAtSDCard(Z)V

    .line 4238
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 4240
    const-string v20, "DownloadVirtualGood"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " already downloaded at SD card."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4242
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_5
    const/16 v20, 0xa

    move/from16 v0, v20

    if-gt v7, v0, :cond_a

    .line 4244
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    mul-int/lit8 v22, v7, 0xa

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->publishProgress([Ljava/lang/Object;)V

    .line 4242
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 4246
    :cond_a
    move-object/from16 v16, v6

    .line 4247
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    .line 4248
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_SD_CARD:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    goto/16 :goto_1

    .line 4253
    .end local v7    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->size:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_d

    .line 4255
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 4256
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 4259
    :cond_c
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_FAIL:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    move-object/from16 v20, v0

    const-string v21, "Network is very slow or down. Please check network proxy settings."

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMesage:Ljava/lang/String;

    .line 4261
    new-instance v20, Ljava/lang/Exception;

    const-string v21, "Network is very slow or down. Please check network proxy settings."

    invoke-direct/range {v20 .. v21}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v20

    .line 4263
    :cond_d
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods$TJCUtility;->internalFreeMemorySize()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->size:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-lez v20, :cond_f

    .line 4265
    new-instance v16, Ljava/io/File;

    .end local v16    # "tempZipFile":Ljava/io/File;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".zip"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v15, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4266
    .restart local v16    # "tempZipFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 4268
    const-string v20, "DownloadVirtualGood"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Creating empty zip file for"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in temp folder."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4272
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadZipFile(Ljava/io/File;)V

    .line 4273
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    .line 4274
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_PHONE:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4275
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 4277
    :catch_1
    move-exception v5

    .line 4279
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 4280
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_INIT:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4281
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    .line 4282
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4283
    throw v5

    .line 4285
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 4287
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 4288
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_INIT:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4289
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    .line 4290
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 4291
    throw v5

    .line 4297
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_e
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_PHONE:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4298
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    goto/16 :goto_1

    .line 4303
    :cond_f
    new-instance v13, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data/data/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/vgDownloads/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4304
    .local v13, "temp":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->deleteDir(Ljava/io/File;)Z

    .line 4306
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_ZIP_FILE_TO_SD_CARD:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4307
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    .line 4308
    new-instance v20, Ljava/lang/Exception;

    const-string v21, "No more space is available on Device."

    invoke-direct/range {v20 .. v21}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v20

    .line 4313
    .end local v6    # "f":Ljava/io/File;
    .end local v13    # "temp":Ljava/io/File;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    sget v21, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_ZIP_FILE_TO_SD_CARD:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 4321
    :try_start_2
    new-instance v17, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".zip"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v15, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 4322
    .end local v16    # "tempZipFile":Ljava/io/File;
    .restart local v17    # "tempZipFile":Ljava/io/File;
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadZipFile(Ljava/io/File;)V

    .line 4323
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    .line 4324
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_SD_CARD:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 4325
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 4334
    .end local v17    # "tempZipFile":Ljava/io/File;
    .restart local v16    # "tempZipFile":Ljava/io/File;
    :catch_3
    move-exception v5

    .line 4336
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 4338
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_ZIP_FILE_TO_SD_CARD:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4339
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    .line 4340
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4341
    throw v5

    .line 4343
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    .line 4345
    .local v5, "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 4348
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_ZIP_FILE_TO_SD_CARD:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4349
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStreamTraversed:Z

    .line 4350
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 4351
    throw v5

    .line 4362
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v16    # "tempZipFile":Ljava/io/File;
    .restart local v17    # "tempZipFile":Ljava/io/File;
    :cond_11
    const/4 v10, 0x0

    .line 4363
    .local v10, "moveToExtractionAtSdCard":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    sget v21, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_PHONE:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    sget v21, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_SD_CARD:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 4367
    :cond_12
    :try_start_4
    new-instance v16, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data/data/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/tempZipDownloads/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".zip"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 4368
    .end local v17    # "tempZipFile":Ljava/io/File;
    .restart local v16    # "tempZipFile":Ljava/io/File;
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_13

    .line 4370
    new-instance v17, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/sdcard/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/tempZipDownloads/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".zip"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 4371
    .end local v16    # "tempZipFile":Ljava/io/File;
    .restart local v17    # "tempZipFile":Ljava/io/File;
    const/16 v20, 0x1

    :try_start_6
    invoke-static/range {v20 .. v20}, Lcom/tapjoy/TJCVirtualGoods;->setDataSavedAtSDCard(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v16, v17

    .line 4386
    .end local v17    # "tempZipFile":Ljava/io/File;
    .restart local v16    # "tempZipFile":Ljava/io/File;
    :cond_13
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->extractDownloadedVirtualGood(Ljava/io/File;Lcom/tapjoy/VGStoreItem;)V

    .line 4389
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 4423
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    sget v21, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_SUCCESS_TO_PHONE:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    sget v21, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_SUCCESS_TO_SD_CARD:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 4427
    :cond_14
    :try_start_8
    invoke-direct/range {p0 .. p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->saveInfo(Lcom/tapjoy/VGStoreItem;)V

    .line 4429
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 4430
    .local v18, "tempZipFilePath":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v20

    if-eqz v20, :cond_17

    .line 4431
    const-string v20, "Virtual Goods"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Temp File ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] deleted."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4435
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 4436
    const/16 v20, 0x1

    goto/16 :goto_4

    .line 4391
    .end local v16    # "tempZipFile":Ljava/io/File;
    .end local v18    # "tempZipFilePath":Ljava/lang/String;
    .restart local v17    # "tempZipFile":Ljava/io/File;
    :catch_5
    move-exception v5

    move-object/from16 v16, v17

    .line 4394
    .end local v17    # "tempZipFile":Ljava/io/File;
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v16    # "tempZipFile":Ljava/io/File;
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->deleteDir(Ljava/io/File;)Z

    .line 4401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    sget v21, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_FAIL:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_15

    .line 4403
    if-nez v10, :cond_15

    .line 4406
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    move/from16 v20, v0

    sget v21, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_SD_CARD:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 4408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    move-object/from16 v20, v0

    const-string v21, "No more space is available on Device and SD Card"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMesage:Ljava/lang/String;

    .line 4409
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_FAIL:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4419
    :cond_15
    :goto_b
    throw v5

    .line 4415
    :cond_16
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_SD_CARD:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    goto :goto_b

    .line 4433
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v18    # "tempZipFilePath":Ljava/lang/String;
    :cond_17
    :try_start_9
    const-string v20, "Virtual Goods"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Temp File ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] not deleted."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_9

    .line 4438
    .end local v18    # "tempZipFilePath":Ljava/lang/String;
    :catch_6
    move-exception v5

    .line 4440
    .restart local v5    # "e":Ljava/lang/Exception;
    sget v20, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_FAIL:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4441
    throw v5

    .line 4445
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_18
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 4391
    :catch_7
    move-exception v5

    goto :goto_a

    .line 4343
    .end local v10    # "moveToExtractionAtSdCard":Z
    .end local v16    # "tempZipFile":Ljava/io/File;
    .restart local v17    # "tempZipFile":Ljava/io/File;
    :catch_8
    move-exception v5

    move-object/from16 v16, v17

    .end local v17    # "tempZipFile":Ljava/io/File;
    .restart local v16    # "tempZipFile":Ljava/io/File;
    goto/16 :goto_7

    .line 4334
    .end local v16    # "tempZipFile":Ljava/io/File;
    .restart local v17    # "tempZipFile":Ljava/io/File;
    :catch_9
    move-exception v5

    move-object/from16 v16, v17

    .end local v17    # "tempZipFile":Ljava/io/File;
    .restart local v16    # "tempZipFile":Ljava/io/File;
    goto/16 :goto_6

    .end local v16    # "tempZipFile":Ljava/io/File;
    .restart local v10    # "moveToExtractionAtSdCard":Z
    .restart local v17    # "tempZipFile":Ljava/io/File;
    :cond_19
    move-object/from16 v16, v17

    .end local v17    # "tempZipFile":Ljava/io/File;
    .restart local v16    # "tempZipFile":Ljava/io/File;
    goto/16 :goto_8

    .end local v10    # "moveToExtractionAtSdCard":Z
    :cond_1a
    move-object/from16 v17, v16

    .end local v16    # "tempZipFile":Ljava/io/File;
    .restart local v17    # "tempZipFile":Ljava/io/File;
    goto/16 :goto_2
.end method

.method private downloadZipFile(Ljava/io/File;)V
    .locals 14
    .param p1, "tempZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4063
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 4065
    .local v1, "buf":[B
    const/4 v5, 0x0

    .line 4068
    .local v5, "fileoutputstream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4069
    .end local v5    # "fileoutputstream":Ljava/io/FileOutputStream;
    .local v6, "fileoutputstream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-wide v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->size:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_b

    .line 4071
    iget-wide v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->size:J

    const-wide/16 v12, 0x64

    div-long/2addr v10, v12

    long-to-float v8, v10

    .line 4073
    .local v8, "percentage":F
    iget-object v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 4074
    iget-object v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    if-eqz v10, :cond_0

    .line 4076
    iget-object v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 4078
    :cond_0
    const/4 v2, 0x0

    .line 4079
    .local v2, "counter":I
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStream:Ljava/io/InputStream;

    const/4 v11, 0x0

    const/16 v12, 0x400

    invoke-virtual {v10, v1, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .local v7, "n":I
    const/4 v10, -0x1

    if-le v7, v10, :cond_9

    .line 4081
    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4083
    :cond_2
    new-instance v9, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    const-string v10, "fail to read"

    const/16 v11, 0xd

    invoke-direct {v9, v10, v11}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    .line 4084
    .local v9, "tjcexception":Lcom/tapjoy/TJCVirtualGoods$TJCException;
    throw v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4111
    .end local v2    # "counter":I
    .end local v7    # "n":I
    .end local v8    # "percentage":F
    .end local v9    # "tjcexception":Lcom/tapjoy/TJCVirtualGoods$TJCException;
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 4113
    .end local v6    # "fileoutputstream":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "fileoutputstream":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v5, :cond_3

    .line 4114
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 4115
    :cond_3
    iget-object v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStream:Ljava/io/InputStream;

    if-eqz v10, :cond_4

    .line 4116
    iget-object v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 4117
    :cond_4
    throw v4

    .line 4087
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fileoutputstream":Ljava/io/FileOutputStream;
    .restart local v2    # "counter":I
    .restart local v6    # "fileoutputstream":Ljava/io/FileOutputStream;
    .restart local v7    # "n":I
    .restart local v8    # "percentage":F
    :cond_5
    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v6, v1, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 4088
    iget-wide v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->bytesRead:J

    int-to-long v12, v7

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->bytesRead:J

    .line 4089
    iget-wide v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->bytesRead:J

    long-to-float v10, v10

    div-float v0, v10, v8

    .line 4090
    .local v0, "b":F
    float-to-int v3, v0

    .line 4092
    .local v3, "downloadedPercentage":I
    if-le v3, v2, :cond_1

    .line 4094
    move v2, v3

    .line 4095
    const/16 v10, 0x64

    if-le v2, v10, :cond_6

    .line 4096
    const/16 v2, 0x64

    .line 4097
    :cond_6
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v10}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4119
    .end local v0    # "b":F
    .end local v2    # "counter":I
    .end local v3    # "downloadedPercentage":I
    .end local v7    # "n":I
    .end local v8    # "percentage":F
    :catch_1
    move-exception v4

    move-object v5, v6

    .line 4121
    .end local v6    # "fileoutputstream":Ljava/io/FileOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "fileoutputstream":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v5, :cond_7

    .line 4122
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 4123
    :cond_7
    iget-object v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStream:Ljava/io/InputStream;

    if-eqz v10, :cond_8

    .line 4124
    iget-object v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 4125
    :cond_8
    throw v4

    .line 4101
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fileoutputstream":Ljava/io/FileOutputStream;
    .restart local v2    # "counter":I
    .restart local v6    # "fileoutputstream":Ljava/io/FileOutputStream;
    .restart local v7    # "n":I
    .restart local v8    # "percentage":F
    :cond_9
    const/4 v10, -0x1

    if-ne v7, v10, :cond_a

    const/16 v10, 0x64

    if-ge v2, v10, :cond_a

    .line 4103
    :try_start_3
    new-instance v9, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    const-string v10, "fail to read"

    const/16 v11, 0xd

    invoke-direct {v9, v10, v11}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    .line 4104
    .restart local v9    # "tjcexception":Lcom/tapjoy/TJCVirtualGoods$TJCException;
    throw v9

    .line 4106
    .end local v9    # "tjcexception":Lcom/tapjoy/TJCVirtualGoods$TJCException;
    :cond_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 4108
    .end local v2    # "counter":I
    .end local v7    # "n":I
    .end local v8    # "percentage":F
    :cond_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 4109
    iget-object v10, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 4127
    return-void

    .line 4119
    .end local v6    # "fileoutputstream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileoutputstream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    goto :goto_2

    .line 4111
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method private extractDownloadedVirtualGood(Ljava/io/File;Lcom/tapjoy/VGStoreItem;)V
    .locals 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "storeItem"    # Lcom/tapjoy/VGStoreItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4570
    const-string v12, "DownloadVirtualGood"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "extractDownloadedVirtualGood file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", vgitem: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", owned: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/tapjoy/VGStoreItem;->getNumberOwned()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4580
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-virtual/range {p2 .. p2}, Lcom/tapjoy/VGStoreItem;->getDatafileUrl()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5600(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4581
    .local v9, "storeItemFolder":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x4

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 4583
    if-eqz v9, :cond_5

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 4585
    const-string v1, ""

    .line 4587
    .local v1, "destFolder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    sget v13, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_SD_CARD:I

    if-ne v12, v13, :cond_2

    .line 4589
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/sdcard/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/vgDownloads/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4590
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/tapjoy/TJCVirtualGoods;->setDataSavedAtSDCard(Z)V

    .line 4597
    :goto_0
    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->itemDownLoadFolder:Ljava/lang/String;

    .line 4599
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4606
    .local v4, "f":Ljava/io/File;
    const-string v12, "DownloadVirtualGood"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "File saving to: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4607
    const-string v12, "DownloadVirtualGood"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "File saving to: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4609
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    .line 4610
    .local v7, "path":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4611
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    mul-int/2addr v12, v13

    int-to-long v5, v12

    .line 4612
    .local v5, "free_memory":J
    const-string v12, "File System"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FREE INTERNAL MEMORY: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-wide/16 v14, 0x400

    div-long v14, v5, v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " KB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4614
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 4615
    new-instance v8, Landroid/os/StatFs;

    .end local v8    # "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4616
    .restart local v8    # "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    mul-int/2addr v12, v13

    int-to-long v5, v12

    .line 4617
    const-string v12, "File System"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FREE EXTERNAL MEMORY: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-wide/16 v14, 0x400

    div-long v14, v5, v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " KB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4623
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 4624
    const-string v12, "DownloadVirtualGood"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Created directory: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4628
    :cond_0
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 4630
    .local v10, "zipFile":Ljava/util/zip/ZipFile;
    if-eqz v10, :cond_5

    .line 4632
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 4634
    .local v3, "en":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 4636
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->isCancelled()Z

    move-result v12

    if-nez v12, :cond_3

    .line 4637
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4638
    .local v11, "zipentry":Ljava/util/zip/ZipEntry;
    if-eqz v11, :cond_1

    .line 4642
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11, v10}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->createFilesAndFolders(Ljava/lang/String;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4644
    :catch_0
    move-exception v2

    .line 4646
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v12, "DownloadVirtualGood"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error trying to create files and folders e: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4647
    throw v2
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 4660
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "en":Ljava/util/Enumeration;
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v11    # "zipentry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v2

    .line 4663
    .local v2, "e":Ljava/util/zip/ZipException;
    const-string v12, "DownloadVirtualGood"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ZipException e: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/util/zip/ZipException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4664
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 4666
    throw v2

    .line 4594
    .end local v2    # "e":Ljava/util/zip/ZipException;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "free_memory":J
    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "stat":Landroid/os/StatFs;
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "data/data/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/vgDownloads/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4653
    .restart local v3    # "en":Ljava/util/Enumeration;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "free_memory":J
    .restart local v7    # "path":Ljava/io/File;
    .restart local v8    # "stat":Landroid/os/StatFs;
    .restart local v10    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_3
    sget v12, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_FAIL:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    .line 4657
    :cond_4
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4679
    .end local v1    # "destFolder":Ljava/lang/String;
    .end local v3    # "en":Ljava/util/Enumeration;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "free_memory":J
    .end local v7    # "path":Ljava/io/File;
    .end local v8    # "stat":Landroid/os/StatFs;
    .end local v10    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_5
    return-void

    .line 4668
    .restart local v1    # "destFolder":Ljava/lang/String;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "free_memory":J
    .restart local v7    # "path":Ljava/io/File;
    .restart local v8    # "stat":Landroid/os/StatFs;
    :catch_2
    move-exception v2

    .line 4671
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "DownloadVirtualGood"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Extraction failed e: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4674
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->deleteDir(Ljava/io/File;)Z

    .line 4675
    throw v2
.end method

.method private saveInfo(Lcom/tapjoy/VGStoreItem;)V
    .locals 15
    .param p1, "storeItem"    # Lcom/tapjoy/VGStoreItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4480
    const-string v12, "Database"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "saveInfo: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4481
    const-string v12, "Database"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "vgDownloadState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4483
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDatafileUrl()Ljava/lang/String;

    move-result-object v1

    .line 4484
    .local v1, "dataFileUrl":Ljava/lang/String;
    const/4 v0, 0x1

    .line 4486
    .local v0, "SQLinsert":Z
    if-eqz v1, :cond_3

    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 4488
    const-string v12, "/"

    invoke-virtual {v1, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 4489
    .local v5, "index":I
    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x4

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4491
    iget v12, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    sget v13, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_SUCCESS_TO_PHONE:I

    if-gt v12, v13, :cond_2

    .line 4492
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "data/data/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/vgDownloads/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4499
    .end local v5    # "index":I
    :goto_0
    if-eqz p1, :cond_4

    .line 4501
    iget-object v12, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v12}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5200(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/tapjoy/TJCVirtualGoods$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 4502
    .local v7, "myDB":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 4508
    .local v11, "q":Ljava/lang/StringBuilder;
    const-string v12, "INSERT INTO tapjoy_VGStoreItems (VGStoreItemID, AppleProductID, Price, Name,Description , ItemTypeName , ItemsOwned , ThumbImageName , FullImageName , DataFileName )"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4509
    const-string v12, " VALUES ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4510
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4511
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getProductID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4513
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getPrice()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4515
    .local v10, "price":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 4517
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-le v12, v13, :cond_0

    .line 4518
    const-string v12, ","

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4519
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4521
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;->replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4522
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;->replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4523
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemTypeName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;->replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4524
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getNumberOwned()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4525
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4526
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getFullImageUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4527
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\')"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4531
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4540
    :goto_1
    if-eqz v0, :cond_4

    .line 4542
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v6

    .line 4546
    .local v6, "lst":Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_4

    .line 4548
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tapjoy/VGStoreItemAttributeValue;

    .line 4549
    .local v8, "obj":Lcom/tapjoy/VGStoreItemAttributeValue;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 4550
    .local v9, "p":Ljava/lang/StringBuilder;
    const-string v12, "INSERT INTO tapjoy_VGStoreItemAttribute ( VGStoreItemID, AttributeName, AttributeValue)"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4551
    const-string v12, " Values ("

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4552
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4553
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;->replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4554
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;->replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\')"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4557
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4546
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 4494
    .end local v4    # "i":I
    .end local v6    # "lst":Ljava/util/List;
    .end local v7    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "obj":Lcom/tapjoy/VGStoreItemAttributeValue;
    .end local v9    # "p":Ljava/lang/StringBuilder;
    .end local v10    # "price":Ljava/lang/String;
    .end local v11    # "q":Ljava/lang/StringBuilder;
    .restart local v5    # "index":I
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/sdcard/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$5100()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/vgDownloads/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4497
    .end local v5    # "index":I
    :cond_3
    const-string v1, ""

    goto/16 :goto_0

    .line 4533
    .restart local v7    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "price":Ljava/lang/String;
    .restart local v11    # "q":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 4536
    .local v3, "e1":Landroid/database/SQLException;
    const-string v12, "Database"

    const-string v13, "Row already exists"

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4537
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 4559
    .end local v3    # "e1":Landroid/database/SQLException;
    .restart local v4    # "i":I
    .restart local v6    # "lst":Ljava/util/List;
    .restart local v8    # "obj":Lcom/tapjoy/VGStoreItemAttributeValue;
    .restart local v9    # "p":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    .line 4561
    .local v2, "e":Landroid/database/SQLException;
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_3

    .line 4566
    .end local v2    # "e":Landroid/database/SQLException;
    .end local v4    # "i":I
    .end local v6    # "lst":Ljava/util/List;
    .end local v7    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "obj":Lcom/tapjoy/VGStoreItemAttributeValue;
    .end local v9    # "p":Ljava/lang/StringBuilder;
    .end local v10    # "price":Ljava/lang/String;
    .end local v11    # "q":Ljava/lang/StringBuilder;
    :cond_4
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/tapjoy/VGStoreItem;)Lcom/tapjoy/VGStoreItem;
    .locals 2
    .param p1, "obj"    # [Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 3687
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgItem:Lcom/tapjoy/VGStoreItem;

    .line 3688
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgItem:Lcom/tapjoy/VGStoreItem;

    invoke-direct {p0, v1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downLoadVirtualGood(Lcom/tapjoy/VGStoreItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3689
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgItem:Lcom/tapjoy/VGStoreItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3696
    :goto_0
    return-object v1

    .line 3691
    :catch_0
    move-exception v0

    .line 3693
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->exception:Ljava/lang/Exception;

    .line 3696
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 3619
    check-cast p1, [Lcom/tapjoy/VGStoreItem;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->doInBackground([Lcom/tapjoy/VGStoreItem;)Lcom/tapjoy/VGStoreItem;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 3624
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 3625
    iget-boolean v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadCancel:Z

    if-nez v1, :cond_0

    .line 3627
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->itemFolder:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3629
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->itemFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3630
    .local v0, "dir":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->deleteDir(Ljava/io/File;)Z

    .line 3633
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/tapjoy/VGStoreItem;)V
    .locals 10
    .param p1, "vgItem"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 3724
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-virtual {v4, p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->removeAndExecuteNext(Landroid/os/AsyncTask;)Z

    .line 3725
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget v5, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->i:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->i:I

    .line 3727
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 3729
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3731
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3735
    :cond_0
    const/4 v3, 0x0

    .line 3737
    .local v3, "startDownloadingAtSDCard":Z
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->exception:Ljava/lang/Exception;

    if-eqz v4, :cond_1

    .line 3738
    const-string v4, "DownloadVirtualGood"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPostExecute e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->exception:Ljava/lang/Exception;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3740
    :cond_1
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->exception:Ljava/lang/Exception;

    if-eqz v4, :cond_17

    .line 3742
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->exception:Ljava/lang/Exception;

    instance-of v4, v4, Ljava/util/zip/ZipException;

    if-eqz v4, :cond_9

    .line 3744
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3746
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 3747
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v5, "Download Failed"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3749
    :cond_2
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_3

    .line 3751
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3753
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v5, "Download Failed"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3756
    :cond_3
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 3757
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3759
    :cond_4
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    if-eqz v4, :cond_5

    .line 3760
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 3762
    :cond_5
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    if-eqz v4, :cond_6

    .line 3763
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 3765
    :cond_6
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    .line 3766
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3768
    :cond_7
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    const-string v5, "Download Failed"

    iput-object v5, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMesage:Ljava/lang/String;

    .line 4059
    :cond_8
    :goto_0
    return-void

    .line 3772
    :cond_9
    const/4 v2, 0x0

    .line 3775
    .local v2, "processEnd":Z
    iget v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    sget v5, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_ZIP_FILE_TO_SD_CARD:I

    if-eq v4, v5, :cond_a

    iget v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    sget v5, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_SD_CARD:I

    if-ne v4, v5, :cond_b

    .line 3780
    :cond_a
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods$TJCUtility;->externalFreeMemorySize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_e

    .line 3782
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    const-string v5, "No more space is available on Device."

    iput-object v5, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMesage:Ljava/lang/String;

    .line 3783
    const/4 v2, 0x1

    .line 3801
    :cond_b
    :goto_1
    if-eqz v3, :cond_10

    .line 3803
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v4, v5, :cond_c

    .line 3804
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->cancel(Z)Z

    .line 3806
    :cond_c
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v4, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    if-nez v4, :cond_d

    .line 3808
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v5}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5200(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v5

    iput-object v5, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 3811
    :cond_d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5200(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3812
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough space on the device. Would you like to download Item \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgItem:Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v5}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' on SD card?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3813
    const-string v4, "No"

    new-instance v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;

    invoke-direct {v5, p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$1;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3846
    const-string v4, "Yes"

    new-instance v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;

    invoke-direct {v5, p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$2;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3919
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3922
    .local v0, "alert":Landroid/app/AlertDialog;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3924
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 3787
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_e
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods$TJCUtility;->externalFreeMemorySize()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->size:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_f

    .line 3789
    const/4 v3, 0x1

    goto :goto_1

    .line 3793
    :cond_f
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    const-string v5, "No more space is available on Device and SD Card."

    iput-object v5, v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMesage:Ljava/lang/String;

    .line 3796
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 3929
    :cond_10
    if-nez v2, :cond_11

    iget v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    sget v5, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_FAIL:I

    if-eq v4, v5, :cond_11

    iget v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    sget v5, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_INIT:I

    if-ne v4, v5, :cond_8

    .line 3931
    :cond_11
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3932
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    if-eqz v4, :cond_12

    .line 3933
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v5, "Download Failed"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3934
    :cond_12
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_13

    .line 3936
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3937
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v5, "Download Failed"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3939
    :cond_13
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    if-eqz v4, :cond_14

    .line 3940
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3941
    :cond_14
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    if-eqz v4, :cond_15

    .line 3942
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 3943
    :cond_15
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    if-eqz v4, :cond_16

    .line 3944
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 3945
    :cond_16
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    .line 3946
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3952
    .end local v2    # "processEnd":Z
    :cond_17
    if-nez p1, :cond_19

    .line 3954
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3955
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    if-eqz v4, :cond_18

    .line 3956
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v5, "Download Failed"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3959
    :cond_18
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->this$0:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->access$5200(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3960
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgItem:Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v5}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fail to download. Would you like to download again?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3961
    const-string v4, "Cancel"

    new-instance v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$3;

    invoke-direct {v5, p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$3;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3971
    const-string v4, "Retry"

    new-instance v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$4;

    invoke-direct {v5, p0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood$4;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3992
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3995
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    :try_start_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3997
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 4005
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_19
    iget v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    sget v5, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_FAIL:I

    if-ne v4, v5, :cond_1f

    .line 4007
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4008
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    if-eqz v4, :cond_1a

    .line 4009
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v5, "Download Failed"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4010
    :cond_1a
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_1b

    .line 4012
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4013
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v5, "Download Failed"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4015
    :cond_1b
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    if-eqz v4, :cond_1c

    .line 4016
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4017
    :cond_1c
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    if-eqz v4, :cond_1d

    .line 4018
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 4019
    :cond_1d
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    if-eqz v4, :cond_1e

    .line 4020
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 4021
    :cond_1e
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    .line 4022
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4024
    :cond_1f
    iget v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    sget v5, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_NO_DOWNLOAD_LINK:I

    if-eq v4, v5, :cond_20

    iget v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->vgDownloadState:I

    const/16 v5, 0x22

    if-ne v4, v5, :cond_8

    .line 4026
    :cond_20
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    if-eqz v4, :cond_21

    .line 4027
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 4028
    :cond_21
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    if-eqz v4, :cond_22

    .line 4029
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4030
    :cond_22
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4032
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    if-eqz v4, :cond_23

    .line 4033
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4035
    :cond_23
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    if-eqz v4, :cond_24

    .line 4036
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v5, "Download Completed"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4038
    :cond_24
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v5, "Download Completed"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4042
    sget-object v4, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_25

    .line 4045
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$000()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoods;->access$5500(Lcom/tapjoy/TJCVirtualGoods;)V

    .line 4048
    :cond_25
    const-string v4, "DownloadVirtualGood"

    const-string v5, "*** Download completed! ***"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4051
    sget-object v4, Lcom/tapjoy/TapjoyConnect;->tapjoyDownloadListener:Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    if-eqz v4, :cond_8

    .line 4053
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->itemDownLoadFolder:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/tapjoy/VGStoreItem;->setDatafileUrl(Ljava/lang/String;)V

    .line 4054
    sget-object v4, Lcom/tapjoy/TapjoyConnect;->tapjoyDownloadListener:Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    invoke-interface {v4, p1}, Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;->onDownLoad(Lcom/tapjoy/VGStoreItem;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3619
    check-cast p1, Lcom/tapjoy/VGStoreItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->onPostExecute(Lcom/tapjoy/VGStoreItem;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->exception:Ljava/lang/Exception;

    .line 3664
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    const-string v1, "Downloading... 0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3665
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3667
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 3669
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3672
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 3674
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3677
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 3678
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    const-string v1, "Downloading... 0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3681
    :cond_2
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 7
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 3701
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3703
    .local v0, "prog":I
    iget-wide v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->size:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3704
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3706
    :cond_0
    iget-wide v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->size:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3707
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3709
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    .line 3711
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3712
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3715
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    .line 3717
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3718
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3720
    :cond_3
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 3619
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
