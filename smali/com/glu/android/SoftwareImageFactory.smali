.class public Lcom/glu/android/SoftwareImageFactory;
.super Ljava/lang/Object;
.source "SoftwareImageFactory.java"


# static fields
.field public static final TJ_ARROW_HEIGHT_HVGA:I = 0x19

.field public static final TJ_ARROW_WIDTH_HVGA:I = 0xf

.field public static TJ_BORDER_SIZE:I

.field public static final TJ_GLOW_GRADIENT:[I

.field public static TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

.field public static TJ_PRICE_AREA:Landroid/graphics/Rect;

.field public static final TJ_SHADOW_GRADIENT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    .line 26
    sput v1, Lcom/glu/android/SoftwareImageFactory;->TJ_BORDER_SIZE:I

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/glu/android/SoftwareImageFactory;->TJ_SHADOW_GRADIENT:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/glu/android/SoftwareImageFactory;->TJ_GLOW_GRADIENT:[I

    return-void

    .line 30
    :array_0
    .array-data 4
        0x0
        0x10000000
    .end array-data

    .line 31
    :array_1
    .array-data 4
        0x10ffffff
        0xffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPrettyTapjoyBackground(II)Landroid/graphics/drawable/Drawable;
    .locals 25
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 35
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 36
    .local v15, "linePaint":Landroid/graphics/Paint;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    shr-int/lit8 v13, p1, 0x1

    .line 43
    .local v13, "halfHeight":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 44
    .local v18, "ret":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .local v2, "g":Landroid/graphics/Canvas;
    sget-object v3, Lcom/glu/android/ModuleSettings;->TJ_OUTER_GRADIENT:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v7, p0

    move/from16 v8, p1

    invoke-static/range {v2 .. v8}, Lcom/glu/android/GluUtil;->drawGradientRect(Landroid/graphics/Canvas;[IZIIII)V

    .line 46
    move/from16 v0, p0

    mul-int/lit16 v3, v0, 0xfb

    div-int/lit16 v0, v3, 0x15e

    move/from16 v20, v0

    .line 49
    .local v20, "startX":I
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    add-int/lit8 v4, p1, 0x1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 50
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    add-int/lit8 v4, v20, -0x1

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 51
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 52
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    add-int/lit8 v4, p1, -0x1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 54
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    add-int/lit8 v4, v20, 0x1

    const/16 v5, 0xf

    invoke-static {v5}, Lcom/glu/android/GluUtil;->scaleRelativeToG1WithSpecialTabletLogic(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 55
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    add-int/lit8 v4, p0, -0x1

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 56
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 57
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    add-int/lit8 v4, p1, -0x1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 60
    const/16 v24, 0x0

    .local v24, "y":I
    :goto_0
    move/from16 v0, v24

    if-gt v0, v13, :cond_0

    .line 62
    mul-int/lit8 v3, v24, 0xf

    div-int/lit8 v3, v3, 0x19

    add-int v22, v20, v3

    .line 63
    .local v22, "x":I
    const/4 v3, 0x0

    sget-object v4, Lcom/glu/android/ModuleSettings;->TJ_INNER_GRADIENT:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sget-object v5, Lcom/glu/android/ModuleSettings;->TJ_INNER_GRADIENT:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v3, v1, v4, v5}, Lcom/glu/android/GluUtil;->findMedianColor(IIIII)I

    move-result v3

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v24

    int-to-float v4, v0

    move/from16 v0, p0

    int-to-float v5, v0

    move/from16 v0, v24

    int-to-float v6, v0

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 65
    move/from16 v0, v22

    int-to-float v3, v0

    sub-int v4, p1, v24

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    move/from16 v0, p0

    int-to-float v5, v0

    sub-int v6, p1, v24

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 60
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 69
    .end local v22    # "x":I
    :cond_0
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/glu/android/GluUtil;->scaleRelativeToG1WithSpecialTabletLogic(I)I

    move-result v19

    .line 70
    .local v19, "shadowGradientWidth":I
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/glu/android/GluUtil;->scaleRelativeToG1WithSpecialTabletLogic(I)I

    move-result v9

    .line 71
    .local v9, "arrowExtenderOffset":I
    const/16 v3, 0xf

    invoke-static {v3}, Lcom/glu/android/GluUtil;->scaleRelativeToG1WithSpecialTabletLogic(I)I

    move-result v10

    .line 74
    .local v10, "arrowWidth":I
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    move/from16 v16, v13

    .line 75
    .local v16, "midpointY1":I
    :goto_1
    move/from16 v17, v13

    .line 76
    .local v17, "midpointY2":I
    const/16 v3, 0xf

    invoke-static {v3}, Lcom/glu/android/GluUtil;->scaleRelativeToG1WithSpecialTabletLogic(I)I

    move-result v23

    .line 78
    .local v23, "xOff":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v14, v0, :cond_2

    .line 80
    sub-int v3, v19, v14

    add-int v22, v20, v3

    .line 81
    .restart local v22    # "x":I
    add-int v3, v20, v19

    sget-object v4, Lcom/glu/android/SoftwareImageFactory;->TJ_SHADOW_GRADIENT:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sget-object v5, Lcom/glu/android/SoftwareImageFactory;->TJ_SHADOW_GRADIENT:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move/from16 v0, v22

    move/from16 v1, v20

    invoke-static {v0, v1, v3, v4, v5}, Lcom/glu/android/GluUtil;->findMedianColorAndAlpha(IIIII)I

    move-result v12

    .line 82
    .local v12, "color":I
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    move/from16 v0, v22

    int-to-float v3, v0

    const/4 v4, 0x0

    add-int v5, v22, v23

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    move/from16 v0, v16

    int-to-float v6, v0

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 84
    move/from16 v0, v22

    int-to-float v3, v0

    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    add-int v5, v22, v23

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    move/from16 v0, v17

    int-to-float v6, v0

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    add-int v3, v20, v19

    sget-object v4, Lcom/glu/android/SoftwareImageFactory;->TJ_GLOW_GRADIENT:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sget-object v5, Lcom/glu/android/SoftwareImageFactory;->TJ_GLOW_GRADIENT:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move/from16 v0, v22

    move/from16 v1, v20

    invoke-static {v0, v1, v3, v4, v5}, Lcom/glu/android/GluUtil;->findMedianColorAndAlpha(IIIII)I

    move-result v12

    .line 86
    sub-int v22, v20, v14

    .line 87
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    move/from16 v0, v22

    int-to-float v3, v0

    const/4 v4, 0x0

    add-int v5, v22, v23

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    move/from16 v0, v16

    int-to-float v6, v0

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    move/from16 v0, v22

    int-to-float v3, v0

    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    add-int v5, v22, v23

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    move/from16 v0, v17

    int-to-float v6, v0

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 78
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 74
    .end local v12    # "color":I
    .end local v14    # "i":I
    .end local v16    # "midpointY1":I
    .end local v17    # "midpointY2":I
    .end local v22    # "x":I
    .end local v23    # "xOff":I
    :cond_1
    add-int/lit8 v16, v13, -0x1

    goto/16 :goto_1

    .line 93
    .restart local v14    # "i":I
    .restart local v16    # "midpointY1":I
    .restart local v17    # "midpointY2":I
    .restart local v23    # "xOff":I
    :cond_2
    sub-int v3, v20, v19

    sub-int v22, v3, v9

    .line 94
    .restart local v22    # "x":I
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_GLOW_GRADIENT:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    move/from16 v0, v22

    int-to-float v3, v0

    const/4 v4, 0x0

    add-int v5, v22, v23

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    move/from16 v0, v16

    int-to-float v6, v0

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 96
    move/from16 v0, v22

    int-to-float v3, v0

    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    add-int v5, v22, v23

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    move/from16 v0, v17

    int-to-float v6, v0

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 101
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/glu/android/GluUtil;->scaleRelativeToG1WithSpecialTabletLogic(I)I

    move-result v11

    .line 102
    .local v11, "borderThickness":I
    sput v11, Lcom/glu/android/SoftwareImageFactory;->TJ_BORDER_SIZE:I

    .line 103
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sget v5, Lcom/glu/android/SoftwareImageFactory;->TJ_BORDER_SIZE:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 104
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/glu/android/SoftwareImageFactory;->TJ_BORDER_SIZE:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 105
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_PRICE_AREA:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sget v5, Lcom/glu/android/SoftwareImageFactory;->TJ_BORDER_SIZE:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 106
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/glu/android/SoftwareImageFactory;->TJ_BORDER_SIZE:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 107
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_ITEM_VALUE_AREA:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sget v5, Lcom/glu/android/SoftwareImageFactory;->TJ_BORDER_SIZE:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 108
    const/high16 v3, -0x1000000

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    const/16 v21, 0x0

    .local v21, "val":I
    :goto_3
    move/from16 v0, v21

    if-ge v0, v11, :cond_3

    .line 111
    const/4 v3, 0x0

    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, p0

    int-to-float v5, v0

    move/from16 v0, v21

    int-to-float v6, v0

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 112
    const/4 v3, 0x0

    sub-int v4, p1, v21

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    move/from16 v0, p0

    int-to-float v5, v0

    sub-int v6, p1, v21

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    move/from16 v0, v21

    int-to-float v3, v0

    const/4 v4, 0x0

    move/from16 v0, v21

    int-to-float v5, v0

    move/from16 v0, p1

    int-to-float v6, v0

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 114
    sub-int v3, p0, v21

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    const/4 v4, 0x0

    sub-int v5, p0, v21

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    move/from16 v0, p1

    int-to-float v6, v0

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 118
    :cond_3
    int-to-float v3, v11

    int-to-float v4, v11

    invoke-virtual {v2, v3, v4, v15}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 119
    sub-int v3, p0, v11

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    int-to-float v4, v11

    invoke-virtual {v2, v3, v4, v15}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 120
    int-to-float v3, v11

    sub-int v4, p1, v11

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4, v15}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 121
    sub-int v3, p0, v11

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    sub-int v4, p1, v11

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4, v15}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 122
    sget-object v3, Lcom/glu/android/SoftwareImageFactory;->TJ_GLOW_GRADIENT:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    add-int/lit8 v3, v11, 0x1

    int-to-float v3, v3

    int-to-float v4, v11

    sub-int v5, p0, v11

    add-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    int-to-float v6, v11

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 124
    add-int/lit8 v3, v11, 0x1

    int-to-float v3, v3

    sub-int v4, p1, v11

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    sub-int v5, p0, v11

    add-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    sub-int v6, p1, v11

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 125
    int-to-float v3, v11

    add-int/lit8 v4, v11, 0x1

    int-to-float v4, v4

    int-to-float v5, v11

    sub-int v6, p1, v11

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    sub-int v3, p0, v11

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v11, 0x1

    int-to-float v4, v4

    sub-int v5, p0, v11

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    sub-int v6, p1, v11

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    move-object v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 130
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v3
.end method
