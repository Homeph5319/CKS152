.class public Lcom/dataManager/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final ARCHIVE_DISPLAY_NAMES:[Ljava/lang/String;

.field private static final ARCHIVE_LABELS:[Ljava/lang/String;

.field private static final ARCHIVE_NAMES:[Ljava/lang/String;

.field private static final KEY_ARCHIVE_SIZE:Ljava/lang/String; = "archive_size_"

.field private static final KEY_HIDE_MENU:Ljava/lang/String; = "hide_menu"

.field private static final MANAGE_STORAGE_REQUEST_CODE:I = 0x3e9

.field private static final PERMISSION_REQUEST_CODE:I = 0x3e8

.field private static final PREFS_NAME:Ljava/lang/String; = "GameDataManagerPrefs"

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private final archiveExists:[Z

.field private final archiveExtracted:[Z

.field private archivePaths:[Ljava/lang/String;

.field private final archiveSizes:[J

.field private checkBoxes:[Landroid/widget/CheckBox;

.field private extractButton:Landroid/widget/Button;

.field private final extractExecutor:Ljava/util/concurrent/ExecutorService;

.field private extractor:Lcom/dataManager/ArchiveExtractor;

.field private final isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile isDestroyed:Z

.field private final isExtracting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private labels:[Landroid/widget/TextView;

.field private logger:Lcom/dataManager/AppLogger;

.field private progressDialog:Landroid/app/AlertDialog;

.field private scanDialog:Landroid/app/AlertDialog;

.field private final scanExecutor:Ljava/util/concurrent/ExecutorService;

.field private sizePrefs:Landroid/content/SharedPreferences;

.field private storageChecker:Lcom/dataManager/StorageChecker;

.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$-RLBXsGIQUv3m8CMbqGGnlGIUio(Lcom/dataManager/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dataManager/MainActivity;->lambda$showManageStorageDialog$12(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3cHOl9Ye1jNtdyvDALwd_qcoB_w(Lcom/dataManager/MainActivity;JJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/dataManager/MainActivity;->lambda$startExtraction$6(JJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4LbiTl3Yiw71g_cUiNg1xfPi5uw(Lcom/dataManager/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dataManager/MainActivity;->lambda$showProgressDialog$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5LSCGyo7onCqtbtqMpMTRDsNvQU(Lcom/dataManager/MainActivity;JJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/dataManager/MainActivity;->lambda$startExtraction$5(JJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9L1ZyqYIQ6CsO-WBGpzPPgL6aIA(Lcom/dataManager/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dataManager/MainActivity;->lambda$showManageStorageDialog$11(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Y5_nJCYqMLIn-giPU-tfw3NUog(Lcom/dataManager/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dataManager/MainActivity;->lambda$initViews$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CHYjscVqs0r7Wu513LQDxto6VGU(Lcom/dataManager/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dataManager/MainActivity;->onScanComplete()V

    return-void
.end method

.method public static synthetic $r8$lambda$PR8Jeu-7CUfSCJXqv5_1uSjzJIU(Lcom/dataManager/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dataManager/MainActivity;->lambda$initViews$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UJRSnkpaTgXDZiDSai3t3rVPCPs(Lcom/dataManager/MainActivity;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dataManager/MainActivity;->lambda$showProgressDialog$8(Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZDk2B-vpW1hi58g0voDwbwFij6I(Lcom/dataManager/MainActivity;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dataManager/MainActivity;->lambda$startExtraction$7(Ljava/util/List;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZluCBmR3UPI4ICDKheIwZ4bfXzs(Lcom/dataManager/MainActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dataManager/MainActivity;->lambda$bindCheckBox$4(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUBB788Z54twGJcptcJN9YLEq80(Lcom/dataManager/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/dataManager/MainActivity;->lambda$startScan$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$nqKj8rIvkRmh38qE3I612Enyk-U(Lcom/dataManager/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dataManager/MainActivity;->lambda$showProgressDialog$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vZTDjCKCzIpuL_gx6cAd2Fh-Y0c(Lcom/dataManager/MainActivity;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dataManager/MainActivity;->lambda$initViews$2(Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlogger(Lcom/dataManager/MainActivity;)Lcom/dataManager/AppLogger;
    .locals 0

    iget-object p0, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuiHandler(Lcom/dataManager/MainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/dataManager/MainActivity;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monExtractionDone(Lcom/dataManager/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dataManager/MainActivity;->onExtractionDone(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 43
    const-string v0, "archiveUserData.zip"

    const-string v1, "archiveObbCache.zip"

    const-string v2, "archiveData.zip"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dataManager/MainActivity;->ARCHIVE_NAMES:[Ljava/lang/String;

    .line 48
    const-string v0, "User Data"

    const-string v1, "Obb Cache"

    const-string v2, "App Data"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dataManager/MainActivity;->ARCHIVE_DISPLAY_NAMES:[Ljava/lang/String;

    .line 53
    const-string v0, "User Data (/Android/data/)"

    const-string v1, "Obb Cache (/Android/obb/)"

    const-string v2, "App Data (/data/data/)"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dataManager/MainActivity;->ARCHIVE_LABELS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/dataManager/MainActivity;->scanExecutor:Ljava/util/concurrent/ExecutorService;

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/dataManager/MainActivity;->extractExecutor:Ljava/util/concurrent/ExecutorService;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dataManager/MainActivity;->uiHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dataManager/MainActivity;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dataManager/MainActivity;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dataManager/MainActivity;->isExtracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    const/4 v0, 0x3

    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/dataManager/MainActivity;->archiveExists:[Z

    .line 72
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/dataManager/MainActivity;->archiveExtracted:[Z

    .line 73
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/dataManager/MainActivity;->archiveSizes:[J

    .line 81
    iput-boolean v1, p0, Lcom/dataManager/MainActivity;->isDestroyed:Z

    return-void
.end method

.method private bindCheckBox(I)V
    .locals 6
    .param p1, "i"    # I

    .line 266
    iget-object v0, p0, Lcom/dataManager/MainActivity;->checkBoxes:[Landroid/widget/CheckBox;

    aget-object v0, v0, p1

    .line 267
    .local v0, "cb":Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/dataManager/MainActivity;->labels:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    .line 268
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 271
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 273
    iget-object v2, p0, Lcom/dataManager/MainActivity;->archivePaths:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dataManager/MainActivity;->archiveExists:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 278
    :cond_1
    iget-object v2, p0, Lcom/dataManager/MainActivity;->archiveExtracted:[Z

    aget-boolean v2, v2, p1

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 279
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 280
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 281
    iget-object v2, p0, Lcom/dataManager/MainActivity;->extractor:Lcom/dataManager/ArchiveExtractor;

    sget-object v3, Lcom/dataManager/MainActivity;->ARCHIVE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/dataManager/MainActivity;->archivePaths:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/dataManager/ArchiveExtractor;->readInstallInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/dataManager/ArchiveExtractor$InstallInfo;

    move-result-object v2

    .line 283
    .local v2, "info":Lcom/dataManager/ArchiveExtractor$InstallInfo;
    const-string v3, "INSTALLED"

    .line 284
    .local v3, "installed":Ljava/lang/String;
    if-eqz v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/dataManager/ArchiveExtractor$InstallInfo;->installedAt:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/dataManager/MainActivity;->ARCHIVE_LABELS:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2014 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const-string v4, "#16A34A"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    .end local v2    # "info":Lcom/dataManager/ArchiveExtractor$InstallInfo;
    .end local v3    # "installed":Ljava/lang/String;
    goto :goto_1

    .line 288
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 289
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/dataManager/MainActivity;->ARCHIVE_LABELS:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dataManager/MainActivity;->archiveSizes:[J

    aget-wide v4, v3, p1

    invoke-direct {p0, v4, v5}, Lcom/dataManager/MainActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    const-string v2, "#FFEBEE"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    new-instance v2, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/dataManager/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 274
    :cond_4
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 275
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/dataManager/MainActivity;->ARCHIVE_LABELS:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2014 UNAVAILABLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const-string v2, "#FF1744"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    :goto_1
    return-void

    .line 268
    :cond_5
    :goto_2
    return-void
.end method

.method private bindUI()V
    .locals 2

    .line 257
    iget-boolean v0, p0, Lcom/dataManager/MainActivity;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 259
    invoke-direct {p0, v0}, Lcom/dataManager/MainActivity;->bindCheckBox(I)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->refreshExtractButton()V

    .line 262
    return-void
.end method

.method private buildTargetList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dataManager/ArchiveExtractor$ArchiveTarget;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/dataManager/ArchiveExtractor$ArchiveTarget;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/dataManager/MainActivity;->checkBoxes:[Landroid/widget/CheckBox;

    aget-object v2, v2, v1

    .line 378
    .local v2, "cb":Landroid/widget/CheckBox;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    new-instance v4, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;

    sget-object v3, Lcom/dataManager/MainActivity;->ARCHIVE_NAMES:[Ljava/lang/String;

    aget-object v5, v3, v1

    iget-object v3, p0, Lcom/dataManager/MainActivity;->archivePaths:[Ljava/lang/String;

    aget-object v6, v3, v1

    sget-object v3, Lcom/dataManager/MainActivity;->ARCHIVE_DISPLAY_NAMES:[Ljava/lang/String;

    aget-object v7, v3, v1

    iget-object v3, p0, Lcom/dataManager/MainActivity;->archiveSizes:[J

    aget-wide v8, v3, v1

    invoke-direct/range {v4 .. v9}, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v2    # "cb":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private dismissDialog(Landroid/app/AlertDialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .line 591
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 594
    :cond_0
    return-void
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # J

    .line 598
    const-wide/16 v0, 0x400

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 599
    :cond_0
    const-wide/32 v0, 0x100000

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-gez v4, :cond_1

    long-to-double v0, p1

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "%.1f KB"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 600
    :cond_1
    long-to-double v0, p1

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "%.1f MB"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUncompressedSizeCached(Ljava/lang/String;)J
    .locals 11
    .param p1, "archiveName"    # Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "archive_size_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/dataManager/MainActivity;->sizePrefs:Landroid/content/SharedPreferences;

    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 231
    .local v4, "cached":J
    const-string v1, " B"

    const-string v6, " = "

    const-string v7, "MainActivity"

    cmp-long v8, v4, v2

    if-eqz v8, :cond_0

    .line 232
    iget-object v2, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Size cache hit: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-wide v4

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/dataManager/MainActivity;->extractor:Lcom/dataManager/ArchiveExtractor;

    invoke-virtual {v2, p1}, Lcom/dataManager/ArchiveExtractor;->getUncompressedSize(Ljava/lang/String;)J

    move-result-wide v2

    .line 236
    .local v2, "size":J
    iget-object v8, p0, Lcom/dataManager/MainActivity;->sizePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 237
    iget-object v8, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Size cached: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v7, v1}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-wide v2
.end method

.method private hasAllPermissions()Z
    .locals 3

    .line 475
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 476
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    return v0

    .line 478
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    .line 479
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/dataManager/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 480
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/dataManager/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 479
    :goto_0
    return v2

    .line 482
    :cond_2
    return v2
.end method

.method private initPaths()V
    .locals 10

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/dataManager/MainActivity;->archivePaths:[Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/dataManager/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 133
    .local v0, "dataDir":Ljava/io/File;
    iget-object v1, p0, Lcom/dataManager/MainActivity;->archivePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 135
    invoke-virtual {p0, v2}, Lcom/dataManager/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 136
    .local v1, "extFiles":Ljava/io/File;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 137
    iget-object v5, p0, Lcom/dataManager/MainActivity;->archivePaths:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    goto :goto_1

    .line 139
    :cond_1
    iget-object v5, p0, Lcom/dataManager/MainActivity;->archivePaths:[Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    .line 140
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Android/data/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 141
    invoke-virtual {p0}, Lcom/dataManager/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 145
    :goto_1
    invoke-virtual {p0}, Lcom/dataManager/MainActivity;->getObbDir()Ljava/io/File;

    move-result-object v5

    .line 146
    .local v5, "obbDir":Ljava/io/File;
    iget-object v6, p0, Lcom/dataManager/MainActivity;->archivePaths:[Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const/4 v7, 0x2

    aput-object v2, v6, v7

    .line 148
    iget-object v2, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    const-string v6, "Paths resolved:"

    const-string v8, "MainActivity"

    invoke-virtual {v2, v8, v6}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  [0] App Data:  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/dataManager/MainActivity;->archivePaths:[Ljava/lang/String;

    aget-object v4, v9, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  [1] User Data: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/dataManager/MainActivity;->archivePaths:[Ljava/lang/String;

    aget-object v3, v6, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  [2] Obb Cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dataManager/MainActivity;->archivePaths:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private initViews(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .line 156
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/CheckBox;

    sget v2, Lcom/dataManager/R$id;->dataManager_archive1CheckBox:I

    .line 157
    invoke-virtual {p0, v2}, Lcom/dataManager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/dataManager/R$id;->dataManager_archive2CheckBox:I

    .line 158
    invoke-virtual {p0, v2}, Lcom/dataManager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget v2, Lcom/dataManager/R$id;->dataManager_archive3CheckBox:I

    .line 159
    invoke-virtual {p0, v2}, Lcom/dataManager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/dataManager/MainActivity;->checkBoxes:[Landroid/widget/CheckBox;

    .line 161
    new-array v0, v0, [Landroid/widget/TextView;

    sget v1, Lcom/dataManager/R$id;->dataManager_archive1Text:I

    .line 162
    invoke-virtual {p0, v1}, Lcom/dataManager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v3

    sget v1, Lcom/dataManager/R$id;->dataManager_archive2Text:I

    .line 163
    invoke-virtual {p0, v1}, Lcom/dataManager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v4

    sget v1, Lcom/dataManager/R$id;->dataManager_archive3Text:I

    .line 164
    invoke-virtual {p0, v1}, Lcom/dataManager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/dataManager/MainActivity;->labels:[Landroid/widget/TextView;

    .line 167
    sget v0, Lcom/dataManager/R$id;->dataManager_extractButton:I

    invoke-virtual {p0, v0}, Lcom/dataManager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dataManager/MainActivity;->extractButton:Landroid/widget/Button;

    .line 168
    iget-object v0, p0, Lcom/dataManager/MainActivity;->extractButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/dataManager/MainActivity;->extractButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/dataManager/MainActivity;->extractButton:Landroid/widget/Button;

    new-instance v1, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/dataManager/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_0
    sget v0, Lcom/dataManager/R$id;->dataManager_hide_menu_checkbox:I

    invoke-virtual {p0, v0}, Lcom/dataManager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 175
    .local v0, "hideMenuCheckBox":Landroid/widget/CheckBox;
    sget v1, Lcom/dataManager/R$id;->dataManager_web_button:I

    invoke-virtual {p0, v1}, Lcom/dataManager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 176
    .local v1, "webButton":Landroid/widget/Button;
    new-instance v2, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/dataManager/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    sget v2, Lcom/dataManager/R$id;->dataManager_launch_button:I

    invoke-virtual {p0, v2}, Lcom/dataManager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 183
    .local v2, "launchButton":Landroid/widget/Button;
    if-eqz v2, :cond_1

    .line 184
    new-instance v3, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0, p1}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/dataManager/MainActivity;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :cond_1
    sget v3, Lcom/dataManager/R$id;->dataManager_versionText:I

    invoke-virtual {p0, v3}, Lcom/dataManager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 193
    .local v3, "versionText":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 194
    const-string v4, "v0.552 hardcoded by Mr. Robot"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_2
    return-void
.end method

.method private synthetic lambda$bindCheckBox$4(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 292
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->refreshExtractButton()V

    return-void
.end method

.method private synthetic lambda$initViews$0(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 170
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->startExtraction()V

    return-void
.end method

.method private synthetic lambda$initViews$1(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 177
    const-string v0, "https://t.me/workshopmrrobot"

    .line 178
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/dataManager/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method private synthetic lambda$initViews$2(Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 3
    .param p1, "hideMenuCheckBox"    # Landroid/widget/CheckBox;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "v"    # Landroid/view/View;

    .line 185
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hide_menu"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->launchGame()V

    .line 189
    return-void
.end method

.method private synthetic lambda$showManageStorageDialog$11(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 503
    const/16 v0, 0x3e9

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 504
    invoke-virtual {p0}, Lcom/dataManager/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 505
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0}, Lcom/dataManager/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    const-string v3, "MainActivity"

    const-string v4, "ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION unavailable, fallback"

    invoke-virtual {v2, v3, v4, v1}, Lcom/dataManager/AppLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 508
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lcom/dataManager/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 512
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$showManageStorageDialog$12(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 513
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->onPermissionDenied()V

    return-void
.end method

.method private synthetic lambda$showProgressDialog$10(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 437
    iget-object v0, p0, Lcom/dataManager/MainActivity;->progressDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/dataManager/MainActivity;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 438
    const-string v0, "Extraction continues in background"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 439
    return-void
.end method

.method private synthetic lambda$showProgressDialog$8(Landroid/widget/Button;Landroid/view/View;)V
    .locals 2
    .param p1, "pauseBtn"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 423
    iget-object v0, p0, Lcom/dataManager/MainActivity;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 424
    .local v0, "nowPaused":Z
    iget-object v1, p0, Lcom/dataManager/MainActivity;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 425
    if-eqz v0, :cond_0

    const-string v1, "Continue"

    goto :goto_0

    :cond_0
    const-string v1, "Pause"

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 426
    return-void
.end method

.method private synthetic lambda$showProgressDialog$9(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 430
    iget-object v0, p0, Lcom/dataManager/MainActivity;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 431
    iget-object v0, p0, Lcom/dataManager/MainActivity;->progressDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/dataManager/MainActivity;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 432
    const-string v0, "Extraction cancelled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 433
    return-void
.end method

.method private synthetic lambda$startExtraction$5(JJLjava/lang/String;)V
    .locals 0
    .param p1, "extracted"    # J
    .param p3, "total"    # J
    .param p5, "name"    # Ljava/lang/String;

    .line 358
    invoke-direct/range {p0 .. p5}, Lcom/dataManager/MainActivity;->updateProgress(JJLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$startExtraction$6(JJLjava/lang/String;)V
    .locals 8
    .param p1, "extracted"    # J
    .param p3, "total"    # J
    .param p5, "name"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/dataManager/MainActivity;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda9;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    .end local p1    # "extracted":J
    .end local p3    # "total":J
    .end local p5    # "name":Ljava/lang/String;
    .local v3, "extracted":J
    .local v5, "total":J
    .local v7, "name":Ljava/lang/String;
    invoke-direct/range {v1 .. v7}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/dataManager/MainActivity;JJLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$startExtraction$7(Ljava/util/List;J)V
    .locals 6
    .param p1, "finalTargets"    # Ljava/util/List;
    .param p2, "finalTotalBytes"    # J

    .line 354
    iget-object v0, p0, Lcom/dataManager/MainActivity;->extractor:Lcom/dataManager/ArchiveExtractor;

    new-instance v4, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dataManager/MainActivity;)V

    new-instance v5, Lcom/dataManager/MainActivity$1;

    invoke-direct {v5, p0}, Lcom/dataManager/MainActivity$1;-><init>(Lcom/dataManager/MainActivity;)V

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "finalTargets":Ljava/util/List;
    .end local p2    # "finalTotalBytes":J
    .local v1, "finalTargets":Ljava/util/List;
    .local v2, "finalTotalBytes":J
    invoke-virtual/range {v0 .. v5}, Lcom/dataManager/ArchiveExtractor;->extractAll(Ljava/util/List;JLcom/dataManager/ArchiveExtractor$ProgressListener;Lcom/dataManager/ArchiveExtractor$ExtractionCallback;)V

    return-void
.end method

.method private synthetic lambda$startScan$3()V
    .locals 2

    .line 211
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->scanArchives()V

    .line 212
    iget-object v0, p0, Lcom/dataManager/MainActivity;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/dataManager/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method private launchGame()V
    .locals 5

    .line 573
    :try_start_0
    const-string v1, "com.glu.android.ck.CK$GluActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dataManager/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 574
    invoke-virtual {p0}, Lcom/dataManager/MainActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    const-string v2, "MainActivity"

    const-string v3, "Failed to launch game"

    invoke-virtual {v1, v2, v3, v0}, Lcom/dataManager/AppLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    const-string v1, "Error: failed to launch game!"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 580
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private onExtractionDone(Z)V
    .locals 3
    .param p1, "success"    # Z

    .line 391
    iget-object v0, p0, Lcom/dataManager/MainActivity;->isExtracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 392
    iget-boolean v0, p0, Lcom/dataManager/MainActivity;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/dataManager/MainActivity;->progressDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/dataManager/MainActivity;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 394
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->startScan()V

    .line 396
    const-string v0, "MainActivity"

    if-eqz p1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    const-string v2, "Extraction finished successfully"

    invoke-virtual {v1, v0, v2}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v0, "Installation Complete"

    const-string v1, "All selected archives have been successfully installed!"

    invoke-direct {p0, v0, v1}, Lcom/dataManager/MainActivity;->showSimpleDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/dataManager/MainActivity;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 403
    iget-object v2, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    .line 399
    if-nez v1, :cond_2

    .line 400
    const-string v1, "Extraction finished with error"

    invoke-virtual {v2, v0, v1}, Lcom/dataManager/AppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v0, "Installation Error"

    const-string v1, "An error occurred during installation. Please try again."

    invoke-direct {p0, v0, v1}, Lcom/dataManager/MainActivity;->showSimpleDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_2
    const-string v1, "Extraction was cancelled by user"

    invoke-virtual {v2, v0, v1}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :goto_0
    return-void
.end method

.method private onPermissionDenied()V
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    const-string v1, "MainActivity"

    const-string v2, "Permissions denied by user"

    invoke-virtual {v0, v1, v2}, Lcom/dataManager/AppLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v0, "File access permissions are required."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 536
    invoke-virtual {p0}, Lcom/dataManager/MainActivity;->finish()V

    .line 537
    return-void
.end method

.method private onScanComplete()V
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/dataManager/MainActivity;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/dataManager/MainActivity;->scanDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/dataManager/MainActivity;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 245
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->hasAllPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->bindUI()V

    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->requestRequiredPermissions()V

    .line 250
    :goto_0
    return-void
.end method

.method private refreshExtractButton()V
    .locals 6

    .line 297
    iget-object v0, p0, Lcom/dataManager/MainActivity;->extractButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    const/4 v0, 0x0

    .line 299
    .local v0, "anySelected":Z
    iget-object v1, p0, Lcom/dataManager/MainActivity;->checkBoxes:[Landroid/widget/CheckBox;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 300
    .local v4, "cb":Landroid/widget/CheckBox;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 301
    const/4 v0, 0x1

    .line 302
    goto :goto_1

    .line 299
    .end local v4    # "cb":Landroid/widget/CheckBox;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/dataManager/MainActivity;->extractButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 306
    return-void
.end method

.method private requestLegacyPermissions()V
    .locals 4

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v0, "needed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/dataManager/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/dataManager/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting legacy permissions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainActivity"

    invoke-virtual {v1, v3, v2}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/dataManager/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 531
    :cond_2
    return-void
.end method

.method private requestRequiredPermissions()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting permissions (API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-virtual {v0, v2, v1}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->showManageStorageDialog()V

    goto :goto_0

    .line 489
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 490
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->requestLegacyPermissions()V

    .line 492
    :cond_1
    :goto_0
    return-void
.end method

.method private scanArchives()V
    .locals 9

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/dataManager/MainActivity;->ARCHIVE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 219
    sget-object v1, Lcom/dataManager/MainActivity;->ARCHIVE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/dataManager/MainActivity;->getUncompressedSizeCached(Ljava/lang/String;)J

    move-result-wide v1

    .line 220
    .local v1, "size":J
    iget-object v3, p0, Lcom/dataManager/MainActivity;->archiveExists:[Z

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v1, v4

    if-lez v8, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, v3, v0

    .line 221
    iget-object v3, p0, Lcom/dataManager/MainActivity;->archiveSizes:[J

    aput-wide v1, v3, v0

    .line 222
    iget-object v3, p0, Lcom/dataManager/MainActivity;->archiveExtracted:[Z

    iget-object v4, p0, Lcom/dataManager/MainActivity;->archiveExists:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/dataManager/MainActivity;->extractor:Lcom/dataManager/ArchiveExtractor;

    sget-object v5, Lcom/dataManager/MainActivity;->ARCHIVE_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v8, p0, Lcom/dataManager/MainActivity;->archivePaths:[Ljava/lang/String;

    aget-object v8, v8, v0

    .line 223
    invoke-virtual {v4, v5, v8}, Lcom/dataManager/ArchiveExtractor;->isExtracted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    nop

    :goto_2
    aput-boolean v6, v3, v0

    .line 218
    .end local v1    # "size":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private showManageStorageDialog()V
    .locals 3

    .line 497
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 498
    const-string v1, "File Permissions Required"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 499
    const-string v1, "This app needs access to manage files. Please grant \'All files access\' permission."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 500
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/dataManager/MainActivity;)V

    .line 501
    const-string v2, "Open Settings"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/dataManager/MainActivity;)V

    .line 513
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 515
    return-void
.end method

.method private showProgressDialog()V
    .locals 6

    .line 412
    iget-boolean v0, p0, Lcom/dataManager/MainActivity;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 413
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/dataManager/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/dataManager/R$layout;->main_activity_extraction_progress_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 415
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 417
    sget v2, Lcom/dataManager/R$id;->dataManager_pauseButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 418
    .local v2, "pauseBtn":Landroid/widget/Button;
    sget v3, Lcom/dataManager/R$id;->dataManager_cancelButton:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 419
    .local v3, "cancelBtn":Landroid/widget/Button;
    sget v4, Lcom/dataManager/R$id;->dataManager_minimizeButton:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 421
    .local v4, "minimizeBtn":Landroid/widget/Button;
    if-eqz v2, :cond_1

    .line 422
    new-instance v5, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v2}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/dataManager/MainActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    :cond_1
    if-eqz v3, :cond_2

    .line 429
    new-instance v5, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v5, p0}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda12;-><init>(Lcom/dataManager/MainActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    :cond_2
    if-eqz v4, :cond_3

    .line 436
    new-instance v5, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda13;-><init>(Lcom/dataManager/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/dataManager/MainActivity;->progressDialog:Landroid/app/AlertDialog;

    .line 443
    iget-object v5, p0, Lcom/dataManager/MainActivity;->progressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 444
    return-void
.end method

.method private showSimpleDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 582
    iget-boolean v0, p0, Lcom/dataManager/MainActivity;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 583
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 584
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 585
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 586
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 588
    return-void
.end method

.method private startExtraction()V
    .locals 11

    .line 313
    iget-object v0, p0, Lcom/dataManager/MainActivity;->isExtracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "MainActivity"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    const-string v3, "Extraction already in progress, ignoring request"

    invoke-virtual {v0, v1, v3}, Lcom/dataManager/AppLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "Extraction already in progress"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 316
    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->buildTargetList()Ljava/util/List;

    move-result-object v0

    .line 320
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/dataManager/ArchiveExtractor$ArchiveTarget;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 322
    :cond_1
    const-wide/16 v3, 0x0

    .line 323
    .local v3, "totalBytes":J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;

    .line 324
    .local v6, "t":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    sget-object v8, Lcom/dataManager/MainActivity;->ARCHIVE_NAMES:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 325
    sget-object v8, Lcom/dataManager/MainActivity;->ARCHIVE_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v7

    iget-object v9, v6, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->archiveName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 326
    iget-object v8, p0, Lcom/dataManager/MainActivity;->archiveSizes:[J

    aget-wide v9, v8, v7

    add-long/2addr v3, v9

    .line 327
    goto :goto_2

    .line 324
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 330
    .end local v6    # "t":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .end local v7    # "i":I
    :cond_3
    :goto_2
    goto :goto_0

    .line 332
    :cond_4
    iget-object v5, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting extraction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " archive(s), "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 333
    invoke-direct {p0, v3, v4}, Lcom/dataManager/MainActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " total"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 332
    invoke-virtual {v5, v1, v6}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v5, p0, Lcom/dataManager/MainActivity;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 336
    iget-object v5, p0, Lcom/dataManager/MainActivity;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 337
    iget-object v5, p0, Lcom/dataManager/MainActivity;->isExtracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 340
    iget-object v5, p0, Lcom/dataManager/MainActivity;->storageChecker:Lcom/dataManager/StorageChecker;

    sget-object v6, Lcom/dataManager/MainActivity;->ARCHIVE_NAMES:[Ljava/lang/String;

    iget-object v7, p0, Lcom/dataManager/MainActivity;->archiveSizes:[J

    invoke-virtual {v5, v0, v6, v7}, Lcom/dataManager/StorageChecker;->check(Ljava/util/List;[Ljava/lang/String;[J)Lcom/dataManager/StorageChecker$Result;

    move-result-object v5

    .line 341
    .local v5, "spaceCheck":Lcom/dataManager/StorageChecker$Result;
    iget-boolean v6, v5, Lcom/dataManager/StorageChecker$Result;->hasEnoughSpace:Z

    if-nez v6, :cond_5

    .line 342
    iget-object v6, p0, Lcom/dataManager/MainActivity;->isExtracting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 343
    iget-object v2, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not enough space: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/dataManager/StorageChecker$Result;->shortageDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Lcom/dataManager/AppLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start installation.\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/dataManager/StorageChecker$Result;->shortageDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not Enough Space"

    invoke-direct {p0, v2, v1}, Lcom/dataManager/MainActivity;->showSimpleDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void

    .line 349
    :cond_5
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->showProgressDialog()V

    .line 351
    move-wide v1, v3

    .line 352
    .local v1, "finalTotalBytes":J
    move-object v6, v0

    .line 354
    .local v6, "finalTargets":Ljava/util/List;, "Ljava/util/List<Lcom/dataManager/ArchiveExtractor$ArchiveTarget;>;"
    iget-object v7, p0, Lcom/dataManager/MainActivity;->extractExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v8, p0, v6, v1, v2}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/dataManager/MainActivity;Ljava/util/List;J)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method private startScan()V
    .locals 3

    .line 203
    invoke-virtual {p0}, Lcom/dataManager/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dataManager/R$layout;->main_activity_scan_progress_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    const-string v2, "Checking archives\u2026"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 207
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/dataManager/MainActivity;->scanDialog:Landroid/app/AlertDialog;

    .line 209
    iget-object v1, p0, Lcom/dataManager/MainActivity;->scanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 210
    iget-object v1, p0, Lcom/dataManager/MainActivity;->scanExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/dataManager/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/dataManager/MainActivity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method private updateProgress(JJLjava/lang/String;)V
    .locals 9
    .param p1, "extracted"    # J
    .param p3, "total"    # J
    .param p5, "archiveName"    # Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/dataManager/MainActivity;->progressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/dataManager/MainActivity;->progressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/dataManager/MainActivity;->isDestroyed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/dataManager/MainActivity;->progressDialog:Landroid/app/AlertDialog;

    sget v1, Lcom/dataManager/R$id;->dataManager_progressBar:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 451
    .local v0, "bar":Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/dataManager/MainActivity;->progressDialog:Landroid/app/AlertDialog;

    sget v2, Lcom/dataManager/R$id;->dataManager_progressText:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 452
    .local v1, "pct":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/dataManager/MainActivity;->progressDialog:Landroid/app/AlertDialog;

    sget v3, Lcom/dataManager/R$id;->dataManager_sizeText:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 453
    .local v2, "size":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/dataManager/MainActivity;->progressDialog:Landroid/app/AlertDialog;

    sget v4, Lcom/dataManager/R$id;->dataManager_currentArchiveText:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 455
    .local v3, "name":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extracting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :cond_1
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, p3, v4

    if-gtz v7, :cond_5

    .line 458
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 459
    :cond_2
    if-eqz v1, :cond_3

    const-string v4, "0%"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_3
    if-eqz v2, :cond_4

    const-string v4, "Calculating size\u2026"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :cond_4
    return-void

    .line 464
    :cond_5
    const-wide/16 v4, 0x64

    mul-long v7, p1, v4

    div-long/2addr v7, p3

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 465
    .local v5, "progress":I
    if-eqz v0, :cond_6

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 466
    :cond_6
    if-eqz v1, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :cond_7
    if-eqz v2, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/dataManager/MainActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p3, p4}, Lcom/dataManager/MainActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v6

    const/4 v4, 0x1

    aput-object v7, v8, v4

    const-string v4, "%s / %s"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :cond_8
    return-void

    .line 448
    .end local v0    # "bar":Landroid/widget/ProgressBar;
    .end local v1    # "pct":Landroid/widget/TextView;
    .end local v2    # "size":Landroid/widget/TextView;
    .end local v3    # "name":Landroid/widget/TextView;
    .end local v5    # "progress":I
    :cond_9
    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 555
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 556
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    .line 557
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v2, "MainActivity"

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    const-string v1, "MANAGE_EXTERNAL_STORAGE granted"

    invoke-virtual {v0, v2, v1}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->bindUI()V

    goto :goto_0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    const-string v1, "MANAGE_EXTERNAL_STORAGE denied"

    invoke-virtual {v0, v2, v1}, Lcom/dataManager/AppLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->onPermissionDenied()V

    .line 565
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "GameDataManagerPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dataManager/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "hide_menu"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->launchGame()V

    .line 99
    return-void

    .line 102
    :cond_0
    sget v2, Lcom/dataManager/R$layout;->main_activity_extraction:I

    invoke-virtual {p0, v2}, Lcom/dataManager/MainActivity;->setContentView(I)V

    .line 104
    new-instance v2, Lcom/dataManager/AppLogger;

    invoke-direct {v2, p0}, Lcom/dataManager/AppLogger;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    .line 105
    new-instance v2, Lcom/dataManager/StorageChecker;

    iget-object v3, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    invoke-direct {v2, v3}, Lcom/dataManager/StorageChecker;-><init>(Lcom/dataManager/AppLogger;)V

    iput-object v2, p0, Lcom/dataManager/MainActivity;->storageChecker:Lcom/dataManager/StorageChecker;

    .line 106
    new-instance v2, Lcom/dataManager/ArchiveExtractor;

    iget-object v3, p0, Lcom/dataManager/MainActivity;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lcom/dataManager/MainActivity;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/dataManager/ArchiveExtractor;-><init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/dataManager/AppLogger;)V

    iput-object v2, p0, Lcom/dataManager/MainActivity;->extractor:Lcom/dataManager/ArchiveExtractor;

    .line 107
    const-string v2, "GameDataManagerPrefs_sizes"

    invoke-virtual {p0, v2, v1}, Lcom/dataManager/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/dataManager/MainActivity;->sizePrefs:Landroid/content/SharedPreferences;

    .line 108
    iget-object v1, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    const-string v2, "MainActivity"

    const-string v3, "Installer started, version 0.552"

    invoke-virtual {v1, v2, v3}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->initPaths()V

    .line 110
    invoke-direct {p0, v0}, Lcom/dataManager/MainActivity;->initViews(Landroid/content/SharedPreferences;)V

    .line 111
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->startScan()V

    .line 112
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dataManager/MainActivity;->isDestroyed:Z

    .line 118
    iget-object v1, p0, Lcom/dataManager/MainActivity;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    iget-object v0, p0, Lcom/dataManager/MainActivity;->uiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/dataManager/MainActivity;->scanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 121
    iget-object v0, p0, Lcom/dataManager/MainActivity;->extractExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 122
    iget-object v0, p0, Lcom/dataManager/MainActivity;->progressDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/dataManager/MainActivity;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 123
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "results"    # [I

    .line 541
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 542
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    return-void

    .line 543
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p3, v1

    .line 544
    .local v2, "r":I
    if-eqz v2, :cond_1

    .line 545
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->onPermissionDenied()V

    .line 546
    return-void

    .line 543
    .end local v2    # "r":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/dataManager/MainActivity;->logger:Lcom/dataManager/AppLogger;

    const-string v1, "MainActivity"

    const-string v2, "Legacy permissions granted"

    invoke-virtual {v0, v1, v2}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-direct {p0}, Lcom/dataManager/MainActivity;->bindUI()V

    .line 551
    return-void
.end method
