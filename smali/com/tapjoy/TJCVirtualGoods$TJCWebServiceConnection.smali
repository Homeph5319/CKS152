.class public Lcom/tapjoy/TJCVirtualGoods$TJCWebServiceConnection;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TJCWebServiceConnection"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "webService"    # Ljava/lang/String;
    .param p2, "webServiceMethod"    # Ljava/lang/String;
    .param p3, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TJCVirtualGoods$TJCException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xb

    .line 2867
    :try_start_0
    invoke-static {p0}, Lcom/tapjoy/TJCVirtualGoods$TJCWebServiceConnection;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2868
    new-instance v6, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    const-string v7, "No active network connection established"

    const/16 v8, 0xb

    invoke-direct {v6, v7, v8}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2885
    :catch_0
    move-exception v2

    .line 2887
    .local v2, "e":Ljava/net/SocketTimeoutException;
    const-string v6, "Tapjoy"

    const-string v7, "Network request time out."

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    new-instance v6, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    invoke-direct {v6, v7, v8}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 2870
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2871
    .local v1, "connectTo":Ljava/lang/String;
    const-string v6, " "

    const-string v7, "%20"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2873
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2875
    .local v5, "url":Ljava/net/URL;
    const-string v6, "Virtual Goods"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URL = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 2878
    .local v4, "ucon":Ljava/net/URLConnection;
    const/16 v6, 0x3a98

    invoke-virtual {v4, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 2879
    const/16 v6, 0x7530

    invoke-virtual {v4, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 2881
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 2882
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2883
    .local v0, "bis":Ljava/io/BufferedInputStream;
    return-object v0

    .line 2890
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "connectTo":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "ucon":Ljava/net/URLConnection;
    .end local v5    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 2892
    .local v2, "e":Ljava/net/MalformedURLException;
    const-string v6, "Tapjoy"

    const-string v7, "Fail to access URL."

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    new-instance v6, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 2895
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v2

    .line 2897
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "Tapjoy"

    const-string v7, "Fail to access URL."

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    new-instance v6, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xd

    invoke-direct {v6, v7, v8}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v6
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "webService"    # Ljava/lang/String;
    .param p2, "webServiceMethod"    # Ljava/lang/String;
    .param p3, "queryString"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TJCVirtualGoods$TJCException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xb

    .line 2907
    :try_start_0
    invoke-static {p0}, Lcom/tapjoy/TJCVirtualGoods$TJCWebServiceConnection;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2908
    new-instance v6, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    const-string v7, "No active network connection established"

    const/16 v8, 0xb

    invoke-direct {v6, v7, v8}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2922
    :catch_0
    move-exception v2

    .line 2924
    .local v2, "e":Ljava/net/SocketTimeoutException;
    new-instance v6, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    invoke-direct {v6, v7, v8}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 2909
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :cond_0
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2911
    .local v1, "connectTo":Ljava/lang/String;
    const-string v6, " "

    const-string v7, "%20"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2913
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2914
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 2915
    .local v4, "ucon":Ljava/net/URLConnection;
    invoke-virtual {v4, p4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 2916
    invoke-virtual {v4, p4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 2918
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 2919
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2920
    .local v0, "bis":Ljava/io/BufferedInputStream;
    return-object v0

    .line 2926
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "connectTo":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "ucon":Ljava/net/URLConnection;
    .end local v5    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 2928
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v6, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 2930
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v2

    .line 2932
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xd

    invoke-direct {v6, v7, v8}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v6
.end method

.method private static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 2944
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2945
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2947
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
