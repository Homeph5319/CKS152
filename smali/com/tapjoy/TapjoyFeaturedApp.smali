.class public Lcom/tapjoy/TapjoyFeaturedApp;
.super Ljava/lang/Object;
.source "TapjoyFeaturedApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyFeaturedApp$1;,
        Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;
    }
.end annotation


# static fields
.field static final TJC_FEATURED_APP_URL_PATH:Ljava/lang/String; = "get_offers/featured?"

.field private static featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;


# instance fields
.field final PREFS_NAME:Ljava/lang/String;

.field final TAPJOY_FEATURED_APP:Ljava/lang/String;

.field private baseURL:Ljava/lang/String;

.field private clickURL:Ljava/lang/String;

.field private connectTask:Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;

.field private context:Landroid/content/Context;

.field private displayCount:I

.field private featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

.field private urlParams:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->connectTask:Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;

    .line 21
    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->clickURL:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->baseURL:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->urlParams:Ljava/lang/String;

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->displayCount:I

    .line 35
    const-string v0, "TapjoyFeaturedAppPrefs"

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->PREFS_NAME:Ljava/lang/String;

    .line 36
    const-string v0, "Featured App"

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->TAPJOY_FEATURED_APP:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/tapjoy/TapjoyFeaturedApp;->context:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/tapjoy/TapjoyFeaturedApp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyFeaturedApp;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->clickURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tapjoy/TapjoyFeaturedApp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyFeaturedApp;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->urlParams:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tapjoy/TapjoyFeaturedApp;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TapjoyFeaturedApp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyFeaturedApp;->buildResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Lcom/tapjoy/TapjoyFeaturedAppNotifier;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    return-object v0
.end method

.method private buildResponse(Ljava/lang/String;)Z
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v6, 0x0

    .line 113
    .local v6, "retValue":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 119
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 121
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 122
    .local v2, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 124
    .local v1, "document":Lorg/w3c/dom/Document;
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "Cost"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/tapjoy/TapjoyFeaturedApp;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->cost:Ljava/lang/String;

    .line 126
    const-string v7, "Amount"

    invoke-interface {v1, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/tapjoy/TapjoyFeaturedApp;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "amount":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 129
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->amount:I

    .line 131
    :cond_0
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "Description"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/tapjoy/TapjoyFeaturedApp;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->description:Ljava/lang/String;

    .line 132
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "IconURL"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/tapjoy/TapjoyFeaturedApp;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->iconURL:Ljava/lang/String;

    .line 133
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "Name"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/tapjoy/TapjoyFeaturedApp;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->name:Ljava/lang/String;

    .line 134
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "RedirectURL"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/tapjoy/TapjoyFeaturedApp;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->redirectURL:Ljava/lang/String;

    .line 135
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "StoreID"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/tapjoy/TapjoyFeaturedApp;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    .line 136
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    const-string v8, "FullScreenAdURL"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/tapjoy/TapjoyFeaturedApp;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    .line 138
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cost: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->cost:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "amount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->amount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "description: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->description:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "iconURL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->iconURL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "redirectURL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->redirectURL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "storeID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fullScreenAdURL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v9, v9, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v7, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v7, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->fullScreenAdURL:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_2

    .line 149
    :cond_1
    const/4 v6, 0x0

    .line 159
    .end local v0    # "amount":Ljava/lang/String;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v2    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v6, :cond_4

    .line 162
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v7, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/tapjoy/TapjoyFeaturedApp;->getDisplayCountForStoreID(Ljava/lang/String;)I

    move-result v7

    iget v8, p0, Lcom/tapjoy/TapjoyFeaturedApp;->displayCount:I

    if-ge v7, v8, :cond_3

    .line 165
    sget-object v7, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    iget-object v8, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    invoke-interface {v7, v8}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponse(Lcom/tapjoy/TapjoyFeaturedAppObject;)V

    .line 166
    iget-object v7, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    iget-object v7, v7, Lcom/tapjoy/TapjoyFeaturedAppObject;->storeID:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/tapjoy/TapjoyFeaturedApp;->incrementDisplayCountForStoreID(Ljava/lang/String;)V

    .line 179
    :goto_1
    return v6

    .line 151
    .restart local v0    # "amount":Ljava/lang/String;
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    .restart local v2    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "amount":Ljava/lang/String;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v2    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "Featured App"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing XML: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v7, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    const-string v8, "Featured App to display has exceeded display count"

    invoke-interface {v7, v8}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponseFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_4
    sget-object v7, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    const-string v8, "Failed to parse XML file from response"

    invoke-interface {v7, v8}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponseFailed(Ljava/lang/String;)V

    .line 176
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private getDisplayCountForStoreID(Ljava/lang/String;)I
    .locals 5
    .param p1, "storeID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 225
    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedApp;->context:Landroid/content/Context;

    const-string v3, "TapjoyFeaturedAppPrefs"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 226
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 228
    .local v0, "count":I
    const-string v2, "Featured App"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", storeID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return v0
.end method

.method private getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 9
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v6, 0x0

    .line 190
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 191
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v5, ""

    .line 192
    .local v5, "nodeValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 194
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 196
    .local v2, "itemNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 197
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 199
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 200
    .local v4, "node":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_0

    .line 201
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

    .line 197
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_1
    if-eqz v5, :cond_2

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 206
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 213
    .end local v1    # "i":I
    .end local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "length":I
    :cond_2
    return-object v6
.end method

.method private incrementDisplayCountForStoreID(Ljava/lang/String;)V
    .locals 6
    .param p1, "storeID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 240
    iget-object v3, p0, Lcom/tapjoy/TapjoyFeaturedApp;->context:Landroid/content/Context;

    const-string v4, "TapjoyFeaturedAppPrefs"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 241
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 243
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 246
    const-string v3, "Featured App"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incrementDisplayCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", storeID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    return-void
.end method


# virtual methods
.method public getFeaturedAppDataFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
    .locals 2
    .param p1, "urlBase"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "notifier"    # Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tapjoy/TapjoyFeaturedApp;->baseURL:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyFeaturedApp;->baseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "get_offers/featured?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->clickURL:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/tapjoy/TapjoyFeaturedApp;->urlParams:Ljava/lang/String;

    .line 60
    sput-object p3, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    .line 62
    new-instance v0, Lcom/tapjoy/TapjoyFeaturedAppObject;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyFeaturedAppObject;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    .line 64
    new-instance v0, Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;-><init>(Lcom/tapjoy/TapjoyFeaturedApp;Lcom/tapjoy/TapjoyFeaturedApp$1;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->connectTask:Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;

    .line 65
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->connectTask:Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyFeaturedApp$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    return-void
.end method

.method public getFeaturedAppObject()Lcom/tapjoy/TapjoyFeaturedAppObject;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppObject:Lcom/tapjoy/TapjoyFeaturedAppObject;

    return-object v0
.end method

.method public setDisplayCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/tapjoy/TapjoyFeaturedApp;->displayCount:I

    .line 76
    return-void
.end method
