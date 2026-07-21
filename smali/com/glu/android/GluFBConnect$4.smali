.class Lcom/glu/android/GluFBConnect$4;
.super Ljava/lang/Object;
.source "GluFBConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluFBConnect;->requestFriendPicsStartingWith(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluFBConnect;


# direct methods
.method constructor <init>(Lcom/glu/android/GluFBConnect;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 831
    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-nez v23, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    invoke-static {}, Lcom/glu/android/GluUtil;->getFacebookSaveDirectory()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/glu/android/GluUtil;->filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 837
    .local v20, "savePath":Ljava/lang/String;
    const/16 v16, 0x0

    .line 838
    .local v16, "handleId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/GluFBConnect;->m_friendInfo:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    div-int/lit8 v3, v23, 0x2

    .line 839
    .local v3, "count":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const-wide/32 v25, 0xf731400

    sub-long v11, v23, v25

    .line 840
    .local v11, "fileTooOldDate":J
    monitor-enter p0

    .line 841
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/GluFBConnect;->m_friendRequestQueue:Ljava/util/Vector;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    if-lez v23, :cond_3

    const/16 v23, 0x1

    :goto_1
    move/from16 v0, v23

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/glu/android/GluFBConnect;->RUNNING:Z

    .line 842
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "LOADING FRIEND THREAD: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/glu/android/GluFBConnect;->m_friendRequestQueue:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " (running)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/glu/android/GluFBConnect;->RUNNING:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 843
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :goto_2
    sget-object v23, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    if-eqz v23, :cond_0

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/GluFBConnect;->m_friendRequestQueue:Ljava/util/Vector;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/glu/android/GluFBConnect$FBItem;

    .line 852
    .local v9, "fbItem":Lcom/glu/android/GluFBConnect$FBItem;
    iget-object v14, v9, Lcom/glu/android/GluFBConnect$FBItem;->imageUser:Ljava/lang/String;

    .line 853
    .local v14, "friendId":Ljava/lang/String;
    iget-object v0, v9, Lcom/glu/android/GluFBConnect$FBItem;->imageSize:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 854
    .local v17, "imageSize":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 857
    .local v15, "friendIdPlusSize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15, v11, v12}, Lcom/glu/android/GluFBConnect;->access$200(Lcom/glu/android/GluFBConnect;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    .line 858
    .local v6, "extension":Ljava/lang/String;
    if-nez v6, :cond_a

    .line 859
    const/16 v19, 0x5

    .line 860
    .local v19, "retry":I
    :goto_3
    if-lez v19, :cond_a

    .line 861
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://graph.facebook.com/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/picture?type="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 862
    .local v22, "url":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Checking URL: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 863
    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/glu/android/GluUtil;->getByteArrayContentsFromURL(Ljava/lang/String;Z)[B

    move-result-object v4

    .line 864
    .local v4, "data":[B
    if-eqz v4, :cond_2

    array-length v0, v4

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 865
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed, will retry in 5sec: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 866
    const-wide/16 v23, 0x1388

    invoke-static/range {v23 .. v24}, Lcom/glu/android/GluUtil;->sleep(J)V

    .line 867
    add-int/lit8 v19, v19, -0x1

    goto :goto_3

    .line 841
    .end local v4    # "data":[B
    .end local v6    # "extension":Ljava/lang/String;
    .end local v9    # "fbItem":Lcom/glu/android/GluFBConnect$FBItem;
    .end local v14    # "friendId":Ljava/lang/String;
    .end local v15    # "friendIdPlusSize":Ljava/lang/String;
    .end local v17    # "imageSize":Ljava/lang/String;
    .end local v19    # "retry":I
    .end local v22    # "url":Ljava/lang/String;
    :cond_3
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 843
    :catchall_0
    move-exception v23

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    .line 869
    .restart local v4    # "data":[B
    .restart local v6    # "extension":Ljava/lang/String;
    .restart local v9    # "fbItem":Lcom/glu/android/GluFBConnect$FBItem;
    .restart local v14    # "friendId":Ljava/lang/String;
    .restart local v15    # "friendIdPlusSize":Ljava/lang/String;
    .restart local v17    # "imageSize":Ljava/lang/String;
    .restart local v19    # "retry":I
    .restart local v22    # "url":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    .line 870
    .local v8, "f":Ljava/io/File;
    invoke-static {v4}, Lcom/glu/android/GluUtil;->getMIMEType([B)I

    move-result v18

    .line 871
    .local v18, "mimeType":I
    const v23, -0x76afb1b9

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    const v23, 0xffd8

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 872
    :cond_5
    invoke-static/range {v18 .. v18}, Lcom/glu/android/GluUtil;->mimeTypeToExtension(I)Ljava/lang/String;

    move-result-object v6

    .line 873
    new-instance v8, Ljava/io/File;

    .end local v8    # "f":Ljava/io/File;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 888
    .restart local v8    # "f":Ljava/io/File;
    :goto_4
    if-eqz v8, :cond_6

    .line 890
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/glu/android/GluFBConnect;->access$300(Lcom/glu/android/GluFBConnect;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 892
    .local v13, "fos":Ljava/io/FileOutputStream;
    invoke-static {v13, v4}, Lcom/glu/android/GluUtil;->writeByteArray(Ljava/io/FileOutputStream;[B)V

    .line 893
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 894
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Successfully changed: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 899
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    :goto_5
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 875
    :cond_7
    const v23, 0x47494638

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 876
    const-string v23, "gif file found, but not supported. using filler pic."

    invoke-static/range {v23 .. v23}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 884
    :goto_6
    const v23, 0x7f040002

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".png"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lcom/glu/android/GluUtil;->copyRawResourceToNative(ILjava/lang/String;Z)V

    goto :goto_4

    .line 877
    :cond_8
    const/16 v23, 0x424d

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 878
    const-string v23, "bitmap file found, but not supported. using filler pic."

    invoke-static/range {v23 .. v23}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 880
    :cond_9
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown file type..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v4, v0}, Lcom/glu/android/GluUtil;->getFourByteHexNice([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ...using filler pic."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 896
    :catch_0
    move-exception v5

    .line 897
    .local v5, "ex":Ljava/lang/Exception;
    const-string v23, "Failed to save file for some reason."

    invoke-static/range {v23 .. v23}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 904
    .end local v4    # "data":[B
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v8    # "f":Ljava/io/File;
    .end local v18    # "mimeType":I
    .end local v19    # "retry":I
    .end local v22    # "url":Ljava/lang/String;
    :cond_a
    new-instance v10, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 905
    .local v10, "fileForNative":Ljava/io/File;
    new-instance v21, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 917
    .local v21, "specificFile":Ljava/io/File;
    move-object v7, v6

    .line 920
    .local v7, "extension_":Ljava/lang/String;
    monitor-enter p0

    .line 921
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/GluFBConnect;->m_friendRequestQueue:Ljava/util/Vector;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/Vector;->removeElementAt(I)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/glu/android/GluFBConnect;->m_friendRequestQueue:Ljava/util/Vector;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v23

    if-lez v23, :cond_b

    const/16 v23, 0x1

    :goto_7
    move/from16 v0, v23

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/glu/android/GluFBConnect;->RUNNING:Z

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/glu/android/GluFBConnect;->RUNNING:Z

    move/from16 v23, v0

    if-nez v23, :cond_c

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/glu/android/GluFBConnect$4;->this$0:Lcom/glu/android/GluFBConnect;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/glu/android/GluFBConnect;->access$400(Lcom/glu/android/GluFBConnect;)Landroid/os/Handler;

    move-result-object v23

    new-instance v24, Lcom/glu/android/GluFBConnect$4$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v7, v2, v10}, Lcom/glu/android/GluFBConnect$4$1;-><init>(Lcom/glu/android/GluFBConnect$4;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 935
    monitor-exit p0

    goto/16 :goto_0

    .line 937
    :catchall_1
    move-exception v23

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v23

    .line 922
    :cond_b
    const/16 v23, 0x0

    goto :goto_7

    .line 937
    :cond_c
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2
.end method
