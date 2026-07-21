.class public interface abstract Lcom/dataManager/ArchiveExtractor$ExtractionCallback;
.super Ljava/lang/Object;
.source "ArchiveExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dataManager/ArchiveExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtractionCallback"
.end annotation


# virtual methods
.method public abstract onCancelled()V
.end method

.method public abstract onFailure(Ljava/lang/String;)V
.end method

.method public abstract onSuccess()V
.end method
