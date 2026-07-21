.class Lcom/glu/android/GluFBConnect$3;
.super Landroid/os/Handler;
.source "GluFBConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluFBConnect;
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
    .line 675
    iput-object p1, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v10, 0x7f070000

    const/4 v9, 0x7

    const/4 v8, 0x0

    .line 678
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 680
    sput v9, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 681
    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v6, v6, Lcom/glu/android/GluFBConnect;->m_header:Ljava/lang/String;

    if-nez v6, :cond_1

    invoke-static {v10}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    iput-object v6, v7, Lcom/glu/android/GluFBConnect;->m_header:Ljava/lang/String;

    .line 682
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 683
    .local v4, "params":Landroid/os/Bundle;
    const-string v6, "target_id"

    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v7, v7, Lcom/glu/android/GluFBConnect;->m_friendUID:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v6, "link"

    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v7, v7, Lcom/glu/android/GluFBConnect;->m_friendLink:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v6, "picture"

    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v7, v7, Lcom/glu/android/GluFBConnect;->m_friendLinkImageURL:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v6, "caption"

    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v7, v7, Lcom/glu/android/GluFBConnect;->m_feedCaption:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v6, "description"

    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v7, v7, Lcom/glu/android/GluFBConnect;->m_friendMessage:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "m_header="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v7, v7, Lcom/glu/android/GluFBConnect;->m_header:Ljava/lang/String;

    invoke-static {v7}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nm_prompt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v7, v7, Lcom/glu/android/GluFBConnect;->m_prompt:Ljava/lang/String;

    invoke-static {v7}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nm_body="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v7, v7, Lcom/glu/android/GluFBConnect;->m_body:Ljava/lang/String;

    invoke-static {v7}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nm_feedCaption="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v7, v7, Lcom/glu/android/GluFBConnect;->m_feedCaption:Ljava/lang/String;

    invoke-static {v7}, Lcom/glu/android/GluUtil;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 698
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iput-object v8, v6, Lcom/glu/android/GluFBConnect;->m_prompt:Ljava/lang/String;

    .line 699
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iput-object v8, v6, Lcom/glu/android/GluFBConnect;->m_header:Ljava/lang/String;

    .line 700
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iput-object v8, v6, Lcom/glu/android/GluFBConnect;->m_body:Ljava/lang/String;

    .line 701
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iput-object v8, v6, Lcom/glu/android/GluFBConnect;->m_feedCaption:Ljava/lang/String;

    .line 703
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v6, v6, Lcom/glu/android/GluFBConnect;->m_facebook:Lcom/facebook/android/Facebook;

    sget-object v7, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const-string v8, "stream.publish"

    sget-object v9, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    invoke-virtual {v6, v7, v8, v4, v9}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 753
    .end local v4    # "params":Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-void

    .line 681
    :cond_1
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v6, v6, Lcom/glu/android/GluFBConnect;->m_header:Ljava/lang/String;

    goto/16 :goto_0

    .line 705
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 707
    sput v9, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 709
    new-instance v2, Lcom/glu/android/MixedHash;

    invoke-direct {v2}, Lcom/glu/android/MixedHash;-><init>()V

    .line 710
    .local v2, "attachment":Lcom/glu/android/MixedHash;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://market.android.com/details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v7, v7, Lcom/glu/android/GameLet;->m_packageID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "MARKET_URL":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MARKET_URL="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 716
    new-instance v3, Lcom/glu/android/MixedHash;

    invoke-direct {v3}, Lcom/glu/android/MixedHash;-><init>()V

    .line 717
    .local v3, "imageShare":Lcom/glu/android/MixedHash;
    const-string v6, "type"

    const-string v7, "image"

    invoke-virtual {v3, v6, v7}, Lcom/glu/android/MixedHash;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v7, "src"

    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v6, v6, Lcom/glu/android/GluFBConnect;->m_friendLinkImageURL:Ljava/lang/String;

    if-nez v6, :cond_3

    const-string v6, "http://www.pamelabowman.org/lolcat.png"

    :goto_2
    invoke-virtual {v3, v7, v6}, Lcom/glu/android/MixedHash;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v7, "href"

    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v6, v6, Lcom/glu/android/GluFBConnect;->m_friendLink:Ljava/lang/String;

    if-nez v6, :cond_4

    move-object v6, v0

    :goto_3
    invoke-virtual {v3, v7, v6}, Lcom/glu/android/MixedHash;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 721
    .local v5, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/glu/android/MixedHash;>;"
    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 723
    const-string v6, "media"

    invoke-virtual {v2, v6, v5}, Lcom/glu/android/MixedHash;->putMixedHashVector(Ljava/lang/String;Ljava/util/Vector;)V

    .line 725
    new-instance v1, Lcom/glu/android/MixedHash;

    invoke-direct {v1}, Lcom/glu/android/MixedHash;-><init>()V

    .line 726
    .local v1, "actionLinks":Lcom/glu/android/MixedHash;
    const-string v7, "text"

    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v6, v6, Lcom/glu/android/GluFBConnect;->m_friendLinkText:Ljava/lang/String;

    if-nez v6, :cond_5

    invoke-static {v10}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v1, v7, v6}, Lcom/glu/android/MixedHash;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v6, "href"

    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v7, v7, Lcom/glu/android/GluFBConnect;->m_friendLink:Ljava/lang/String;

    if-nez v7, :cond_6

    .end local v0    # "MARKET_URL":Ljava/lang/String;
    :goto_5
    invoke-virtual {v1, v6, v0}, Lcom/glu/android/MixedHash;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 732
    .restart local v4    # "params":Landroid/os/Bundle;
    const-string v6, "message"

    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v7, v7, Lcom/glu/android/GluFBConnect;->m_friendMessage:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v6, "target_id"

    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v7, v7, Lcom/glu/android/GluFBConnect;->m_friendUID:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v6, "action_links"

    invoke-static {v1}, Lcom/glu/android/GluUtil;->parseMixedHashAsJSON(Lcom/glu/android/MixedHash;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v6, "attachment"

    invoke-static {v2}, Lcom/glu/android/GluUtil;->parseMixedHashAsJSON(Lcom/glu/android/MixedHash;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iput-object v8, v6, Lcom/glu/android/GluFBConnect;->m_friendMessage:Ljava/lang/String;

    .line 746
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iput-object v8, v6, Lcom/glu/android/GluFBConnect;->m_friendUID:Ljava/lang/String;

    .line 747
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iput-object v8, v6, Lcom/glu/android/GluFBConnect;->m_friendLink:Ljava/lang/String;

    .line 748
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iput-object v8, v6, Lcom/glu/android/GluFBConnect;->m_friendLinkText:Ljava/lang/String;

    .line 749
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iput-object v8, v6, Lcom/glu/android/GluFBConnect;->m_friendLinkImageURL:Ljava/lang/String;

    .line 751
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v6, v6, Lcom/glu/android/GluFBConnect;->m_facebook:Lcom/facebook/android/Facebook;

    sget-object v7, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const-string v8, "stream.publish"

    sget-object v9, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    invoke-virtual {v6, v7, v8, v4, v9}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    goto/16 :goto_1

    .line 718
    .end local v1    # "actionLinks":Lcom/glu/android/MixedHash;
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/glu/android/MixedHash;>;"
    .restart local v0    # "MARKET_URL":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v6, v6, Lcom/glu/android/GluFBConnect;->m_friendLinkImageURL:Ljava/lang/String;

    goto/16 :goto_2

    .line 719
    :cond_4
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v6, v6, Lcom/glu/android/GluFBConnect;->m_friendLink:Ljava/lang/String;

    goto/16 :goto_3

    .line 726
    .restart local v1    # "actionLinks":Lcom/glu/android/MixedHash;
    .restart local v5    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/glu/android/MixedHash;>;"
    :cond_5
    iget-object v6, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v6, v6, Lcom/glu/android/GluFBConnect;->m_friendLinkText:Ljava/lang/String;

    goto :goto_4

    .line 727
    :cond_6
    iget-object v7, p0, Lcom/glu/android/GluFBConnect$3;->this$0:Lcom/glu/android/GluFBConnect;

    iget-object v0, v7, Lcom/glu/android/GluFBConnect;->m_friendLink:Ljava/lang/String;

    goto :goto_5
.end method
