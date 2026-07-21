.class Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;
.super Ljava/lang/Object;
.source "GluGoogleIAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluGoogleIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GIAPSaveFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;
    }
.end annotation


# instance fields
.field private m_exceptionOnSave:Z

.field private m_filename:Ljava/lang/String;

.field private m_items:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_loaded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_filename:Ljava/lang/String;

    .line 1141
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    .line 1142
    iput-boolean v1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_loaded:Z

    .line 1143
    iput-boolean v1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_exceptionOnSave:Z

    .line 1147
    iput-object p1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_filename:Ljava/lang/String;

    .line 1150
    return-void
.end method

.method private deleteFile()V
    .locals 3

    .prologue
    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting no longer needed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1351
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1352
    return-void
.end method

.method private getSpecificUnclaimedItem(Ljava/lang/String;)Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 1258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1260
    iget-object v1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-static {v1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1600(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-static {v1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1700(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1261
    iget-object v1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    .line 1265
    :goto_1
    return-object v1

    .line 1258
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1264
    :cond_1
    const-string v1, "No remaining of specific requested item. Crashing now."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1265
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getTopItem()Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;
    .locals 2

    .prologue
    .line 1246
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1248
    iget-object v1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-static {v1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1700(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1249
    iget-object v1, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    .line 1253
    :goto_1
    return-object v1

    .line 1246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1252
    :cond_1
    const-string v1, "No top item. Crashing now."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1253
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private loadFile()V
    .locals 8

    .prologue
    .line 1276
    iget-boolean v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_loaded:Z

    if-eqz v5, :cond_1

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_loaded:Z

    .line 1280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1283
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1284
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1286
    invoke-static {v1}, Lcom/glu/android/GluUtil;->getFISCrc32(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 1287
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 1288
    .local v3, "read":Z
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v5

    if-lez v5, :cond_2

    .line 1290
    new-instance v4, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-direct {v4, p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;-><init>(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;)V

    .line 1291
    .local v4, "tmp":Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;
    invoke-static {v2}, Lcom/glu/android/GluUtil;->readString(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1602(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1292
    invoke-static {v2}, Lcom/glu/android/GluUtil;->readLong(Ljava/io/FileInputStream;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1502(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;J)J

    .line 1293
    invoke-static {v2}, Lcom/glu/android/GluUtil;->readBoolean(Ljava/io/FileInputStream;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1702(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;Z)Z

    .line 1294
    invoke-static {v4}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$2000(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)[B

    move-result-object v5

    invoke-static {v2, v5}, Lcom/glu/android/GluUtil;->readByteArray(Ljava/io/FileInputStream;[B)V

    .line 1296
    iget-object v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1600(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1500(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1700(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1302
    const/4 v3, 0x1

    .line 1303
    goto :goto_1

    .line 1304
    .end local v4    # "tmp":Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;
    :cond_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1306
    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/glu/android/GluUtil;->verifySecureFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " integrity failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1310
    iget-object v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1313
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "read":Z
    :catch_0
    move-exception v0

    .line 1314
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception loading file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Come on, you can be cleaner than that."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method private removeTopItem()V
    .locals 2

    .prologue
    .line 1270
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->getTopItem()Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1702(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;Z)Z

    .line 1271
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->saveFile()V

    .line 1272
    return-void
.end method

.method private saveFile()V
    .locals 9

    .prologue
    .line 1320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1323
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1325
    .local v4, "trueF":Ljava/io/File;
    invoke-static {}, Lcom/glu/android/GluUtil;->getTmpSecureFile()Ljava/io/File;

    move-result-object v1

    .line 1326
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1327
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 1329
    iget-object v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-static {v5}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1600(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/glu/android/GluUtil;->writeString(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    .line 1330
    iget-object v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-static {v5}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1500(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/glu/android/GluUtil;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 1331
    iget-object v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-static {v5}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1700(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/glu/android/GluUtil;->writeBoolean(Ljava/io/FileOutputStream;Z)V

    .line 1332
    iget-object v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-static {v5}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$2000(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)[B

    move-result-object v5

    invoke-static {v2, v5}, Lcom/glu/android/GluUtil;->writeByteArray(Ljava/io/FileOutputStream;[B)V

    .line 1334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-static {v5}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1600(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-static {v5}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1500(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-static {v5}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1700(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Z

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1327
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1338
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1340
    invoke-static {v4}, Lcom/glu/android/GluUtil;->saveSecureFile(Ljava/io/File;)Z

    .line 1341
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_exceptionOnSave:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "trueF":Ljava/io/File;
    :goto_1
    return-void

    .line 1342
    :catch_0
    move-exception v0

    .line 1343
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception saving file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_filename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Come on, you can be cleaner than that."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1344
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_exceptionOnSave:Z

    goto :goto_1
.end method


# virtual methods
.method public addItem(Ljava/lang/String;J)V
    .locals 4
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "longId"    # J

    .prologue
    .line 1159
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->loadFile()V

    .line 1161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1164
    iget-object v2, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-static {v2}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1500(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 1175
    :goto_1
    return-void

    .line 1161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1168
    :cond_1
    new-instance v1, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-direct {v1, p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;-><init>(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;)V

    .line 1169
    .local v1, "tmp":Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;
    invoke-static {v1, p1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1602(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;Ljava/lang/String;)Ljava/lang/String;

    .line 1170
    invoke-static {v1, p2, p3}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1502(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;J)J

    .line 1171
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1702(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;Z)Z

    .line 1172
    iget-object v2, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1174
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->saveFile()V

    goto :goto_1
.end method

.method public getHistoricalCount()I
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public hasUnhandledItems()Z
    .locals 3

    .prologue
    .line 1179
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->loadFile()V

    .line 1181
    const/4 v1, 0x0

    .line 1182
    .local v1, "itemsLeft":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1184
    iget-object v2, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_items:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    invoke-static {v2}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1700(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1185
    const/4 v1, 0x1

    .line 1182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1187
    :cond_1
    return v1
.end method

.method public immediatelyGiveSpecificItem(Ljava/lang/String;)Z
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1192
    invoke-virtual {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->hasUnhandledItems()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1194
    const-string v1, "No items unhandled...bad call..."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    move v1, v2

    .line 1202
    :goto_0
    return v1

    .line 1198
    :cond_0
    invoke-direct {p0, p1}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->getSpecificUnclaimedItem(Ljava/lang/String;)Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    move-result-object v0

    .line 1199
    .local v0, "item":Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;
    const/4 v4, 0x2

    sget-object v1, Lcom/glu/android/IAP;->m_realToNativeProductIdHash:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1600(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v4, v2, v1}, Lcom/glu/android/GluJNI;->iapCallbackEventS(IILjava/lang/String;)I

    .line 1200
    invoke-static {v0, v3}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1702(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;Z)Z

    .line 1201
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->saveFile()V

    move v1, v3

    .line 1202
    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 1154
    iget-boolean v0, p0, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->m_exceptionOnSave:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryGivingOneItem(Z)Z
    .locals 3
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1207
    invoke-virtual {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->hasUnhandledItems()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1209
    const-string v1, "No items to give...yeah wtf? o.o"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1219
    :cond_0
    :goto_0
    return v0

    .line 1213
    :cond_1
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->getTopItem()Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1600(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/glu/android/GluGoogleIAP;->access$1800(Lcom/glu/android/GluGoogleIAP;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->removeTopItem()V

    .line 1216
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public tryRefundingOneItem()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1224
    invoke-virtual {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->hasUnhandledItems()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1226
    const-string v1, "No items to remove...fix your code."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1236
    :cond_0
    :goto_0
    return v0

    .line 1230
    :cond_1
    sget-object v1, Lcom/glu/android/GluGoogleIAP;->instance:Lcom/glu/android/GluGoogleIAP;

    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->getTopItem()Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;->access$1600(Lcom/glu/android/GluGoogleIAP$GIAPSaveFile$GIAPSingleItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/glu/android/GluGoogleIAP;->access$1900(Lcom/glu/android/GluGoogleIAP;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1232
    invoke-direct {p0}, Lcom/glu/android/GluGoogleIAP$GIAPSaveFile;->removeTopItem()V

    .line 1233
    const/4 v0, 0x1

    goto :goto_0
.end method
