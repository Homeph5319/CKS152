.class public Lcom/glu/android/ResFileDownloadView;
.super Landroid/view/View;
.source "ResFileDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/ResFileDownloadView$GluMarquee;,
        Lcom/glu/android/ResFileDownloadView$GluTooltip;,
        Lcom/glu/android/ResFileDownloadView$GluTitlebar;,
        Lcom/glu/android/ResFileDownloadView$GluButton;,
        Lcom/glu/android/ResFileDownloadView$GluTextArea;,
        Lcom/glu/android/ResFileDownloadView$GluWidget;
    }
.end annotation


# static fields
.field public static FONT_SIZE:I = 0x0

.field public static MARGIN:I = 0x0

.field public static final PREPARING_TIMER:I = 0x2710

.field public static final ST_AIRMAIL:I = 0xd

.field public static final ST_CHECKSUM:I = 0x1

.field public static final ST_DELETE_CONFIRM:I = 0xa

.field public static final ST_DELETE_MESSAGE:I = 0xb

.field public static final ST_DOWNLOADING:I = 0x3

.field public static final ST_DOWNLOADING_SPECIAL:I = 0x4

.field public static final ST_DOWNLOAD_ERROR:I = 0x6

.field public static final ST_DOWNLOAD_PROMPT:I = 0x2

.field public static final ST_DOWNLOAD_RESTART_CONFIRM:I = 0x8

.field public static final ST_DOWNLOAD_RESUME:I = 0x7

.field public static final ST_EXIT:I = 0xf

.field public static final ST_INIT:I = 0x0

.field public static final ST_INVALID:I = -0x1

.field public static final ST_PLAY:I = 0xe

.field public static final ST_PLAY_DELETE_PROMPT:I = 0x9

.field public static final ST_PREPARING:I = 0x5

.field public static final ST_READY_TO_PLAY:I = 0xc

.field public static final ST_SD_CARD_ERROR:I = 0x64

.field public static TOOLTIP_PADDING:I = 0x0

.field public static final WIDGET_ID_AIRMAIL_NO:I = 0x10

.field public static final WIDGET_ID_AIRMAIL_YES:I = 0xf

.field public static final WIDGET_ID_DELETE:I = 0x3

.field public static final WIDGET_ID_DELETE_NO:I = 0x5

.field public static final WIDGET_ID_DELETE_YES:I = 0x4

.field public static final WIDGET_ID_DOWNLOAD_TO_DISK:I = 0x0

.field public static final WIDGET_ID_DOWNLOAD_TO_SDCARD:I = 0x1

.field public static final WIDGET_ID_GENERIC:I = -0x1

.field public static final WIDGET_ID_INVALID:I = -0x2

.field public static final WIDGET_ID_PLAY:I = 0x2

.field public static final WIDGET_ID_READY_TO_PLAY_CUSTOM_NEGATIVE:I = 0xe

.field public static final WIDGET_ID_READY_TO_PLAY_CUSTOM_POSITIVE:I = 0xd

.field public static final WIDGET_ID_RESTART:I = 0xb

.field public static final WIDGET_ID_RESUME:I = 0xa

.field public static final WIDGET_ID_RETRY_NO:I = 0x7

.field public static final WIDGET_ID_RETRY_YES:I = 0x6

.field public static final WIDGET_ID_SD_PROMPT_OVERRIDE:I = 0x11

.field public static final WIDGET_ID_SD_PROMPT_QUIT:I = 0x13

.field public static final WIDGET_ID_SD_PROMPT_RETRY:I = 0x12

.field public static final WIDGET_ID_START_OVER_NO:I = 0x9

.field public static final WIDGET_ID_START_OVER_YES:I = 0x8

.field public static final WIDGET_ID_TOOLTIP:I = 0xc

.field public static final droid_FONT_SIZE:I = 0x18

.field public static final droid_MARGIN:I = 0x6

.field public static final droid_TOOLTIP_PADDING:I = 0x27

.field public static instance:Lcom/glu/android/ResFileDownloadView;


# instance fields
.field private gameStarted:Z

.field public m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

.field public m_annunciatorBarHeight:I

.field public m_backPressed:Z

.field public m_buttonPaint:Landroid/graphics/Paint;

.field public m_bytesDownloaded:I

.field public m_checksumDone:Z

.field public m_checksumError:Ljava/lang/String;

.field public m_checksumInProgress:Z

.field public m_checksumPassed:Z

.field public m_deleteMessage:Ljava/lang/String;

.field public m_downloadCancelled:Z

.field public m_downloadDone:Z

.field public m_downloadError:Ljava/lang/String;

.field public m_downloadFailed:Z

.field public m_downloadFilename:Ljava/lang/String;

.field public m_downloadToDisk:Z

.field public m_heightNeedsCorrection:Z

.field public m_lastTickTime:J

.field public m_marqueePaint:Landroid/graphics/Paint;

.field public m_mutedLogoImg:Landroid/graphics/drawable/Drawable;

.field public m_pointerLatched:Z

.field public m_preparingTimer:I

.field public m_prevState:I

.field public m_screenHeight:I

.field public m_screenWidth:I

.field private m_sdButtonNegative:I

.field private m_sdButtonPositive:I

.field private m_sdErrorText:Ljava/lang/String;

.field private m_showedWiFiPopup:Z

.field public m_specialCheckPassed:Z

.field public m_state:I

.field public m_tempFilename:Ljava/lang/String;

.field public m_textAreaPaint:Landroid/graphics/Paint;

.field public m_titlebarPaint:Landroid/graphics/Paint;

.field public m_tooltipColorFilter:Landroid/graphics/LightingColorFilter;

.field public m_tooltipImg:Landroid/graphics/drawable/Drawable;

.field public m_usesAltSDCardPath:Z

.field public m_widgets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/ResFileDownloadView$GluWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 433
    const/16 v0, 0x18

    sput v0, Lcom/glu/android/ResFileDownloadView;->FONT_SIZE:I

    .line 434
    const/4 v0, 0x6

    sput v0, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    .line 435
    const/16 v0, 0x14

    sput v0, Lcom/glu/android/ResFileDownloadView;->TOOLTIP_PADDING:I

    .line 483
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 540
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 485
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    .line 486
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    .line 487
    iput v4, p0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    .line 488
    iput v4, p0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    .line 489
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    .line 490
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_pointerLatched:Z

    .line 492
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadDone:Z

    .line 493
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    .line 494
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    .line 495
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    .line 496
    iput v1, p0, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    .line 497
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadFilename:Ljava/lang/String;

    .line 498
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_tempFilename:Ljava/lang/String;

    .line 500
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumInProgress:Z

    .line 501
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    .line 502
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_specialCheckPassed:Z

    .line 503
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumDone:Z

    .line 505
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_usesAltSDCardPath:Z

    .line 508
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_mutedLogoImg:Landroid/graphics/drawable/Drawable;

    .line 511
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    .line 512
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    .line 513
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    .line 514
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_marqueePaint:Landroid/graphics/Paint;

    .line 517
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 518
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    .line 519
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_deleteMessage:Ljava/lang/String;

    .line 526
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_tooltipImg:Landroid/graphics/drawable/Drawable;

    .line 527
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_tooltipColorFilter:Landroid/graphics/LightingColorFilter;

    .line 530
    iput v1, p0, Lcom/glu/android/ResFileDownloadView;->m_preparingTimer:I

    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_heightNeedsCorrection:Z

    .line 534
    iput v1, p0, Lcom/glu/android/ResFileDownloadView;->m_annunciatorBarHeight:I

    .line 535
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->gameStarted:Z

    .line 691
    iput-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_sdErrorText:Ljava/lang/String;

    .line 692
    iput v3, p0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonPositive:I

    .line 693
    iput v3, p0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonNegative:I

    .line 695
    iput-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_showedWiFiPopup:Z

    .line 1620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glu/android/ResFileDownloadView;->m_lastTickTime:J

    .line 541
    return-void
.end method

.method private calculateLayoutConstants()V
    .locals 1

    .prologue
    .line 545
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToDroid(I)I

    move-result v0

    sput v0, Lcom/glu/android/ResFileDownloadView;->FONT_SIZE:I

    .line 546
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToDroid(I)I

    move-result v0

    sput v0, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    .line 547
    const/16 v0, 0x27

    invoke-static {v0}, Lcom/glu/android/GluUtil;->scaleRelativeToDroid(I)I

    move-result v0

    sput v0, Lcom/glu/android/ResFileDownloadView;->TOOLTIP_PADDING:I

    .line 548
    return-void
.end method

.method private getAllFilesBytesDownloaded(I)I
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 665
    iget v0, p0, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    .line 666
    .local v0, "total":I
    sget-object v1, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v1}, Lcom/glu/android/GluDownloadResMgr;->areThereSpecialFiles()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 667
    sget-wide v1, Lcom/glu/android/GameLet;->RES_FILE_SIZE_TO_USE:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 669
    :cond_0
    return v0
.end method

.method private getAllFilesBytesTotal()I
    .locals 3

    .prologue
    .line 673
    const/4 v0, 0x0

    .line 675
    .local v0, "total":I
    sget-wide v1, Lcom/glu/android/GameLet;->RES_FILE_SIZE_TO_USE:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 676
    sget-object v1, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v1}, Lcom/glu/android/GluDownloadResMgr;->areThereSpecialFiles()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    sget-object v1, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v1}, Lcom/glu/android/GluDownloadResMgr;->getSpecialFileSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 679
    :cond_0
    return v0
.end method

.method private getCurrentFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 683
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 684
    sget-object v0, Lcom/glu/android/GameLet;->RESOURCE_FILENAME:Ljava/lang/String;

    .line 688
    :goto_0
    return-object v0

    .line 685
    :cond_0
    sget-object v0, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    iget-object v0, v0, Lcom/glu/android/GluDownloadResMgr;->m_specialCurrentFilename:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 686
    const v0, 0x7f070065

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 688
    :cond_1
    sget-object v0, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    iget-object v0, v0, Lcom/glu/android/GluDownloadResMgr;->m_specialCurrentFilename:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSDButtonText(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1414
    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 1415
    const v0, 0x7f070044

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1421
    :goto_0
    return-object v0

    .line 1416
    :cond_0
    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    .line 1417
    const v0, 0x7f070043

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1418
    :cond_1
    const/16 v0, 0x13

    if-ne p1, v0, :cond_2

    .line 1419
    const v0, 0x7f070045

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1421
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method

.method private isLargeAdState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1426
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showWiFiPopup()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    .line 698
    iget-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_showedWiFiPopup:Z

    if-nez v0, :cond_0

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_showedWiFiPopup:Z

    .line 700
    invoke-static {}, Lcom/glu/android/GluUtil;->isUserOnWiFi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    const v0, 0x7f07004a

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07004b

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070007

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->openModalDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v0, "EVENT_DOWNLOAD_NETWORK"

    const-string v1, "3G"

    invoke-static {v0, v3, v4, v1}, Lcom/glu/android/GluFlurry;->logEvent(Ljava/lang/String;JLjava/lang/String;)I

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    const-string v0, "EVENT_DOWNLOAD_NETWORK"

    const-string v1, "Wifi"

    invoke-static {v0, v3, v4, v1}, Lcom/glu/android/GluFlurry;->logEvent(Ljava/lang/String;JLjava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public adjustTextLayoutForAd()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1497
    sget-boolean v4, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    if-nez v4, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1500
    :cond_1
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 1502
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    if-eqz v4, :cond_0

    .line 1505
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v4, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    .line 1506
    .local v2, "gta":Lcom/glu/android/ResFileDownloadView$GluTextArea;
    invoke-static {}, Lcom/glu/android/GluUtil;->isPortraitMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1507
    iget v4, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    iget v5, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    invoke-static {}, Lcom/glu/android/GluAds;->getResDLAdViewHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v7, v7, v4, v5}, Lcom/glu/android/ResFileDownloadView$GluTextArea;->setBounds(IIII)V

    .line 1511
    :goto_1
    invoke-static {}, Lcom/glu/android/GluAds;->getResDLAdViewHeight()I

    move-result v0

    .line 1513
    .local v0, "adHeight":I
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v4, v7}, Ljava/util/Vector;->removeElementAt(I)V

    .line 1514
    new-instance v1, Lcom/glu/android/ResFileDownloadView$GluMarquee;

    const v4, 0x7f07004d

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/glu/android/ResFileDownloadView$GluMarquee;-><init>(Ljava/lang/String;)V

    .line 1515
    .local v1, "gm":Lcom/glu/android/ResFileDownloadView$GluMarquee;
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenHeight()I

    move-result v4

    sub-int/2addr v4, v0

    sget v5, Lcom/glu/android/ResFileDownloadView;->FONT_SIZE:I

    sub-int v3, v4, v5

    .line 1516
    .local v3, "y":I
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v4

    sget v5, Lcom/glu/android/ResFileDownloadView;->FONT_SIZE:I

    add-int/2addr v5, v3

    invoke-virtual {v1, v7, v3, v4, v5}, Lcom/glu/android/ResFileDownloadView$GluMarquee;->setBounds(IIII)V

    .line 1517
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 1509
    .end local v0    # "adHeight":I
    .end local v1    # "gm":Lcom/glu/android/ResFileDownloadView$GluMarquee;
    .end local v3    # "y":I
    :cond_2
    iget v4, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    sget v5, Lcom/glu/android/ResFileDownloadView;->FONT_SIZE:I

    invoke-virtual {v2, v7, v7, v4, v5}, Lcom/glu/android/ResFileDownloadView$GluTextArea;->setBounds(IIII)V

    goto :goto_1
.end method

.method public checkResourceFile()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1528
    const/4 v0, 0x0

    .line 1529
    .local v0, "success":Z
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 1530
    iput-boolean v3, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumInProgress:Z

    .line 1532
    invoke-static {}, Lcom/glu/android/GluUtil;->getDiskFilename()Ljava/lang/String;

    move-result-object v2

    .line 1533
    .local v2, "testPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1535
    .local v1, "testFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "testing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   exists="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1539
    invoke-static {v1}, Lcom/glu/android/GluUtil;->performChecksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 1540
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    if-nez v5, :cond_2

    move v0, v3

    .line 1561
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    iget-boolean v5, v5, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    if-nez v5, :cond_1

    .line 1563
    sget-object v5, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v5}, Lcom/glu/android/GluDownloadResMgr;->deleteSpecialFiles()V

    .line 1564
    sget-object v5, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v5, v4}, Lcom/glu/android/GluDownloadResMgr;->setSecondaryFilesPassed(Z)V

    .line 1565
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->deleteResFile()V

    .line 1568
    :cond_1
    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    .line 1569
    sget-object v5, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v5}, Lcom/glu/android/GluDownloadResMgr;->verifySpecialFileIntegrity()Z

    move-result v5

    iput-boolean v5, p0, Lcom/glu/android/ResFileDownloadView;->m_specialCheckPassed:Z

    .line 1570
    iput-boolean v3, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumDone:Z

    .line 1571
    iput-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumInProgress:Z

    .line 1572
    return-void

    :cond_2
    move v0, v4

    .line 1540
    goto :goto_0

    .line 1544
    :cond_3
    invoke-static {}, Lcom/glu/android/GluUtil;->getPrimaryResSDCardFilename()Ljava/lang/String;

    move-result-object v2

    .line 1545
    new-instance v1, Ljava/io/File;

    .end local v1    # "testFile":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1547
    .restart local v1    # "testFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "testing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   exists="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1551
    invoke-static {v1}, Lcom/glu/android/GluUtil;->performChecksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 1552
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    if-nez v5, :cond_4

    move v0, v3

    .line 1555
    :goto_1
    if-eqz v0, :cond_0

    .line 1556
    iput-boolean v3, p0, Lcom/glu/android/ResFileDownloadView;->m_usesAltSDCardPath:Z

    goto :goto_0

    :cond_4
    move v0, v4

    .line 1552
    goto :goto_1
.end method

.method public createDownloadPrompt(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f070017

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "promptString":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 610
    .end local v0    # "promptString":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "buttonID1"    # I
    .param p3, "buttonText1"    # Ljava/lang/String;
    .param p4, "buttonID2"    # I
    .param p5, "buttonText2"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1445
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getUsableY()I

    move-result v4

    .line 1446
    .local v4, "usableY":I
    iget v5, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    add-int v0, v4, v5

    .line 1447
    .local v0, "buttonStartY":I
    iget v5, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    shr-int/lit8 v1, v5, 0x1

    .line 1449
    .local v1, "buttonWidth":I
    new-instance v3, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    invoke-direct {v3, p1}, Lcom/glu/android/ResFileDownloadView$GluTextArea;-><init>(Ljava/lang/String;)V

    .line 1450
    .local v3, "gta":Lcom/glu/android/ResFileDownloadView$GluTextArea;
    sget v5, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    iget v6, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    sget v7, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    shl-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    sub-int v7, v0, v4

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/glu/android/ResFileDownloadView$GluTextArea;->setBounds(IIII)V

    .line 1451
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1453
    new-instance v2, Lcom/glu/android/ResFileDownloadView$GluButton;

    invoke-direct {v2, p3, p2}, Lcom/glu/android/ResFileDownloadView$GluButton;-><init>(Ljava/lang/String;I)V

    .line 1454
    .local v2, "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    sget v5, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    sget v6, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    shl-int/lit8 v6, v6, 0x1

    sub-int v6, v1, v6

    invoke-virtual {v2, v5, v0, v6, v8}, Lcom/glu/android/ResFileDownloadView$GluButton;->setBounds(IIII)V

    .line 1455
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1457
    new-instance v2, Lcom/glu/android/ResFileDownloadView$GluButton;

    .end local v2    # "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    invoke-direct {v2, p5, p4}, Lcom/glu/android/ResFileDownloadView$GluButton;-><init>(Ljava/lang/String;I)V

    .line 1458
    .restart local v2    # "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    sget v5, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    add-int/2addr v5, v1

    sget v6, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    shl-int/lit8 v6, v6, 0x1

    sub-int v6, v1, v6

    invoke-virtual {v2, v5, v0, v6, v8}, Lcom/glu/android/ResFileDownloadView$GluButton;->setBounds(IIII)V

    .line 1459
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1460
    return-void
.end method

.method public createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "buttonID1"    # I
    .param p3, "buttonText1"    # Ljava/lang/String;
    .param p4, "buttonID2"    # I
    .param p5, "buttonText2"    # Ljava/lang/String;
    .param p6, "buttonID3"    # I
    .param p7, "buttonText3"    # Ljava/lang/String;

    .prologue
    .line 1464
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getUsableY()I

    move-result v4

    .line 1465
    .local v4, "usableY":I
    iget v5, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    add-int v0, v4, v5

    .line 1466
    .local v0, "buttonStartY":I
    iget v5, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    div-int/lit8 v1, v5, 0x3

    .line 1468
    .local v1, "buttonWidth":I
    new-instance v3, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    invoke-direct {v3, p1}, Lcom/glu/android/ResFileDownloadView$GluTextArea;-><init>(Ljava/lang/String;)V

    .line 1469
    .local v3, "gta":Lcom/glu/android/ResFileDownloadView$GluTextArea;
    sget v5, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    iget v6, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    sget v7, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    shl-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    sub-int v7, v0, v4

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/glu/android/ResFileDownloadView$GluTextArea;->setBounds(IIII)V

    .line 1470
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1472
    new-instance v2, Lcom/glu/android/ResFileDownloadView$GluButton;

    invoke-direct {v2, p3, p2}, Lcom/glu/android/ResFileDownloadView$GluButton;-><init>(Ljava/lang/String;I)V

    .line 1473
    .local v2, "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    sget v5, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    sget v6, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    shl-int/lit8 v6, v6, 0x1

    sub-int v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v0, v6, v7}, Lcom/glu/android/ResFileDownloadView$GluButton;->setBounds(IIII)V

    .line 1474
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1476
    new-instance v2, Lcom/glu/android/ResFileDownloadView$GluButton;

    .end local v2    # "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    invoke-direct {v2, p5, p4}, Lcom/glu/android/ResFileDownloadView$GluButton;-><init>(Ljava/lang/String;I)V

    .line 1477
    .restart local v2    # "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    sget v5, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    add-int/2addr v5, v1

    sget v6, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    shl-int/lit8 v6, v6, 0x1

    sub-int v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v0, v6, v7}, Lcom/glu/android/ResFileDownloadView$GluButton;->setBounds(IIII)V

    .line 1478
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1480
    new-instance v2, Lcom/glu/android/ResFileDownloadView$GluButton;

    .end local v2    # "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    invoke-direct {v2, p7, p6}, Lcom/glu/android/ResFileDownloadView$GluButton;-><init>(Ljava/lang/String;I)V

    .line 1481
    .restart local v2    # "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    shl-int/lit8 v5, v1, 0x1

    sget v6, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    add-int/2addr v5, v6

    sget v6, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    shl-int/lit8 v6, v6, 0x1

    sub-int v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v0, v6, v7}, Lcom/glu/android/ResFileDownloadView$GluButton;->setBounds(IIII)V

    .line 1482
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1483
    return-void
.end method

.method public createTextOnlyLayout(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1487
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getUsableY()I

    move-result v1

    .line 1489
    .local v1, "usableY":I
    new-instance v0, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    invoke-direct {v0, p1}, Lcom/glu/android/ResFileDownloadView$GluTextArea;-><init>(Ljava/lang/String;)V

    .line 1490
    .local v0, "gta":Lcom/glu/android/ResFileDownloadView$GluTextArea;
    sget v2, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    iget v3, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    sget v4, Lcom/glu/android/ResFileDownloadView;->MARGIN:I

    shl-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/glu/android/ResFileDownloadView$GluTextArea;->setBounds(IIII)V

    .line 1492
    iget-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1493
    return-void
.end method

.method public deleteResFile()V
    .locals 0

    return-void
.end method

.method public getResFileSize()I
    .locals 3

    .prologue
    .line 650
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getDiskFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    .local v0, "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 660
    :goto_0
    return v1

    .line 655
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "resFile":Ljava/io/File;
    invoke-static {}, Lcom/glu/android/GluUtil;->getPrimaryResSDCardFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    .restart local v0    # "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 660
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsableY()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1431
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1434
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/ResFileDownloadView$GluWidget;

    iget v0, v0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dy:I

    goto :goto_0
.end method

.method public init(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x1000000

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "~~ init("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 554
    invoke-direct {p0}, Lcom/glu/android/ResFileDownloadView;->calculateLayoutConstants()V

    .line 556
    sput-object p0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    .line 557
    iput p1, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    .line 558
    iput p2, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    .line 560
    sget-object v0, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    iget-boolean v0, v0, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    if-nez v0, :cond_0

    .line 571
    :goto_0
    const v0, 0x7f020004

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_mutedLogoImg:Landroid/graphics/drawable/Drawable;

    .line 574
    const v0, 0x7f020006

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_tooltipImg:Landroid/graphics/drawable/Drawable;

    .line 575
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/16 v1, -0x8ea

    invoke-direct {v0, v4, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_tooltipColorFilter:Landroid/graphics/LightingColorFilter;

    .line 578
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    .line 579
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 580
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 581
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    sget v1, Lcom/glu/android/ResFileDownloadView;->FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 582
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 583
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 584
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 585
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    .line 586
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 587
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    sget v1, Lcom/glu/android/ResFileDownloadView;->FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 588
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 589
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 590
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 591
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    .line 592
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 593
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    sget v1, Lcom/glu/android/ResFileDownloadView;->FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 594
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 595
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 596
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 597
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_marqueePaint:Landroid/graphics/Paint;

    .line 598
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_marqueePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 599
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_marqueePaint:Landroid/graphics/Paint;

    sget v1, Lcom/glu/android/ResFileDownloadView;->FONT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 600
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_marqueePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 601
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_marqueePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 602
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_marqueePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 604
    invoke-virtual {p0, v2}, Lcom/glu/android/ResFileDownloadView;->setFocusable(Z)V

    .line 605
    invoke-virtual {p0, v2}, Lcom/glu/android/ResFileDownloadView;->setFocusableInTouchMode(Z)V

    .line 606
    return-void

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->resourceIsOnDisk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    goto/16 :goto_0

    .line 564
    :cond_1
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->resourceIsOnSDCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    iput-boolean v5, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    goto/16 :goto_0

    .line 567
    :cond_2
    sget-object v0, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    iput-boolean v5, v0, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    goto/16 :goto_0
.end method

.method public newState(I)V
    .locals 22
    .param p1, "state"    # I

    .prologue
    .line 1103
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 1410
    :goto_0
    return-void

    .line 1106
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newState="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/glu/android/ResFileDownloadView$GluTitlebar;

    if-nez v2, :cond_1

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 1115
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 1117
    new-instance v12, Lcom/glu/android/ResFileDownloadView$GluTitlebar;

    const/high16 v2, 0x7f070000

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Lcom/glu/android/ResFileDownloadView$GluTitlebar;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v12, "gt":Lcom/glu/android/ResFileDownloadView$GluTitlebar;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    const/4 v6, 0x0

    invoke-virtual {v12, v2, v4, v5, v6}, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->setBounds(IIII)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v2, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1128
    .end local v12    # "gt":Lcom/glu/android/ResFileDownloadView$GluTitlebar;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newState() unhandled state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1369
    :goto_1
    :sswitch_0
    const/16 v16, 0x0

    .line 1370
    .local v16, "tooltipString":Ljava/lang/String;
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_13

    .line 1373
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget v2, v2, Lcom/glu/android/GameLet;->m_platformVersionI:I

    const/4 v4, 0x5

    if-ge v2, v4, :cond_12

    .line 1374
    const v2, 0x7f070047

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1387
    :cond_3
    :goto_2
    if-eqz v16, :cond_4

    .line 1389
    invoke-direct/range {p0 .. p1}, Lcom/glu/android/ResFileDownloadView;->isLargeAdState(I)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-boolean v2, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    if-eqz v2, :cond_16

    const/16 v17, 0x0

    .line 1390
    .local v17, "tooltipY":I
    :goto_3
    if-nez v17, :cond_17

    sget v2, Lcom/glu/android/ResFileDownloadView;->TOOLTIP_PADDING:I

    shr-int/lit8 v19, v2, 0x1

    .line 1391
    .local v19, "yPaddingToUse":I
    :goto_4
    sget v18, Lcom/glu/android/ResFileDownloadView;->TOOLTIP_PADDING:I

    .line 1393
    .local v18, "xPaddingToUse":I
    new-instance v15, Lcom/glu/android/ResFileDownloadView$GluTooltip;

    invoke-direct/range {v15 .. v16}, Lcom/glu/android/ResFileDownloadView$GluTooltip;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v15, "tooltip":Lcom/glu/android/ResFileDownloadView$GluTooltip;
    invoke-static {}, Lcom/glu/android/GluUtil;->getScreenWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/glu/android/ResFileDownloadView;->m_tooltipImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int v2, v2, v18

    add-int v4, v17, v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/glu/android/ResFileDownloadView;->m_tooltipImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/glu/android/ResFileDownloadView;->m_tooltipImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v15, v2, v4, v5, v6}, Lcom/glu/android/ResFileDownloadView$GluTooltip;->setBounds(IIII)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1399
    .end local v15    # "tooltip":Lcom/glu/android/ResFileDownloadView$GluTooltip;
    .end local v17    # "tooltipY":I
    .end local v18    # "xPaddingToUse":I
    .end local v19    # "yPaddingToUse":I
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    .line 1400
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/glu/android/ResFileDownloadView;->m_state:I

    .line 1402
    move-object/from16 v0, p0

    iget v2, v0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/glu/android/ResFileDownloadView;->isLargeAdState(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1404
    sget-object v2, Lcom/glu/android/ResDownloadViewGroup;->instance:Lcom/glu/android/ResDownloadViewGroup;

    invoke-virtual {v2}, Lcom/glu/android/ResDownloadViewGroup;->showAd()V

    .line 1405
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->adjustTextLayoutForAd()V

    goto/16 :goto_0

    .line 1124
    .end local v16    # "tooltipString":Ljava/lang/String;
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_5

    .line 1182
    :sswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumDone:Z

    .line 1183
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    .line 1184
    sget-object v2, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v2}, Lcom/glu/android/GluDownloadResMgr;->verifySpecialFileIntegrity()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_specialCheckPassed:Z

    .line 1185
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_specialCheckPassed:Z

    if-nez v2, :cond_6

    sget-object v2, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    iget-boolean v2, v2, Lcom/glu/android/GluDownloadResMgr;->m_secondaryFilesPassedOnce:Z

    if-eqz v2, :cond_6

    .line 1187
    sget-object v2, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v2}, Lcom/glu/android/GluDownloadResMgr;->deleteSpecialFiles()V

    .line 1188
    sget-object v2, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/glu/android/GluDownloadResMgr;->setSecondaryFilesPassed(Z)V

    .line 1190
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumInProgress:Z

    .line 1191
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 1193
    const v2, 0x7f070013

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/glu/android/ResFileDownloadView;->createTextOnlyLayout(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1198
    :sswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1199
    .local v3, "dlPromptMsg":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    if-eqz v2, :cond_8

    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f070018

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->getAllFilesBytesTotal()I

    move-result v7

    invoke-static {v7}, Lcom/glu/android/GluUtil;->getKilobyteString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1205
    :goto_7
    const/4 v4, 0x0

    const v2, 0x7f070019

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const v2, 0x7f07001a

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1198
    .end local v3    # "dlPromptMsg":Ljava/lang/String;
    :cond_7
    const-string v3, ""

    goto :goto_6

    .line 1202
    .restart local v3    # "dlPromptMsg":Ljava/lang/String;
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v2}, Lcom/glu/android/GluDownloadResMgr;->areThereSpecialFiles()Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x7f070018

    :goto_8
    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->getAllFilesBytesTotal()I

    move-result v7

    invoke-static {v7}, Lcom/glu/android/GluUtil;->getKilobyteString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_9
    const v2, 0x7f070017

    goto :goto_8

    .line 1210
    .end local v3    # "dlPromptMsg":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    const/4 v6, 0x6

    const v2, 0x7f07000c

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    const v2, 0x7f07000d

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1214
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->showWiFiPopup()V

    .line 1216
    sget-object v2, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    iget-boolean v2, v2, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    if-eqz v2, :cond_b

    .line 1217
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->getResFileSize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    .line 1221
    :goto_9
    const v2, 0x7f07001b

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/glu/android/ResFileDownloadView;->getAllFilesBytesDownloaded(I)I

    move-result v7

    int-to-double v7, v7

    invoke-direct/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->getAllFilesBytesTotal()I

    move-result v9

    int-to-double v0, v9

    move-wide/from16 v20, v0

    div-double v7, v7, v20

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v7, v7, v20

    double-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1224
    .local v14, "text":Ljava/lang/String;
    sget-object v2, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v2}, Lcom/glu/android/GluDownloadResMgr;->areThereSpecialFiles()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f070063

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/glu/android/ResFileDownloadView;->getCurrentFilename(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1226
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/glu/android/ResFileDownloadView;->createTextOnlyLayout(Ljava/lang/String;)V

    .line 1228
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    if-eqz v2, :cond_c

    .line 1230
    invoke-static {}, Lcom/glu/android/GluUtil;->getDiskFilename()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFilename:Ljava/lang/String;

    .line 1231
    invoke-static {}, Lcom/glu/android/GluUtil;->getTempDiskFilename()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_tempFilename:Ljava/lang/String;

    .line 1240
    :goto_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    .line 1241
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadDone:Z

    .line 1242
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    .line 1243
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    .line 1245
    sget-object v2, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v2}, Lcom/glu/android/GluDownloadResMgr;->downloadResFile()V

    goto/16 :goto_1

    .line 1219
    .end local v14    # "text":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    goto/16 :goto_9

    .line 1235
    .restart local v14    # "text":Ljava/lang/String;
    :cond_c
    invoke-static {}, Lcom/glu/android/GluUtil;->getPrimaryResSDCardFilename()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFilename:Ljava/lang/String;

    .line 1236
    invoke-static {}, Lcom/glu/android/GluUtil;->getTempSDCardFilename()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_tempFilename:Ljava/lang/String;

    goto :goto_a

    .line 1250
    .end local v14    # "text":Ljava/lang/String;
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->showWiFiPopup()V

    .line 1252
    sget-object v2, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/glu/android/GluDownloadResMgr;->m_specialCurrentFilename:Ljava/lang/String;

    .line 1254
    const v2, 0x7f070062

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/glu/android/ResFileDownloadView;->getAllFilesBytesDownloaded(I)I

    move-result v7

    int-to-double v7, v7

    invoke-direct/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->getAllFilesBytesTotal()I

    move-result v9

    int-to-double v0, v9

    move-wide/from16 v20, v0

    div-double v7, v7, v20

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v7, v7, v20

    double-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/glu/android/ResFileDownloadView;->createTextOnlyLayout(Ljava/lang/String;)V

    .line 1259
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    if-eqz v2, :cond_d

    .line 1261
    invoke-static {}, Lcom/glu/android/GluUtil;->getDiskFilename()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFilename:Ljava/lang/String;

    .line 1262
    invoke-static {}, Lcom/glu/android/GluUtil;->getTempDiskFilename()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_tempFilename:Ljava/lang/String;

    .line 1263
    invoke-static {}, Lcom/glu/android/GluUtil;->getPrimaryResSDCardFilename()Ljava/lang/String;

    move-result-object v11

    .line 1272
    .local v11, "deleteFilename":Ljava/lang/String;
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download filename is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFilename:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1283
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    .line 1284
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadDone:Z

    .line 1285
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    .line 1286
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    .line 1288
    sget-object v2, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v2}, Lcom/glu/android/GluDownloadResMgr;->downloadSpecialResFile()V

    goto/16 :goto_1

    .line 1267
    .end local v11    # "deleteFilename":Ljava/lang/String;
    :cond_d
    invoke-static {}, Lcom/glu/android/GluUtil;->getPrimaryResSDCardFilename()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFilename:Ljava/lang/String;

    .line 1268
    invoke-static {}, Lcom/glu/android/GluUtil;->getTempSDCardFilename()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_tempFilename:Ljava/lang/String;

    .line 1269
    invoke-static {}, Lcom/glu/android/GluUtil;->getDiskFilename()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "deleteFilename":Ljava/lang/String;
    goto :goto_b

    .line 1293
    .end local v11    # "deleteFilename":Ljava/lang/String;
    :sswitch_6
    const/16 v2, 0x2710

    move-object/from16 v0, p0

    iput v2, v0, Lcom/glu/android/ResFileDownloadView;->m_preparingTimer:I

    .line 1294
    const v2, 0x7f07004c

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/glu/android/ResFileDownloadView;->createTextOnlyLayout(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1297
    :sswitch_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    if-eqz v2, :cond_e

    const v2, 0x7f070019

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1299
    .local v13, "resumeFileLocation":Ljava/lang/String;
    :goto_c
    const v2, 0x7f070026

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    const v2, 0x7f07000e

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xb

    const v2, 0x7f07000f

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1297
    .end local v13    # "resumeFileLocation":Ljava/lang/String;
    :cond_e
    const v2, 0x7f07001a

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    .line 1304
    :sswitch_8
    const v2, 0x7f070027

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    const v2, 0x7f070008

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    const v2, 0x7f070009

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1309
    :sswitch_9
    const v2, 0x7f070028

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const v2, 0x7f070029

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    const v2, 0x7f07002a

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1315
    :sswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07002b

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->getAllFilesBytesTotal()I

    move-result v7

    invoke-static {v7}, Lcom/glu/android/GluUtil;->getKilobyteString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const v2, 0x7f070008

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    const v2, 0x7f070009

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1322
    :sswitch_b
    sget-object v2, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/glu/android/GluDownloadResMgr;->setSecondaryFilesPassed(Z)V

    .line 1323
    sget-object v2, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v2}, Lcom/glu/android/GluDownloadResMgr;->deleteSpecialFiles()V

    .line 1324
    new-instance v10, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getDiskFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v10, "deleteFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1329
    const v2, 0x7f07002c

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_deleteMessage:Ljava/lang/String;

    .line 1336
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_deleteMessage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/glu/android/ResFileDownloadView;->createTextOnlyLayout(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1331
    :cond_f
    const v2, 0x7f07002d

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_deleteMessage:Ljava/lang/String;

    goto :goto_d

    .line 1340
    .end local v10    # "deleteFile":Ljava/io/File;
    :sswitch_c
    const/16 v2, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/glu/android/ResFileDownloadView;->newState(I)V

    goto/16 :goto_0

    .line 1344
    :sswitch_d
    sget-boolean v2, Lcom/glu/android/Settings;->PUSH_ENABLED:Z

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/glu/android/GluEmbeddedPush;->hasPushBeenSet()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1346
    :cond_10
    const/16 v2, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/glu/android/ResFileDownloadView;->newState(I)V

    goto/16 :goto_0

    .line 1350
    :cond_11
    const v2, 0x7f07006a

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/high16 v6, 0x7f070000

    invoke-static {v6}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    const v2, 0x7f070008

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    const v2, 0x7f070009

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1357
    :sswitch_e
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->finishApp()V

    goto/16 :goto_1

    .line 1360
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/glu/android/ResFileDownloadView;->m_sdErrorText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonPositive:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonPositive:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/glu/android/ResFileDownloadView;->getSDButtonText(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonNegative:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonNegative:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/glu/android/ResFileDownloadView;->getSDButtonText(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1376
    .restart local v16    # "tooltipString":Ljava/lang/String;
    :cond_12
    const v2, 0x7f070046

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 1378
    :cond_13
    const/4 v2, 0x3

    move/from16 v0, p1

    if-eq v0, v2, :cond_14

    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 1381
    :cond_14
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget v2, v2, Lcom/glu/android/GameLet;->m_platformVersionI:I

    const/4 v4, 0x5

    if-ge v2, v4, :cond_15

    .line 1382
    const v2, 0x7f070047

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 1384
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070046

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f070048

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 1389
    :cond_16
    invoke-static {}, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->getDesiredHeight()I

    move-result v17

    goto/16 :goto_3

    .line 1390
    .restart local v17    # "tooltipY":I
    :cond_17
    sget v19, Lcom/glu/android/ResFileDownloadView;->TOOLTIP_PADDING:I

    goto/16 :goto_4

    .line 1408
    .end local v17    # "tooltipY":I
    :cond_18
    sget-object v2, Lcom/glu/android/ResDownloadViewGroup;->instance:Lcom/glu/android/ResDownloadViewGroup;

    invoke-virtual {v2}, Lcom/glu/android/ResDownloadViewGroup;->hideAd()V

    goto/16 :goto_0

    .line 1128
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_3
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_0
        0xf -> :sswitch_e
        0x64 -> :sswitch_f
    .end sparse-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 1625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1628
    .local v0, "curTime":J
    iget-wide v7, p0, Lcom/glu/android/ResFileDownloadView;->m_lastTickTime:J

    sub-long v7, v0, v7

    long-to-int v7, v7

    invoke-virtual {p0, v7}, Lcom/glu/android/ResFileDownloadView;->onTick(I)V

    .line 1629
    iput-wide v0, p0, Lcom/glu/android/ResFileDownloadView;->m_lastTickTime:J

    .line 1632
    iget v7, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    iget v8, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    if-le v7, v8, :cond_0

    .line 1635
    iget v4, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    .line 1636
    .local v4, "logoScaledW":I
    iget-object v7, p0, Lcom/glu/android/ResFileDownloadView;->m_mutedLogoImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    mul-int/2addr v7, v4

    iget-object v8, p0, Lcom/glu/android/ResFileDownloadView;->m_mutedLogoImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int v3, v7, v8

    .line 1637
    .local v3, "logoScaledH":I
    iget v7, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    sub-int/2addr v7, v3

    shr-int/lit8 v6, v7, 0x1

    .line 1638
    .local v6, "logoY":I
    iget-object v7, p0, Lcom/glu/android/ResFileDownloadView;->m_mutedLogoImg:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    add-int v9, v6, v3

    invoke-virtual {v7, v8, v6, v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1649
    :goto_0
    iget-object v7, p0, Lcom/glu/android/ResFileDownloadView;->m_mutedLogoImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1650
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 1651
    iget-object v7, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v7, p1}, Lcom/glu/android/ResFileDownloadView$GluWidget;->draw(Landroid/graphics/Canvas;)V

    .line 1650
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1643
    .end local v2    # "i":I
    .end local v3    # "logoScaledH":I
    .end local v4    # "logoScaledW":I
    .end local v6    # "logoY":I
    :cond_0
    iget v7, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    add-int/lit8 v3, v7, -0x3c

    .line 1644
    .restart local v3    # "logoScaledH":I
    iget-object v7, p0, Lcom/glu/android/ResFileDownloadView;->m_mutedLogoImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    mul-int/2addr v7, v3

    iget-object v8, p0, Lcom/glu/android/ResFileDownloadView;->m_mutedLogoImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    div-int v4, v7, v8

    .line 1645
    .restart local v4    # "logoScaledW":I
    iget v7, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    sub-int/2addr v7, v4

    shr-int/lit8 v5, v7, 0x1

    .line 1646
    .local v5, "logoX":I
    iget v7, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    sub-int/2addr v7, v3

    shr-int/lit8 v6, v7, 0x1

    .line 1647
    .restart local v6    # "logoY":I
    iget-object v7, p0, Lcom/glu/android/ResFileDownloadView;->m_mutedLogoImg:Landroid/graphics/drawable/Drawable;

    add-int v8, v5, v4

    add-int v9, v6, v3

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1654
    .end local v5    # "logoX":I
    .restart local v2    # "i":I
    :cond_1
    sget-object v7, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    iget-object v7, v7, Lcom/glu/android/GluDownloadResMgr;->m_downloadThread:Ljava/lang/Thread;

    if-eqz v7, :cond_2

    .line 1655
    const-wide/16 v7, 0x64

    invoke-virtual {p0, v7, v8}, Lcom/glu/android/ResFileDownloadView;->postInvalidateDelayed(J)V

    .line 1658
    :goto_2
    return-void

    .line 1657
    :cond_2
    const-wide/16 v7, 0xa

    invoke-virtual {p0, v7, v8}, Lcom/glu/android/ResFileDownloadView;->postInvalidateDelayed(J)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResFileDownloadView.onKeyDown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1607
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResFileDownloadView.onKeyUp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1614
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1615
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    .line 1617
    :cond_0
    return v2
.end method

.method public onTick(I)V
    .locals 20
    .param p1, "elapseMS"    # I

    .prologue
    .line 716
    const/4 v6, -0x1

    .line 718
    .local v6, "newState":I
    const/4 v11, -0x2

    .line 719
    .local v11, "widgetID":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    if-eqz v12, :cond_0

    .line 720
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v12}, Lcom/glu/android/ResFileDownloadView$GluWidget;->getID()I

    move-result v11

    .line 723
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    if-eqz v12, :cond_2

    .line 725
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v4, v12, :cond_2

    .line 727
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v12, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/ResFileDownloadView$GluWidget;

    .line 728
    .local v2, "ele":Lcom/glu/android/ResFileDownloadView$GluWidget;
    if-eqz v2, :cond_1

    .line 729
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/glu/android/ResFileDownloadView$GluWidget;->tick(I)V

    .line 725
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 733
    .end local v2    # "ele":Lcom/glu/android/ResFileDownloadView$GluWidget;
    .end local v4    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    sparse-switch v12, :sswitch_data_0

    .line 1083
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onTick() unhandled state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1088
    :cond_3
    :goto_1
    :sswitch_0
    const/16 v12, 0xc

    if-ne v11, v12, :cond_4

    .line 1089
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    check-cast v12, Lcom/glu/android/ResFileDownloadView$GluTooltip;

    invoke-virtual {v12}, Lcom/glu/android/ResFileDownloadView$GluTooltip;->getTitle()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    check-cast v12, Lcom/glu/android/ResFileDownloadView$GluTooltip;

    invoke-virtual {v12}, Lcom/glu/android/ResFileDownloadView$GluTooltip;->getText()Ljava/lang/String;

    move-result-object v12

    const v14, 0x7f070007

    invoke-static {v14}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v12, v14}, Lcom/glu/android/GluUtil;->openModalDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_pointerLatched:Z

    .line 1092
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    .line 1093
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    .line 1095
    sget-object v12, Lcom/glu/android/ResDownloadViewGroup;->instance:Lcom/glu/android/ResDownloadViewGroup;

    if-eqz v12, :cond_5

    .line 1096
    sget-object v12, Lcom/glu/android/ResDownloadViewGroup;->instance:Lcom/glu/android/ResDownloadViewGroup;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/glu/android/ResDownloadViewGroup;->tick(I)V

    .line 1098
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/glu/android/ResFileDownloadView;->newState(I)V

    .line 1099
    return-void

    .line 738
    :sswitch_1
    invoke-static {}, Lcom/glu/android/GluUtil;->cleanupOldSDDir()Z

    move-result v7

    .line 739
    .local v7, "sdFilesChanged":Z
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdErrorText:Ljava/lang/String;

    .line 741
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getDiskFilename()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    .local v5, "localFile":Ljava/io/File;
    if-nez v7, :cond_6

    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    iget-boolean v12, v12, Lcom/glu/android/GluDownloadResMgr;->m_secondaryFilesPassedOnce:Z

    if-eqz v12, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_6

    .line 745
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 746
    .local v8, "storageState":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SD storage state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 748
    const-string v12, "shared"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 750
    const v12, 0x7f07003e

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/high16 v15, 0x7f070000

    invoke-static {v15}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdErrorText:Ljava/lang/String;

    .line 751
    const/16 v12, 0x12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonPositive:I

    .line 752
    const/16 v12, 0x13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonNegative:I

    .line 785
    .end local v8    # "storageState":Ljava/lang/String;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdErrorText:Ljava/lang/String;

    if-eqz v12, :cond_d

    .line 786
    const/16 v6, 0x64

    goto/16 :goto_1

    .line 754
    .restart local v8    # "storageState":Ljava/lang/String;
    :cond_7
    const-string v12, "checking"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 756
    const v12, 0x7f07003f

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/high16 v15, 0x7f070000

    invoke-static {v15}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdErrorText:Ljava/lang/String;

    .line 757
    const/16 v12, 0x12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonPositive:I

    .line 758
    const/16 v12, 0x13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonNegative:I

    goto :goto_2

    .line 760
    :cond_8
    const-string v12, "removed"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "bad_removal"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 762
    :cond_9
    const v12, 0x7f070040

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/high16 v15, 0x7f070000

    invoke-static {v15}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdErrorText:Ljava/lang/String;

    .line 763
    const/16 v12, 0x11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonPositive:I

    .line 764
    const/16 v12, 0x13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonNegative:I

    goto :goto_2

    .line 766
    :cond_a
    const-string v12, "nofs"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "unmountable"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "unmounted"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 768
    :cond_b
    const v12, 0x7f070042

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/high16 v15, 0x7f070000

    invoke-static {v15}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdErrorText:Ljava/lang/String;

    .line 769
    const/16 v12, 0x11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonPositive:I

    .line 770
    const/16 v12, 0x13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonNegative:I

    goto/16 :goto_2

    .line 775
    :cond_c
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getPrimaryResSDCardFilename()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 776
    .local v9, "testFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_6

    .line 778
    const v12, 0x7f070041

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/high16 v15, 0x7f070000

    invoke-static {v15}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdErrorText:Ljava/lang/String;

    .line 779
    const/16 v12, 0x11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonPositive:I

    .line 780
    const/16 v12, 0x13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/glu/android/ResFileDownloadView;->m_sdButtonNegative:I

    goto/16 :goto_2

    .line 787
    .end local v8    # "storageState":Ljava/lang/String;
    .end local v9    # "testFile":Ljava/io/File;
    :cond_d
    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    iget-boolean v12, v12, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    if-eqz v12, :cond_e

    .line 788
    const/4 v6, 0x7

    goto/16 :goto_1

    .line 790
    :cond_e
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 795
    .end local v5    # "localFile":Ljava/io/File;
    .end local v7    # "sdFilesChanged":Z
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumDone:Z

    if-eqz v12, :cond_19

    .line 797
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_specialCheckPassed:Z

    if-eqz v12, :cond_11

    .line 799
    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_10

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->resourceIsOnDisk()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 802
    const/16 v6, 0x9

    goto/16 :goto_1

    .line 804
    :cond_f
    const/16 v6, 0xc

    goto/16 :goto_1

    .line 807
    :cond_10
    const/16 v6, 0xc

    goto/16 :goto_1

    .line 809
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    if-eqz v12, :cond_12

    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v12}, Lcom/glu/android/GluDownloadResMgr;->areThereSpecialFiles()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 811
    const/4 v6, 0x7

    goto/16 :goto_1

    .line 815
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_14

    .line 827
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    if-eqz v12, :cond_13

    const/4 v6, 0x7

    .line 830
    :goto_3
    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v12}, Lcom/glu/android/GluDownloadResMgr;->initialize()V

    goto/16 :goto_1

    .line 827
    :cond_13
    const/4 v6, 0x2

    goto :goto_3

    .line 832
    :cond_14
    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_15

    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    const/4 v13, 0x4

    if-eq v12, v13, :cond_15

    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_3

    .line 834
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    if-eqz v12, :cond_17

    .line 837
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    if-nez v12, :cond_16

    .line 838
    const v12, 0x7f070064

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    .line 850
    :cond_16
    :goto_4
    const/4 v6, 0x6

    goto/16 :goto_1

    .line 842
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    if-nez v12, :cond_18

    .line 845
    const v12, 0x7f070025

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 847
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    goto :goto_4

    .line 854
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumInProgress:Z

    if-nez v12, :cond_3

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->checkResourceFile()V

    goto/16 :goto_1

    .line 860
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v12, :cond_1a

    .line 861
    const/16 v6, 0xf

    goto/16 :goto_1

    .line 864
    :cond_1a
    if-nez v11, :cond_1c

    .line 866
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    .line 868
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    if-eqz v12, :cond_1b

    const/4 v6, 0x4

    :goto_5
    goto/16 :goto_1

    :cond_1b
    const/4 v6, 0x3

    goto :goto_5

    .line 870
    :cond_1c
    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 872
    invoke-static {}, Lcom/glu/android/GluUtil;->getResourceSDDir()Ljava/io/File;

    move-result-object v12

    if-nez v12, :cond_1d

    .line 875
    const v12, 0x7f070024

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    .line 877
    const/4 v6, 0x6

    goto/16 :goto_1

    .line 881
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    if-eqz v12, :cond_1e

    const/4 v6, 0x4

    .line 883
    :goto_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    goto/16 :goto_1

    .line 881
    :cond_1e
    const/4 v6, 0x3

    goto :goto_6

    .line 890
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-lez v12, :cond_21

    .line 892
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    .line 893
    .local v3, "gta":Lcom/glu/android/ResFileDownloadView$GluWidget;
    instance-of v12, v3, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    if-nez v12, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_1f

    .line 894
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "gta":Lcom/glu/android/ResFileDownloadView$GluWidget;
    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    .line 896
    .restart local v3    # "gta":Lcom/glu/android/ResFileDownloadView$GluWidget;
    :cond_1f
    instance-of v12, v3, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    if-eqz v12, :cond_21

    .line 898
    const-string v10, ""

    .line 900
    .local v10, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    if-eqz v12, :cond_22

    .line 902
    const v12, 0x7f070011

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 917
    :cond_20
    :goto_7
    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    .end local v3    # "gta":Lcom/glu/android/ResFileDownloadView$GluWidget;
    invoke-virtual {v3, v10}, Lcom/glu/android/ResFileDownloadView$GluTextArea;->setText(Ljava/lang/String;)V

    .line 922
    .end local v10    # "text":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    if-eqz v12, :cond_25

    .line 925
    const/4 v6, 0x6

    goto/16 :goto_1

    .line 904
    .restart local v3    # "gta":Lcom/glu/android/ResFileDownloadView$GluWidget;
    .restart local v10    # "text":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_23

    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v12}, Lcom/glu/android/GluDownloadResMgr;->areThereSpecialFiles()Z

    move-result v12

    if-nez v12, :cond_23

    .line 906
    const v12, 0x7f07001b

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/glu/android/ResFileDownloadView;->getAllFilesBytesDownloaded(I)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->getAllFilesBytesTotal()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    .line 910
    :cond_23
    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    const/4 v13, 0x4

    if-eq v12, v13, :cond_24

    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_20

    .line 912
    :cond_24
    const v12, 0x7f070062

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/glu/android/ResFileDownloadView;->getAllFilesBytesDownloaded(I)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->getAllFilesBytesTotal()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    .line 929
    .end local v3    # "gta":Lcom/glu/android/ResFileDownloadView$GluWidget;
    .end local v10    # "text":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadDone:Z

    if-eqz v12, :cond_28

    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_26

    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v12}, Lcom/glu/android/GluDownloadResMgr;->areThereSpecialFiles()Z

    move-result v12

    if-nez v12, :cond_28

    .line 931
    :cond_26
    sget-boolean v12, Lcom/glu/android/Settings;->ADS_ENABLED:Z

    if-eqz v12, :cond_27

    .line 932
    const/4 v6, 0x5

    goto/16 :goto_1

    .line 934
    :cond_27
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 936
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v12, :cond_3

    .line 938
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    goto/16 :goto_1

    .line 942
    :sswitch_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_preparingTimer:I

    if-gtz v12, :cond_29

    .line 943
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 944
    :cond_29
    invoke-static {}, Lcom/glu/android/GluUtil;->isAppPaused()Z

    move-result v12

    if-nez v12, :cond_3

    .line 946
    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_preparingTimer:I

    sub-int v12, v12, p1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/glu/android/ResFileDownloadView;->m_preparingTimer:I

    .line 948
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v12, :cond_3

    .line 949
    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v12}, Lcom/glu/android/GameLet;->finishApp()V

    goto/16 :goto_1

    .line 953
    :sswitch_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v12, :cond_2a

    .line 954
    const/16 v6, 0xf

    goto/16 :goto_1

    .line 957
    :cond_2a
    const/4 v12, 0x6

    if-ne v11, v12, :cond_2d

    .line 959
    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    iget-boolean v12, v12, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    if-eqz v12, :cond_2b

    .line 960
    const/4 v6, 0x7

    goto/16 :goto_1

    .line 961
    :cond_2b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2c

    .line 962
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 964
    :cond_2c
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 966
    :cond_2d
    const/4 v12, 0x7

    if-ne v11, v12, :cond_3

    .line 968
    const/16 v6, 0xf

    goto/16 :goto_1

    .line 973
    :sswitch_7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v12, :cond_2e

    .line 974
    const/16 v6, 0xf

    goto/16 :goto_1

    .line 977
    :cond_2e
    const/16 v12, 0xa

    if-ne v11, v12, :cond_31

    .line 979
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    if-nez v12, :cond_2f

    invoke-static {}, Lcom/glu/android/GluUtil;->getResourceSDDir()Ljava/io/File;

    move-result-object v12

    if-nez v12, :cond_2f

    .line 982
    const v12, 0x7f070024

    invoke-static {v12}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    .line 984
    const/4 v6, 0x6

    goto/16 :goto_1

    .line 988
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    if-eqz v12, :cond_30

    const/4 v6, 0x4

    :goto_8
    goto/16 :goto_1

    :cond_30
    const/4 v6, 0x3

    goto :goto_8

    .line 991
    :cond_31
    const/16 v12, 0xb

    if-ne v11, v12, :cond_3

    .line 993
    const/16 v6, 0x8

    goto/16 :goto_1

    .line 998
    :sswitch_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v12, :cond_32

    .line 999
    const/4 v6, 0x7

    goto/16 :goto_1

    .line 1002
    :cond_32
    const/16 v12, 0x8

    if-ne v11, v12, :cond_33

    .line 1004
    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/glu/android/GluDownloadResMgr;->setSecondaryFilesPassed(Z)V

    .line 1005
    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v12}, Lcom/glu/android/GluDownloadResMgr;->deleteSpecialFiles()V

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->deleteResFile()V

    .line 1007
    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    .line 1008
    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v12}, Lcom/glu/android/GluDownloadResMgr;->saveFile()V

    .line 1010
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 1012
    :cond_33
    const/16 v12, 0x9

    if-ne v11, v12, :cond_3

    .line 1013
    const/4 v6, 0x7

    goto/16 :goto_1

    .line 1017
    :sswitch_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v12, :cond_34

    .line 1018
    const/16 v6, 0xf

    goto/16 :goto_1

    .line 1021
    :cond_34
    const/4 v12, 0x2

    if-ne v11, v12, :cond_35

    .line 1022
    const/16 v6, 0xc

    goto/16 :goto_1

    .line 1023
    :cond_35
    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    .line 1024
    const/16 v6, 0xa

    goto/16 :goto_1

    .line 1028
    :sswitch_a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v12, :cond_36

    .line 1029
    const/16 v6, 0x9

    goto/16 :goto_1

    .line 1032
    :cond_36
    const/4 v12, 0x4

    if-ne v11, v12, :cond_37

    .line 1033
    const/16 v6, 0xb

    goto/16 :goto_1

    .line 1034
    :cond_37
    const/4 v12, 0x5

    if-ne v11, v12, :cond_3

    .line 1035
    const/16 v6, 0x9

    goto/16 :goto_1

    .line 1039
    :sswitch_b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-nez v12, :cond_38

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_pointerLatched:Z

    if-eqz v12, :cond_3

    .line 1040
    :cond_38
    const/16 v6, 0xf

    goto/16 :goto_1

    .line 1045
    :sswitch_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-nez v12, :cond_39

    const/16 v12, 0x10

    if-ne v11, v12, :cond_3a

    .line 1047
    :cond_39
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/glu/android/GluEmbeddedPush;->togglePushSetting(I)V

    .line 1048
    const/16 v6, 0xe

    goto/16 :goto_1

    .line 1050
    :cond_3a
    const/16 v12, 0xf

    if-ne v11, v12, :cond_3

    .line 1052
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/glu/android/GluEmbeddedPush;->togglePushSetting(I)V

    .line 1053
    const/16 v6, 0xe

    goto/16 :goto_1

    .line 1057
    :sswitch_d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->gameStarted:Z

    if-nez v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->hasWindowFocus()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1059
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->gameStarted:Z

    .line 1060
    sget-object v12, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v12}, Lcom/glu/android/GameLet;->startGame()V

    goto/16 :goto_1

    .line 1064
    :sswitch_e
    const/16 v12, 0x11

    if-ne v11, v12, :cond_3b

    .line 1066
    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/glu/android/GluDownloadResMgr;->setSecondaryFilesPassed(Z)V

    .line 1067
    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v12}, Lcom/glu/android/GluDownloadResMgr;->deleteSpecialFiles()V

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/glu/android/ResFileDownloadView;->deleteResFile()V

    .line 1069
    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/glu/android/GluDownloadResMgr;->m_mainResFileInterrupted:Z

    .line 1070
    sget-object v12, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v12}, Lcom/glu/android/GluDownloadResMgr;->saveFile()V

    .line 1071
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1073
    :cond_3b
    const/16 v12, 0x12

    if-ne v11, v12, :cond_3c

    .line 1075
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1077
    :cond_3c
    const/16 v12, 0x13

    if-eq v11, v12, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v12, :cond_3

    .line 1079
    :cond_3d
    const/16 v6, 0xf

    goto/16 :goto_1

    .line 733
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_0
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0x64 -> :sswitch_e
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1577
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1579
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1600
    :cond_0
    :pswitch_0
    return v4

    .line 1586
    :pswitch_1
    iput-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_pointerLatched:Z

    .line 1587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1588
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v3, v1, v2}, Lcom/glu/android/ResFileDownloadView$GluWidget;->containsCoords(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1589
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v3, v1, v2}, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerPressed(II)V

    .line 1587
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1592
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1593
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v3, v1, v2}, Lcom/glu/android/ResFileDownloadView$GluWidget;->containsCoords(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1594
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v3, v1, v2}, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerReleased(II)V

    .line 1592
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1596
    :cond_2
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v3}, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerReleasedElsewhere()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onWidgetClicked(Lcom/glu/android/ResFileDownloadView$GluWidget;)V
    .locals 1
    .param p1, "widget"    # Lcom/glu/android/ResFileDownloadView$GluWidget;

    .prologue
    .line 1522
    instance-of v0, p1, Lcom/glu/android/ResFileDownloadView$GluButton;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/glu/android/ResFileDownloadView$GluTooltip;

    if-eqz v0, :cond_1

    .line 1523
    :cond_0
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    .line 1524
    :cond_1
    return-void
.end method

.method public resourceIsOnDisk()Z
    .locals 2

    .prologue
    .line 617
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getDiskFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    .local v0, "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resourceIsOnSDCard()Z
    .locals 2

    .prologue
    .line 624
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getPrimaryResSDCardFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    .local v0, "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
