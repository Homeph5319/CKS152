.class public Lcom/glu/android/SettingsHash;
.super Ljava/util/Hashtable;
.source "SettingsHash.java"


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
    .local p0, "this":Lcom/glu/android/SettingsHash;, "Lcom/glu/android/SettingsHash<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method


# virtual methods
.method public putS(Ljava/lang/Object;Ljava/lang/Object;)Lcom/glu/android/SettingsHash;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/glu/android/SettingsHash",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 10
    .local p0, "this":Lcom/glu/android/SettingsHash;, "Lcom/glu/android/SettingsHash<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/glu/android/SettingsHash;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    return-object p0
.end method
