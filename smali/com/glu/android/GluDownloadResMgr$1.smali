.class Lcom/glu/android/GluDownloadResMgr$1;
.super Ljava/lang/Thread;
.source "GluDownloadResMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluDownloadResMgr;->downloadSpecialResFile()V
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
    .line 262
    iput-object p1, p0, Lcom/glu/android/GluDownloadResMgr$1;->this$0:Lcom/glu/android/GluDownloadResMgr;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 265
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    .line 266
    .local v0, "backupInstance":Lcom/glu/android/ResFileDownloadView;
    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 270
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/glu/android/GluDownloadResMgr$1;->this$0:Lcom/glu/android/GluDownloadResMgr;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lcom/glu/android/GluDownloadResMgr;->access$000(Lcom/glu/android/GluDownloadResMgr;BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_1
    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    .line 275
    iput-boolean v3, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadDone:Z

    .line 278
    invoke-static {}, Lcom/glu/android/GluUtil;->isAppPaused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    iget-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    if-eqz v2, :cond_3

    .line 282
    const-string v2, "===============================================================\n= !!!!!!!!!!!!!!!!!!!!! DOWNLOAD FAILED !!!!!!!!!!!!!!!!!!!!! =\n==============================================================="

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 286
    const v2, 0x7f070051

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f07004f

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/glu/android/GluUtil;->sendNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 300
    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/glu/android/GluDownloadResMgr$1;->this$0:Lcom/glu/android/GluDownloadResMgr;

    iput-object v7, v2, Lcom/glu/android/GluDownloadResMgr;->m_downloadThread:Ljava/lang/Thread;

    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "ex":Ljava/lang/Exception;
    const v2, 0x7f07001d

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    goto :goto_1

    .line 274
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 291
    :cond_3
    const-string v2, "***************************************************************\n********************** DOWNLOAD IS DONE ***********************\n***************************************************************"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 295
    const v2, 0x7f070050

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f07004e

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/glu/android/GluUtil;->sendNotification(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3
.end method
