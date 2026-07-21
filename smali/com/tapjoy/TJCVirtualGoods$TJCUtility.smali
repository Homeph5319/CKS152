.class public Lcom/tapjoy/TJCVirtualGoods$TJCUtility;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TJCUtility"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static externalFreeMemorySize()J
    .locals 8

    .prologue
    .line 5709
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5711
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 5721
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5722
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 5723
    .local v0, "availableBlocks":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 5724
    .local v2, "blockSize":J
    mul-long v6, v0, v2

    .line 5728
    :goto_0
    return-wide v6

    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "stat":Landroid/os/StatFs;
    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getTapjoyAdEndAnimation(I)Landroid/view/animation/Animation;
    .locals 7
    .param p0, "animationTYpe"    # I

    .prologue
    const-wide/16 v5, 0x7d0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 5633
    const/4 v0, 0x0

    .line 5634
    .local v0, "anim":Landroid/view/animation/Animation;
    packed-switch p0, :pswitch_data_0

    .line 5654
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 5656
    return-object v0

    .line 5637
    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5638
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 5641
    :pswitch_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, 0x43b40000    # 360.0f

    const/high16 v2, 0x43200000    # 160.0f

    const/high16 v3, 0x43d20000    # 420.0f

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 5642
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 5645
    :pswitch_2
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, v4, v1, v4, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 5646
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 5649
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, -0x3c4c0000    # -360.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 5650
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 5634
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getTapjoyAdStartAnimation(I)Landroid/view/animation/Animation;
    .locals 7
    .param p0, "animationTYpe"    # I

    .prologue
    const-wide/16 v5, 0x3e8

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 5662
    const/4 v0, 0x0

    .line 5663
    .local v0, "anim":Landroid/view/animation/Animation;
    packed-switch p0, :pswitch_data_0

    .line 5683
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 5686
    return-object v0

    .line 5666
    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5667
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 5670
    :pswitch_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/high16 v1, 0x43200000    # 160.0f

    const/high16 v2, 0x43d20000    # 420.0f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 5671
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 5674
    :pswitch_2
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, v3, v1, v3, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 5675
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 5678
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, v4, v3, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 5679
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 5663
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static internalFreeMemorySize()J
    .locals 8

    .prologue
    .line 5691
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 5701
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5702
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 5703
    .local v0, "availableBlocks":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 5704
    .local v2, "blockSize":J
    mul-long v6, v0, v2

    return-wide v6
.end method
