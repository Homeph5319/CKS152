.class final Lcom/flurry/android/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/flurry/android/q;


# direct methods
.method constructor <init>(Lcom/flurry/android/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/flurry/android/ac;->b:Lcom/flurry/android/q;

    iput-object p2, p0, Lcom/flurry/android/ac;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 333
    new-instance v0, Lcom/flurry/android/CallbackEvent;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/flurry/android/CallbackEvent;-><init>(I)V

    .line 334
    iget-object v1, p0, Lcom/flurry/android/ac;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/CallbackEvent;->setMessage(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/flurry/android/ac;->b:Lcom/flurry/android/q;

    invoke-static {v1}, Lcom/flurry/android/q;->a(Lcom/flurry/android/q;)Lcom/flurry/android/AppCircleCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flurry/android/AppCircleCallback;->onMarketAppLaunchError(Lcom/flurry/android/CallbackEvent;)V

    .line 336
    return-void
.end method
