.class final Lcom/flurry/android/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/android/c;


# direct methods
.method constructor <init>(Lcom/flurry/android/c;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lcom/flurry/android/o;->a:Lcom/flurry/android/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/flurry/android/o;->a:Lcom/flurry/android/c;

    iget-object v0, v0, Lcom/flurry/android/c;->b:Lcom/flurry/android/FlurryAgent;

    iget-object v1, p0, Lcom/flurry/android/o;->a:Lcom/flurry/android/c;

    iget-object v1, v1, Lcom/flurry/android/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->b(Lcom/flurry/android/FlurryAgent;Landroid/content/Context;)V

    .line 877
    return-void
.end method
