.class public Lcom/glu/android/GluDownloadResMgr;
.super Ljava/lang/Object;
.source "GluDownloadResMgr.java"


# static fields
.field public static final DOWNLOAD_STATUS_COMPLETE:B = 0x3t

.field public static final DOWNLOAD_STATUS_MISSING:B = 0x0t

.field public static final DOWNLOAD_STATUS_PARTIAL:B = 0x2t

.field public static final DOWNLOAD_STATUS_REFUSED:B = 0x1t

.field public static final FILE_TYPE_DLC_RESOURCE:B = 0x2t

.field public static final FILE_TYPE_MAIN_RESOURCE:B = 0x0t

.field public static final FILE_TYPE_SPECIAL_RESOURCE:B = 0x1t

.field public static final SPECIAL_STAT_ARRAY_SIZE:I = 0x3

.field public static final SPECIAL_STAT_BYTE_START:I = 0x0

.field public static final SPECIAL_STAT_NTH_FILE_START:I = 0x1

.field public static final SPECIAL_STAT_SINGLE_FILE_BYTE_START:I = 0x2

.field public static instance:Lcom/glu/android/GluDownloadResMgr;


# instance fields
.field public m_downloadThread:Ljava/lang/Thread;

.field public m_mainResFileInterrupted:Z

.field public m_reserved:[B

.field public m_secondaryFilesPassedOnce:Z

.field public m_specialCurrentFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    .line 23
    iput-boolean v0, p0, Lcom/glu/android/GluDownloadResMgr;->m_secondaryFilesPassedOnce:Z

    .line 24
    const/16 v0, 0xff

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/glu/android/GluDownloadResMgr;->m_reserved:[B

    .line 37
    iput-object v1, p0, Lcom/glu/android/GluDownloadResMgr;->m_downloadThread:Ljava/lang/Thread;

    .line 155
    iput-object v1, p0, Lcom/glu/android/GluDownloadResMgr;->m_specialCurrentFilename:Ljava/lang/String;

    .line 41
    sput-object p0, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    .line 43
    invoke-virtual {p0}, Lcom/glu/android/GluDownloadResMgr;->dataFileExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/glu/android/GluDownloadResMgr;->loadFile()V

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/glu/android/GluDownloadResMgr;->initialize()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/glu/android/GluDownloadResMgr;BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluDownloadResMgr;
    .param p1, "x1"    # B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/glu/android/GluDownloadResMgr;->downloadFile(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private downloadFile(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 42
    .param p1, "fileType"    # B
    .param p2, "overrideURL"    # Ljava/lang/String;
    .param p3, "overrideFilename"    # Ljava/lang/String;

    .prologue
    .line 418
    if-nez p1, :cond_1

    const/16 v22, 0x1

    .line 419
    .local v22, "isMainResFile":Z
    :goto_0
    const/16 v36, 0x0

    .line 420
    .local v36, "url":Ljava/lang/String;
    const/4 v15, 0x0

    .line 421
    .local v15, "filename":Ljava/lang/String;
    const/4 v13, 0x0

    .line 422
    .local v13, "file":Ljava/io/File;
    const/16 v31, 0x0

    .line 424
    .local v31, "specialFileStats":[I
    sget-object v6, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    .line 425
    .local v6, "backupInstance":Lcom/glu/android/ResFileDownloadView;
    if-nez v6, :cond_2

    .line 426
    const-string v11, "app done"

    .line 766
    :cond_0
    :goto_1
    return-object v11

    .line 418
    .end local v6    # "backupInstance":Lcom/glu/android/ResFileDownloadView;
    .end local v13    # "file":Ljava/io/File;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v22    # "isMainResFile":Z
    .end local v31    # "specialFileStats":[I
    .end local v36    # "url":Ljava/lang/String;
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 428
    .restart local v6    # "backupInstance":Lcom/glu/android/ResFileDownloadView;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v15    # "filename":Ljava/lang/String;
    .restart local v22    # "isMainResFile":Z
    .restart local v31    # "specialFileStats":[I
    .restart local v36    # "url":Ljava/lang/String;
    :cond_2
    const/16 v37, 0x1

    move/from16 v0, p1

    move/from16 v1, v37

    if-ne v0, v1, :cond_c

    .line 430
    const/16 v37, 0x3

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 431
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/glu/android/GluDownloadResMgr;->getSpecialStartPosition([I)V

    .line 432
    const/16 v37, 0x0

    aget v37, v31, v37

    move/from16 v0, v37

    iput v0, v6, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    .line 434
    sget-object v37, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    move-object/from16 v37, v0

    sget-object v38, Lcom/glu/android/GameLet;->KEY_SPECIAL_FILE_URL:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Lcom/glu/android/CaseInsensitiveHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .end local v36    # "url":Ljava/lang/String;
    check-cast v36, Ljava/lang/String;

    .line 435
    .restart local v36    # "url":Ljava/lang/String;
    iget v0, v6, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/glu/android/GluDownloadResMgr;->getCurrentFileByBytesDownloaded(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/glu/android/GluDownloadResMgr;->m_specialCurrentFilename:Ljava/lang/String;

    .line 436
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/glu/android/GluDownloadResMgr;->getSecondaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 445
    :goto_2
    new-instance v14, Ljava/io/File;

    iget-object v0, v6, Lcom/glu/android/ResFileDownloadView;->m_tempFilename:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v14, "fileTemp":Ljava/io/File;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Downloading "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-direct/range {p0 .. p1}, Lcom/glu/android/GluDownloadResMgr;->getFileTypeAsString(B)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " file from URL: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 448
    const/4 v10, 0x0

    .line 450
    .local v10, "downloadInterrupted":Z
    const/4 v11, 0x0

    .line 452
    .local v11, "error":Ljava/lang/String;
    const/16 v18, 0x0

    .line 453
    .local v18, "huc":Ljava/net/HttpURLConnection;
    const/16 v25, -0x1

    .line 455
    .local v25, "responseCode":I
    const/16 v21, 0x0

    .line 456
    .local v21, "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 458
    .local v16, "fos":Ljava/io/FileOutputStream;
    iget v0, v6, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    move/from16 v37, v0

    if-nez v37, :cond_d

    const/4 v5, 0x0

    .line 459
    .local v5, "append":Z
    :goto_3
    iget v0, v6, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    move/from16 v32, v0

    .line 460
    .local v32, "startAt":I
    const/16 v37, 0x1

    move/from16 v0, p1

    move/from16 v1, v37

    if-ne v0, v1, :cond_3

    .line 463
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_e

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v37

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-lez v37, :cond_e

    const/4 v5, 0x1

    .line 467
    :cond_3
    :goto_4
    :try_start_0
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 468
    new-instance v34, Landroid/os/StatFs;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v37

    const-string v38, "/sdcard/"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v37

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_f

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v37

    :goto_5
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 469
    .local v34, "targetFS":Landroid/os/StatFs;
    const-string v37, "root FS"

    new-instance v38, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static/range {v37 .. v38}, Lcom/glu/android/Debug;->printStatFs(Ljava/lang/String;Landroid/os/StatFs;)V

    .line 470
    const-string v37, "sdcard FS"

    new-instance v38, Landroid/os/StatFs;

    const-string v39, "/sdcard/"

    invoke-direct/range {v38 .. v39}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static/range {v37 .. v38}, Lcom/glu/android/Debug;->printStatFs(Ljava/lang/String;Landroid/os/StatFs;)V

    .line 471
    const-string v37, "target FS"

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->printStatFs(Ljava/lang/String;Landroid/os/StatFs;)V

    .line 473
    const/16 v3, 0xffc

    .line 474
    .local v3, "BUFFER_SIZE":I
    const/16 v37, 0xffc

    move/from16 v0, v37

    new-array v7, v0, [B

    .line 475
    .local v7, "buffer":[B
    const/4 v9, 0x0

    .line 477
    .local v9, "count":I
    invoke-virtual/range {v34 .. v34}, Landroid/os/StatFs;->getBlockCount()I

    move-result v37

    if-nez v37, :cond_10

    const-wide/16 v27, -0x1

    .line 478
    .local v27, "spaceAvailable":J
    :goto_6
    sget-wide v37, Lcom/glu/android/GameLet;->RES_FILE_SIZE_TO_USE:J

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v39, v0

    sub-long v29, v37, v39

    .line 479
    .local v29, "spaceNeeded":J
    const/16 v37, 0x1

    move/from16 v0, p1

    move/from16 v1, v37

    if-ne v0, v1, :cond_4

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GluDownloadResMgr;->getSpecialFileSize()I

    move-result v37

    sub-int v37, v37, v32

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v29, v0

    .line 481
    :cond_4
    const-wide/16 v37, -0x1

    cmp-long v37, v27, v37

    if-eqz v37, :cond_11

    .line 483
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Space available: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 485
    cmp-long v37, v29, v27

    if-lez v37, :cond_3c

    .line 487
    const-string v37, "Insufficient storage. bailing..."

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 488
    const v37, 0x7f070022

    invoke-static/range {v37 .. v37}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v29 .. v30}, Lcom/glu/android/GluUtil;->getBytesStringNice(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    invoke-static/range {v27 .. v28}, Lcom/glu/android/GluUtil;->getBytesStringNice(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 490
    new-instance v37, Ljava/lang/Exception;

    invoke-direct/range {v37 .. v37}, Ljava/lang/Exception;-><init>()V

    throw v37
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_20
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    .end local v3    # "BUFFER_SIZE":I
    .end local v7    # "buffer":[B
    .end local v9    # "count":I
    .end local v27    # "spaceAvailable":J
    .end local v29    # "spaceNeeded":J
    .end local v34    # "targetFS":Landroid/os/StatFs;
    :catch_0
    move-exception v23

    .line 689
    .local v23, "pex":Ljava/net/ProtocolException;
    :goto_7
    :try_start_1
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Connection failed, error: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "  "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 690
    const v37, 0x7f07001f

    invoke-static/range {v37 .. v37}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 712
    if-eqz v16, :cond_5

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14

    .line 713
    :cond_5
    :goto_8
    if-eqz v21, :cond_6

    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15

    .line 714
    :cond_6
    :goto_9
    if-eqz v18, :cond_7

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_16

    .line 717
    .end local v23    # "pex":Ljava/net/ProtocolException;
    :cond_7
    :goto_a
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_8

    .line 719
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v37

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-nez v37, :cond_36

    .line 720
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 726
    :cond_8
    :goto_b
    iget v0, v6, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    move/from16 v37, v0

    if-nez v37, :cond_a

    if-eqz p1, :cond_9

    const/16 v37, 0x1

    move/from16 v0, p1

    move/from16 v1, v37

    if-ne v0, v1, :cond_a

    .line 728
    :cond_9
    const/4 v10, 0x0

    .line 730
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_a

    .line 731
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 734
    :cond_a
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v37

    if-nez v37, :cond_b

    if-nez v11, :cond_b

    .line 736
    const v37, 0x7f070025

    invoke-static/range {v37 .. v37}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 739
    :cond_b
    if-nez v11, :cond_38

    .line 741
    if-nez p1, :cond_37

    .line 743
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GluDownloadResMgr;->saveFile()V

    goto/16 :goto_1

    .line 440
    .end local v5    # "append":Z
    .end local v10    # "downloadInterrupted":Z
    .end local v11    # "error":Ljava/lang/String;
    .end local v14    # "fileTemp":Ljava/io/File;
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "huc":Ljava/net/HttpURLConnection;
    .end local v21    # "is":Ljava/io/InputStream;
    .end local v25    # "responseCode":I
    .end local v32    # "startAt":I
    :cond_c
    sget-object v37, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_nativeProperties:Lcom/glu/android/CaseInsensitiveHash;

    move-object/from16 v37, v0

    sget-object v38, Lcom/glu/android/GameLet;->RES_FILE_URL_KEY_TO_USE:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Lcom/glu/android/CaseInsensitiveHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .end local v36    # "url":Ljava/lang/String;
    check-cast v36, Ljava/lang/String;

    .line 441
    .restart local v36    # "url":Ljava/lang/String;
    iget-object v15, v6, Lcom/glu/android/ResFileDownloadView;->m_downloadFilename:Ljava/lang/String;

    .line 442
    new-instance v13, Ljava/io/File;

    .end local v13    # "file":Ljava/io/File;
    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v13    # "file":Ljava/io/File;
    goto/16 :goto_2

    .line 458
    .restart local v10    # "downloadInterrupted":Z
    .restart local v11    # "error":Ljava/lang/String;
    .restart local v14    # "fileTemp":Ljava/io/File;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "huc":Ljava/net/HttpURLConnection;
    .restart local v21    # "is":Ljava/io/InputStream;
    .restart local v25    # "responseCode":I
    :cond_d
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 463
    .restart local v5    # "append":Z
    .restart local v32    # "startAt":I
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 468
    :cond_f
    :try_start_5
    const-string v37, "/sdcard/"

    goto/16 :goto_5

    .line 477
    .restart local v3    # "BUFFER_SIZE":I
    .restart local v7    # "buffer":[B
    .restart local v9    # "count":I
    .restart local v34    # "targetFS":Landroid/os/StatFs;
    :cond_10
    invoke-virtual/range {v34 .. v34}, Landroid/os/StatFs;->getBlockSize()I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v39

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    mul-long v27, v37, v39

    goto/16 :goto_6

    .line 495
    .restart local v27    # "spaceAvailable":J
    .restart local v29    # "spaceNeeded":J
    :cond_11
    const-string v37, "Could not determine space available. Doing it the old fashioned way."

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 497
    new-instance v17, Ljava/io/FileOutputStream;

    const/16 v37, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v37

    invoke-direct {v0, v14, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_20
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 498
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 499
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 501
    :goto_c
    int-to-long v0, v9

    move-wide/from16 v37, v0

    cmp-long v37, v37, v29

    if-gez v37, :cond_15

    iget-boolean v0, v6, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    move/from16 v37, v0
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v37, :cond_15

    .line 505
    const/16 v37, 0x0

    const/16 v38, 0xffc

    :try_start_7
    move-object/from16 v0, v17

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 506
    add-int/lit16 v9, v9, 0xffc

    goto :goto_c

    .line 507
    :catch_1
    move-exception v20

    .line 508
    .local v20, "ioexx":Ljava/io/IOException;
    :try_start_8
    const-string v37, "Could not create temp file. Insufficient storage. bailing..."

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 509
    const v37, 0x7f070021

    invoke-static/range {v37 .. v37}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v29 .. v30}, Lcom/glu/android/GluUtil;->getBytesStringNice(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v11

    .line 513
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 514
    const/16 v16, 0x0

    .line 519
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :goto_d
    :try_start_a
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_12

    .line 520
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_23
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 523
    :cond_12
    :goto_e
    :try_start_b
    new-instance v37, Ljava/lang/Exception;

    invoke-direct/range {v37 .. v37}, Ljava/lang/Exception;-><init>()V

    throw v37
    :try_end_b
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_20
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 692
    .end local v3    # "BUFFER_SIZE":I
    .end local v7    # "buffer":[B
    .end local v9    # "count":I
    .end local v20    # "ioexx":Ljava/io/IOException;
    .end local v27    # "spaceAvailable":J
    .end local v29    # "spaceNeeded":J
    .end local v34    # "targetFS":Landroid/os/StatFs;
    :catch_2
    move-exception v19

    .line 693
    .local v19, "ioex":Ljava/io/IOException;
    :goto_f
    :try_start_c
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Filename: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 694
    const v37, 0x7f070020

    invoke-static/range {v37 .. v37}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v11

    .line 712
    if-eqz v16, :cond_13

    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_17

    .line 713
    :cond_13
    :goto_10
    if-eqz v21, :cond_14

    :try_start_e
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_18

    .line 714
    :cond_14
    :goto_11
    if-eqz v18, :cond_7

    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_a

    :catch_3
    move-exception v37

    goto/16 :goto_a

    .line 515
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .end local v19    # "ioex":Ljava/io/IOException;
    .restart local v3    # "BUFFER_SIZE":I
    .restart local v7    # "buffer":[B
    .restart local v9    # "count":I
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v20    # "ioexx":Ljava/io/IOException;
    .restart local v27    # "spaceAvailable":J
    .restart local v29    # "spaceNeeded":J
    .restart local v34    # "targetFS":Landroid/os/StatFs;
    :catch_4
    move-exception v37

    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto :goto_d

    .line 529
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "ioexx":Ljava/io/IOException;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :cond_15
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/net/ProtocolException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 530
    const/16 v16, 0x0

    .line 535
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :goto_12
    :try_start_11
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_16

    .line 536
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_16
    move-object/from16 v17, v16

    .line 542
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :goto_13
    :try_start_12
    move-object/from16 v0, v36

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->createURLConnection(Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v18

    .line 544
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v25

    .line 545
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Response message: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 546
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Response method: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 547
    invoke-static/range {v18 .. v18}, Lcom/glu/android/GluUtil;->getContentLength(Ljava/net/HttpURLConnection;)I

    move-result v8

    .line 548
    .local v8, "contentLength":I
    if-nez v8, :cond_18

    .line 549
    const-string v37, "Will not do file size check."

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 554
    :goto_14
    const/16 v26, 0x1

    .line 555
    .local v26, "sizeFine":Z
    const/16 v37, 0x1

    move/from16 v0, p1

    move/from16 v1, v37

    if-ne v0, v1, :cond_1b

    .line 556
    const/16 v37, 0xce

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_19

    move/from16 v37, v32

    :goto_15
    add-int v37, v37, v8

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GluDownloadResMgr;->getSpecialFileSize()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    const/16 v26, 0x1

    .line 560
    :cond_17
    :goto_16
    if-nez v26, :cond_1e

    .line 562
    const v37, 0x7f07001e

    invoke-static/range {v37 .. v37}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/high16 v40, 0x7f070000

    invoke-static/range {v40 .. v40}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    sget-object v40, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_fullVersion:Ljava/lang/String;

    move-object/from16 v40, v0

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 563
    new-instance v37, Ljava/lang/Exception;

    invoke-direct/range {v37 .. v37}, Ljava/lang/Exception;-><init>()V

    throw v37
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 594
    .end local v8    # "contentLength":I
    .end local v26    # "sizeFine":Z
    :catch_5
    move-exception v35

    .line 595
    .local v35, "uhex":Ljava/net/UnknownHostException;
    :try_start_13
    invoke-virtual/range {v35 .. v35}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 596
    new-instance v37, Ljava/net/ProtocolException;

    invoke-virtual/range {v35 .. v35}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_13
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 686
    .end local v35    # "uhex":Ljava/net/UnknownHostException;
    :catch_6
    move-exception v23

    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 531
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v37

    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_12

    .line 537
    :catch_8
    move-exception v37

    move-object/from16 v17, v16

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_13

    .line 551
    .restart local v8    # "contentLength":I
    :cond_18
    :try_start_14
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Will do file size check, content-length="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_14

    .line 597
    .end local v8    # "contentLength":I
    :catch_9
    move-exception v20

    .line 598
    .restart local v20    # "ioexx":Ljava/io/IOException;
    :try_start_15
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 599
    new-instance v37, Ljava/net/ProtocolException;

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_15
    .catch Ljava/net/ProtocolException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 692
    .end local v20    # "ioexx":Ljava/io/IOException;
    :catch_a
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_f

    .line 556
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "contentLength":I
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v26    # "sizeFine":Z
    :cond_19
    const/16 v37, 0x0

    goto/16 :goto_15

    :cond_1a
    const/16 v26, 0x0

    goto/16 :goto_16

    .line 557
    :cond_1b
    if-nez p1, :cond_17

    .line 558
    const/16 v37, 0xce

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_1c

    move/from16 v37, v32

    :goto_17
    add-int v37, v37, v8

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    :try_start_16
    sget-wide v39, Lcom/glu/android/GameLet;->RES_FILE_SIZE_TO_USE:J

    cmp-long v37, v37, v39

    if-nez v37, :cond_1d

    const/16 v26, 0x1

    :goto_18
    goto/16 :goto_16

    :cond_1c
    const/16 v37, 0x0

    goto :goto_17

    :cond_1d
    const/16 v26, 0x0

    goto :goto_18

    .line 566
    :cond_1e
    const/16 v37, 0xce

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_21

    .line 568
    const-string v37, "Resume successful."

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 593
    :cond_1f
    :goto_19
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_16
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    move-result-object v21

    .line 603
    :try_start_17
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v13, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_17
    .catch Ljava/net/ProtocolException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 606
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :cond_20
    :goto_1a
    :try_start_18
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/16 v37, -0x1

    move/from16 v0, v37

    if-eq v9, v0, :cond_2f

    sget-object v37, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    move/from16 v37, v0
    :try_end_18
    .catch Ljava/net/ProtocolException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_20
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-nez v37, :cond_2f

    .line 609
    const/16 v37, 0x1

    move/from16 v0, p1

    move/from16 v1, v37

    if-ne v0, v1, :cond_2d

    .line 611
    const/16 v33, 0x0

    .local v33, "startPos":I
    move-object/from16 v17, v16

    .line 614
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :goto_1b
    if-lez v9, :cond_2c

    .line 616
    :try_start_19
    sget-object v37, Lcom/glu/android/GameLet;->SPECIAL_RES_FILESIZE_ARRAY:[I

    const/16 v38, 0x1

    aget v38, v31, v38

    aget v37, v37, v38

    const/16 v38, 0x2

    aget v38, v31, v38

    sub-int v24, v37, v38

    .line 617
    .local v24, "remaining":I
    move/from16 v0, v24

    if-ne v0, v9, :cond_2a

    .line 619
    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v7, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 620
    const/16 v37, 0x1

    aget v38, v31, v37

    add-int/lit8 v38, v38, 0x1

    aput v38, v31, v37

    .line 621
    const/16 v37, 0x2

    const/16 v38, 0x0

    aput v38, v31, v37

    .line 622
    const/16 v37, 0x0

    aget v38, v31, v37

    add-int v38, v38, v9

    aput v38, v31, v37

    .line 623
    const/4 v9, 0x0

    .line 643
    :goto_1c
    const/16 v37, 0x2

    aget v37, v31, v37

    if-nez v37, :cond_3b

    const/16 v37, 0x1

    aget v37, v31, v37

    sget-object v38, Lcom/glu/android/GameLet;->SPECIAL_RES_FILESIZE_ARRAY:[I

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_3b

    .line 645
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    .line 646
    sget-object v37, Lcom/glu/android/GameLet;->SPECIAL_RES_FILENAME_ARRAY:[Ljava/lang/String;

    const/16 v38, 0x1

    aget v38, v31, v38

    aget-object v15, v37, v38

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/glu/android/GluDownloadResMgr;->m_specialCurrentFilename:Ljava/lang/String;

    .line 647
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/glu/android/GluDownloadResMgr;->getSecondaryFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 648
    new-instance v16, Ljava/io/FileOutputStream;

    const/16 v37, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v37

    invoke-direct {v0, v13, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_22
    .catch Ljava/net/ProtocolException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :goto_1d
    move-object/from16 v17, v16

    .line 650
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1b

    .line 570
    .end local v24    # "remaining":I
    .end local v33    # "startPos":I
    :cond_21
    const/16 v37, 0xc8

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_25

    .line 572
    if-eqz v32, :cond_1f

    .line 574
    :try_start_1a
    const-string v37, "Resume not supported."

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 575
    const/16 v32, 0x0

    .line 576
    if-eqz v22, :cond_1f

    .line 577
    sget-object v37, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I
    :try_end_1a
    .catch Ljava/net/UnknownHostException; {:try_start_1a .. :try_end_1a} :catch_5
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_1a .. :try_end_1a} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/16 :goto_19

    .line 695
    .end local v8    # "contentLength":I
    .end local v26    # "sizeFine":Z
    :catch_b
    move-exception v4

    move-object/from16 v16, v17

    .line 698
    .end local v3    # "BUFFER_SIZE":I
    .end local v7    # "buffer":[B
    .end local v9    # "count":I
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .end local v27    # "spaceAvailable":J
    .end local v29    # "spaceNeeded":J
    .end local v34    # "targetFS":Landroid/os/StatFs;
    .local v4, "aioobex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :goto_1e
    :try_start_1b
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Logic error: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v0, v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 700
    const/16 v37, 0x1

    move/from16 v0, p1

    move/from16 v1, v37

    if-ne v0, v1, :cond_33

    .line 701
    new-instance v37, Ljava/lang/RuntimeException;

    const-string v38, "Your special *.gpk resource pack is the wrong URL. (filesize larger than expected) Fix it in the properties file."

    invoke-direct/range {v37 .. v38}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 712
    .end local v4    # "aioobex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v37

    :goto_1f
    if-eqz v16, :cond_22

    :try_start_1c
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1d

    .line 713
    :cond_22
    :goto_20
    if-eqz v21, :cond_23

    :try_start_1d
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1e

    .line 714
    :cond_23
    :goto_21
    if-eqz v18, :cond_24

    :try_start_1e
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1f

    :cond_24
    :goto_22
    throw v37

    .line 580
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "BUFFER_SIZE":I
    .restart local v7    # "buffer":[B
    .restart local v8    # "contentLength":I
    .restart local v9    # "count":I
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v26    # "sizeFine":Z
    .restart local v27    # "spaceAvailable":J
    .restart local v29    # "spaceNeeded":J
    .restart local v34    # "targetFS":Landroid/os/StatFs;
    :cond_25
    const/16 v37, 0x1a0

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_29

    .line 582
    :try_start_1f
    const-string v37, "416: Requested range not satisfiable. The optional resource file is probably fine."

    invoke-static/range {v37 .. v37}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 586
    new-instance v37, Ljava/net/ProtocolException;

    const-string v38, "Everything\'s fine."

    invoke-direct/range {v37 .. v38}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_1f
    .catch Ljava/net/UnknownHostException; {:try_start_1f .. :try_end_1f} :catch_5
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f .. :try_end_1f} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 702
    .end local v8    # "contentLength":I
    .end local v26    # "sizeFine":Z
    :catch_c
    move-exception v12

    move-object/from16 v16, v17

    .line 705
    .end local v3    # "BUFFER_SIZE":I
    .end local v7    # "buffer":[B
    .end local v9    # "count":I
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .end local v27    # "spaceAvailable":J
    .end local v29    # "spaceNeeded":J
    .end local v34    # "targetFS":Landroid/os/StatFs;
    .local v12, "ex":Ljava/lang/Exception;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :goto_23
    if-nez v11, :cond_26

    .line 707
    :try_start_20
    const-string v37, "Unknown download error."

    move-object/from16 v0, v37

    invoke-static {v0, v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 709
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const v38, 0x7f070023

    invoke-static/range {v38 .. v38}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " ("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ")"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    move-result-object v11

    .line 712
    :cond_26
    if-eqz v16, :cond_27

    :try_start_21
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1b

    .line 713
    :cond_27
    :goto_24
    if-eqz v21, :cond_28

    :try_start_22
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1c

    .line 714
    :cond_28
    :goto_25
    if-eqz v18, :cond_7

    :try_start_23
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_d

    goto/16 :goto_a

    :catch_d
    move-exception v37

    goto/16 :goto_a

    .line 590
    .end local v12    # "ex":Ljava/lang/Exception;
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "BUFFER_SIZE":I
    .restart local v7    # "buffer":[B
    .restart local v8    # "contentLength":I
    .restart local v9    # "count":I
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v26    # "sizeFine":Z
    .restart local v27    # "spaceAvailable":J
    .restart local v29    # "spaceNeeded":J
    .restart local v34    # "targetFS":Landroid/os/StatFs;
    :cond_29
    :try_start_24
    new-instance v37, Ljava/io/IOException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Response code: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_24
    .catch Ljava/net/UnknownHostException; {:try_start_24 .. :try_end_24} :catch_5
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_9
    .catch Ljava/net/ProtocolException; {:try_start_24 .. :try_end_24} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_24 .. :try_end_24} :catch_b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_c
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 712
    .end local v8    # "contentLength":I
    .end local v26    # "sizeFine":Z
    :catchall_1
    move-exception v37

    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1f

    .line 625
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "contentLength":I
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v24    # "remaining":I
    .restart local v26    # "sizeFine":Z
    .restart local v33    # "startPos":I
    :cond_2a
    move/from16 v0, v24

    if-le v0, v9, :cond_2b

    .line 627
    :try_start_25
    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v7, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 628
    const/16 v37, 0x2

    aget v38, v31, v37

    add-int v38, v38, v9

    aput v38, v31, v37

    .line 629
    const/16 v37, 0x0

    aget v38, v31, v37

    add-int v38, v38, v9

    aput v38, v31, v37

    .line 630
    const/4 v9, 0x0

    goto/16 :goto_1c

    .line 634
    :cond_2b
    move-object/from16 v0, v17

    move/from16 v1, v33

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 635
    const/16 v37, 0x1

    aget v38, v31, v37

    add-int/lit8 v38, v38, 0x1

    aput v38, v31, v37

    .line 636
    const/16 v37, 0x2

    const/16 v38, 0x0

    aput v38, v31, v37

    .line 637
    const/16 v37, 0x0

    aget v38, v31, v37

    add-int v38, v38, v24

    aput v38, v31, v37

    .line 638
    sub-int v9, v9, v24

    .line 639
    add-int v33, v33, v24

    goto/16 :goto_1c

    .line 652
    .end local v24    # "remaining":I
    :cond_2c
    const/16 v37, 0x0

    aget v37, v31, v37

    move/from16 v0, v37

    iput v0, v6, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_22
    .catch Ljava/net/ProtocolException; {:try_start_25 .. :try_end_25} :catch_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_25 .. :try_end_25} :catch_b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    move-object/from16 v16, v17

    .line 653
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1a

    .line 656
    .end local v33    # "startPos":I
    :cond_2d
    const/16 v37, 0x0

    :try_start_26
    move-object/from16 v0, v16

    move/from16 v1, v37

    invoke-virtual {v0, v7, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 658
    if-eqz v22, :cond_20

    .line 659
    sget-object v37, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    move-object/from16 v0, v37

    iget v0, v0, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    move/from16 v38, v0

    add-int v38, v38, v9

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_e
    .catch Ljava/net/ProtocolException; {:try_start_26 .. :try_end_26} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_26 .. :try_end_26} :catch_f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_20
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    goto/16 :goto_1a

    .line 661
    :catch_e
    move-exception v20

    .line 662
    .restart local v20    # "ioexx":Ljava/io/IOException;
    :goto_26
    const v37, 0x7f070021

    :try_start_27
    invoke-static/range {v37 .. v37}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    sget-wide v40, Lcom/glu/android/GameLet;->RES_FILE_SIZE_TO_USE:J

    invoke-static/range {v40 .. v41}, Lcom/glu/android/GluUtil;->getBytesStringNice(J)Ljava/lang/String;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_27
    .catch Ljava/net/ProtocolException; {:try_start_27 .. :try_end_27} :catch_0
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_27 .. :try_end_27} :catch_f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_20
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    move-result-object v11

    .line 667
    :try_start_28
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 668
    const/16 v16, 0x0

    .line 671
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_2e

    if-eqz v22, :cond_2e

    .line 672
    sget-object v37, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_21
    .catch Ljava/net/ProtocolException; {:try_start_28 .. :try_end_28} :catch_0
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_28 .. :try_end_28} :catch_f
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 675
    :cond_2e
    :goto_27
    :try_start_29
    new-instance v37, Ljava/lang/Exception;

    invoke-direct/range {v37 .. v37}, Ljava/lang/Exception;-><init>()V

    throw v37

    .line 695
    .end local v3    # "BUFFER_SIZE":I
    .end local v7    # "buffer":[B
    .end local v8    # "contentLength":I
    .end local v9    # "count":I
    .end local v20    # "ioexx":Ljava/io/IOException;
    .end local v26    # "sizeFine":Z
    .end local v27    # "spaceAvailable":J
    .end local v29    # "spaceNeeded":J
    .end local v34    # "targetFS":Landroid/os/StatFs;
    :catch_f
    move-exception v4

    goto/16 :goto_1e

    .line 679
    .restart local v3    # "BUFFER_SIZE":I
    .restart local v7    # "buffer":[B
    .restart local v8    # "contentLength":I
    .restart local v9    # "count":I
    .restart local v26    # "sizeFine":Z
    .restart local v27    # "spaceAvailable":J
    .restart local v29    # "spaceNeeded":J
    .restart local v34    # "targetFS":Landroid/os/StatFs;
    :cond_2f
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 680
    const/16 v16, 0x0

    .line 682
    sget-object v37, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    move-object/from16 v0, v37

    iget-boolean v0, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    move/from16 v37, v0

    if-eqz v37, :cond_30

    .line 684
    const v37, 0x7f07001c

    invoke-static/range {v37 .. v37}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;
    :try_end_29
    .catch Ljava/net/ProtocolException; {:try_start_29 .. :try_end_29} :catch_0
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_29 .. :try_end_29} :catch_f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_20
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    move-result-object v11

    .line 712
    :cond_30
    if-eqz v16, :cond_31

    :try_start_2a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_12

    .line 713
    :cond_31
    :goto_28
    if-eqz v21, :cond_32

    :try_start_2b
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_13

    .line 714
    :cond_32
    :goto_29
    if-eqz v18, :cond_7

    :try_start_2c
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_10

    goto/16 :goto_a

    :catch_10
    move-exception v37

    goto/16 :goto_a

    .line 712
    .end local v3    # "BUFFER_SIZE":I
    .end local v7    # "buffer":[B
    .end local v8    # "contentLength":I
    .end local v9    # "count":I
    .end local v26    # "sizeFine":Z
    .end local v27    # "spaceAvailable":J
    .end local v29    # "spaceNeeded":J
    .end local v34    # "targetFS":Landroid/os/StatFs;
    .restart local v4    # "aioobex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_33
    if-eqz v16, :cond_34

    :try_start_2d
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_19

    .line 713
    :cond_34
    :goto_2a
    if-eqz v21, :cond_35

    :try_start_2e
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_1a

    .line 714
    :cond_35
    :goto_2b
    if-eqz v18, :cond_7

    :try_start_2f
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_11

    goto/16 :goto_a

    :catch_11
    move-exception v37

    goto/16 :goto_a

    .line 722
    .end local v4    # "aioobex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_36
    const/4 v10, 0x1

    goto/16 :goto_b

    .line 746
    :cond_37
    const/16 v37, 0x1

    move/from16 v0, p1

    move/from16 v1, v37

    if-eq v0, v1, :cond_0

    .line 750
    const/16 v37, 0x2

    move/from16 v0, p1

    move/from16 v1, v37

    if-ne v0, v1, :cond_0

    .line 752
    new-instance v37, Ljava/lang/RuntimeException;

    const-string v38, "implement me!!!"

    invoke-direct/range {v37 .. v38}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 757
    :cond_38
    if-nez p1, :cond_0

    .line 759
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    move/from16 v37, v0

    if-nez v37, :cond_39

    if-eqz v10, :cond_3a

    :cond_39
    const/16 v37, 0x1

    :goto_2c
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/GluDownloadResMgr;->saveFile()V

    goto/16 :goto_1

    .line 759
    :cond_3a
    const/16 v37, 0x0

    goto :goto_2c

    .line 712
    .restart local v3    # "BUFFER_SIZE":I
    .restart local v7    # "buffer":[B
    .restart local v8    # "contentLength":I
    .restart local v9    # "count":I
    .restart local v26    # "sizeFine":Z
    .restart local v27    # "spaceAvailable":J
    .restart local v29    # "spaceNeeded":J
    .restart local v34    # "targetFS":Landroid/os/StatFs;
    :catch_12
    move-exception v37

    goto :goto_28

    .line 713
    :catch_13
    move-exception v37

    goto :goto_29

    .line 712
    .end local v3    # "BUFFER_SIZE":I
    .end local v7    # "buffer":[B
    .end local v8    # "contentLength":I
    .end local v9    # "count":I
    .end local v26    # "sizeFine":Z
    .end local v27    # "spaceAvailable":J
    .end local v29    # "spaceNeeded":J
    .end local v34    # "targetFS":Landroid/os/StatFs;
    .restart local v23    # "pex":Ljava/net/ProtocolException;
    :catch_14
    move-exception v37

    goto/16 :goto_8

    .line 713
    :catch_15
    move-exception v37

    goto/16 :goto_9

    .line 714
    :catch_16
    move-exception v37

    goto/16 :goto_a

    .line 712
    .end local v23    # "pex":Ljava/net/ProtocolException;
    .restart local v19    # "ioex":Ljava/io/IOException;
    :catch_17
    move-exception v37

    goto/16 :goto_10

    .line 713
    :catch_18
    move-exception v37

    goto/16 :goto_11

    .line 712
    .end local v19    # "ioex":Ljava/io/IOException;
    .restart local v4    # "aioobex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_19
    move-exception v37

    goto :goto_2a

    .line 713
    :catch_1a
    move-exception v37

    goto :goto_2b

    .line 712
    .end local v4    # "aioobex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v12    # "ex":Ljava/lang/Exception;
    :catch_1b
    move-exception v37

    goto/16 :goto_24

    .line 713
    :catch_1c
    move-exception v37

    goto/16 :goto_25

    .line 712
    .end local v12    # "ex":Ljava/lang/Exception;
    :catch_1d
    move-exception v38

    goto/16 :goto_20

    .line 713
    :catch_1e
    move-exception v38

    goto/16 :goto_21

    .line 714
    :catch_1f
    move-exception v38

    goto/16 :goto_22

    .line 702
    :catch_20
    move-exception v12

    goto/16 :goto_23

    .line 673
    .restart local v3    # "BUFFER_SIZE":I
    .restart local v7    # "buffer":[B
    .restart local v8    # "contentLength":I
    .restart local v9    # "count":I
    .restart local v20    # "ioexx":Ljava/io/IOException;
    .restart local v26    # "sizeFine":Z
    .restart local v27    # "spaceAvailable":J
    .restart local v29    # "spaceNeeded":J
    .restart local v34    # "targetFS":Landroid/os/StatFs;
    :catch_21
    move-exception v37

    goto/16 :goto_27

    .line 661
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "ioexx":Ljava/io/IOException;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v33    # "startPos":I
    :catch_22
    move-exception v20

    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_26

    .line 521
    .end local v8    # "contentLength":I
    .end local v26    # "sizeFine":Z
    .end local v33    # "startPos":I
    .restart local v20    # "ioexx":Ljava/io/IOException;
    :catch_23
    move-exception v37

    goto/16 :goto_e

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "ioexx":Ljava/io/IOException;
    .restart local v8    # "contentLength":I
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v24    # "remaining":I
    .restart local v26    # "sizeFine":Z
    .restart local v33    # "startPos":I
    :cond_3b
    move-object/from16 v16, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1d

    .end local v8    # "contentLength":I
    .end local v24    # "remaining":I
    .end local v26    # "sizeFine":Z
    .end local v33    # "startPos":I
    :cond_3c
    move-object/from16 v17, v16

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_13
.end method

.method private getFileTypeAsString(B)Ljava/lang/String;
    .locals 1
    .param p1, "fileType"    # B

    .prologue
    .line 397
    if-nez p1, :cond_0

    .line 398
    const-string v0, "main"

    .line 404
    :goto_0
    return-object v0

    .line 399
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 400
    const-string v0, "special"

    goto :goto_0

    .line 401
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 402
    const-string v0, "DLC"

    goto :goto_0

    .line 404
    :cond_2
    const-string v0, "unknown"

    goto :goto_0
.end method


# virtual methods
.method public areThereSpecialFiles()Z
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/glu/android/GameLet;->SPECIAL_RES_FILENAME_ARRAY:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createDummyPrimaryResource(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 326
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 328
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 329
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create a 1 byte file. That\'s not good. Filename="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public dataFileExists()Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/glu/android/GluDownloadResMgr;->getDataFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public deleteSpecialFiles()V
    .locals 0

    return-void
.end method

.method public downloadResFile()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Lcom/glu/android/GluDownloadResMgr$2;

    invoke-direct {v0, p0}, Lcom/glu/android/GluDownloadResMgr$2;-><init>(Lcom/glu/android/GluDownloadResMgr;)V

    iput-object v0, p0, Lcom/glu/android/GluDownloadResMgr;->m_downloadThread:Ljava/lang/Thread;

    .line 389
    iget-object v0, p0, Lcom/glu/android/GluDownloadResMgr;->m_downloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 390
    return-void
.end method

.method public downloadSpecialResFile()V
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/glu/android/GluDownloadResMgr$1;

    invoke-direct {v0, p0}, Lcom/glu/android/GluDownloadResMgr$1;-><init>(Lcom/glu/android/GluDownloadResMgr;)V

    iput-object v0, p0, Lcom/glu/android/GluDownloadResMgr;->m_downloadThread:Ljava/lang/Thread;

    .line 304
    iget-object v0, p0, Lcom/glu/android/GluDownloadResMgr;->m_downloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 305
    return-void
.end method

.method public getCurrentFileByBytesDownloaded(I)Ljava/lang/String;
    .locals 4
    .param p1, "bytesDownloaded"    # I

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/glu/android/GameLet;->SPECIAL_RES_FILENAME_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 312
    sget-object v2, Lcom/glu/android/GameLet;->SPECIAL_RES_FILESIZE_ARRAY:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 313
    if-le v1, p1, :cond_0

    .line 314
    sget-object v2, Lcom/glu/android/GameLet;->SPECIAL_RES_FILENAME_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 317
    :goto_1
    return-object v2

    .line 310
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_1
    sget-object v2, Lcom/glu/android/GameLet;->SPECIAL_RES_FILENAME_ARRAY:[Ljava/lang/String;

    sget-object v3, Lcom/glu/android/GameLet;->SPECIAL_RES_FILENAME_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    goto :goto_1
.end method

.method public getDataFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dlstatus.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSecondaryFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "relativeFilename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-static {}, Lcom/glu/android/GluUtil;->findResourceFile()Ljava/io/File;

    move-result-object v0

    .line 128
    .local v0, "resFile":Ljava/io/File;
    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-object v2

    .line 131
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "resPath":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 133
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSpecialFileSize()I
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/glu/android/GluDownloadResMgr;->areThereSpecialFiles()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/glu/android/GameLet;->SPECIAL_RES_FILESIZE_ARRAY:[I

    invoke-static {v0}, Lcom/glu/android/GluUtil;->sumIntArray([I)I

    move-result v0

    goto :goto_0
.end method

.method public getSpecialStartPosition([I)V
    .locals 10
    .param p1, "stats"    # [I

    .prologue
    .line 160
    const/4 v5, 0x0

    .line 161
    .local v5, "nthFile":I
    const/4 v0, 0x0

    .line 162
    .local v0, "byteStart":I
    const/4 v7, 0x0

    .line 164
    .local v7, "singleFileByteStart":I
    const/4 v4, 0x0

    .line 165
    .local v4, "len":I
    invoke-static {}, Lcom/glu/android/GluUtil;->findResourceFile()Ljava/io/File;

    move-result-object v6

    .line 166
    .local v6, "resFile":Ljava/io/File;
    if-eqz v6, :cond_0

    .line 168
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/glu/android/GluUtil;->getFileDirectoryWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v8, Lcom/glu/android/GameLet;->SPECIAL_RES_FILENAME_ARRAY:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 172
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/glu/android/GameLet;->SPECIAL_RES_FILENAME_ARRAY:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 188
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    const/4 v8, 0x0

    aput v0, p1, v8

    .line 189
    const/4 v8, 0x1

    aput v5, p1, v8

    .line 190
    const/4 v8, 0x2

    aput v7, p1, v8

    .line 192
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stats[SPECIAL_STAT_BYTE_START] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stats[SPECIAL_STAT_NTH_FILE_START] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stats[SPECIAL_STAT_SINGLE_FILE_BYTE_START] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 195
    return-void

    .line 175
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v4, v8

    sget-object v8, Lcom/glu/android/GameLet;->SPECIAL_RES_FILESIZE_ARRAY:[I

    aget v8, v8, v3

    if-eq v4, v8, :cond_2

    .line 177
    move v7, v4

    .line 178
    add-int/lit8 v5, v5, -0x1

    .line 181
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 182
    add-int/2addr v0, v4

    .line 183
    if-nez v7, :cond_0

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/glu/android/GluDownloadResMgr;->initialize(Z)V

    return-void
.end method

.method public initialize(Z)V
    .locals 3
    .param p1, "save"    # Z

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GluDownloadResMgr;->m_reserved:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/glu/android/GluDownloadResMgr;->m_reserved:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/glu/android/GluDownloadResMgr;->saveFile()V

    .line 62
    :cond_1
    return-void
.end method

.method public loadFile()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/glu/android/GluDownloadResMgr;->getDataFile()Ljava/io/File;

    move-result-object v1

    .line 68
    .local v1, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 69
    .local v3, "isOldTemplateFile":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 70
    const/4 v3, 0x1

    .line 71
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/glu/android/GluDownloadResMgr;->initialize(Z)V

    .line 73
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/glu/android/GluDownloadResMgr;->getDataFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v6

    if-ne v6, v4, :cond_3

    move v6, v4

    :goto_0
    iput-boolean v6, p0, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    .line 75
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v6

    if-ne v6, v4, :cond_4

    :goto_1
    iput-boolean v4, p0, Lcom/glu/android/GluDownloadResMgr;->m_secondaryFilesPassedOnce:Z

    .line 76
    if-nez v3, :cond_1

    .line 77
    iget-object v4, p0, Lcom/glu/android/GluDownloadResMgr;->m_reserved:[B

    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 78
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 80
    const-string v4, "Read resource download data file."

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 83
    if-eqz v3, :cond_2

    .line 85
    const-string v4, "Updating old template dlstatus.dat"

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/glu/android/GluDownloadResMgr;->saveFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "isOldTemplateFile":Z
    :cond_2
    :goto_2
    return-void

    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "isOldTemplateFile":Z
    :cond_3
    move v6, v5

    .line 74
    goto :goto_0

    :cond_4
    move v4, v5

    .line 75
    goto :goto_1

    .line 88
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "isOldTemplateFile":Z
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "Error reading resource download data file. Will initialize."

    invoke-static {v4, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 90
    invoke-virtual {p0}, Lcom/glu/android/GluDownloadResMgr;->initialize()V

    goto :goto_2
.end method

.method public saveFile()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/glu/android/GluDownloadResMgr;->getDataFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 98
    .local v1, "fos":Ljava/io/FileOutputStream;
    iget-boolean v4, p0, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    if-eqz v4, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 99
    iget-boolean v4, p0, Lcom/glu/android/GluDownloadResMgr;->m_secondaryFilesPassedOnce:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 100
    iget-object v2, p0, Lcom/glu/android/GluDownloadResMgr;->m_reserved:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 101
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 103
    const-string v2, "Wrote resource download data file."

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    return-void

    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    move v4, v3

    .line 98
    goto :goto_0

    :cond_1
    move v2, v3

    .line 99
    goto :goto_1

    .line 104
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Error writing resource download data file."

    invoke-static {v2, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public setSecondaryFilesPassed(Z)V
    .locals 0
    .param p1, "passed"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/glu/android/GluDownloadResMgr;->m_secondaryFilesPassedOnce:Z

    .line 112
    invoke-virtual {p0}, Lcom/glu/android/GluDownloadResMgr;->saveFile()V

    .line 113
    return-void
.end method

.method public verifySpecialFileIntegrity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
