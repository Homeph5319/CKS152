.class public interface abstract Lcom/playhaven/src/common/PHAsyncRequest$PHAsyncRequestDelegate;
.super Ljava/lang/Object;
.source "PHAsyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/common/PHAsyncRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PHAsyncRequestDelegate"
.end annotation


# virtual methods
.method public abstract requestFailed(Ljava/lang/Exception;)V
.end method

.method public abstract requestFinished(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract requestProgressUpdate(I)V
.end method

.method public abstract requestResponseCode(I)V
.end method
