.class public Lcom/dataManager/StorageChecker;
.super Ljava/lang/Object;
.source "StorageChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dataManager/StorageChecker$Result;
    }
.end annotation


# static fields
.field private static final DEBUG_SIMULATE_NO_SPACE:Z = false

.field private static final TAG:Ljava/lang/String; = "StorageChecker"


# instance fields
.field private final logger:Lcom/dataManager/AppLogger;


# direct methods
.method public constructor <init>(Lcom/dataManager/AppLogger;)V
    .locals 0
    .param p1, "logger"    # Lcom/dataManager/AppLogger;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dataManager/StorageChecker;->logger:Lcom/dataManager/AppLogger;

    .line 24
    return-void
.end method

.method private getFreeBytes(Ljava/lang/String;)J
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 106
    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 108
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    .line 110
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 112
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long v4, v4, v0

    return-wide v4

    .line 110
    .end local v3    # "stat":Landroid/os/StatFs;
    :cond_3
    :goto_0
    return-wide v0

    .line 113
    .end local v2    # "dir":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/dataManager/StorageChecker;->logger:Lcom/dataManager/AppLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot determine free space for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StorageChecker"

    invoke-virtual {v3, v5, v4}, Lcom/dataManager/AppLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-wide v0
.end method

.method private getSizeFor(Ljava/lang/String;[Ljava/lang/String;[J)J
    .locals 3
    .param p1, "archiveName"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "sizes"    # [J

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 121
    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-wide v1, p3, v0

    return-wide v1

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public check(Ljava/util/List;[Ljava/lang/String;[J)Lcom/dataManager/StorageChecker$Result;
    .locals 18
    .param p2, "archiveNames"    # [Ljava/lang/String;
    .param p3, "archiveSizes"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dataManager/ArchiveExtractor$ArchiveTarget;",
            ">;[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/dataManager/StorageChecker$Result;"
        }
    .end annotation

    .line 72
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/dataManager/ArchiveExtractor$ArchiveTarget;>;"
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 73
    .local v1, "totalRequired":J
    const-wide v3, 0x7fffffffffffffffL

    .line 80
    .local v3, "totalAvailable":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "StorageChecker"

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;

    .line 81
    .local v6, "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    iget-object v8, v6, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->archiveName:Ljava/lang/String;

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct {v0, v8, v9, v10}, Lcom/dataManager/StorageChecker;->getSizeFor(Ljava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v11

    .line 82
    .local v11, "size":J
    add-long/2addr v1, v11

    .line 84
    iget-object v8, v6, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->destinationPath:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/dataManager/StorageChecker;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide v13

    .line 85
    .local v13, "free":J
    iget-object v8, v0, Lcom/dataManager/StorageChecker;->logger:Lcom/dataManager/AppLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v1

    .end local v1    # "totalRequired":J
    .local v16, "totalRequired":J
    iget-object v1, v6, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->displayName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " B, free "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v7, v1}, Lcom/dataManager/AppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 89
    .end local v6    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .end local v11    # "size":J
    .end local v13    # "free":J
    move-wide/from16 v1, v16

    goto :goto_0

    .line 91
    .end local v16    # "totalRequired":J
    .restart local v1    # "totalRequired":J
    :cond_0
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v8, v3, v5

    if-nez v8, :cond_1

    const-wide/16 v3, 0x0

    .line 93
    :cond_1
    cmp-long v5, v3, v1

    if-ltz v5, :cond_2

    .line 94
    iget-object v5, v0, Lcom/dataManager/StorageChecker;->logger:Lcom/dataManager/AppLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Storage check OK: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v4}, Lcom/dataManager/StorageChecker$Result;->-$$Nest$smtoMb(J)D

    move-result-wide v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " MB available"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v3, v4, v1, v2}, Lcom/dataManager/StorageChecker$Result;->ok(JJ)Lcom/dataManager/StorageChecker$Result;

    move-result-object v5

    return-object v5

    .line 97
    :cond_2
    invoke-static {v3, v4, v1, v2}, Lcom/dataManager/StorageChecker$Result;->insufficient(JJ)Lcom/dataManager/StorageChecker$Result;

    move-result-object v5

    .line 98
    .local v5, "result":Lcom/dataManager/StorageChecker$Result;
    iget-object v6, v0, Lcom/dataManager/StorageChecker;->logger:Lcom/dataManager/AppLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Storage check failed: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/dataManager/StorageChecker$Result;->shortageDescription:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/dataManager/AppLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v5
.end method
