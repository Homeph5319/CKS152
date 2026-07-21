.class Lcom/glu/android/GluView$2;
.super Ljava/lang/Object;
.source "GluView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluView;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GluView;

.field final synthetic val$keyCode_:I


# direct methods
.method constructor <init>(Lcom/glu/android/GluView;I)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/glu/android/GluView$2;->this$0:Lcom/glu/android/GluView;

    iput p2, p0, Lcom/glu/android/GluView$2;->val$keyCode_:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/glu/android/GluView$2;->val$keyCode_:I

    invoke-static {v0}, Lcom/glu/android/GluJNI;->keyPressed(I)V

    .line 332
    return-void
.end method
