.class Lcom/glu/android/GluFBConnect$1;
.super Lcom/facebook/android/AsyncRequestListener;
.source "GluFBConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluFBConnect;->loadFriends()V
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
    .line 305
    iput-object p1, p0, Lcom/glu/android/GluFBConnect$1;->this$0:Lcom/glu/android/GluFBConnect;

    invoke-direct {p0}, Lcom/facebook/android/AsyncRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;)V
    .locals 17
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 319
    :try_start_0
    const-string v12, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 321
    .local v1, "data":Lorg/json/JSONArray;
    const/4 v9, 0x0

    check-cast v9, [[C

    .line 322
    .local v9, "nativeFriendInfo":[[C
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 325
    .local v6, "length":I
    sget-boolean v12, Lcom/glu/android/GluFBConnect;->FIVE_THOUSAND_FRIENDS_TEST:Z

    if-eqz v12, :cond_2

    .line 327
    const/16 v6, 0x1388

    .line 328
    const/16 v12, 0x2710

    new-array v9, v12, [[C

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/GluFBConnect$1;->this$0:Lcom/glu/android/GluFBConnect;

    array-length v13, v9

    new-array v13, v13, [Ljava/lang/String;

    iput-object v13, v12, Lcom/glu/android/GluFBConnect;->m_friendInfo:[Ljava/lang/String;

    .line 332
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v12, 0xc8

    if-ge v4, v12, :cond_4

    .line 334
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    const/16 v12, 0x19

    if-ge v5, v12, :cond_1

    .line 336
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/glu/android/GluFBConnect;->FIVE_THOUSAND_UIDS:[J

    aget-wide v13, v13, v5

    int-to-long v15, v4

    add-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 337
    .local v11, "uid":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/glu/android/GluFBConnect;->FIVE_THOUSAND_NAMES:[Ljava/lang/String;

    aget-object v13, v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v4, :cond_0

    const-string v12, ""

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 338
    .local v8, "name":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "uid["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    mul-int/lit8 v13, v4, 0x19

    add-int/2addr v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", name["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    mul-int/lit8 v13, v4, 0x19

    add-int/2addr v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/GluFBConnect$1;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v12, v12, Lcom/glu/android/GluFBConnect;->m_friendInfo:[Ljava/lang/String;

    mul-int/lit8 v13, v4, 0x19

    add-int/2addr v13, v5

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x0

    aput-object v11, v12, v13

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/GluFBConnect$1;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v12, v12, Lcom/glu/android/GluFBConnect;->m_friendInfo:[Ljava/lang/String;

    mul-int/lit8 v13, v4, 0x19

    add-int/2addr v13, v5

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    aput-object v8, v12, v13

    .line 341
    mul-int/lit8 v12, v4, 0x19

    add-int/2addr v12, v5

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x0

    invoke-static {v11}, Lcom/glu/android/GluUtil;->stringToNativeCharArray(Ljava/lang/String;)[C

    move-result-object v13

    aput-object v13, v9, v12

    .line 342
    mul-int/lit8 v12, v4, 0x19

    add-int/2addr v12, v5

    mul-int/lit8 v12, v12, 0x2

    add-int/lit8 v12, v12, 0x1

    invoke-static {v8}, Lcom/glu/android/GluUtil;->stringToNativeCharArray(Ljava/lang/String;)[C

    move-result-object v13

    aput-object v13, v9, v12

    .line 334
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 337
    .end local v8    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit16 v12, v4, 0x121

    int-to-char v12, v12

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    goto/16 :goto_2

    .line 332
    .end local v11    # "uid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 348
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_2
    if-lez v6, :cond_3

    mul-int/lit8 v12, v6, 0x2

    new-array v9, v12, [[C

    .line 349
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/GluFBConnect$1;->this$0:Lcom/glu/android/GluFBConnect;

    mul-int/lit8 v13, v6, 0x2

    new-array v13, v13, [Ljava/lang/String;

    iput-object v13, v12, Lcom/glu/android/GluFBConnect;->m_friendInfo:[Ljava/lang/String;

    .line 352
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/GluFBConnect$1;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v12, v12, Lcom/glu/android/GluFBConnect;->m_quickAccessFriendInfo:Ljava/util/Hashtable;

    invoke-virtual {v12}, Ljava/util/Hashtable;->clear()V

    .line 355
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v6, :cond_4

    .line 357
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 358
    .local v2, "element":Lorg/json/JSONObject;
    const-string v12, "id"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 359
    .restart local v11    # "uid":Ljava/lang/String;
    const-string v12, "name"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 360
    .restart local v8    # "name":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "uid["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", name["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/GluFBConnect$1;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v12, v12, Lcom/glu/android/GluFBConnect;->m_friendInfo:[Ljava/lang/String;

    mul-int/lit8 v13, v4, 0x2

    add-int/lit8 v13, v13, 0x0

    aput-object v11, v12, v13

    .line 362
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/GluFBConnect$1;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v12, v12, Lcom/glu/android/GluFBConnect;->m_friendInfo:[Ljava/lang/String;

    mul-int/lit8 v13, v4, 0x2

    add-int/lit8 v13, v13, 0x1

    aput-object v8, v12, v13

    .line 363
    mul-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x0

    invoke-static {v11}, Lcom/glu/android/GluUtil;->stringToNativeCharArray(Ljava/lang/String;)[C

    move-result-object v13

    aput-object v13, v9, v12

    .line 364
    mul-int/lit8 v12, v4, 0x2

    add-int/lit8 v12, v12, 0x1

    invoke-static {v8}, Lcom/glu/android/GluUtil;->stringToNativeCharArray(Ljava/lang/String;)[C

    move-result-object v13

    aput-object v13, v9, v12

    .line 367
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/glu/android/GluFBConnect$1;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v12, v12, Lcom/glu/android/GluFBConnect;->m_quickAccessFriendInfo:Ljava/util/Hashtable;

    invoke-virtual {v12, v11, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 348
    .end local v2    # "element":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v11    # "uid":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    check-cast v12, [[C

    move-object v9, v12

    goto/16 :goto_3

    .line 375
    .restart local v4    # "i":I
    :cond_4
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/glu/android/GluFBConnect$1;->wrapUp(Z)V

    .line 377
    sget-object v12, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v12, :cond_5

    .line 378
    invoke-virtual {v9}, [[C->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[C

    .line 379
    .local v10, "nativeFriendInfo_":[[C
    move v7, v6

    .line 380
    .local v7, "length_":I
    sget-object v12, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    new-instance v13, Lcom/glu/android/GluFBConnect$1$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7, v10}, Lcom/glu/android/GluFBConnect$1$1;-><init>(Lcom/glu/android/GluFBConnect$1;I[[C)V

    invoke-virtual {v12, v13}, Lcom/glu/android/GluView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v1    # "data":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v6    # "length":I
    .end local v7    # "length_":I
    .end local v9    # "nativeFriendInfo":[[C
    .end local v10    # "nativeFriendInfo_":[[C
    :cond_5
    :goto_5
    return-void

    .line 384
    :catch_0
    move-exception v3

    .line 385
    .local v3, "ex":Ljava/lang/Exception;
    const-string v12, "(JSON?)Exception while parsing friends\'s names"

    invoke-static {v12, v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 386
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/glu/android/GluFBConnect$1;->wrapUp(Z)V

    goto :goto_5
.end method

.method public wrapUp(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 311
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GluFBConnect$1;->this$0:Lcom/glu/android/GluFBConnect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glu/android/GluFBConnect;->access$002(Lcom/glu/android/GluFBConnect;Lcom/facebook/android/AsyncFacebookRunner;)Lcom/facebook/android/AsyncFacebookRunner;

    .line 315
    return-void
.end method
