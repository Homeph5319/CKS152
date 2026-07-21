.class public Lcom/glu/android/MixedHash;
.super Ljava/lang/Object;
.source "MixedHash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/MixedHash$1;,
        Lcom/glu/android/MixedHash$MixedHashContents;
    }
.end annotation


# static fields
.field public static final BOGUS_INT:I = -0x80000000


# instance fields
.field private sm_trueHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/glu/android/MixedHash$MixedHashContents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    .line 15
    return-void
.end method


# virtual methods
.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/MixedHash$MixedHashContents;

    .line 28
    .local v0, "mhc":Lcom/glu/android/MixedHash$MixedHashContents;
    if-nez v0, :cond_0

    .line 29
    const/high16 v1, -0x80000000

    .line 30
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/glu/android/MixedHash$MixedHashContents;->access$100(Lcom/glu/android/MixedHash$MixedHashContents;)I

    move-result v1

    goto :goto_0
.end method

.method public getKeysAsStringVector()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 116
    .local v1, "ret":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 117
    .local v0, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_0
    return-object v1
.end method

.method public getMixedHash(Ljava/lang/String;)Lcom/glu/android/MixedHash;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/MixedHash$MixedHashContents;

    .line 36
    .local v0, "mhc":Lcom/glu/android/MixedHash$MixedHashContents;
    if-nez v0, :cond_0

    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/glu/android/MixedHash$MixedHashContents;->access$200(Lcom/glu/android/MixedHash$MixedHashContents;)Lcom/glu/android/MixedHash;

    move-result-object v1

    goto :goto_0
.end method

.method public getMixedHashVector(Ljava/lang/String;)Ljava/util/Vector;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/MixedHash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v1, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/MixedHash$MixedHashContents;

    .line 44
    .local v0, "mhc":Lcom/glu/android/MixedHash$MixedHashContents;
    if-nez v0, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/glu/android/MixedHash$MixedHashContents;->access$300(Lcom/glu/android/MixedHash$MixedHashContents;)Ljava/util/Vector;

    move-result-object v1

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 19
    iget-object v1, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/MixedHash$MixedHashContents;

    .line 20
    .local v0, "mhc":Lcom/glu/android/MixedHash$MixedHashContents;
    if-nez v0, :cond_0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/glu/android/MixedHash$MixedHashContents;->access$000(Lcom/glu/android/MixedHash$MixedHashContents;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isInteger(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/MixedHash$MixedHashContents;

    .line 80
    .local v0, "value":Lcom/glu/android/MixedHash$MixedHashContents;
    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/glu/android/MixedHash$MixedHashContents;->access$100(Lcom/glu/android/MixedHash$MixedHashContents;)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMixedHash(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v2, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/MixedHash$MixedHashContents;

    .line 98
    .local v0, "value":Lcom/glu/android/MixedHash$MixedHashContents;
    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/glu/android/MixedHash$MixedHashContents;->access$200(Lcom/glu/android/MixedHash$MixedHashContents;)Lcom/glu/android/MixedHash;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v2, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/MixedHash$MixedHashContents;

    .line 89
    .local v0, "value":Lcom/glu/android/MixedHash$MixedHashContents;
    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/glu/android/MixedHash$MixedHashContents;->access$000(Lcom/glu/android/MixedHash$MixedHashContents;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVector(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/MixedHash$MixedHashContents;

    .line 107
    .local v0, "value":Lcom/glu/android/MixedHash$MixedHashContents;
    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/glu/android/MixedHash$MixedHashContents;->access$300(Lcom/glu/android/MixedHash$MixedHashContents;)Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 58
    new-instance v0, Lcom/glu/android/MixedHash$MixedHashContents;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glu/android/MixedHash$MixedHashContents;-><init>(Lcom/glu/android/MixedHash$1;)V

    .line 59
    .local v0, "mhc":Lcom/glu/android/MixedHash$MixedHashContents;
    invoke-static {v0, p2}, Lcom/glu/android/MixedHash$MixedHashContents;->access$102(Lcom/glu/android/MixedHash$MixedHashContents;I)I

    .line 60
    iget-object v1, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public putMixedHash(Ljava/lang/String;Lcom/glu/android/MixedHash;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/glu/android/MixedHash;

    .prologue
    .line 65
    new-instance v0, Lcom/glu/android/MixedHash$MixedHashContents;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glu/android/MixedHash$MixedHashContents;-><init>(Lcom/glu/android/MixedHash$1;)V

    .line 66
    .local v0, "mhc":Lcom/glu/android/MixedHash$MixedHashContents;
    invoke-static {v0, p2}, Lcom/glu/android/MixedHash$MixedHashContents;->access$202(Lcom/glu/android/MixedHash$MixedHashContents;Lcom/glu/android/MixedHash;)Lcom/glu/android/MixedHash;

    .line 67
    iget-object v1, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public putMixedHashVector(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/MixedHash;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "value":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/glu/android/MixedHash;>;"
    new-instance v0, Lcom/glu/android/MixedHash$MixedHashContents;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glu/android/MixedHash$MixedHashContents;-><init>(Lcom/glu/android/MixedHash$1;)V

    .line 73
    .local v0, "mhc":Lcom/glu/android/MixedHash$MixedHashContents;
    invoke-static {v0, p2}, Lcom/glu/android/MixedHash$MixedHashContents;->access$302(Lcom/glu/android/MixedHash$MixedHashContents;Ljava/util/Vector;)Ljava/util/Vector;

    .line 74
    iget-object v1, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/glu/android/MixedHash$MixedHashContents;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glu/android/MixedHash$MixedHashContents;-><init>(Lcom/glu/android/MixedHash$1;)V

    .line 52
    .local v0, "mhc":Lcom/glu/android/MixedHash$MixedHashContents;
    invoke-static {v0, p2}, Lcom/glu/android/MixedHash$MixedHashContents;->access$002(Lcom/glu/android/MixedHash$MixedHashContents;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/glu/android/MixedHash;->sm_trueHash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
