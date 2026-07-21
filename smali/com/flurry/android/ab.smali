.class final Lcom/flurry/android/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/flurry/android/q;


# direct methods
.method constructor <init>(Lcom/flurry/android/q;I)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/flurry/android/ab;->b:Lcom/flurry/android/q;

    iput p2, p0, Lcom/flurry/android/ab;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 707
    new-instance v0, Lcom/flurry/android/CallbackEvent;

    iget v1, p0, Lcom/flurry/android/ab;->a:I

    invoke-direct {v0, v1}, Lcom/flurry/android/CallbackEvent;-><init>(I)V

    .line 708
    iget-object v1, p0, Lcom/flurry/android/ab;->b:Lcom/flurry/android/q;

    invoke-static {v1}, Lcom/flurry/android/q;->a(Lcom/flurry/android/q;)Lcom/flurry/android/AppCircleCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flurry/android/AppCircleCallback;->onAdsUpdated(Lcom/flurry/android/CallbackEvent;)V

    .line 709
    return-void
.end method
