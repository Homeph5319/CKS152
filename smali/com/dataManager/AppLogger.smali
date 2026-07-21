.class public Lcom/dataManager/AppLogger;
.super Ljava/lang/Object;
.source "AppLogger.java"


# static fields
.field private static final LOG_DIR:Ljava/lang/String; = "logs"

.field private static final MAX_SIZE_BYTES:J = 0x200000L

.field private static final TAG:Ljava/lang/String; = "AppLogger"


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private final logFile:Ljava/io/File;

.field private final publicLogFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const-string v0, "AppLogger"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/dataManager/AppLogger;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 34
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "logs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .local v1, "logDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd_HH-mm-ss_SSS"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 39
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "timestamp":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/dataManager/AppLogger;->logFile:Ljava/io/File;

    .line 44
    const/4 v5, 0x0

    .line 46
    .local v5, "pub":Ljava/io/File;
    :try_start_0
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 47
    .local v6, "downloads":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v8, "DataManager/logs"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v7, "publicDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 49
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v8

    .line 50
    .local v8, "created":Z
    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 51
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to create public log dir: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v8    # "created":Z
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 55
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v8

    .line 59
    .end local v6    # "downloads":Ljava/io/File;
    .end local v7    # "publicDir":Ljava/io/File;
    :cond_2
    goto :goto_0

    .line 57
    :catch_0
    move-exception v6

    .line 58
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "Public log duplicate unavailable (Downloads/DataManager/logs)"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_0
    iput-object v5, p0, Lcom/dataManager/AppLogger;->publicLogFile:Ljava/io/File;

    .line 61
    return-void
.end method

.method private appendToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "target"    # Ljava/io/File;
    .param p2, "level"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 128
    .local v0, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 129
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_1
    const-string v3, "%s %s/%s: %s%n"

    iget-object v4, p0, Lcom/dataManager/AppLogger;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 130
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    aput-object p2, v5, v1

    const/4 v1, 0x2

    aput-object p3, v5, v1

    const/4 v1, 0x3

    aput-object p4, v5, v1

    .line 129
    invoke-virtual {v2, v3, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 131
    if-eqz p5, :cond_0

    .line 132
    invoke-virtual {p5, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 135
    .end local v0    # "fw":Ljava/io/FileWriter;
    return-void

    .line 127
    .restart local v0    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fw":Ljava/io/FileWriter;
    .end local p1    # "target":Ljava/io/File;
    .end local p2    # "level":Ljava/lang/String;
    .end local p3    # "tag":Ljava/lang/String;
    .end local p4    # "message":Ljava/lang/String;
    .end local p5    # "t":Ljava/lang/Throwable;
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v0    # "fw":Ljava/io/FileWriter;
    .restart local p1    # "target":Ljava/io/File;
    .restart local p2    # "level":Ljava/lang/String;
    .restart local p3    # "tag":Ljava/lang/String;
    .restart local p4    # "message":Ljava/lang/String;
    .restart local p5    # "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method private rotateIfNeeded(Ljava/io/File;)V
    .locals 5
    .param p1, "f"    # Ljava/io/File;

    .line 139
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x200000

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 142
    :cond_0
    return-void
.end method

.method private declared-synchronized write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/dataManager/AppLogger;->logFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/dataManager/AppLogger;->rotateIfNeeded(Ljava/io/File;)V

    .line 110
    iget-object v2, p0, Lcom/dataManager/AppLogger;->logFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "level":Ljava/lang/String;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "t":Ljava/lang/Throwable;
    .local v3, "level":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/dataManager/AppLogger;->appendToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    goto :goto_1

    .line 111
    .end local p0    # "this":Lcom/dataManager/AppLogger;
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 108
    .end local v3    # "level":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_5

    .line 111
    .restart local p1    # "level":Ljava/lang/String;
    .restart local p2    # "tag":Ljava/lang/String;
    .restart local p3    # "message":Ljava/lang/String;
    .restart local p4    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 112
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "message":Ljava/lang/String;
    .end local p4    # "t":Ljava/lang/Throwable;
    .restart local v3    # "level":Ljava/lang/String;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v6    # "t":Ljava/lang/Throwable;
    .local p1, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    const-string p2, "AppLogger"

    const-string p3, "Cannot write to primary log file"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local p1    # "e":Ljava/io/IOException;
    :goto_1
    iget-object p1, p0, Lcom/dataManager/AppLogger;->publicLogFile:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_0

    .line 118
    :try_start_3
    iget-object p1, p0, Lcom/dataManager/AppLogger;->publicLogFile:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/dataManager/AppLogger;->rotateIfNeeded(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 119
    move-object v8, v6

    move-object v6, v4

    .end local v4    # "tag":Ljava/lang/String;
    .local v6, "tag":Ljava/lang/String;
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_4
    iget-object v4, p0, Lcom/dataManager/AppLogger;->publicLogFile:Ljava/io/File;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v7, v5

    move-object v5, v3

    move-object v3, p0

    .end local v3    # "level":Ljava/lang/String;
    .local v5, "level":Ljava/lang/String;
    .local v7, "message":Ljava/lang/String;
    .restart local p0    # "this":Lcom/dataManager/AppLogger;
    :try_start_5
    invoke-direct/range {v3 .. v8}, Lcom/dataManager/AppLogger;->appendToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    .line 122
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v3    # "level":Ljava/lang/String;
    .restart local v4    # "tag":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    .local v6, "t":Ljava/lang/Throwable;
    goto :goto_3

    .line 108
    .end local v3    # "level":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/dataManager/AppLogger;
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_4

    .line 120
    .local v5, "level":Ljava/lang/String;
    .local v6, "tag":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v8    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    move-object v1, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object p1, v0

    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v3    # "level":Ljava/lang/String;
    .restart local v4    # "tag":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    .local v6, "t":Ljava/lang/Throwable;
    goto :goto_2

    .end local v4    # "tag":Ljava/lang/String;
    .local v6, "tag":Ljava/lang/String;
    .restart local v8    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    move-object v1, p0

    move-object v4, v6

    move-object v6, v8

    move-object p1, v0

    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v4    # "tag":Ljava/lang/String;
    .local v6, "t":Ljava/lang/Throwable;
    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, p0

    move-object p1, v0

    .line 121
    .restart local p1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string p2, "AppLogger"

    const-string p3, "Cannot write to public log duplicate"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 116
    .end local p1    # "e":Ljava/io/IOException;
    :cond_0
    move-object v1, p0

    .line 124
    :goto_3
    monitor-exit p0

    return-void

    .line 108
    .end local v3    # "level":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    move-object v1, p0

    :goto_4
    move-object p1, v0

    :goto_5
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :catchall_3
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/dataManager/AppLogger;->logFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dataManager/AppLogger;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dataManager/AppLogger;->logFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/dataManager/AppLogger;->publicLogFile:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dataManager/AppLogger;->publicLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dataManager/AppLogger;->publicLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 102
    :cond_1
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 64
    const-string v0, "D"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/dataManager/AppLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 84
    const-string v0, "E"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/dataManager/AppLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 89
    const-string v0, "E"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/dataManager/AppLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    return-void
.end method

.method public getLogFile()Ljava/io/File;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/dataManager/AppLogger;->logFile:Ljava/io/File;

    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 69
    const-string v0, "I"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/dataManager/AppLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 74
    const-string v0, "W"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/dataManager/AppLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 79
    const-string v0, "W"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/dataManager/AppLogger;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    return-void
.end method
