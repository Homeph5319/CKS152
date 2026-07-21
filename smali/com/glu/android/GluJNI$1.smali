.class final Lcom/glu/android/GluJNI$1;
.super Ljava/lang/Object;
.source "GluJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluJNI;->systemEventSafe(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:I

.field final synthetic val$iParam:I

.field final synthetic val$param_:[B


# direct methods
.method constructor <init>(II[B)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/glu/android/GluJNI$1;->val$event:I

    iput p2, p0, Lcom/glu/android/GluJNI$1;->val$iParam:I

    iput-object p3, p0, Lcom/glu/android/GluJNI$1;->val$param_:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    iget v0, p0, Lcom/glu/android/GluJNI$1;->val$event:I

    iget v1, p0, Lcom/glu/android/GluJNI$1;->val$iParam:I

    iget-object v2, p0, Lcom/glu/android/GluJNI$1;->val$param_:[B

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluJNI;->systemEvent(II[B)I

    .line 74
    return-void
.end method
