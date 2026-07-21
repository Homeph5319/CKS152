.class Lcom/glu/android/MixedHash$MixedHashContents;
.super Ljava/lang/Object;
.source "MixedHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/MixedHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MixedHashContents"
.end annotation


# instance fields
.field private m_hash:Lcom/glu/android/MixedHash;

.field private m_hashVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/MixedHash;",
            ">;"
        }
    .end annotation
.end field

.field private m_int:I

.field private m_string:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object v1, p0, Lcom/glu/android/MixedHash$MixedHashContents;->m_hash:Lcom/glu/android/MixedHash;

    .line 126
    iput-object v1, p0, Lcom/glu/android/MixedHash$MixedHashContents;->m_hashVector:Ljava/util/Vector;

    .line 127
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/glu/android/MixedHash$MixedHashContents;->m_int:I

    .line 128
    iput-object v1, p0, Lcom/glu/android/MixedHash$MixedHashContents;->m_string:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/glu/android/MixedHash$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/glu/android/MixedHash$1;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/glu/android/MixedHash$MixedHashContents;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/glu/android/MixedHash$MixedHashContents;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/MixedHash$MixedHashContents;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/glu/android/MixedHash$MixedHashContents;->m_string:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/glu/android/MixedHash$MixedHashContents;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/MixedHash$MixedHashContents;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/glu/android/MixedHash$MixedHashContents;->m_string:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/glu/android/MixedHash$MixedHashContents;)I
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/MixedHash$MixedHashContents;

    .prologue
    .line 123
    iget v0, p0, Lcom/glu/android/MixedHash$MixedHashContents;->m_int:I

    return v0
.end method

.method static synthetic access$102(Lcom/glu/android/MixedHash$MixedHashContents;I)I
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/MixedHash$MixedHashContents;
    .param p1, "x1"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/glu/android/MixedHash$MixedHashContents;->m_int:I

    return p1
.end method

.method static synthetic access$200(Lcom/glu/android/MixedHash$MixedHashContents;)Lcom/glu/android/MixedHash;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/MixedHash$MixedHashContents;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/glu/android/MixedHash$MixedHashContents;->m_hash:Lcom/glu/android/MixedHash;

    return-object v0
.end method

.method static synthetic access$202(Lcom/glu/android/MixedHash$MixedHashContents;Lcom/glu/android/MixedHash;)Lcom/glu/android/MixedHash;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/MixedHash$MixedHashContents;
    .param p1, "x1"    # Lcom/glu/android/MixedHash;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/glu/android/MixedHash$MixedHashContents;->m_hash:Lcom/glu/android/MixedHash;

    return-object p1
.end method

.method static synthetic access$300(Lcom/glu/android/MixedHash$MixedHashContents;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/MixedHash$MixedHashContents;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/glu/android/MixedHash$MixedHashContents;->m_hashVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$302(Lcom/glu/android/MixedHash$MixedHashContents;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/MixedHash$MixedHashContents;
    .param p1, "x1"    # Ljava/util/Vector;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/glu/android/MixedHash$MixedHashContents;->m_hashVector:Ljava/util/Vector;

    return-object p1
.end method
