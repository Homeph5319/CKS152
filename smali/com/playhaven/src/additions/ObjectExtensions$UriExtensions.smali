.class public Lcom/playhaven/src/additions/ObjectExtensions$UriExtensions;
.super Ljava/lang/Object;
.source "ObjectExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/additions/ObjectExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriExtensions"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createQueryDict(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method
