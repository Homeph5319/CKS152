.class final Lcom/glu/android/GluJNI$2;
.super Ljava/lang/Object;
.source "GluJNI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventID:I

.field final synthetic val$paramInt:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/glu/android/GluJNI$2;->val$eventID:I

    iput p2, p0, Lcom/glu/android/GluJNI$2;->val$paramInt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 117
    iget v2, p0, Lcom/glu/android/GluJNI$2;->val$eventID:I

    iget v3, p0, Lcom/glu/android/GluJNI$2;->val$paramInt:I

    move-object v0, v1

    check-cast v0, [[C

    invoke-static {v2, v3, v1, v0}, Lcom/glu/android/GluJNI;->javaToNativeFacebook(II[B[[C)V

    .line 118
    return-void
.end method
