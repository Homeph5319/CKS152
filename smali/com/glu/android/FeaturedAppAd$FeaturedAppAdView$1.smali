.class Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView$1;
.super Ljava/lang/Thread;
.source "FeaturedAppAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->setIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView$1;->this$0:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    iput-object p2, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 278
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting icon from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView$1;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 279
    iget-object v4, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView$1;->val$url:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/glu/android/GluUtil;->createURLConnection(Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 281
    .local v1, "huc":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 282
    .local v2, "responseCode":I
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    .line 284
    const-string v4, "creating icon..."

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView$1;->val$url:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 286
    .local v3, "tmp":Landroid/graphics/drawable/Drawable;
    const-string v4, "done creating icon..."

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView$1;->this$0:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    invoke-static {v4, v3}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->access$102(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v3    # "tmp":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    .end local v1    # "huc":Ljava/net/HttpURLConnection;
    .end local v2    # "responseCode":I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView$1;->this$0:Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;->access$202(Lcom/glu/android/FeaturedAppAd$FeaturedAppAdView;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 300
    return-void

    .line 291
    .restart local v1    # "huc":Ljava/net/HttpURLConnection;
    .restart local v2    # "responseCode":I
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get featured app icon with response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 295
    .end local v1    # "huc":Ljava/net/HttpURLConnection;
    .end local v2    # "responseCode":I
    :catch_0
    move-exception v0

    .line 296
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "Failed to get featured app icon"

    invoke-static {v4, v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 294
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "huc":Ljava/net/HttpURLConnection;
    .restart local v2    # "responseCode":I
    :catch_1
    move-exception v4

    goto :goto_1
.end method
