.class final Lcom/flurry/android/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/android/FlurryAgent;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAgent;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/flurry/android/b;->a:Lcom/flurry/android/FlurryAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/flurry/android/b;->a:Lcom/flurry/android/FlurryAgent;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->b(Lcom/flurry/android/FlurryAgent;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/b;->a:Lcom/flurry/android/FlurryAgent;

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->b(Lcom/flurry/android/FlurryAgent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 811
    return-void
.end method
