.class public Lcom/glu/android/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static HTC_DESIRE:Z

.field public static HTC_EVO_4G:Z

.field public static HTC_EVO_4G_SHIFT:Z

.field public static HTC_INCREDIBLE:Z

.field public static HTC_NEXUS_ONE:Z

.field public static HTC_THUNDERBOLT:Z

.field public static HTC_VISION:Z

.field public static LG_C710H:Z

.field public static LG_VS740:Z

.field public static MOTOROLA_DROID:Z

.field public static MOTOROLA_DROID_X:Z

.field public static MOTOROLA_MB860:Z

.field public static NETWORK_LTE:Z

.field public static SAMSUNG_I400:Z

.field public static SONY_ZEUS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lcom/glu/android/Device;->HTC_DESIRE:Z

    .line 15
    sput-boolean v0, Lcom/glu/android/Device;->HTC_EVO_4G:Z

    .line 16
    sput-boolean v0, Lcom/glu/android/Device;->HTC_EVO_4G_SHIFT:Z

    .line 17
    sput-boolean v0, Lcom/glu/android/Device;->HTC_INCREDIBLE:Z

    .line 18
    sput-boolean v0, Lcom/glu/android/Device;->HTC_NEXUS_ONE:Z

    .line 19
    sput-boolean v0, Lcom/glu/android/Device;->HTC_THUNDERBOLT:Z

    .line 20
    sput-boolean v0, Lcom/glu/android/Device;->HTC_VISION:Z

    .line 21
    sput-boolean v0, Lcom/glu/android/Device;->LG_C710H:Z

    .line 22
    sput-boolean v0, Lcom/glu/android/Device;->LG_VS740:Z

    .line 23
    sput-boolean v0, Lcom/glu/android/Device;->MOTOROLA_DROID:Z

    .line 24
    sput-boolean v0, Lcom/glu/android/Device;->MOTOROLA_DROID_X:Z

    .line 25
    sput-boolean v0, Lcom/glu/android/Device;->MOTOROLA_MB860:Z

    .line 26
    sput-boolean v0, Lcom/glu/android/Device;->SAMSUNG_I400:Z

    .line 27
    sput-boolean v0, Lcom/glu/android/Device;->SONY_ZEUS:Z

    .line 30
    sput-boolean v0, Lcom/glu/android/Device;->NETWORK_LTE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apacheCausesOOMError()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/glu/android/Device;->HTC_THUNDERBOLT:Z

    return v0
.end method

.method public static badlyPositionedMenuKeys()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/glu/android/Device;->SAMSUNG_I400:Z

    return v0
.end method

.method public static downgradeToHVGA()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public static downgradeToWVGA()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public static isLowHeapVGA()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/glu/android/Device;->MOTOROLA_DROID:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/glu/android/Device;->LG_VS740:Z

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static multiTouchBroken()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-static {}, Lcom/glu/android/GluUtil;->determineDistinctMultiTouchBroken()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/glu/android/Device;->HTC_NEXUS_ONE:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/glu/android/Device;->HTC_DESIRE:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static multiTouchSticks()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/glu/android/Device;->MOTOROLA_DROID_X:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/glu/android/Device;->MOTOROLA_DROID:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setupDeviceSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "deviceModel"    # Ljava/lang/String;
    .param p1, "deviceManufacturer"    # Ljava/lang/String;
    .param p2, "deviceDevice"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    const-string v0, "HTC Desire"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/glu/android/Device;->HTC_DESIRE:Z

    .line 36
    const-string v0, "ADR6300"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_3

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/glu/android/Device;->HTC_INCREDIBLE:Z

    .line 37
    const-string v0, "Nexus One"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_4

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/glu/android/Device;->HTC_NEXUS_ONE:Z

    .line 38
    const-string v0, "Droid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Milestone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/glu/android/Device;->MOTOROLA_DROID:Z

    .line 39
    const-string v0, "MB810"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v0, "DROIDX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_6

    :cond_1
    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/glu/android/Device;->MOTOROLA_DROID_X:Z

    .line 40
    const-string v0, "aries"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_7

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/glu/android/Device;->SAMSUNG_I400:Z

    .line 41
    const-string v0, "C710h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_8

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/glu/android/Device;->LG_C710H:Z

    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "aloha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "lg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_9

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/glu/android/Device;->LG_VS740:Z

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "olympus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "motorola"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_a

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/glu/android/Device;->MOTOROLA_MB860:Z

    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vision"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "htc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_b

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/glu/android/Device;->HTC_VISION:Z

    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "supersonic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "htc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_c

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/glu/android/Device;->HTC_EVO_4G:Z

    .line 46
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "speedy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "htc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_d

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/glu/android/Device;->HTC_EVO_4G_SHIFT:Z

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mecha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "htc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_e

    move v0, v1

    :goto_c
    sput-boolean v0, Lcom/glu/android/Device;->HTC_THUNDERBOLT:Z

    .line 49
    const-string v0, "Sony Ericsson"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "R800"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_d
    sput-boolean v1, Lcom/glu/android/Device;->SONY_ZEUS:Z

    .line 51
    invoke-static {}, Lcom/glu/android/GluUtil;->isUserOnLTE()Z

    move-result v0

    sput-boolean v0, Lcom/glu/android/Device;->NETWORK_LTE:Z

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device... lte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/glu/android/Device;->NETWORK_LTE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 53
    return-void

    :cond_2
    move v0, v2

    .line 35
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 36
    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 37
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 38
    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 39
    goto/16 :goto_4

    :cond_7
    move v0, v2

    .line 40
    goto/16 :goto_5

    :cond_8
    move v0, v2

    .line 41
    goto/16 :goto_6

    :cond_9
    move v0, v2

    .line 42
    goto/16 :goto_7

    :cond_a
    move v0, v2

    .line 43
    goto/16 :goto_8

    :cond_b
    move v0, v2

    .line 44
    goto/16 :goto_9

    :cond_c
    move v0, v2

    .line 45
    goto/16 :goto_a

    :cond_d
    move v0, v2

    .line 46
    goto :goto_b

    :cond_e
    move v0, v2

    .line 47
    goto :goto_c

    :cond_f
    move v1, v2

    .line 49
    goto :goto_d
.end method

.method public static useDisplayListDroid()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public static useDisplayListTypical()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/glu/android/Device;->HTC_NEXUS_ONE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/glu/android/Device;->HTC_DESIRE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/glu/android/Device;->HTC_INCREDIBLE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/glu/android/Device;->LG_C710H:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/glu/android/Device;->LG_VS740:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/glu/android/Device;->HTC_VISION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/glu/android/Device;->HTC_EVO_4G:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/glu/android/Device;->HTC_THUNDERBOLT:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static usesPSPControls()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/glu/android/Device;->SONY_ZEUS:Z

    return v0
.end method
