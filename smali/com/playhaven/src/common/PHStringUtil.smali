.class public Lcom/playhaven/src/common/PHStringUtil;
.super Ljava/lang/Object;
.source "PHStringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    invoke-static {p0}, Lcom/playhaven/src/common/PHStringUtil;->dataDigest(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHStringUtil;->base64Encode([B)Ljava/lang/String;

    move-result-object v0

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 87
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {p0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string v3, "UTF8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static dataDigest(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 98
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 99
    const-string v2, "UTF8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 104
    :catch_1
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static dictFromQuery(Ljava/lang/String;)Ljava/util/Dictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Dictionary",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public static encodeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {p0}, Lcom/playhaven/src/common/PHStringUtil;->dataDigest(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/common/PHStringUtil;->hexEncode([B)Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method public static hexEncode([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 67
    array-length v4, p0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, p0, v0

    .line 68
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryFromDic(Ljava/util/Dictionary;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Dictionary",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static weakUrlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 29
    const/16 v1, 0xf

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, ";"

    aput-object v1, v2, v0

    const-string v1, "?"

    aput-object v1, v2, v4

    const-string v1, " "

    aput-object v1, v2, v5

    const-string v1, "&"

    aput-object v1, v2, v6

    const-string v1, "="

    aput-object v1, v2, v7

    const/4 v1, 0x5

    const-string v3, "$"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, ","

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "["

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "]"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "#"

    aput-object v3, v2, v1

    const/16 v1, 0xa

    const-string v3, "!"

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string v3, "\'"

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string v3, "("

    aput-object v3, v2, v1

    const/16 v1, 0xd

    const-string v3, ")"

    aput-object v3, v2, v1

    const/16 v1, 0xe

    const-string v3, "*"

    aput-object v3, v2, v1

    .line 35
    const/16 v1, 0xe

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "%3B"

    aput-object v1, v3, v0

    const-string v1, "%3F"

    aput-object v1, v3, v4

    const-string v1, "+"

    aput-object v1, v3, v5

    const-string v1, "%26"

    aput-object v1, v3, v6

    const-string v1, "%3D"

    aput-object v1, v3, v7

    const/4 v1, 0x5

    const-string v4, "%24"

    aput-object v4, v3, v1

    const/4 v1, 0x6

    const-string v4, "%2C"

    aput-object v4, v3, v1

    const/4 v1, 0x7

    const-string v4, "%5B"

    aput-object v4, v3, v1

    const/16 v1, 0x8

    const-string v4, "%5D"

    aput-object v4, v3, v1

    const/16 v1, 0x9

    const-string v4, "%21"

    aput-object v4, v3, v1

    const/16 v1, 0xa

    const-string v4, "%27"

    aput-object v4, v3, v1

    const/16 v1, 0xb

    const-string v4, "%28"

    aput-object v4, v3, v1

    const/16 v1, 0xc

    const-string v4, "%29"

    aput-object v4, v3, v1

    const/16 v1, 0xd

    const-string v4, "%2A"

    aput-object v4, v3, v1

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    :goto_0
    array-length v1, v2

    array-length v5, v3

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 46
    aget-object v5, v2, v0

    .line 47
    aget-object v6, v3, v0

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 51
    :goto_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v4, v1, v7, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
