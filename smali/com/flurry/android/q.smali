.class final Lcom/flurry/android/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/util/Random;

.field private static h:I

.field private static volatile z:I


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:J

.field private p:Lcom/flurry/android/w;

.field private q:Z

.field private r:Ljava/util/Map;

.field private s:Landroid/os/Handler;

.field private t:Z

.field private transient u:Ljava/util/Map;

.field private v:Lcom/flurry/android/af;

.field private w:Ljava/util/List;

.field private x:Ljava/util/Map;

.field private y:Lcom/flurry/android/AppCircleCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-string v0, "market://"

    sput-object v0, Lcom/flurry/android/q;->c:Ljava/lang/String;

    .line 35
    const-string v0, "market://details?id="

    sput-object v0, Lcom/flurry/android/q;->d:Ljava/lang/String;

    .line 36
    const-string v0, "https://market.android.com/details?id="

    sput-object v0, Lcom/flurry/android/q;->e:Ljava/lang/String;

    .line 37
    const-string v0, "com.flurry.android.ACTION_CATALOG"

    sput-object v0, Lcom/flurry/android/q;->f:Ljava/lang/String;

    .line 42
    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/flurry/android/q;->a:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/flurry/android/q;->g:Ljava/util/Random;

    .line 44
    const/16 v0, 0x1388

    sput v0, Lcom/flurry/android/q;->h:I

    .line 48
    sget-object v0, Lcom/flurry/android/q;->g:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/flurry/android/q;->b:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    sput v0, Lcom/flurry/android/q;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/a;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/flurry/android/q;->q:Z

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/q;->r:Ljava/util/Map;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/q;->u:Ljava/util/Map;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/q;->w:Ljava/util/List;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/q;->x:Ljava/util/Map;

    .line 97
    iget-object v1, p2, Lcom/flurry/android/a;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/flurry/android/q;->i:Ljava/lang/String;

    .line 98
    iget-object v1, p2, Lcom/flurry/android/a;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/flurry/android/q;->j:Ljava/lang/String;

    .line 99
    iget-object v1, p2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/flurry/android/q;->k:Ljava/lang/String;

    .line 100
    iget-object v1, p2, Lcom/flurry/android/a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/flurry/android/q;->l:Ljava/lang/String;

    .line 101
    iget-wide v1, p2, Lcom/flurry/android/a;->c:J

    iput-wide v1, p0, Lcom/flurry/android/q;->m:J

    .line 102
    iget-wide v1, p2, Lcom/flurry/android/a;->d:J

    iput-wide v1, p0, Lcom/flurry/android/q;->n:J

    .line 103
    iget-wide v1, p2, Lcom/flurry/android/a;->e:J

    iput-wide v1, p0, Lcom/flurry/android/q;->o:J

    .line 104
    iget-object v1, p2, Lcom/flurry/android/a;->h:Landroid/os/Handler;

    iput-object v1, p0, Lcom/flurry/android/q;->s:Landroid/os/Handler;

    .line 106
    new-instance v1, Lcom/flurry/android/af;

    iget-object v2, p0, Lcom/flurry/android/q;->s:Landroid/os/Handler;

    sget v3, Lcom/flurry/android/q;->h:I

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/af;-><init>(Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/flurry/android/q;->v:Lcom/flurry/android/af;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 110
    new-instance v1, Lcom/flurry/android/w;

    invoke-direct {v1, p1, p0, p2}, Lcom/flurry/android/w;-><init>(Landroid/content/Context;Lcom/flurry/android/q;Lcom/flurry/android/a;)V

    iput-object v1, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/flurry/android/q;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/android/q;->q:Z

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/q;)Lcom/flurry/android/AppCircleCallback;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/android/q;->y:Lcom/flurry/android/AppCircleCallback;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/flurry/android/s;)Lcom/flurry/android/Offer;
    .locals 9

    .prologue
    .line 437
    new-instance v8, Lcom/flurry/android/ag;

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/flurry/android/q;->i()J

    move-result-wide v1

    invoke-direct {v8, p1, v0, v1, v2}, Lcom/flurry/android/ag;-><init>(Ljava/lang/String;BJ)V

    .line 438
    invoke-direct {p0, v8}, Lcom/flurry/android/q;->a(Lcom/flurry/android/ag;)V

    .line 439
    new-instance v0, Lcom/flurry/android/j;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/flurry/android/q;->i()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/j;-><init>(BJ)V

    invoke-virtual {v8, v0}, Lcom/flurry/android/ag;->a(Lcom/flurry/android/j;)V

    .line 441
    iput-object p2, v8, Lcom/flurry/android/ag;->b:Lcom/flurry/android/s;

    .line 442
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    iget-wide v1, p2, Lcom/flurry/android/s;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/w;->a(J)Lcom/flurry/android/ak;

    move-result-object v0

    .line 443
    if-nez v0, :cond_0

    const-string v6, ""

    .line 444
    :goto_0
    if-nez v0, :cond_1

    const/4 v7, 0x0

    .line 445
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/flurry/android/ag;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v8, v1}, Lcom/flurry/android/q;->a(Lcom/flurry/android/ag;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 447
    new-instance v0, Lcom/flurry/android/OfferInSdk;

    sget v1, Lcom/flurry/android/q;->z:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/flurry/android/q;->z:I

    int-to-long v1, v1

    iget-object v4, p2, Lcom/flurry/android/s;->h:Lcom/flurry/android/AdImage;

    iget-object v5, p2, Lcom/flurry/android/s;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/OfferInSdk;-><init>(JLjava/lang/String;Lcom/flurry/android/AdImage;Ljava/lang/String;Ljava/lang/String;I)V

    .line 448
    iput-object v8, v0, Lcom/flurry/android/OfferInSdk;->b:Lcom/flurry/android/ag;

    .line 449
    iget-object v1, p0, Lcom/flurry/android/q;->x:Ljava/util/Map;

    iget-wide v2, v0, Lcom/flurry/android/OfferInSdk;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v8, Lcom/flurry/android/Offer;

    iget-wide v1, v0, Lcom/flurry/android/OfferInSdk;->a:J

    iget-object v3, v0, Lcom/flurry/android/OfferInSdk;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/flurry/android/OfferInSdk;->g:Lcom/flurry/android/AdImage;

    iget-object v5, v0, Lcom/flurry/android/OfferInSdk;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/flurry/android/OfferInSdk;->d:Ljava/lang/String;

    iget v7, v0, Lcom/flurry/android/OfferInSdk;->e:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/Offer;-><init>(JLjava/lang/String;Lcom/flurry/android/AdImage;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v8

    .line 443
    :cond_0
    iget-object v6, v0, Lcom/flurry/android/ak;->a:Ljava/lang/String;

    goto :goto_0

    .line 444
    :cond_1
    iget v7, v0, Lcom/flurry/android/ak;->c:I

    goto :goto_1
.end method

.method private a(Lcom/flurry/android/ag;Ljava/lang/Long;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 607
    iget-object v0, p1, Lcom/flurry/android/ag;->b:Lcom/flurry/android/s;

    .line 608
    invoke-virtual {p1}, Lcom/flurry/android/ag;->a()J

    move-result-wide v1

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?apik="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/q;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/flurry/android/s;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&adid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/flurry/android/s;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/q;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&iid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/flurry/android/q;->m:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/flurry/android/q;->n:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&its="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&hid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/flurry/android/ag;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/flurry/android/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/flurry/android/s;->g:[B

    invoke-static {v0}, Lcom/flurry/android/q;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 622
    iget-object v0, p0, Lcom/flurry/android/q;->r:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/q;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/flurry/android/q;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/android/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 635
    :cond_0
    const-string v0, "&ats="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    if-eqz p2, :cond_1

    .line 638
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 641
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/q;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/flurry/android/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 649
    aget-byte v2, p0, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 650
    if-ge v2, v3, :cond_0

    .line 652
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    :goto_1
    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    .line 660
    if-ge v2, v3, :cond_1

    .line 662
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    add-int/lit8 v2, v2, 0x41

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 666
    :cond_1
    add-int/lit8 v2, v2, 0x41

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 669
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 516
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    invoke-virtual {v0}, Lcom/flurry/android/w;->b()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 542
    :goto_0
    return-object v0

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/flurry/android/w;->a(Ljava/lang/String;)[Lcom/flurry/android/s;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 525
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 526
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 527
    if-eqz p2, :cond_2

    .line 529
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/s;

    .line 532
    iget-wide v3, v0, Lcom/flurry/android/s;->a:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 534
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 540
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v1, v7, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 542
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/flurry/android/ag;)V
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/flurry/android/q;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/flurry/android/q;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/flurry/android/q;->u:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/android/ag;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/q;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 31
    sget-object v0, Lcom/flurry/android/q;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/android/q;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/android/q;->q:Z

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching Android Market for app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot launch Marketplace url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching Android Market website for app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/flurry/android/q;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected android market url scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 694
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 695
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 241
    sput-object p0, Lcom/flurry/android/q;->f:Ljava/lang/String;

    .line 242
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/flurry/android/ag;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 587
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/flurry/android/q;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v1, "u"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    if-eqz p1, :cond_0

    .line 593
    const-string v1, "o"

    invoke-virtual {p1}, Lcom/flurry/android/ag;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 595
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 596
    return-void
.end method

.method static synthetic b(Lcom/flurry/android/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/flurry/android/q;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 284
    :try_start_0
    sget-object v1, Lcom/flurry/android/q;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 287
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 288
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 290
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 292
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 294
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    .line 295
    sget-object v1, Lcom/flurry/android/q;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-direct {p0, p1}, Lcom/flurry/android/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 321
    :cond_0
    :goto_0
    return-object p1

    .line 302
    :cond_1
    sget-object v1, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot process with responseCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 309
    sget-object v2, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/flurry/android/q;->y:Lcom/flurry/android/AppCircleCallback;

    if-eqz v2, :cond_2

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-direct {p0, v1}, Lcom/flurry/android/q;->e(Ljava/lang/String;)V

    :cond_2
    move-object p1, v0

    .line 316
    goto :goto_0

    .line 318
    :catch_1
    move-exception v1

    .line 320
    sget-object v2, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed on url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/flurry/android/ah;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    .line 321
    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/flurry/android/ac;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/ac;-><init>(Lcom/flurry/android/q;Ljava/lang/String;)V

    .line 338
    invoke-static {v0}, Lcom/flurry/android/q;->a(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/ad;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/flurry/android/ad;-><init>(Lcom/flurry/android/q;Landroid/content/Context;Ljava/lang/String;I)V

    .line 497
    iget-object v1, p0, Lcom/flurry/android/q;->v:Lcom/flurry/android/af;

    invoke-virtual {v1, v0}, Lcom/flurry/android/af;->a(Lcom/flurry/android/ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-object v0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(J)Lcom/flurry/android/AdImage;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/w;->b(J)Lcom/flurry/android/AdImage;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;IZ)Ljava/util/List;
    .locals 11

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    invoke-virtual {v0}, Lcom/flurry/android/w;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 458
    invoke-direct {p0, p2, p3}, Lcom/flurry/android/q;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v9

    .line 460
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 461
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 462
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v10, :cond_2

    .line 464
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 465
    iget-object v1, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    invoke-virtual {v1, v0}, Lcom/flurry/android/w;->b(Ljava/lang/String;)Lcom/flurry/android/f;

    move-result-object v4

    .line 466
    if-eqz v4, :cond_1

    .line 468
    new-instance v3, Lcom/flurry/android/ag;

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/flurry/android/q;->i()J

    move-result-wide v5

    invoke-direct {v3, v0, v1, v5, v6}, Lcom/flurry/android/ag;-><init>(Ljava/lang/String;BJ)V

    .line 469
    invoke-direct {p0, v3}, Lcom/flurry/android/q;->a(Lcom/flurry/android/ag;)V

    .line 471
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 473
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/s;

    .line 474
    iput-object v0, v3, Lcom/flurry/android/ag;->b:Lcom/flurry/android/s;

    .line 475
    new-instance v0, Lcom/flurry/android/j;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/flurry/android/q;->i()J

    move-result-wide v5

    invoke-direct {v0, v1, v5, v6}, Lcom/flurry/android/j;-><init>(BJ)V

    invoke-virtual {v3, v0}, Lcom/flurry/android/ag;->a(Lcom/flurry/android/j;)V

    .line 477
    new-instance v0, Lcom/flurry/android/v;

    move-object v1, p1

    move-object v2, p0

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/v;-><init>(Landroid/content/Context;Lcom/flurry/android/q;Lcom/flurry/android/ag;Lcom/flurry/android/f;IZ)V

    .line 479
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1}, Lcom/flurry/android/q;->a(Lcom/flurry/android/ag;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/v;->a(Ljava/lang/String;)V

    .line 480
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_0
    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 485
    :cond_1
    sget-object v1, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find hook: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v7

    .line 491
    :goto_2
    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2
.end method

.method final a()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    invoke-virtual {v0}, Lcom/flurry/android/w;->d()V

    .line 135
    return-void
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/flurry/android/q;->y:Lcom/flurry/android/AppCircleCallback;

    if-eqz v0, :cond_0

    .line 701
    new-instance v0, Lcom/flurry/android/ab;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/ab;-><init>(Lcom/flurry/android/q;I)V

    .line 711
    invoke-static {v0}, Lcom/flurry/android/q;->a(Ljava/lang/Runnable;)V

    .line 713
    :cond_0
    return-void
.end method

.method final declared-synchronized a(Landroid/content/Context;J)V
    .locals 6

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/q;->x:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/OfferInSdk;

    .line 390
    if-nez v0, :cond_0

    .line 392
    sget-object v0, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find offer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ah;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :goto_0
    monitor-exit p0

    return-void

    .line 396
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/flurry/android/OfferInSdk;->b:Lcom/flurry/android/ag;

    .line 397
    new-instance v2, Lcom/flurry/android/j;

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/flurry/android/q;->i()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/flurry/android/j;-><init>(BJ)V

    invoke-virtual {v1, v2}, Lcom/flurry/android/ag;->a(Lcom/flurry/android/j;)V

    .line 399
    sget-object v2, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/flurry/android/OfferInSdk;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accepted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, v0, Lcom/flurry/android/OfferInSdk;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/flurry/android/q;->a(Landroid/content/Context;Lcom/flurry/android/ag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Lcom/flurry/android/ag;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/q;->s:Landroid/os/Handler;

    new-instance v1, Lcom/flurry/android/aj;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/flurry/android/aj;-><init>(Lcom/flurry/android/q;Ljava/lang/String;Landroid/content/Context;Lcom/flurry/android/ag;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 197
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/q;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/flurry/android/q;->o:J

    sub-long/2addr v1, v3

    .line 201
    new-instance v3, Lcom/flurry/android/ag;

    const/4 v4, 0x2

    invoke-direct {v3, p2, v4, v1, v2}, Lcom/flurry/android/ag;-><init>(Ljava/lang/String;BJ)V

    .line 202
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/s;

    iput-object v0, v3, Lcom/flurry/android/ag;->b:Lcom/flurry/android/s;

    .line 203
    invoke-direct {p0, v3}, Lcom/flurry/android/q;->a(Lcom/flurry/android/ag;)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/android/q;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/flurry/android/q;->a(Lcom/flurry/android/ag;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {p1, v3, v0}, Lcom/flurry/android/q;->b(Landroid/content/Context;Lcom/flurry/android/ag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/flurry/android/q;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 215
    :try_start_2
    sget-object v1, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch promotional canvas for hook: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ah;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/flurry/android/AppCircleCallback;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/flurry/android/q;->y:Lcom/flurry/android/AppCircleCallback;

    .line 222
    return-void
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/q;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    monitor-exit p0

    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 431
    iget-object v2, p0, Lcom/flurry/android/q;->x:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 433
    :cond_0
    monitor-exit p0

    return-void
.end method

.method final a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/w;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 151
    return-void
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/flurry/android/q;->t:Z

    .line 227
    return-void
.end method

.method final declared-synchronized b(Ljava/lang/String;)Lcom/flurry/android/Offer;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 375
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/flurry/android/q;->a(Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v1

    .line 376
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 380
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/s;

    .line 381
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/q;->a(Ljava/lang/String;Lcom/flurry/android/s;)Lcom/flurry/android/Offer;

    move-result-object v0

    .line 383
    sget-object v1, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression for offer with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/Offer;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(J)Lcom/flurry/android/ag;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/flurry/android/q;->u:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/ag;

    return-object v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    invoke-virtual {v0}, Lcom/flurry/android/w;->e()V

    .line 141
    return-void
.end method

.method final c()J
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    invoke-virtual {v0}, Lcom/flurry/android/w;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method final declared-synchronized c(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    invoke-virtual {v0}, Lcom/flurry/android/w;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 424
    :goto_0
    monitor-exit p0

    return-object v0

    .line 412
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    invoke-virtual {v0, p1}, Lcom/flurry/android/w;->a(Ljava/lang/String;)[Lcom/flurry/android/s;

    move-result-object v2

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    if-eqz v2, :cond_1

    array-length v1, v2

    if-lez v1, :cond_1

    .line 417
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 419
    invoke-direct {p0, p1, v4}, Lcom/flurry/android/q;->a(Ljava/lang/String;Lcom/flurry/android/s;)Lcom/flurry/android/Offer;

    move-result-object v4

    .line 420
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    :cond_1
    sget-object v1, Lcom/flurry/android/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impressions for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offers."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/ah;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    invoke-virtual {v0}, Lcom/flurry/android/w;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/flurry/android/q;->w:Ljava/util/List;

    return-object v0
.end method

.method final f()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/flurry/android/q;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 191
    return-void
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/flurry/android/q;->t:Z

    return v0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/flurry/android/q;->i:Ljava/lang/String;

    return-object v0
.end method

.method final i()J
    .locals 4

    .prologue
    .line 547
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/q;->o:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method final declared-synchronized j()V
    .locals 1

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/q;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    monitor-exit p0

    return-void

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final k()Lcom/flurry/android/AdImage;
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/android/w;->a(S)Lcom/flurry/android/AdImage;

    move-result-object v0

    return-object v0
.end method

.method final l()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/flurry/android/q;->p:Lcom/flurry/android/w;

    invoke-virtual {v0}, Lcom/flurry/android/w;->b()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/flurry/android/v;

    move-object v1, v0

    .line 554
    invoke-virtual {v1}, Lcom/flurry/android/v;->a()Lcom/flurry/android/ag;

    move-result-object v2

    .line 555
    new-instance v3, Lcom/flurry/android/j;

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/flurry/android/q;->i()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lcom/flurry/android/j;-><init>(BJ)V

    invoke-virtual {v2, v3}, Lcom/flurry/android/ag;->a(Lcom/flurry/android/j;)V

    .line 558
    iget-boolean v3, p0, Lcom/flurry/android/q;->t:Z

    if-eqz v3, :cond_0

    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/q;->i:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/flurry/android/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/flurry/android/q;->b(Landroid/content/Context;Lcom/flurry/android/ag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :goto_0
    monitor-exit p0

    return-void

    .line 564
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/q;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/flurry/android/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v1}, Lcom/flurry/android/q;->a(Landroid/content/Context;Lcom/flurry/android/ag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    const-string v1, "[adLogs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/q;->w:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
