.class public Lcom/tapjoy/TapjoyDisplayAd;
.super Ljava/lang/Object;
.source "TapjoyDisplayAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;
    }
.end annotation


# static fields
.field private static final DECODE_TABLE:[B

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field static final TJC_DISPLAY_AD_URL_PATH:Ljava/lang/String; = "display_ad?"

.field public static adClickURL:Ljava/lang/String;

.field public static bitmapImage:Landroid/graphics/Bitmap;

.field private static displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;


# instance fields
.field final TAPJOY_DISPLAY_AD:Ljava/lang/String;

.field adView:Landroid/view/View;

.field private baseURL:Ljava/lang/String;

.field private buffer:[B

.field private clickURL:Ljava/lang/String;

.field private connectTask:Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;

.field private context:Landroid/content/Context;

.field private eof:Z

.field private modulus:I

.field private pos:I

.field private urlParams:Ljava/lang/String;

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 247
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->DECODE_TABLE:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->connectTask:Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->clickURL:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->baseURL:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->urlParams:Ljava/lang/String;

    .line 44
    const-string v0, "Display Ad"

    iput-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->TAPJOY_DISPLAY_AD:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd;->context:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyDisplayAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/tapjoy/TapjoyDisplayAd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyDisplayAd;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->clickURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tapjoy/TapjoyDisplayAd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyDisplayAd;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->urlParams:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method static synthetic access$400()Lcom/tapjoy/TapjoyDisplayAdNotifier;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/tapjoy/TapjoyDisplayAd;->displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tapjoy/TapjoyDisplayAd;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyDisplayAd;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->buildResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/tapjoy/TapjoyDisplayAd;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyDisplayAd;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->context:Landroid/content/Context;

    return-object v0
.end method

.method private buildResponse(Ljava/lang/String;)Z
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v7, 0x0

    .line 116
    .local v7, "retValue":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 122
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 124
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 125
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 127
    .local v0, "document":Lorg/w3c/dom/Document;
    const-string v8, "ClickURL"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/tapjoy/TapjoyDisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/tapjoy/TapjoyDisplayAd;->adClickURL:Ljava/lang/String;

    .line 128
    const-string v8, "Image"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/tapjoy/TapjoyDisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "image_data":Ljava/lang/String;
    const-string v8, "Display Ad"

    const-string v9, "decoding..."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/tapjoy/TapjoyDisplayAd;->decodeBase64([BII)V

    .line 141
    const-string v8, "Display Ad"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v8, "Display Ad"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buffer_size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    const/4 v9, 0x0

    iget v10, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    .line 150
    const-string v8, "Display Ad"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "image: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Lcom/tapjoy/TapjoyDisplayAd;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    .line 156
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    sget-object v8, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sget-object v9, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 157
    .local v6, "layout":Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v10, Lcom/tapjoy/TapjoyDisplayAd;->bitmapImage:Landroid/graphics/Bitmap;

    invoke-direct {v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v8, p0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    new-instance v9, Lcom/tapjoy/TapjoyDisplayAd$1;

    invoke-direct {v9, p0}, Lcom/tapjoy/TapjoyDisplayAd$1;-><init>(Lcom/tapjoy/TapjoyDisplayAd;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget-object v8, Lcom/tapjoy/TapjoyDisplayAd;->displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

    iget-object v9, p0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/tapjoy/TapjoyDisplayAdNotifier;->getDisplayAdResponse(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    const/4 v7, 0x1

    .line 183
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "image_data":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "layout":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return v7

    .line 178
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "Display Ad"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing XML: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 9
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v6, 0x0

    .line 194
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 195
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v5, ""

    .line 196
    .local v5, "nodeValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 198
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 200
    .local v2, "itemNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 201
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 203
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 204
    .local v4, "node":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_0

    .line 205
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 201
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_1
    if-eqz v5, :cond_2

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 210
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 217
    .end local v1    # "i":I
    .end local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "length":I
    :cond_2
    return-object v6
.end method


# virtual methods
.method decodeBase64([BII)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 346
    array-length v4, p1

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    .line 347
    iput v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    .line 348
    iput-boolean v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->eof:Z

    .line 349
    iput v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    .line 355
    if-gez p3, :cond_0

    .line 357
    iput-boolean v7, p0, Lcom/tapjoy/TapjoyDisplayAd;->eof:Z

    .line 359
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_0
    if-ge v1, p3, :cond_4

    .line 364
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 366
    .local v0, "b":B
    const/16 v4, 0x3d

    if-ne v0, v4, :cond_2

    .line 369
    iput-boolean v7, p0, Lcom/tapjoy/TapjoyDisplayAd;->eof:Z

    .line 397
    .end local v0    # "b":B
    :goto_1
    iget-boolean v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->eof:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    if-eqz v4, :cond_1

    .line 399
    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    .line 400
    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    packed-switch v4, :pswitch_data_0

    .line 412
    :cond_1
    :goto_2
    return-void

    .line 374
    .restart local v0    # "b":B
    :cond_2
    if-ltz v0, :cond_3

    sget-object v4, Lcom/tapjoy/TapjoyDisplayAd;->DECODE_TABLE:[B

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 376
    sget-object v4, Lcom/tapjoy/TapjoyDisplayAd;->DECODE_TABLE:[B

    aget-byte v3, v4, v0

    .line 377
    .local v3, "result":I
    if-ltz v3, :cond_3

    .line 379
    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    .line 380
    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    .line 381
    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->modulus:I

    if-nez v4, :cond_3

    .line 383
    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    iget v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    iget v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 384
    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    iget v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    iget v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 385
    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    iget v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    iget v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 359
    .end local v3    # "result":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto :goto_0

    .line 403
    .end local v0    # "b":B
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_0
    iget v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    .line 404
    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    iget v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    iget v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 407
    :pswitch_1
    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    iget v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    iget v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 408
    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd;->buffer:[B

    iget v5, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->pos:I

    iget v6, p0, Lcom/tapjoy/TapjoyDisplayAd;->x:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto/16 :goto_2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    :cond_4
    move p2, v2

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDisplayAdDataFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 2
    .param p1, "urlBase"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd;->baseURL:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd;->baseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display_ad?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->clickURL:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/tapjoy/TapjoyDisplayAd;->urlParams:Ljava/lang/String;

    .line 69
    sput-object p3, Lcom/tapjoy/TapjoyDisplayAd;->displayAdNotifier:Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .line 71
    new-instance v0, Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;-><init>(Lcom/tapjoy/TapjoyDisplayAd;Lcom/tapjoy/TapjoyDisplayAd$1;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->connectTask:Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;

    .line 72
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd;->connectTask:Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyDisplayAd$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    return-void
.end method
