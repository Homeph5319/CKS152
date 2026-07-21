.class public Lcom/glu/android/GluBokuIAP;
.super Lcom/glu/android/IAP$DummyIAP;
.source "GluBokuIAP.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/glu/android/IAP$DummyIAP;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method
