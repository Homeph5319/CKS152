.class Lcom/glu/android/GameLet$1;
.super Landroid/os/Handler;
.source "GameLet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GameLet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GameLet;


# direct methods
.method constructor <init>(Lcom/glu/android/GameLet;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v9, 0x1

    .line 859
    iget v3, p1, Landroid/os/Message;->what:I

    .line 861
    .local v3, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "~~ handleMessage("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 863
    if-ne v3, v9, :cond_1

    .line 864
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    invoke-virtual {v5}, Lcom/glu/android/GameLet;->loadGame()V

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 867
    invoke-static {}, Lcom/glu/android/GluUtil;->shouldUseDeviceMovieActivity()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 869
    new-instance v1, Landroid/content/Intent;

    sget-object v5, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const-class v6, Lcom/glu/android/DeviceMovieActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 870
    .local v1, "dmaIntent":Landroid/content/Intent;
    sget-object v5, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const v6, -0x53521fc

    invoke-virtual {v5, v1, v6}, Lcom/glu/android/GameLet;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 874
    .end local v1    # "dmaIntent":Landroid/content/Intent;
    :cond_2
    sget-object v5, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    invoke-virtual {v5}, Lcom/glu/android/GluVideoView;->initVideo()Z

    goto :goto_0

    .line 877
    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 879
    invoke-static {}, Lcom/glu/android/GluUtil;->shouldUseDeviceMovieActivity()Z

    move-result v5

    if-nez v5, :cond_0

    .line 885
    sget-object v5, Lcom/glu/android/GluVideoView;->instance:Lcom/glu/android/GluVideoView;

    invoke-virtual {v5}, Lcom/glu/android/GluVideoView;->destroyVideo()V

    goto :goto_0

    .line 888
    :cond_4
    if-ne v3, v7, :cond_5

    .line 890
    sget-object v5, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    invoke-virtual {v5}, Lcom/glu/android/GluFBConnect;->login()V

    goto :goto_0

    .line 892
    :cond_5
    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    .line 894
    sget-object v5, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    invoke-virtual {v5}, Lcom/glu/android/GluFBConnect;->logout()V

    goto :goto_0

    .line 896
    :cond_6
    const/4 v5, 0x6

    if-ne v3, v5, :cond_7

    .line 898
    sget-object v5, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    invoke-virtual {v5}, Lcom/glu/android/GluFBConnect;->getUserInfo()V

    goto :goto_0

    .line 900
    :cond_7
    const/4 v5, 0x7

    if-ne v3, v5, :cond_8

    .line 902
    sget-object v6, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/glu/android/GluFBConnect;->sendFeed(Ljava/lang/String;)V

    goto :goto_0

    .line 904
    :cond_8
    const/16 v5, 0x8

    if-ne v3, v5, :cond_9

    .line 906
    sget-object v6, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/glu/android/GluFBConnect;->sendInvite(Ljava/lang/String;)V

    goto :goto_0

    .line 908
    :cond_9
    const/16 v5, 0xb

    if-ne v3, v5, :cond_a

    .line 910
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-boolean v5, v5, Lcom/glu/android/GameLet;->m_gnsIsOpen:Z

    if-nez v5, :cond_0

    .line 912
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iput-boolean v9, v5, Lcom/glu/android/GameLet;->m_gnsIsOpen:Z

    .line 913
    sget-object v5, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    invoke-virtual {v5, v8}, Lcom/glu/android/GlobalNav;->setVisibility(I)V

    .line 914
    sget-object v5, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    invoke-virtual {v5}, Lcom/glu/android/GlobalNav;->requestFocus()Z

    .line 915
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    invoke-virtual {v5}, Lcom/glu/android/GameLet;->suspendNative()V

    .line 917
    sget-object v5, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    iget-object v5, v5, Lcom/glu/android/GlobalNav;->m_mainView:Lcom/glu/android/GlobalNavMainView;

    invoke-virtual {v5}, Lcom/glu/android/GlobalNavMainView;->isSettings()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 918
    sget-object v5, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v5}, Lcom/glu/android/GameLet;->moreGamesLaunch()V

    goto/16 :goto_0

    .line 921
    :cond_a
    const/16 v5, 0xc

    if-ne v3, v5, :cond_b

    .line 923
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-boolean v5, v5, Lcom/glu/android/GameLet;->m_gnsIsOpen:Z

    if-eqz v5, :cond_0

    .line 925
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iput-boolean v8, v5, Lcom/glu/android/GameLet;->m_gnsIsOpen:Z

    .line 926
    sget-object v5, Lcom/glu/android/GlobalNav;->instance:Lcom/glu/android/GlobalNav;

    invoke-virtual {v5, v7}, Lcom/glu/android/GlobalNav;->setVisibility(I)V

    .line 927
    sget-object v5, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    invoke-virtual {v5}, Lcom/glu/android/GluView;->requestFocus()Z

    .line 928
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    invoke-virtual {v5}, Lcom/glu/android/GameLet;->resumeNative()V

    goto/16 :goto_0

    .line 931
    :cond_b
    const/16 v5, 0xd

    if-ne v3, v5, :cond_c

    .line 933
    sget-object v5, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v5}, Lcom/glu/android/GameLet;->loadResourceMenu()V

    goto/16 :goto_0

    .line 935
    :cond_c
    const/16 v5, 0xe

    if-ne v3, v5, :cond_10

    .line 938
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_d

    .line 939
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 942
    :cond_d
    const/4 v4, 0x0

    .line 943
    .local v4, "timeSinceLastSleep":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-wide v7, v7, Lcom/glu/android/GameLet;->m_lastDialogCloseAt:J

    sub-long/2addr v5, v7

    long-to-int v4, v5

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_e

    .line 944
    rsub-int v5, v4, 0x3e8

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/glu/android/GluUtil;->sleep(J)V

    .line 946
    :cond_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 947
    .local v0, "adb":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 948
    sget-object v5, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 949
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, v5, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    .line 950
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v6, v6, Lcom/glu/android/GameLet;->m_modalDialogTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v6, v6, Lcom/glu/android/GameLet;->m_modalDialogText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 952
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_buttonTwoText:Ljava/lang/String;

    if-nez v5, :cond_f

    .line 954
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x3

    iget-object v7, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v7, v7, Lcom/glu/android/GameLet;->m_buttonOneText:Ljava/lang/String;

    sget-object v8, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 962
    :goto_1
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 958
    :cond_f
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v7, v7, Lcom/glu/android/GameLet;->m_buttonOneText:Ljava/lang/String;

    sget-object v8, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 959
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x2

    iget-object v7, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v7, v7, Lcom/glu/android/GameLet;->m_buttonTwoText:Ljava/lang/String;

    sget-object v8, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 964
    .end local v0    # "adb":Landroid/app/AlertDialog$Builder;
    .end local v4    # "timeSinceLastSleep":I
    :cond_10
    const/16 v5, 0xf

    if-ne v3, v5, :cond_11

    .line 966
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 969
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    invoke-virtual {v5}, Lcom/glu/android/GameLet;->handleModalDialogClosed()V

    .line 970
    iget-object v5, p0, Lcom/glu/android/GameLet$1;->this$0:Lcom/glu/android/GameLet;

    iget-object v5, v5, Lcom/glu/android/GameLet;->m_modalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 972
    :cond_11
    const/16 v5, 0x10

    if-ne v3, v5, :cond_12

    .line 974
    sget-object v5, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v5}, Lcom/glu/android/GluTapjoy;->initUserData()V

    goto/16 :goto_0

    .line 976
    :cond_12
    const/16 v5, 0x11

    if-ne v3, v5, :cond_13

    .line 978
    sget-object v5, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v5}, Lcom/glu/android/GluTapjoy;->displayInterface()V

    goto/16 :goto_0

    .line 980
    :cond_13
    const/16 v5, 0x12

    if-ne v3, v5, :cond_14

    .line 982
    sget-object v5, Lcom/glu/android/GluTapjoy;->instance:Lcom/glu/android/GluTapjoy;

    invoke-virtual {v5}, Lcom/glu/android/GluTapjoy;->showIAPInterface()V

    goto/16 :goto_0

    .line 984
    :cond_14
    const/16 v5, 0x13

    if-ne v3, v5, :cond_15

    .line 986
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 987
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    sget-object v5, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v5, v2}, Lcom/glu/android/GameLet;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 991
    .end local v2    # "i":Landroid/content/Intent;
    :cond_15
    const/16 v5, 0x14

    if-ne v3, v5, :cond_16

    .line 993
    sget-object v5, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    if-eqz v5, :cond_0

    .line 997
    sget-object v5, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    new-instance v6, Landroid/view/KeyEvent;

    invoke-direct {v6, v9, v7}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v5, v7, v6}, Lcom/glu/android/GluView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 1000
    :cond_16
    const/16 v5, 0x16

    if-ne v3, v5, :cond_0

    .line 1002
    const-string v5, "********GluOpenFeint Initiaized"

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1005
    invoke-static {}, Lcom/glu/android/GluOpenFeint;->initialize()V

    goto/16 :goto_0
.end method
