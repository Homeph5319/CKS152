.class public Lcom/playhaven/src/additions/ObjectExtensions$StringExtensions;
.super Ljava/lang/Object;
.source "ObjectExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/additions/ObjectExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringExtensions"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createQueryDict(Ljava/lang/String;)Ljava/util/Dictionary;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Dictionary",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 89
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move v0, v1

    .line 91
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 92
    aget-object v4, v2, v0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 93
    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 91
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    aget-object v5, v4, v1

    invoke-static {v5}, Lcom/playhaven/src/common/PHStringUtil;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-static {v4}, Lcom/playhaven/src/common/PHStringUtil;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v3, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 100
    :cond_1
    return-object v3
.end method

.method public static decodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public static encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public static queryComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 105
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static queryComponents(Ljava/lang/String;)Ljava/util/Dictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Dictionary",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p0}, Lcom/playhaven/src/additions/ObjectExtensions$StringExtensions;->queryComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/additions/ObjectExtensions$StringExtensions;->createQueryDict(Ljava/lang/String;)Ljava/util/Dictionary;

    move-result-object v0

    return-object v0
.end method
