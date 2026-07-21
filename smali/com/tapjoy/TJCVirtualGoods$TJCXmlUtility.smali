.class public Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TJCXmlUtility"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNodeAttributeTrimValue(Lorg/w3c/dom/NodeList;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "nodeList"    # Lorg/w3c/dom/NodeList;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5613
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 5614
    .local v0, "element":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 5616
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5617
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5618
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 5622
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static getNodeTrimValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 6
    .param p0, "nd"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v4, 0x0

    .line 5570
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 5571
    .local v0, "element":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_2

    .line 5573
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 5574
    .local v1, "itemNodeList":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 5575
    .local v2, "node":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_1

    .line 5577
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 5578
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5586
    .end local v1    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v2    # "node":Lorg/w3c/dom/Node;
    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v1    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .restart local v2    # "node":Lorg/w3c/dom/Node;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_0
    move-object v3, v4

    .line 5581
    goto :goto_0

    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    move-object v3, v4

    .line 5584
    goto :goto_0

    .end local v1    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_2
    move-object v3, v4

    .line 5586
    goto :goto_0
.end method

.method public static getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 9
    .param p0, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v6, 0x0

    .line 5541
    const/4 v7, 0x0

    invoke-interface {p0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 5542
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v5, ""

    .line 5544
    .local v5, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 5546
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 5548
    .local v2, "itemNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 5549
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 5552
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 5553
    .local v4, "node":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_0

    .line 5555
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

    .line 5549
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5559
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_1
    if-eqz v5, :cond_2

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 5560
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 5565
    .end local v1    # "i":I
    .end local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "length":I
    :cond_2
    return-object v6
.end method

.method public static getNodeValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 6
    .param p0, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5592
    invoke-interface {p0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 5593
    .local v0, "element":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_2

    .line 5595
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 5596
    .local v1, "itemNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 5597
    .local v2, "node":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_1

    .line 5599
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 5600
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5608
    .end local v1    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v2    # "node":Lorg/w3c/dom/Node;
    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v1    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .restart local v2    # "node":Lorg/w3c/dom/Node;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_0
    move-object v3, v4

    .line 5603
    goto :goto_0

    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    move-object v3, v4

    .line 5606
    goto :goto_0

    .end local v1    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_2
    move-object v3, v4

    .line 5608
    goto :goto_0
.end method
