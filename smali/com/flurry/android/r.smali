.class final Lcom/flurry/android/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/android/af;


# direct methods
.method constructor <init>(Lcom/flurry/android/af;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/flurry/android/r;->a:Lcom/flurry/android/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flurry/android/r;->a:Lcom/flurry/android/af;

    invoke-static {v0}, Lcom/flurry/android/af;->a(Lcom/flurry/android/af;)V

    .line 32
    return-void
.end method
