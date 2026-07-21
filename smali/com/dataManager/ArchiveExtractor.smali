.class public Lcom/dataManager/ArchiveExtractor;
.super Ljava/lang/Object;
.source "ArchiveExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dataManager/ArchiveExtractor$InstallInfo;,
        Lcom/dataManager/ArchiveExtractor$ArchiveTarget;,
        Lcom/dataManager/ArchiveExtractor$ExtractionCallback;,
        Lcom/dataManager/ArchiveExtractor$ProgressListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x80000

.field private static final EXTRACTION_MARKER:Ljava/lang/String; = ".install.json"

.field private static final MARKER_VERSION:I = 0x1

.field private static final PROGRESS_UPDATE_INTERVAL:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "ArchiveExtractor"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final logger:Lcom/dataManager/AppLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/dataManager/AppLogger;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isPaused"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "isCancelled"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p4, "logger"    # Lcom/dataManager/AppLogger;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dataManager/ArchiveExtractor;->assetManager:Landroid/content/res/AssetManager;

    .line 62
    iput-object p2, p0, Lcom/dataManager/ArchiveExtractor;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    iput-object p3, p0, Lcom/dataManager/ArchiveExtractor;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    iput-object p4, p0, Lcom/dataManager/ArchiveExtractor;->logger:Lcom/dataManager/AppLogger;

    .line 65
    return-void
.end method

.method private createMarker(Ljava/io/File;Ljava/lang/String;J)V
    .locals 6
    .param p1, "markerFile"    # Ljava/io/File;
    .param p2, "archiveName"    # Ljava/lang/String;
    .param p3, "uncompressedSize"    # J

    .line 276
    const-string v0, "ArchiveExtractor"

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 277
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "timestamp":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 279
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "version"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 280
    const-string v3, "installedAt"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v3, "archiveName"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v3, "uncompressedSize"

    invoke-virtual {v2, v3, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 284
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .local v3, "fw":Ljava/io/FileWriter;
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 287
    .end local v3    # "fw":Ljava/io/FileWriter;
    iget-object v3, p0, Lcom/dataManager/ArchiveExtractor;->logger:Lcom/dataManager/AppLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Marker written: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 290
    .end local v1    # "timestamp":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    goto :goto_2

    .line 284
    .restart local v1    # "timestamp":Ljava/lang/String;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "markerFile":Ljava/io/File;
    .end local p2    # "archiveName":Ljava/lang/String;
    .end local p3    # "uncompressedSize":J
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 288
    .end local v1    # "timestamp":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local p1    # "markerFile":Ljava/io/File;
    .restart local p2    # "archiveName":Ljava/lang/String;
    .restart local p3    # "uncompressedSize":J
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/dataManager/ArchiveExtractor;->logger:Lcom/dataManager/AppLogger;

    const-string v3, "Could not write install marker"

    invoke-virtual {v2, v0, v3, v1}, Lcom/dataManager/AppLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private ensureDirectory(Ljava/io/File;)V
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    :goto_0
    return-void
.end method

.method private extractSingle(Lcom/dataManager/ArchiveExtractor$ArchiveTarget;JJLcom/dataManager/ArchiveExtractor$ProgressListener;)J
    .locals 26
    .param p1, "target"    # Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .param p2, "startBytes"    # J
    .param p4, "totalBytes"    # J
    .param p6, "progressListener"    # Lcom/dataManager/ArchiveExtractor$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/io/File;

    iget-object v3, v2, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->destinationPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 188
    .local v3, "destDir":Ljava/io/File;
    invoke-direct {v1, v3}, Lcom/dataManager/ArchiveExtractor;->ensureDirectory(Ljava/io/File;)V

    .line 190
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->archiveName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".install.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 191
    .local v4, "markerFile":Ljava/io/File;
    move-wide/from16 v5, p2

    .line 192
    .local v5, "extractedBytes":J
    move-wide/from16 v7, p2

    .line 193
    .local v7, "lastUpdate":J
    const/high16 v0, 0x80000

    new-array v9, v0, [B

    .line 195
    .local v9, "buffer":[B
    :try_start_0
    iget-object v10, v2, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->archiveName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/dataManager/ArchiveExtractor;->openArchive(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .local v10, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v11, Ljava/util/zip/ZipInputStream;

    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-direct {v12, v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v11, v12}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 199
    .local v11, "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    move-object v12, v0

    .local v12, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_7

    .line 200
    invoke-direct {v1}, Lcom/dataManager/ArchiveExtractor;->waitIfPaused()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    const-string v13, "Extraction cancelled"

    if-eqz v0, :cond_6

    .line 202
    :try_start_3
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/dataManager/ArchiveExtractor;->resolveEntry(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    move-object v14, v0

    .line 203
    .local v14, "outFile":Ljava/io/File;
    if-nez v14, :cond_0

    .line 204
    :try_start_4
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    goto :goto_0

    .line 195
    .end local v12    # "entry":Ljava/util/zip/ZipEntry;
    .end local v14    # "outFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    goto/16 :goto_6

    .line 208
    .restart local v12    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "outFile":Ljava/io/File;
    :cond_0
    :try_start_5
    invoke-virtual {v12}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    if-eqz v0, :cond_1

    .line 209
    :try_start_6
    invoke-direct {v1, v14}, Lcom/dataManager/ArchiveExtractor;->ensureDirectory(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v17, v3

    goto/16 :goto_3

    .line 211
    :cond_1
    :try_start_7
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dataManager/ArchiveExtractor;->ensureDirectory(Ljava/io/File;)V

    .line 212
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    move-object v15, v0

    .line 214
    .local v15, "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_8
    invoke-virtual {v11, v9}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move/from16 v16, v0

    move-object/from16 v17, v3

    .end local v3    # "destDir":Ljava/io/File;
    .local v16, "read":I
    .local v17, "destDir":Ljava/io/File;
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    .line 215
    :try_start_9
    invoke-direct {v1}, Lcom/dataManager/ArchiveExtractor;->waitIfPaused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    const/4 v0, 0x0

    move/from16 v3, v16

    .end local v16    # "read":I
    .local v3, "read":I
    invoke-virtual {v15, v9, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 217
    move-wide/from16 v18, v5

    .end local v5    # "extractedBytes":J
    .local v18, "extractedBytes":J
    int-to-long v5, v3

    add-long v21, v18, v5

    .line 218
    .end local v18    # "extractedBytes":J
    .local v21, "extractedBytes":J
    sub-long v5, v21, v7

    const-wide/32 v18, 0x100000

    cmp-long v0, v5, v18

    if-ltz v0, :cond_3

    .line 219
    move-wide/from16 v7, v21

    .line 220
    if-eqz p6, :cond_2

    .line 221
    :try_start_a
    iget-object v0, v2, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->displayName:Ljava/lang/String;

    move-wide/from16 v23, p4

    move-object/from16 v20, p6

    move-object/from16 v25, v0

    invoke-interface/range {v20 .. v25}, Lcom/dataManager/ArchiveExtractor$ProgressListener;->onProgress(JJLjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 212
    .end local v3    # "read":I
    :catchall_1
    move-exception v0

    move-object v3, v0

    move-wide/from16 v5, v21

    goto :goto_4

    .line 214
    :cond_2
    :goto_2
    move-object/from16 v3, v17

    move-wide/from16 v5, v21

    goto :goto_1

    .line 218
    .restart local v3    # "read":I
    :cond_3
    move-object/from16 v3, v17

    move-wide/from16 v5, v21

    goto :goto_1

    .line 215
    .end local v3    # "read":I
    .end local v21    # "extractedBytes":J
    .restart local v5    # "extractedBytes":J
    .restart local v16    # "read":I
    :cond_4
    move-wide/from16 v18, v5

    move/from16 v3, v16

    .end local v5    # "extractedBytes":J
    .end local v16    # "read":I
    .restart local v3    # "read":I
    .restart local v18    # "extractedBytes":J
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "markerFile":Ljava/io/File;
    .end local v7    # "lastUpdate":J
    .end local v9    # "buffer":[B
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .end local v12    # "entry":Ljava/util/zip/ZipEntry;
    .end local v14    # "outFile":Ljava/io/File;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v17    # "destDir":Ljava/io/File;
    .end local v18    # "extractedBytes":J
    .end local p1    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .end local p2    # "startBytes":J
    .end local p4    # "totalBytes":J
    .end local p6    # "progressListener":Lcom/dataManager/ArchiveExtractor$ProgressListener;
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 212
    .end local v3    # "read":I
    .restart local v4    # "markerFile":Ljava/io/File;
    .restart local v7    # "lastUpdate":J
    .restart local v9    # "buffer":[B
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v12    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "outFile":Ljava/io/File;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "destDir":Ljava/io/File;
    .restart local v18    # "extractedBytes":J
    .restart local p1    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .restart local p2    # "startBytes":J
    .restart local p4    # "totalBytes":J
    .restart local p6    # "progressListener":Lcom/dataManager/ArchiveExtractor$ProgressListener;
    :catchall_2
    move-exception v0

    move-object v3, v0

    move-wide/from16 v5, v18

    goto :goto_4

    .end local v18    # "extractedBytes":J
    .restart local v5    # "extractedBytes":J
    :catchall_3
    move-exception v0

    move-wide/from16 v18, v5

    move-object v3, v0

    .end local v5    # "extractedBytes":J
    .restart local v18    # "extractedBytes":J
    goto :goto_4

    .line 214
    .end local v18    # "extractedBytes":J
    .restart local v5    # "extractedBytes":J
    .restart local v16    # "read":I
    :cond_5
    move-wide/from16 v18, v5

    move/from16 v3, v16

    .line 226
    .end local v5    # "extractedBytes":J
    .end local v16    # "read":I
    .restart local v18    # "extractedBytes":J
    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-wide/from16 v5, v18

    .line 228
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "extractedBytes":J
    .restart local v5    # "extractedBytes":J
    :goto_3
    :try_start_d
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 229
    .end local v14    # "outFile":Ljava/io/File;
    move-object/from16 v3, v17

    goto/16 :goto_0

    .line 195
    .end local v5    # "extractedBytes":J
    .end local v12    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v18    # "extractedBytes":J
    :catchall_4
    move-exception v0

    move-object v3, v0

    move-wide/from16 v5, v18

    goto :goto_6

    .line 212
    .end local v17    # "destDir":Ljava/io/File;
    .end local v18    # "extractedBytes":J
    .local v3, "destDir":Ljava/io/File;
    .restart local v5    # "extractedBytes":J
    .restart local v12    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "outFile":Ljava/io/File;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v0

    move-object/from16 v17, v3

    move-wide/from16 v18, v5

    move-object v3, v0

    .end local v3    # "destDir":Ljava/io/File;
    .restart local v17    # "destDir":Ljava/io/File;
    :goto_4
    :try_start_e
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    :try_start_f
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "markerFile":Ljava/io/File;
    .end local v5    # "extractedBytes":J
    .end local v7    # "lastUpdate":J
    .end local v9    # "buffer":[B
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .end local v17    # "destDir":Ljava/io/File;
    .end local p1    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .end local p2    # "startBytes":J
    .end local p4    # "totalBytes":J
    .end local p6    # "progressListener":Lcom/dataManager/ArchiveExtractor$ProgressListener;
    :goto_5
    throw v3

    .line 200
    .end local v14    # "outFile":Ljava/io/File;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "destDir":Ljava/io/File;
    .restart local v4    # "markerFile":Ljava/io/File;
    .restart local v5    # "extractedBytes":J
    .restart local v7    # "lastUpdate":J
    .restart local v9    # "buffer":[B
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local p1    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .restart local p2    # "startBytes":J
    .restart local p4    # "totalBytes":J
    .restart local p6    # "progressListener":Lcom/dataManager/ArchiveExtractor$ProgressListener;
    :cond_6
    move-object/from16 v17, v3

    .end local v3    # "destDir":Ljava/io/File;
    .restart local v17    # "destDir":Ljava/io/File;
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "markerFile":Ljava/io/File;
    .end local v5    # "extractedBytes":J
    .end local v7    # "lastUpdate":J
    .end local v9    # "buffer":[B
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .end local v17    # "destDir":Ljava/io/File;
    .end local p1    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .end local p2    # "startBytes":J
    .end local p4    # "totalBytes":J
    .end local p6    # "progressListener":Lcom/dataManager/ArchiveExtractor$ProgressListener;
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 195
    .end local v12    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4    # "markerFile":Ljava/io/File;
    .restart local v5    # "extractedBytes":J
    .restart local v7    # "lastUpdate":J
    .restart local v9    # "buffer":[B
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v17    # "destDir":Ljava/io/File;
    .restart local p1    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .restart local p2    # "startBytes":J
    .restart local p4    # "totalBytes":J
    .restart local p6    # "progressListener":Lcom/dataManager/ArchiveExtractor$ProgressListener;
    :catchall_7
    move-exception v0

    move-object v3, v0

    goto :goto_6

    .line 199
    .end local v17    # "destDir":Ljava/io/File;
    .restart local v3    # "destDir":Ljava/io/File;
    .restart local v12    # "entry":Ljava/util/zip/ZipEntry;
    :cond_7
    move-object/from16 v17, v3

    .line 231
    .end local v3    # "destDir":Ljava/io/File;
    .end local v12    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v17    # "destDir":Ljava/io/File;
    :try_start_10
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    if-eqz v10, :cond_8

    :try_start_11
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    .line 234
    .end local v10    # "is":Ljava/io/InputStream;
    :cond_8
    nop

    .line 236
    iget-object v0, v2, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->archiveName:Ljava/lang/String;

    iget-wide v10, v2, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->uncompressedSize:J

    invoke-direct {v1, v4, v0, v10, v11}, Lcom/dataManager/ArchiveExtractor;->createMarker(Ljava/io/File;Ljava/lang/String;J)V

    .line 237
    return-wide v5

    .line 195
    .restart local v10    # "is":Ljava/io/InputStream;
    :catchall_8
    move-exception v0

    move-object v3, v0

    goto :goto_8

    .end local v17    # "destDir":Ljava/io/File;
    .restart local v3    # "destDir":Ljava/io/File;
    .restart local v11    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_9
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    .end local v3    # "destDir":Ljava/io/File;
    .restart local v17    # "destDir":Ljava/io/File;
    :goto_6
    :try_start_12
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    goto :goto_7

    :catchall_a
    move-exception v0

    :try_start_13
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "markerFile":Ljava/io/File;
    .end local v5    # "extractedBytes":J
    .end local v7    # "lastUpdate":J
    .end local v9    # "buffer":[B
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v17    # "destDir":Ljava/io/File;
    .end local p1    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .end local p2    # "startBytes":J
    .end local p4    # "totalBytes":J
    .end local p6    # "progressListener":Lcom/dataManager/ArchiveExtractor$ProgressListener;
    :goto_7
    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .end local v11    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "destDir":Ljava/io/File;
    .restart local v4    # "markerFile":Ljava/io/File;
    .restart local v5    # "extractedBytes":J
    .restart local v7    # "lastUpdate":J
    .restart local v9    # "buffer":[B
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local p1    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .restart local p2    # "startBytes":J
    .restart local p4    # "totalBytes":J
    .restart local p6    # "progressListener":Lcom/dataManager/ArchiveExtractor$ProgressListener;
    :catchall_b
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v0

    .end local v3    # "destDir":Ljava/io/File;
    .restart local v17    # "destDir":Ljava/io/File;
    :goto_8
    if-eqz v10, :cond_9

    :try_start_14
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    goto :goto_9

    :catchall_c
    move-exception v0

    :try_start_15
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "markerFile":Ljava/io/File;
    .end local v5    # "extractedBytes":J
    .end local v7    # "lastUpdate":J
    .end local v9    # "buffer":[B
    .end local v17    # "destDir":Ljava/io/File;
    .end local p1    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .end local p2    # "startBytes":J
    .end local p4    # "totalBytes":J
    .end local p6    # "progressListener":Lcom/dataManager/ArchiveExtractor$ProgressListener;
    :cond_9
    :goto_9
    throw v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0

    .line 231
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v4    # "markerFile":Ljava/io/File;
    .restart local v5    # "extractedBytes":J
    .restart local v7    # "lastUpdate":J
    .restart local v9    # "buffer":[B
    .restart local v17    # "destDir":Ljava/io/File;
    .restart local p1    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    .restart local p2    # "startBytes":J
    .restart local p4    # "totalBytes":J
    .restart local p6    # "progressListener":Lcom/dataManager/ArchiveExtractor$ProgressListener;
    :catch_0
    move-exception v0

    goto :goto_a

    .end local v17    # "destDir":Ljava/io/File;
    .restart local v3    # "destDir":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object/from16 v17, v3

    .line 232
    .end local v3    # "destDir":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "destDir":Ljava/io/File;
    :goto_a
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 233
    :cond_a
    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method

.method private openSplitArchive(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p1, "archiveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/io/InputStream;>;"
    const/4 v1, 0x1

    .line 297
    .local v1, "part":I
    :goto_0
    :try_start_0
    const-string v2, "%s.%03d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 299
    .local v2, "partName":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/dataManager/ArchiveExtractor;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 302
    nop

    .line 296
    .end local v2    # "partName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .restart local v2    # "partName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 301
    .local v3, "e":Ljava/io/IOException;
    nop

    .line 304
    .end local v1    # "part":I
    .end local v2    # "partName":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Ljava/io/SequenceInputStream;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    return-object v1

    .line 305
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Archive not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/io/InputStream;>;"
    .end local p1    # "archiveName":Ljava/lang/String;
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 308
    .restart local v0    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/io/InputStream;>;"
    .restart local p1    # "archiveName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 310
    .local v3, "s":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    .line 311
    .end local v3    # "s":Ljava/io/InputStream;
    :goto_2
    goto :goto_1

    .line 312
    :cond_1
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    goto :goto_3

    :cond_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method

.method private resolveEntry(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "destDir"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    .local v0, "resolved":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "canonicalDest":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "canonicalEntry":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 261
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/dataManager/ArchiveExtractor;->logger:Lcom/dataManager/AppLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Zip Slip rejected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ArchiveExtractor"

    invoke-virtual {v3, v5, v4}, Lcom/dataManager/AppLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v3, 0x0

    return-object v3

    .line 265
    :cond_0
    return-object v0
.end method

.method private waitIfPaused()Z
    .locals 2

    .line 245
    nop

    :goto_0
    iget-object v0, p0, Lcom/dataManager/ArchiveExtractor;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dataManager/ArchiveExtractor;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 250
    const/4 v1, 0x0

    return v1

    .line 253
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v0, p0, Lcom/dataManager/ArchiveExtractor;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public extractAll(Ljava/util/List;JLcom/dataManager/ArchiveExtractor$ProgressListener;Lcom/dataManager/ArchiveExtractor$ExtractionCallback;)V
    .locals 11
    .param p2, "totalBytes"    # J
    .param p4, "progressListener"    # Lcom/dataManager/ArchiveExtractor$ProgressListener;
    .param p5, "callback"    # Lcom/dataManager/ArchiveExtractor$ExtractionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dataManager/ArchiveExtractor$ArchiveTarget;",
            ">;J",
            "Lcom/dataManager/ArchiveExtractor$ProgressListener;",
            "Lcom/dataManager/ArchiveExtractor$ExtractionCallback;",
            ")V"
        }
    .end annotation

    .line 152
    .local p1, "archives":Ljava/util/List;, "Ljava/util/List<Lcom/dataManager/ArchiveExtractor$ArchiveTarget;>;"
    iget-object v0, p0, Lcom/dataManager/ArchiveExtractor;->logger:Lcom/dataManager/AppLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting extraction of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " archive(s), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes total"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArchiveExtractor"

    invoke-virtual {v0, v2, v1}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-wide/16 v0, 0x0

    .line 156
    .local v0, "extractedBytes":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v6, v0

    .end local v0    # "extractedBytes":J
    .local v6, "extractedBytes":J
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;

    .line 157
    .local v5, "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    iget-object v0, p0, Lcom/dataManager/ArchiveExtractor;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/dataManager/ArchiveExtractor;->logger:Lcom/dataManager/AppLogger;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extraction cancelled before: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v5, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->archiveName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-interface/range {p5 .. p5}, Lcom/dataManager/ArchiveExtractor$ExtractionCallback;->onCancelled()V

    .line 160
    return-void

    .line 163
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extracting: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v5, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->archiveName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v5, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->destinationPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    move-object v4, p0

    move-wide v8, p2

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/dataManager/ArchiveExtractor;->extractSingle(Lcom/dataManager/ArchiveExtractor$ArchiveTarget;JJLcom/dataManager/ArchiveExtractor$ProgressListener;)J

    move-result-wide v0

    move-wide v6, v0

    .line 165
    iget-object v0, p0, Lcom/dataManager/ArchiveExtractor;->logger:Lcom/dataManager/AppLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extracted OK: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, v5, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->archiveName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 171
    .end local v5    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    goto :goto_0

    .line 166
    .restart local v5    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/dataManager/ArchiveExtractor;->logger:Lcom/dataManager/AppLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extraction failed for "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, v5, Lcom/dataManager/ArchiveExtractor$ArchiveTarget;->archiveName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/dataManager/AppLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p5

    invoke-interface {v3, v1}, Lcom/dataManager/ArchiveExtractor$ExtractionCallback;->onFailure(Ljava/lang/String;)V

    .line 169
    return-void

    .line 173
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "target":Lcom/dataManager/ArchiveExtractor$ArchiveTarget;
    :cond_1
    move-object/from16 v3, p5

    iget-object v0, p0, Lcom/dataManager/ArchiveExtractor;->logger:Lcom/dataManager/AppLogger;

    const-string v1, "All archives extracted successfully"

    invoke-virtual {v0, v2, v1}, Lcom/dataManager/AppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-interface {v3}, Lcom/dataManager/ArchiveExtractor$ExtractionCallback;->onSuccess()V

    .line 175
    return-void
.end method

.method public getUncompressedSize(Ljava/lang/String;)J
    .locals 10
    .param p1, "archiveName"    # Ljava/lang/String;

    .line 88
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/dataManager/ArchiveExtractor;->openArchive(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    const/high16 v5, 0x80000

    invoke-direct {v4, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 90
    .local v3, "zis":Ljava/util/zip/ZipInputStream;
    const-wide/16 v4, 0x0

    .line 92
    .local v4, "total":J
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    move-object v7, v6

    .local v7, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v6, :cond_1

    .line 93
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    cmp-long v6, v8, v0

    if-lez v6, :cond_0

    .line 94
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 96
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 98
    :cond_1
    nop

    .line 99
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 98
    :cond_2
    return-wide v4

    .line 88
    .end local v4    # "total":J
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "is":Ljava/io/InputStream;
    .end local p1    # "archiveName":Ljava/lang/String;
    :goto_1
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v3    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local p1    # "archiveName":Ljava/lang/String;
    :catchall_2
    move-exception v3

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "archiveName":Ljava/lang/String;
    :cond_3
    :goto_2
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 99
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local p1    # "archiveName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/dataManager/ArchiveExtractor;->logger:Lcom/dataManager/AppLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read archive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ArchiveExtractor"

    invoke-virtual {v3, v5, v4, v2}, Lcom/dataManager/AppLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    return-wide v0
.end method

.method public isExtracted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "archiveName"    # Ljava/lang/String;
    .param p2, "destinationPath"    # Ljava/lang/String;

    .line 109
    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 110
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".install.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v0, "marker":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public openArchive(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "archiveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/dataManager/ArchiveExtractor;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ignored":Ljava/io/IOException;
    invoke-direct {p0, p1}, Lcom/dataManager/ArchiveExtractor;->openSplitArchive(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public readInstallInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/dataManager/ArchiveExtractor$InstallInfo;
    .locals 12
    .param p1, "archiveName"    # Ljava/lang/String;
    .param p2, "destinationPath"    # Ljava/lang/String;

    .line 118
    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    .line 119
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".install.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 120
    .local v2, "marker":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 121
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 122
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    .local v4, "json":Lorg/json/JSONObject;
    new-instance v6, Lcom/dataManager/ArchiveExtractor$InstallInfo;

    const-string v7, "version"

    .line 127
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "installedAt"

    .line 128
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "archiveName"

    .line 129
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "uncompressedSize"

    .line 130
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct/range {v6 .. v11}, Lcom/dataManager/ArchiveExtractor$InstallInfo;-><init>(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    return-object v6

    .line 121
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "marker":Ljava/io/File;
    .end local p1    # "archiveName":Ljava/lang/String;
    .end local p2    # "destinationPath":Ljava/lang/String;
    :goto_1
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 132
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "marker":Ljava/io/File;
    .restart local p1    # "archiveName":Ljava/lang/String;
    .restart local p2    # "destinationPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    iget-object v3, p0, Lcom/dataManager/ArchiveExtractor;->logger:Lcom/dataManager/AppLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read install marker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ArchiveExtractor"

    invoke-virtual {v3, v5, v4, v0}, Lcom/dataManager/AppLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    return-object v1
.end method
