.class public Lcom/glu/android/GluTapjoy$TapjoyItem;
.super Ljava/lang/Object;
.source "GluTapjoy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GluTapjoy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TapjoyItem"
.end annotation


# instance fields
.field public itemCount:I

.field public itemId:Ljava/lang/String;

.field public reserved:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ii"    # Ljava/lang/String;
    .param p2, "ic"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluTapjoy$TapjoyItem;->itemId:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/GluTapjoy$TapjoyItem;->itemCount:I

    .line 35
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/glu/android/GluTapjoy$TapjoyItem;->reserved:[B

    .line 39
    iput-object p1, p0, Lcom/glu/android/GluTapjoy$TapjoyItem;->itemId:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/glu/android/GluTapjoy$TapjoyItem;->itemCount:I

    .line 41
    iget-object v0, p0, Lcom/glu/android/GluTapjoy$TapjoyItem;->reserved:[B

    invoke-static {v0}, Lcom/glu/android/GluUtil;->zero([B)V

    .line 42
    return-void
.end method
