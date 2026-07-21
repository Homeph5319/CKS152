.class public Lcom/glu/android/GluCallbacks;
.super Ljava/lang/Object;
.source "GluCallbacks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buttonPromptCallback(I)V
    .locals 0
    .param p0, "which"    # I

    .prologue
    .line 10
    invoke-static {p0}, Lcom/glu/android/GNSWidgetCollection;->buttonPromptCallback(I)V

    return-void
.end method

.method public static iCallback(I)V
    .locals 0
    .param p0, "which"    # I

    .prologue
    .line 7
    invoke-static {p0}, Lcom/glu/android/Debug;->iCallback(I)V

    return-void
.end method

.method public static quitGameCallback(I)V
    .locals 0
    .param p0, "which"    # I

    .prologue
    .line 9
    invoke-static {p0}, Lcom/glu/android/GluUtil;->quitGameCallback(I)V

    return-void
.end method

.method public static sdDialogCallback(I)V
    .locals 0
    .param p0, "which"    # I

    .prologue
    .line 8
    invoke-static {p0}, Lcom/glu/android/GameRenderer;->sdDialogCallback(I)V

    return-void
.end method
