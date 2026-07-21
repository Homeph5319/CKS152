.class Lcom/glu/android/TestIAP$1;
.super Ljava/lang/Thread;
.source "TestIAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/TestIAP;->buyProduct(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/TestIAP;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/glu/android/TestIAP;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    iput-object p2, p0, Lcom/glu/android/TestIAP$1;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 171
    iget-object v0, p0, Lcom/glu/android/TestIAP$1;->val$productId:Ljava/lang/String;

    .line 173
    .local v0, "savedProductId":Ljava/lang/String;
    sget v2, Lcom/glu/android/TestIAP;->CURRENT_TEST:I

    if-ne v2, v4, :cond_2

    .line 174
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simulated purchase("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Testing success."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/glu/android/TestIAP;->access$000(Lcom/glu/android/TestIAP;Ljava/lang/String;)V

    .line 186
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 188
    .local v1, "stopLooping":Z
    :goto_1
    if-nez v1, :cond_6

    .line 193
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    invoke-static {v2}, Lcom/glu/android/TestIAP;->access$200(Lcom/glu/android/TestIAP;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 194
    :try_start_0
    sget v2, Lcom/glu/android/TestIAP;->CURRENT_TEST:I

    packed-switch v2, :pswitch_data_0

    .line 239
    :cond_1
    :goto_2
    :pswitch_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Lcom/glu/android/GluUtil;->sleep(J)V

    goto :goto_1

    .line 175
    .end local v1    # "stopLooping":Z
    :cond_2
    sget v2, Lcom/glu/android/TestIAP;->CURRENT_TEST:I

    if-ne v2, v3, :cond_3

    .line 176
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simulated purchase("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Testing network refused purchase."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/glu/android/TestIAP;->access$000(Lcom/glu/android/TestIAP;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    sget v2, Lcom/glu/android/TestIAP;->CURRENT_TEST:I

    if-ne v2, v5, :cond_4

    .line 179
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simulated purchase("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Testing network timeout (we\'ll make it quick)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/glu/android/TestIAP;->access$000(Lcom/glu/android/TestIAP;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    const/16 v3, 0x7d0

    invoke-static {v2, v3}, Lcom/glu/android/TestIAP;->access$102(Lcom/glu/android/TestIAP;I)I

    goto :goto_0

    .line 182
    :cond_4
    sget v2, Lcom/glu/android/TestIAP;->CURRENT_TEST:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 183
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simulated purchase("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Testing failure due to no wifi/carrier data connection."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/glu/android/TestIAP;->access$000(Lcom/glu/android/TestIAP;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_5
    sget v2, Lcom/glu/android/TestIAP;->CURRENT_TEST:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 185
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Simulated purchase("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): Testing user cancelled IAP."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/glu/android/TestIAP;->access$000(Lcom/glu/android/TestIAP;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    .restart local v1    # "stopLooping":Z
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    invoke-static {v2}, Lcom/glu/android/TestIAP;->access$300(Lcom/glu/android/TestIAP;)I

    move-result v2

    iget-object v4, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    invoke-static {v4}, Lcom/glu/android/TestIAP;->access$400(Lcom/glu/android/TestIAP;)I

    move-result v4

    if-le v2, v4, :cond_1

    .line 200
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/glu/android/TestIAP;->access$502(Lcom/glu/android/TestIAP;I)I

    .line 202
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 208
    :pswitch_2
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    invoke-static {v2}, Lcom/glu/android/TestIAP;->access$300(Lcom/glu/android/TestIAP;)I

    move-result v2

    iget-object v4, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    invoke-static {v4}, Lcom/glu/android/TestIAP;->access$400(Lcom/glu/android/TestIAP;)I

    move-result v4

    if-le v2, v4, :cond_1

    .line 210
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/glu/android/TestIAP;->access$502(Lcom/glu/android/TestIAP;I)I

    .line 212
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 220
    :pswitch_3
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    invoke-static {v2}, Lcom/glu/android/TestIAP;->access$600(Lcom/glu/android/TestIAP;)Ljava/lang/Thread;

    move-result-object v2

    if-nez v2, :cond_1

    .line 221
    monitor-exit v3

    .line 245
    :goto_3
    return-void

    .line 226
    :pswitch_4
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/glu/android/TestIAP;->access$502(Lcom/glu/android/TestIAP;I)I

    .line 228
    const/4 v1, 0x1

    .line 230
    goto/16 :goto_2

    .line 233
    :pswitch_5
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/glu/android/TestIAP;->access$502(Lcom/glu/android/TestIAP;I)I

    .line 235
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 239
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 244
    :cond_6
    iget-object v2, p0, Lcom/glu/android/TestIAP$1;->this$0:Lcom/glu/android/TestIAP;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/glu/android/TestIAP;->access$602(Lcom/glu/android/TestIAP;Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_3

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
