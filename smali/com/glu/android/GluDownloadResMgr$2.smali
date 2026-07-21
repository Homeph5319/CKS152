.class Lcom/glu/android/GluDownloadResMgr$2;
.super Ljava/lang/Thread;
.source "GluDownloadResMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluDownloadResMgr;->downloadResFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluDownloadResMgr;


# direct methods
.method constructor <init>(Lcom/glu/android/GluDownloadResMgr;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/glu/android/GluDownloadResMgr$2;->this$0:Lcom/glu/android/GluDownloadResMgr;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 340
    iget-object v5, p0, Lcom/glu/android/GluDownloadResMgr$2;->this$0:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v5}, Lcom/glu/android/GluDownloadResMgr;->areThereSpecialFiles()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/glu/android/GluDownloadResMgr$2;->this$0:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v5}, Lcom/glu/android/GluDownloadResMgr;->verifySpecialFileIntegrity()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 342
    .local v2, "optionalFilesToDownload":Z
    :goto_0
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    .line 343
    .local v0, "backupInstance":Lcom/glu/android/ResFileDownloadView;
    if-nez v0, :cond_2

    .line 386
    :cond_0
    :goto_1
    return-void

    .end local v0    # "backupInstance":Lcom/glu/android/ResFileDownloadView;
    .end local v2    # "optionalFilesToDownload":Z
    :cond_1
    move v2, v4

    .line 340
    goto :goto_0

    .line 347
    .restart local v0    # "backupInstance":Lcom/glu/android/ResFileDownloadView;
    .restart local v2    # "optionalFilesToDownload":Z
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/glu/android/GluDownloadResMgr$2;->this$0:Lcom/glu/android/GluDownloadResMgr;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/glu/android/GluDownloadResMgr;->access$000(Lcom/glu/android/GluDownloadResMgr;BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_2
    iget-object v5, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    if-eqz v5, :cond_3

    move v4, v3

    :cond_3
    iput-boolean v4, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    .line 352
    iput-boolean v3, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadDone:Z

    .line 355
    invoke-static {}, Lcom/glu/android/GluUtil;->isAppPaused()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    if-eqz v4, :cond_5

    .line 357
    :cond_4
    iget-boolean v4, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    if-eqz v4, :cond_6

    .line 359
    const-string v4, "===============================================================\n= !!!!!!!!!!!!!!!!!!!!! DOWNLOAD FAILED !!!!!!!!!!!!!!!!!!!!! =\n==============================================================="

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 363
    const v4, 0x7f070051

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f07004f

    invoke-static {v5}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/glu/android/GluUtil;->sendNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 377
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/glu/android/GluDownloadResMgr$2;->this$0:Lcom/glu/android/GluDownloadResMgr;

    iput-object v9, v4, Lcom/glu/android/GluDownloadResMgr;->m_downloadThread:Ljava/lang/Thread;

    .line 379
    iget-boolean v4, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    if-nez v4, :cond_0

    .line 381
    if-eqz v2, :cond_7

    .line 382
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/glu/android/ResFileDownloadView;->newState(I)V

    goto :goto_1

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, "ex":Ljava/lang/Exception;
    const v5, 0x7f07001d

    invoke-static {v5}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    goto :goto_2

    .line 368
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_6
    const-string v4, "***************************************************************\n********************** DOWNLOAD IS DONE ***********************\n***************************************************************"

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 372
    const v4, 0x7f070050

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f07004e

    invoke-static {v5}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/glu/android/GluUtil;->sendNotification(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 383
    :cond_7
    sget-object v4, Lcom/glu/android/GluDownloadResMgr;->instance:Lcom/glu/android/GluDownloadResMgr;

    invoke-virtual {v4}, Lcom/glu/android/GluDownloadResMgr;->areThereSpecialFiles()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    invoke-virtual {v0, v3}, Lcom/glu/android/ResFileDownloadView;->newState(I)V

    goto :goto_1
.end method
