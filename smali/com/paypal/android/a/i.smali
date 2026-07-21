.class public abstract Lcom/paypal/android/a/i;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/ScrollView;

.field private b:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/paypal/android/a/i;->setPadding(IIII)V

    const/high16 v0, 0x7f000000

    invoke-virtual {p0, v0}, Lcom/paypal/android/a/i;->setBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lcom/paypal/android/a/i;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 8

    const/16 v7, 0xb

    const/4 v6, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/a/i;->a:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/paypal/android/a/i;->a:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    iget-object v1, p0, Lcom/paypal/android/a/i;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/paypal/android/a/i;->a:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lcom/paypal/android/a/i;->a:Landroid/widget/ScrollView;

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/a/i;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/a/i;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/a/i;->b:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/a/i;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/paypal/android/a/i;->a:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/paypal/android/a/i;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "banner-sandbox.png"

    invoke-static {p1, v1}, Lcom/paypal/android/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "banner-demo.png"

    invoke-static {p1, v1}, Lcom/paypal/android/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :array_0
    .array-data 4
        -0x1
        -0xf1225
        -0xf1225
        -0xf1225
    .end array-data
.end method

.method public abstract a_()V
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/a/i;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public abstract b()V
.end method
