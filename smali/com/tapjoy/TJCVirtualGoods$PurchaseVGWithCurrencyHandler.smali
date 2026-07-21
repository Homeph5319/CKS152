.class public Lcom/tapjoy/TJCVirtualGoods$PurchaseVGWithCurrencyHandler;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PurchaseVGWithCurrencyHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResponse(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x1

    .line 5737
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 5739
    .local v7, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-static/range {p1 .. p1}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v2

    .line 5743
    .local v2, "connectInstance":Lcom/tapjoy/TapjoyConnect;
    :try_start_0
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 5744
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 5746
    .local v4, "doc":Lorg/w3c/dom/Document;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5747
    .local v3, "connectReturnList":Ljava/util/ArrayList;
    const-string v13, "UserAccountObject"

    invoke-interface {v4, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 5750
    .local v10, "node":Lorg/w3c/dom/NodeList;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$100()Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    move-result-object v12

    .line 5751
    .local v12, "userAcc":Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    if-nez v12, :cond_0

    .line 5753
    new-instance v12, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    .end local v12    # "userAcc":Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    invoke-direct {v12}, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;-><init>()V

    .line 5754
    .restart local v12    # "userAcc":Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    invoke-static {v12}, Lcom/tapjoy/TJCVirtualGoods;->access$102(Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;)Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    .line 5757
    :cond_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v9, v13, :cond_4

    .line 5759
    invoke-interface {v10, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 5760
    .local v8, "firstNode":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    if-ne v13, v14, :cond_3

    .line 5762
    move-object v0, v8

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v6, v0

    .line 5764
    .local v6, "element":Lorg/w3c/dom/Element;
    const-string v13, "TapPoints"

    invoke-interface {v6, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    .line 5765
    .local v11, "str":Ljava/lang/String;
    if-eqz v11, :cond_1

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 5767
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->setTapPoints(ILandroid/content/Context;)V

    .line 5770
    :cond_1
    const-string v13, "PointsID"

    invoke-interface {v6, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    .line 5771
    if-eqz v11, :cond_2

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 5773
    invoke-virtual {v12, v11}, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->setPointsID(Ljava/lang/String;)V

    .line 5776
    :cond_2
    const-string v13, "CurrencyName"

    invoke-interface {v6, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    .line 5777
    if-eqz v11, :cond_3

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 5779
    move-object/from16 v0, p1

    invoke-virtual {v12, v11, v0}, Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;->setCurrencyName(Ljava/lang/String;Landroid/content/Context;)V

    .line 5757
    .end local v6    # "element":Lorg/w3c/dom/Element;
    .end local v11    # "str":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 5784
    .end local v8    # "firstNode":Lorg/w3c/dom/Node;
    :cond_4
    const-string v13, "TapjoyConnectReturnObject"

    invoke-interface {v4, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 5786
    const/4 v9, 0x0

    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v9, v13, :cond_7

    .line 5788
    invoke-interface {v10, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 5789
    .restart local v8    # "firstNode":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    if-ne v13, v14, :cond_5

    .line 5791
    move-object v0, v8

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v6, v0

    .line 5793
    .restart local v6    # "element":Lorg/w3c/dom/Element;
    const-string v13, "Message"

    invoke-interface {v6, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    .line 5794
    .restart local v11    # "str":Ljava/lang/String;
    if-eqz v11, :cond_6

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 5796
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5802
    :goto_2
    const-string v13, "Success"

    invoke-interface {v6, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    .line 5803
    if-eqz v11, :cond_8

    .line 5805
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5810
    :goto_3
    const-string v13, "ErrorMessage"

    invoke-interface {v6, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    .line 5811
    if-eqz v11, :cond_9

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 5813
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5786
    .end local v6    # "element":Lorg/w3c/dom/Element;
    .end local v11    # "str":Ljava/lang/String;
    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 5799
    .restart local v6    # "element":Lorg/w3c/dom/Element;
    .restart local v11    # "str":Ljava/lang/String;
    :cond_6
    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 5822
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "connectReturnList":Ljava/util/ArrayList;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "firstNode":Lorg/w3c/dom/Node;
    .end local v9    # "i":I
    .end local v10    # "node":Lorg/w3c/dom/NodeList;
    .end local v11    # "str":Ljava/lang/String;
    .end local v12    # "userAcc":Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    :catch_0
    move-exception v5

    .line 5824
    .local v5, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v13, "Tapjoy"

    const-string v14, "Connect Handler fail to parse invalid xml."

    invoke-static {v13, v14}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5834
    .end local v5    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_5
    const/4 v3, 0x0

    :cond_7
    return-object v3

    .line 5808
    .restart local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "connectReturnList":Ljava/util/ArrayList;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "element":Lorg/w3c/dom/Element;
    .restart local v8    # "firstNode":Lorg/w3c/dom/Node;
    .restart local v9    # "i":I
    .restart local v10    # "node":Lorg/w3c/dom/NodeList;
    .restart local v11    # "str":Ljava/lang/String;
    .restart local v12    # "userAcc":Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    :cond_8
    :try_start_1
    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 5826
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "connectReturnList":Ljava/util/ArrayList;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "firstNode":Lorg/w3c/dom/Node;
    .end local v9    # "i":I
    .end local v10    # "node":Lorg/w3c/dom/NodeList;
    .end local v11    # "str":Ljava/lang/String;
    .end local v12    # "userAcc":Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    :catch_1
    move-exception v5

    .line 5828
    .local v5, "e":Lorg/xml/sax/SAXException;
    const-string v13, "Tapjoy"

    const-string v14, "Connect Handler fail to parse invalid xml."

    invoke-static {v13, v14}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 5816
    .end local v5    # "e":Lorg/xml/sax/SAXException;
    .restart local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "connectReturnList":Ljava/util/ArrayList;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "element":Lorg/w3c/dom/Element;
    .restart local v8    # "firstNode":Lorg/w3c/dom/Node;
    .restart local v9    # "i":I
    .restart local v10    # "node":Lorg/w3c/dom/NodeList;
    .restart local v11    # "str":Ljava/lang/String;
    .restart local v12    # "userAcc":Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    :cond_9
    :try_start_2
    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 5830
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "connectReturnList":Ljava/util/ArrayList;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "element":Lorg/w3c/dom/Element;
    .end local v8    # "firstNode":Lorg/w3c/dom/Node;
    .end local v9    # "i":I
    .end local v10    # "node":Lorg/w3c/dom/NodeList;
    .end local v11    # "str":Ljava/lang/String;
    .end local v12    # "userAcc":Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    :catch_2
    move-exception v5

    .line 5832
    .local v5, "e":Ljava/io/IOException;
    const-string v13, "Tapjoy"

    const-string v14, "Connect Handler fails."

    invoke-static {v13, v14}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method
