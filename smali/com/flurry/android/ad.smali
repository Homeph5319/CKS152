.class final Lcom/flurry/android/ad;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/flurry/android/q;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lcom/flurry/android/q;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/flurry/android/ad;->a:Lcom/flurry/android/q;

    .line 35
    iput-object p2, p0, Lcom/flurry/android/ad;->b:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/flurry/android/ad;->c:Ljava/lang/String;

    .line 37
    iput p4, p0, Lcom/flurry/android/ad;->d:I

    .line 38
    return-void
.end method

.method private static b()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 72
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private declared-synchronized c()Lcom/flurry/android/v;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/ad;->a:Lcom/flurry/android/q;

    iget-object v1, p0, Lcom/flurry/android/ad;->b:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/flurry/android/ad;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/flurry/android/ad;->d:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/q;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/Long;IZ)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/v;

    .line 83
    iget-object v1, p0, Lcom/flurry/android/ad;->a:Lcom/flurry/android/q;

    invoke-virtual {v0, v1}, Lcom/flurry/android/v;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    monitor-exit p0

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 42
    iget-boolean v0, p0, Lcom/flurry/android/ad;->e:Z

    if-nez v0, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/flurry/android/ad;->c()Lcom/flurry/android/v;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/flurry/android/ad;->removeAllViews()V

    .line 48
    invoke-static {}, Lcom/flurry/android/ad;->b()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/ad;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {v0}, Lcom/flurry/android/v;->a()Lcom/flurry/android/ag;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/flurry/android/j;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/flurry/android/ad;->a:Lcom/flurry/android/q;

    invoke-virtual {v3}, Lcom/flurry/android/q;->i()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/j;-><init>(BJ)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/ag;->a(Lcom/flurry/android/j;)V

    .line 51
    iput-boolean v5, p0, Lcom/flurry/android/ad;->e:Z

    .line 61
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/flurry/android/ad;->f:Z

    .line 63
    :cond_1
    return-void

    .line 53
    :cond_2
    iget-boolean v0, p0, Lcom/flurry/android/ad;->f:Z

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flurry/android/ad;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    sget-object v1, Lcom/flurry/android/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    invoke-static {}, Lcom/flurry/android/ad;->b()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/ad;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
