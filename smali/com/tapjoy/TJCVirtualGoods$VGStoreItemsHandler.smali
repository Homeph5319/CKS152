.class public Lcom/tapjoy/TJCVirtualGoods$VGStoreItemsHandler;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VGStoreItemsHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseNodeForStoreItems(Lorg/w3c/dom/Node;)Lcom/tapjoy/VGStoreItem;
    .locals 9
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 5421
    const-string v6, ""

    .line 5422
    .local v6, "str":Ljava/lang/String;
    const/4 v5, 0x0

    .line 5424
    .local v5, "storeItem":Lcom/tapjoy/VGStoreItem;
    if-eqz p0, :cond_a

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 5426
    new-instance v5, Lcom/tapjoy/VGStoreItem;

    .end local v5    # "storeItem":Lcom/tapjoy/VGStoreItem;
    invoke-direct {v5}, Lcom/tapjoy/VGStoreItem;-><init>()V

    .restart local v5    # "storeItem":Lcom/tapjoy/VGStoreItem;
    move-object v0, p0

    .line 5428
    check-cast v0, Lorg/w3c/dom/Element;

    .line 5430
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v7, "VGStoreItemID"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 5431
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5432
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemID(Ljava/lang/String;)V

    .line 5434
    :cond_0
    const-string v7, "AppleProductID"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 5435
    if-eqz v6, :cond_1

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 5436
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setProductID(Ljava/lang/String;)V

    .line 5438
    :cond_1
    const-string v7, "Price"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 5439
    if-eqz v6, :cond_2

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 5440
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/tapjoy/VGStoreItem;->setPrice(I)V

    .line 5442
    :cond_2
    const-string v7, "Name"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 5443
    if-eqz v6, :cond_3

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 5444
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setName(Ljava/lang/String;)V

    .line 5446
    :cond_3
    const-string v7, "Description"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 5447
    if-eqz v6, :cond_4

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 5448
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setDescription(Ljava/lang/String;)V

    .line 5450
    :cond_4
    const-string v7, "VGStoreItemTypeName"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 5451
    if-eqz v6, :cond_5

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 5452
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemTypeName(Ljava/lang/String;)V

    .line 5454
    :cond_5
    const-string v7, "NumberOwned"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 5455
    if-eqz v6, :cond_6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 5456
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/tapjoy/VGStoreItem;->setNumberOwned(I)V

    .line 5458
    :cond_6
    const-string v7, "ThumbImageURL"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 5459
    if-eqz v6, :cond_7

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 5460
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setThumbImageUrl(Ljava/lang/String;)V

    .line 5462
    :cond_7
    const-string v7, "FullImageURL"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 5463
    if-eqz v6, :cond_8

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 5464
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setFullImageUrl(Ljava/lang/String;)V

    .line 5466
    :cond_8
    const-string v7, "DatafileURL"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 5467
    if-eqz v6, :cond_9

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 5468
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setDatafileUrl(Ljava/lang/String;)V

    .line 5472
    :cond_9
    invoke-static {p0}, Lcom/tapjoy/TJCVirtualGoods$VGStoreItemsHandler;->parseNodeForStoreItemsAttributes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemsAttributeValueList(Ljava/util/ArrayList;)V

    .line 5479
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_a
    :try_start_0
    invoke-virtual {v5}, Lcom/tapjoy/VGStoreItem;->getNumberOwned()I

    move-result v2

    .line 5480
    .local v2, "new_value":I
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$000()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoods$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5481
    .local v1, "myDB":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5483
    .local v4, "q":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE tapjoy_VGStoreItems SET ItemsOwned=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5484
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WHERE VGStoreItemID=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5485
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5489
    .local v3, "p":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE tapjoy_VGStoreItemAttribute SET AttributeValue=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5490
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WHERE VGStoreItemID=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND AttributeName=\'quantity\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5491
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5498
    .end local v1    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "new_value":I
    .end local v3    # "p":Ljava/lang/StringBuilder;
    .end local v4    # "q":Ljava/lang/StringBuilder;
    :goto_0
    return-object v5

    .line 5493
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private static parseNodeForStoreItemsAttributes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItemAttributeValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5503
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 5504
    .local v0, "element":Lorg/w3c/dom/Element;
    const/4 v2, 0x0

    .line 5505
    .local v2, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v5, ""

    .line 5507
    .local v5, "str":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5509
    .local v4, "storeItemAtrributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    const-string v6, "VGStoreItemAttributeValueReturnClass"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 5510
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 5512
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 5513
    const/4 v3, 0x0

    .line 5514
    .local v3, "storeItemAtrribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 5516
    new-instance v3, Lcom/tapjoy/VGStoreItemAttributeValue;

    .end local v3    # "storeItemAtrribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    invoke-direct {v3}, Lcom/tapjoy/VGStoreItemAttributeValue;-><init>()V

    .restart local v3    # "storeItemAtrribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    move-object v0, p0

    .line 5517
    check-cast v0, Lorg/w3c/dom/Element;

    .line 5519
    const-string v6, "AttributeType"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v5

    .line 5520
    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5521
    invoke-virtual {v3, v5}, Lcom/tapjoy/VGStoreItemAttributeValue;->setAttributeType(Ljava/lang/String;)V

    .line 5523
    :cond_0
    const-string v6, "AttributeValue"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v5

    .line 5524
    if-eqz v5, :cond_1

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5525
    invoke-virtual {v3, v5}, Lcom/tapjoy/VGStoreItemAttributeValue;->setAttributeValue(Ljava/lang/String;)V

    .line 5529
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5532
    .end local v3    # "storeItemAtrribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    :cond_2
    return-object v4
.end method

.method public static parseVG(Ljava/io/InputStream;ILandroid/content/Context;)Ljava/util/ArrayList;
    .locals 17
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "itemType"    # I
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TJCVirtualGoods$TJCException;
        }
    .end annotation

    .prologue
    .line 5322
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 5324
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v10, 0x0

    .line 5325
    .local v10, "nodelist":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .line 5326
    .local v9, "node":Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .line 5327
    .local v4, "element":Lorg/w3c/dom/Element;
    const-string v12, ""

    .line 5332
    .local v12, "str":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 5333
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 5335
    .local v2, "doc":Lorg/w3c/dom/Document;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5337
    .local v11, "storeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItem;>;"
    const-string v14, "UserAccountObject"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 5338
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$100()Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    move-result-object v13

    .line 5340
    .local v13, "userAcc":Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    if-nez v13, :cond_0

    .line 5342
    new-instance v13, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    .end local v13    # "userAcc":Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    invoke-direct {v13}, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;-><init>()V

    .line 5343
    .restart local v13    # "userAcc":Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoods;->access$102(Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;)Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    .line 5346
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v7, v14, :cond_4

    .line 5348
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 5349
    .local v6, "firstNode":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 5351
    move-object v0, v6

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    .line 5353
    const-string v14, "TapPoints"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-static {v14}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v12

    .line 5354
    if-eqz v12, :cond_1

    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 5356
    const-string v14, "Virtual Goods"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Virtual Currency: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5357
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v0}, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->setTapPoints(ILandroid/content/Context;)V

    .line 5360
    :cond_1
    const-string v14, "PointsID"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-static {v14}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v12

    .line 5361
    if-eqz v12, :cond_2

    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 5363
    invoke-virtual {v13, v12}, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->setPointsID(Ljava/lang/String;)V

    .line 5366
    :cond_2
    const-string v14, "CurrencyName"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-static {v14}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v12

    .line 5367
    if-eqz v12, :cond_3

    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 5369
    move-object/from16 v0, p2

    invoke-virtual {v13, v12, v0}, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->setCurrencyName(Ljava/lang/String;Landroid/content/Context;)V

    .line 5346
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5374
    .end local v6    # "firstNode":Lorg/w3c/dom/Node;
    :cond_4
    const-string v14, "VGStoreItemReturnClass"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 5375
    const/4 v7, 0x0

    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v7, v14, :cond_5

    .line 5377
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 5379
    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoods$VGStoreItemsHandler;->parseNodeForStoreItems(Lorg/w3c/dom/Node;)Lcom/tapjoy/VGStoreItem;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5375
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5383
    :cond_5
    const-string v14, "MoreDataAvailable"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 5384
    const/4 v8, 0x0

    .line 5386
    .local v8, "moreDataAvailable":I
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_6

    .line 5388
    move-object v0, v9

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    .line 5390
    invoke-static {v10}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v12

    .line 5391
    if-eqz v12, :cond_6

    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 5393
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 5396
    :cond_6
    if-nez p1, :cond_8

    .line 5397
    sput v8, Lcom/tapjoy/VGStoreItem;->availableItemsMoreDataAvailable:I

    .line 5402
    :cond_7
    :goto_2
    return-object v11

    .line 5398
    :cond_8
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_7

    .line 5399
    sput v8, Lcom/tapjoy/VGStoreItem;->purchasedItemsMoreDataAvailable:I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 5404
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "i":I
    .end local v8    # "moreDataAvailable":I
    .end local v11    # "storeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItem;>;"
    .end local v13    # "userAcc":Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    :catch_0
    move-exception v3

    .line 5406
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v14, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xe

    invoke-direct/range {v14 .. v16}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 5408
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    .line 5410
    .local v3, "e":Lorg/xml/sax/SAXException;
    new-instance v14, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xf

    invoke-direct/range {v14 .. v16}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v14

    .line 5412
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 5414
    .local v3, "e":Ljava/io/IOException;
    new-instance v14, Lcom/tapjoy/TJCVirtualGoods$TJCException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xd

    invoke-direct/range {v14 .. v16}, Lcom/tapjoy/TJCVirtualGoods$TJCException;-><init>(Ljava/lang/String;I)V

    throw v14
.end method
