.class public Lcom/glu/android/GluCanvasOverlayGroup$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "GluCanvasOverlayGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluCanvasOverlayGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 588
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 589
    iput p3, p0, Lcom/glu/android/GluCanvasOverlayGroup$LayoutParams;->x:I

    .line 590
    iput p4, p0, Lcom/glu/android/GluCanvasOverlayGroup$LayoutParams;->y:I

    .line 591
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 595
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 596
    iput v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$LayoutParams;->x:I

    .line 597
    iput v0, p0, Lcom/glu/android/GluCanvasOverlayGroup$LayoutParams;->y:I

    .line 598
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 602
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    return-void
.end method
