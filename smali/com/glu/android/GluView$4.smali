.class Lcom/glu/android/GluView$4;
.super Ljava/lang/Object;
.source "GluView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluView;->touchEventToNative(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluView;

.field final synthetic val$i_:I

.field final synthetic val$pointerId_:I

.field final synthetic val$x_:I

.field final synthetic val$y_:I


# direct methods
.method constructor <init>(Lcom/glu/android/GluView;IIII)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/glu/android/GluView$4;->this$0:Lcom/glu/android/GluView;

    iput p2, p0, Lcom/glu/android/GluView$4;->val$pointerId_:I

    iput p3, p0, Lcom/glu/android/GluView$4;->val$x_:I

    iput p4, p0, Lcom/glu/android/GluView$4;->val$y_:I

    iput p5, p0, Lcom/glu/android/GluView$4;->val$i_:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const v2, 0x100008

    .line 513
    const-string v0, "down processed"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 514
    iget v0, p0, Lcom/glu/android/GluView$4;->val$pointerId_:I

    if-ne v0, v2, :cond_0

    .line 515
    iget v0, p0, Lcom/glu/android/GluView$4;->val$x_:I

    iget v1, p0, Lcom/glu/android/GluView$4;->val$y_:I

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluJNI;->pointerPressed(III)V

    .line 518
    :goto_0
    return-void

    .line 517
    :cond_0
    iget v0, p0, Lcom/glu/android/GluView$4;->val$x_:I

    iget v1, p0, Lcom/glu/android/GluView$4;->val$y_:I

    iget v2, p0, Lcom/glu/android/GluView$4;->val$i_:I

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluJNI;->pointerPressed(III)V

    goto :goto_0
.end method
