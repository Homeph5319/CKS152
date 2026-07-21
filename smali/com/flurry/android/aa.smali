.class final Lcom/flurry/android/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/flurry/android/z;


# direct methods
.method constructor <init>(Lcom/flurry/android/z;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/flurry/android/aa;->b:Lcom/flurry/android/z;

    iput-object p2, p0, Lcom/flurry/android/aa;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 244
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/flurry/android/aa;->b:Lcom/flurry/android/z;

    invoke-static {v0}, Lcom/flurry/android/z;->a(Lcom/flurry/android/z;)Landroid/text/SpannedString;

    move-result-object v0

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/flurry/android/aa;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/aa;->b:Lcom/flurry/android/z;

    invoke-static {v0}, Lcom/flurry/android/z;->b(Lcom/flurry/android/z;)Landroid/text/SpannedString;

    move-result-object v0

    goto :goto_0
.end method
