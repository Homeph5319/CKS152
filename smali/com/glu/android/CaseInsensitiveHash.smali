.class public Lcom/glu/android/CaseInsensitiveHash;
.super Ljava/util/Hashtable;
.source "CaseInsensitiveHash.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Hashtable",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/glu/android/CaseInsensitiveHash;, "Lcom/glu/android/CaseInsensitiveHash<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/glu/android/CaseInsensitiveHash;, "Lcom/glu/android/CaseInsensitiveHash<TK;TV;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 18
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_0
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, "this":Lcom/glu/android/CaseInsensitiveHash;, "Lcom/glu/android/CaseInsensitiveHash<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
