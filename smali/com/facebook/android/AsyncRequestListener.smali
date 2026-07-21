.class public abstract Lcom/facebook/android/AsyncRequestListener;
.super Ljava/lang/Object;
.source "AsyncRequestListener.java"

# interfaces
.implements Lcom/facebook/android/AsyncFacebookRunner$RequestListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparsed JSON for Facebook response:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 40
    :try_start_0
    invoke-static {p1}, Lcom/facebook/android/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 41
    .local v1, "obj":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/facebook/android/AsyncRequestListener;->onComplete(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/android/FacebookError; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 45
    const-string v2, "facebook-stream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/facebook/android/AsyncRequestListener;->wrapUp(Z)V

    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    .line 47
    .local v0, "e":Lcom/facebook/android/FacebookError;
    const-string v2, "facebook-stream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Facebook Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public abstract onComplete(Lorg/json/JSONObject;)V
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 3
    .param p1, "e"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 56
    const-string v0, "stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Facebook Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/android/AsyncRequestListener;->wrapUp(Z)V

    .line 58
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;)V
    .locals 3
    .param p1, "e"    # Ljava/io/FileNotFoundException;

    .prologue
    .line 61
    const-string v0, "stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource not found:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/android/AsyncRequestListener;->wrapUp(Z)V

    .line 63
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 66
    const-string v0, "stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/android/AsyncRequestListener;->wrapUp(Z)V

    .line 68
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 3
    .param p1, "e"    # Ljava/net/MalformedURLException;

    .prologue
    .line 71
    const-string v0, "stream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/android/AsyncRequestListener;->wrapUp(Z)V

    .line 73
    return-void
.end method

.method public abstract wrapUp(Z)V
.end method
