.class final Lcom/flurry/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/flurry/android/FlurryAgent;

.field private synthetic c:Z


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAgent;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/flurry/android/c;->b:Lcom/flurry/android/FlurryAgent;

    iput-boolean p2, p0, Lcom/flurry/android/c;->c:Z

    iput-object p3, p0, Lcom/flurry/android/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 867
    iget-object v0, p0, Lcom/flurry/android/c;->b:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->c(Lcom/flurry/android/FlurryAgent;)V

    .line 868
    iget-object v0, p0, Lcom/flurry/android/c;->b:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->d(Lcom/flurry/android/FlurryAgent;)V

    .line 869
    iget-boolean v0, p0, Lcom/flurry/android/c;->c:Z

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/flurry/android/c;->b:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->e(Lcom/flurry/android/FlurryAgent;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/o;

    invoke-direct {v1, p0}, Lcom/flurry/android/o;-><init>(Lcom/flurry/android/c;)V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->f()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 881
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/flurry/android/c;->b:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->f(Lcom/flurry/android/FlurryAgent;)Lcom/flurry/android/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/q;->b()V

    .line 885
    :cond_1
    return-void
.end method
