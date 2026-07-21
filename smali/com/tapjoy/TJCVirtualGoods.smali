.class public Lcom/tapjoy/TJCVirtualGoods;
.super Landroid/app/Activity;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJCVirtualGoods$FocusListener;,
        Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;,
        Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;,
        Lcom/tapjoy/TJCVirtualGoods$PurchaseVGWithCurrencyHandler;,
        Lcom/tapjoy/TJCVirtualGoods$TJCUtility;,
        Lcom/tapjoy/TJCVirtualGoods$TJCXmlUtility;,
        Lcom/tapjoy/TJCVirtualGoods$VGStoreItemsHandler;,
        Lcom/tapjoy/TJCVirtualGoods$TJCStringUtility;,
        Lcom/tapjoy/TJCVirtualGoods$TJCException;,
        Lcom/tapjoy/TJCVirtualGoods$TJCSQLLiteDatabase;,
        Lcom/tapjoy/TJCVirtualGoods$TapjoyDatabaseUtil;,
        Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;,
        Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;,
        Lcom/tapjoy/TJCVirtualGoods$TJCWebServiceConnection;,
        Lcom/tapjoy/TJCVirtualGoods$DialogStatus;,
        Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;,
        Lcom/tapjoy/TJCVirtualGoods$DetailView;,
        Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;,
        Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;,
        Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;
    }
.end annotation


# static fields
.field public static final NETWORK_DOWN:I = 0xb

.field public static final NETWORK_TIME_OUT:I = 0xc

.field public static final Network_Down:Ljava/lang/String; = "Service is unreachable.\nDo you want to try again?"

.field public static final PARSER_CONFIGURATION_EXCEPTION:I = 0xe

.field public static final PREFS_File_NAME:Ljava/lang/String; = "TJCPrefsFile"

.field private static final PURCHASED_ITEM:I = 0x2

.field public static final RESPONSE_FAIL:I = 0xd

.field public static final SAX_EXCEPTION:I = 0xf

.field private static final STORE_ITEM:I = 0x0

.field public static final TAPJOY:Ljava/lang/String; = "Tapjoy"

.field public static final TAPJOY_DATABASE:Ljava/lang/String; = "Database"

.field public static final TAPJOY_DOWNLOADVIRTUALGOOD:Ljava/lang/String; = "DownloadVirtualGood"

.field public static final TAPJOY_DOWNLOAD_COMPLETED:Ljava/lang/String; = "Download Completed"

.field public static final TAPJOY_DOWNLOAD_PENDING:Ljava/lang/String; = "Download Pending"

.field public static final TAPJOY_ERROR_DOWNLOAD_FAIL:Ljava/lang/String; = "Download Failed"

.field public static final TAPJOY_FILE_SYSTEM:Ljava/lang/String; = "File System"

.field public static final TAPJOY_VIRTUAL_GOODS:Ljava/lang/String; = "Virtual Goods"

.field static final TJC_VG_GET_ALL_URL_PATH:Ljava/lang/String; = "get_vg_store_items/all?"

.field static final TJC_VG_GET_PURCHASED_URL_PATH:Ljava/lang/String; = "get_vg_store_items/purchased?"

.field static final TJC_VG_PURCHASE_WITH_CURRENCY_URL_PATH:Ljava/lang/String; = "purchase_vg?"

.field public static VG_STATUS_DOWNLOAD_SUCCESS_TO_PHONE:I = 0x0

.field public static VG_STATUS_DOWNLOAD_SUCCESS_TO_SD_CARD:I = 0x0

.field public static VG_STATUS_DOWNLOAD_ZIP_FILE_TO_PHONE:I = 0x0

.field public static VG_STATUS_DOWNLOAD_ZIP_FILE_TO_SD_CARD:I = 0x0

.field public static VG_STATUS_EXTRACT_FILES_TO_PHONE:I = 0x0

.field public static VG_STATUS_EXTRACT_FILES_TO_SD_CARD:I = 0x0

.field public static VG_STATUS_FAIL:I = 0x0

.field public static VG_STATUS_INIT:I = 0x0

.field public static VG_STATUS_NO_DOWNLOAD_LINK:I = 0x0

.field public static VG_STATUS_START_DOWNLOAD:I = 0x0

.field private static clientPackage:Ljava/lang/String; = null

.field private static ctx:Landroid/content/Context; = null

.field static dataSavedAtSDCard:Z = false

.field public static detailDescQuantity:Landroid/widget/TextView; = null

.field public static doNotify:Z = false

.field private static downloadStarted:Z = false

.field public static itemIconDrawable:Landroid/graphics/drawable/Drawable; = null

.field public static offersFromVG:Z = false

.field private static retryDetailBtn:Landroid/widget/Button; = null

.field private static showingCachedItemsDialog:Z = false

.field private static storeNoData:Landroid/widget/TextView; = null

.field public static final tapjoyWebServiceURL:Ljava/lang/String; = "https://ws.tapjoyads.com/"

.field private static urlParams:Ljava/lang/String;

.field private static userAccountObject:Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

.field public static vgFromDownloadedVG:Z

.field public static vgFromOffers:Z

.field private static yourItemNoData:Landroid/widget/TextView;


# instance fields
.field private action:Landroid/widget/Button;

.field private actionTxt:Landroid/widget/TextView;

.field allItemAlert:Landroid/app/AlertDialog;

.field asyncTaskPool:Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

.field private checkPurchased:Ljava/lang/Boolean;

.field private connectInstance:Lcom/tapjoy/TapjoyConnect;

.field cornerAll:[F

.field cornerLeft:[F

.field cornerNone:[F

.field cornerRight:[F

.field private currencyName:Ljava/lang/String;

.field private currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

.field private detail:Lcom/tapjoy/TJCVirtualGoods$DetailView;

.field private detailProgressBar:Landroid/widget/ProgressBar;

.field private detailView:Landroid/widget/LinearLayout;

.field private dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

.field private errmsg:Ljava/lang/String;

.field private errorMsgDetail:Landroid/widget/ImageView;

.field private exceptionDialog:Landroid/app/Dialog;

.field private fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

.field private fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

.field private getItemDialog:Landroid/app/Dialog;

.field private getMoreItemDialog:Landroid/app/Dialog;

.field private getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

.field private isItemDetailView:Z

.field private itemDownloadedDialog:Landroid/app/Dialog;

.field private itemIndex:I

.field private morePurchasedItem:Landroid/widget/Button;

.field morePurchasedItemListener:Landroid/view/View$OnClickListener;

.field private moreStoreItems:Landroid/widget/Button;

.field moreStoreItemsListener:Landroid/view/View$OnClickListener;

.field private myItemsHeaderLeftTitle:Landroid/widget/TextView;

.field private myItemsHeaderRightTitle:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field purchasedItemAlert:Landroid/app/AlertDialog;

.field private purchasedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private purchasedItemProgress:Landroid/widget/ProgressBar;

.field private purchasedItemStart:I

.field private purchasedItemTable:Landroid/widget/TableLayout;

.field private purchasedThroughAvailableItem:I

.field quantityTextView:Landroid/widget/TextView;

.field private result:Z

.field private storeHeaderLeftTitle:Landroid/widget/TextView;

.field private storeHeaderRightTitle:Landroid/widget/TextView;

.field private storeItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private storeItemStart:I

.field private storeItemTable:Landroid/widget/TableLayout;

.field private storeProgress:Landroid/widget/ProgressBar;

.field private tabs:Landroid/widget/TabHost;

.field private vgDetailFooterLeft:Landroid/widget/TextView;

.field private vgDetailGetMoreBtn:Landroid/widget/Button;

.field private vgFooterLeft:Landroid/widget/TextView;

.field private vgGetMoreBtn:Landroid/widget/Button;

.field private vgPurchasedFooterLeft:Landroid/widget/TextView;

.field private vgPurchasedGetMoreBtn:Landroid/widget/Button;

.field private virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    sput-object v3, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    .line 127
    sput-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 128
    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->offersFromVG:Z

    .line 129
    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->vgFromOffers:Z

    .line 130
    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->vgFromDownloadedVG:Z

    .line 133
    const/4 v0, -0x1

    sput v0, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_FAIL:I

    .line 134
    sput v1, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_INIT:I

    .line 135
    sput v2, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_START_DOWNLOAD:I

    .line 137
    const/16 v0, 0x15

    sput v0, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_ZIP_FILE_TO_PHONE:I

    .line 138
    const/16 v0, 0x16

    sput v0, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_PHONE:I

    .line 139
    const/16 v0, 0x17

    sput v0, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_SUCCESS_TO_PHONE:I

    .line 140
    const/16 v0, 0x18

    sput v0, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_NO_DOWNLOAD_LINK:I

    .line 142
    const/16 v0, 0x1f

    sput v0, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_ZIP_FILE_TO_SD_CARD:I

    .line 143
    const/16 v0, 0x20

    sput v0, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_EXTRACT_FILES_TO_SD_CARD:I

    .line 144
    const/16 v0, 0x21

    sput v0, Lcom/tapjoy/TJCVirtualGoods;->VG_STATUS_DOWNLOAD_SUCCESS_TO_SD_CARD:I

    .line 180
    sput-object v3, Lcom/tapjoy/TJCVirtualGoods;->itemIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 215
    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->downloadStarted:Z

    .line 216
    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->showingCachedItemsDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;-><init>(I)V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->asyncTaskPool:Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

    .line 150
    iput-boolean v3, p0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    .line 152
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->checkPurchased:Ljava/lang/Boolean;

    .line 154
    iput v3, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedThroughAvailableItem:I

    .line 160
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    .line 161
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    .line 170
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    .line 171
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    .line 182
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderLeftTitle:Landroid/widget/TextView;

    .line 183
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderRightTitle:Landroid/widget/TextView;

    .line 185
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgFooterLeft:Landroid/widget/TextView;

    .line 186
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    .line 187
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedFooterLeft:Landroid/widget/TextView;

    .line 188
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    .line 189
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailFooterLeft:Landroid/widget/TextView;

    .line 190
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    .line 192
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderLeftTitle:Landroid/widget/TextView;

    .line 193
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderRightTitle:Landroid/widget/TextView;

    .line 200
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->errmsg:Ljava/lang/String;

    .line 201
    iput-boolean v3, p0, Lcom/tapjoy/TJCVirtualGoods;->result:Z

    .line 206
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    .line 207
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

    .line 211
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->allItemAlert:Landroid/app/AlertDialog;

    .line 212
    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemAlert:Landroid/app/AlertDialog;

    .line 214
    iput v3, p0, Lcom/tapjoy/TJCVirtualGoods;->itemIndex:I

    .line 221
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->cornerNone:[F

    .line 227
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    .line 233
    new-array v0, v4, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->cornerLeft:[F

    .line 239
    new-array v0, v4, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->cornerRight:[F

    .line 2149
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$14;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCVirtualGoods$14;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItemsListener:Landroid/view/View$OnClickListener;

    .line 2169
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$15;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCVirtualGoods$15;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItemListener:Landroid/view/View$OnClickListener;

    .line 5900
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 227
    :array_1
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data

    .line 233
    :array_2
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data

    .line 239
    :array_3
    .array-data 4
        0x0
        0x0
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->userAccountObject:Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->getMoreItemDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->getMoreItemDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;)Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    .prologue
    .line 87
    sput-object p0, Lcom/tapjoy/TJCVirtualGoods;->userAccountObject:Lcom/tapjoy/TJCVirtualGoods$UserAccountObject;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods;->downloadVGHelper(Lcom/tapjoy/VGStoreItem;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;)Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/TableLayout;)Landroid/widget/TableLayout;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/widget/TableLayout;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/TabHost;)Landroid/widget/TabHost;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/widget/TabHost;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;)Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/TableLayout;)Landroid/widget/TableLayout;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/widget/TableLayout;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    return-object p1
.end method

.method static synthetic access$1802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 87
    sput-boolean p0, Lcom/tapjoy/TJCVirtualGoods;->showingCachedItemsDialog:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/tapjoy/TJCVirtualGoods;)I
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemStart:I

    return v0
.end method

.method static synthetic access$2002(Lcom/tapjoy/TJCVirtualGoods;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemStart:I

    return p1
.end method

.method static synthetic access$2012(Lcom/tapjoy/TJCVirtualGoods;I)I
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemStart:I

    return v0
.end method

.method static synthetic access$2100(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/tapjoy/TJCVirtualGoods;)I
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemStart:I

    return v0
.end method

.method static synthetic access$2212(Lcom/tapjoy/TJCVirtualGoods;I)I
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemStart:I

    return v0
.end method

.method static synthetic access$2300(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2500()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->storeNoData:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->urlParams:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->showFetchAllItemsDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/tapjoy/TJCVirtualGoods;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods;->updateHeaderFooters(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/TJCVirtualGoods;->buildStoreItemTable(ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/tapjoy/TJCVirtualGoods;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods;->manageMoreStoreItemButton(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3300()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->showShowingCachedItemsDialog()V

    return-void
.end method

.method static synthetic access$3600(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/TJCVirtualGoods;->buildPurchasedStoreItemTable(ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3702(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->checkPurchased:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/TJCVirtualGoods;->checkPurchasedVGForDownload(ILandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/tapjoy/TJCVirtualGoods;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->errmsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/tapjoy/TJCVirtualGoods;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods;->result:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/tapjoy/TJCVirtualGoods;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/tapjoy/TJCVirtualGoods;->result:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->itemDownloadedDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$4400()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->retryDetailBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4402(Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Button;

    .prologue
    .line 87
    sput-object p0, Lcom/tapjoy/TJCVirtualGoods;->retryDetailBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->errorMsgDetail:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/tapjoy/TJCVirtualGoods;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)Lcom/tapjoy/VGStoreItem;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->getItemDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;Lcom/tapjoy/VGStoreItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/TJCVirtualGoods;->showItemDownloadedDialog(Ljava/lang/String;Lcom/tapjoy/VGStoreItem;)V

    return-void
.end method

.method static synthetic access$502(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->getItemDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$5100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->clientPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->rebuildPurchasedItemTable()V

    return-void
.end method

.method static synthetic access$600(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$DialogStatus;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->callGetPurchasedVGItems()V

    return-void
.end method

.method static synthetic access$800(Lcom/tapjoy/TJCVirtualGoods;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tapjoy/TJCVirtualGoods;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    return-object v0
.end method

.method private buildItemRow(Lcom/tapjoy/VGStoreItem;IILandroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 15
    .param p1, "item"    # Lcom/tapjoy/VGStoreItem;
    .param p2, "i"    # I
    .param p3, "rowId"    # I
    .param p4, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1260
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1262
    .local v10, "vgItem":Landroid/widget/LinearLayout;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "tapjoy_virtualgoods_row"

    const-string v13, "layout"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10    # "vgItem":Landroid/widget/LinearLayout;
    check-cast v10, Landroid/widget/LinearLayout;

    .line 1263
    .restart local v10    # "vgItem":Landroid/widget/LinearLayout;
    move/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setId(I)V

    move-object/from16 v11, p4

    .line 1264
    check-cast v11, Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1265
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "tapjoy_tablerowstates"

    const-string v13, "drawable"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1268
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "Index"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1269
    .local v2, "index":Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1271
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "AppIcon"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1272
    .local v4, "itemIcon":Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1274
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 1276
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1287
    :cond_0
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "VGName"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1288
    .local v5, "itemName":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "VGType"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1292
    .local v6, "itemType":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "VGAttribute"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1298
    .local v3, "itemAttribute":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 1300
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-virtual {v11}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-virtual {v11}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    :goto_1
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "points"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1310
    .local v8, "price":Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getPrice()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1311
    .local v9, "text":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1314
    return-object v10

    .line 1278
    .end local v3    # "itemAttribute":Landroid/widget/TextView;
    .end local v5    # "itemName":Landroid/widget/TextView;
    .end local v6    # "itemType":Landroid/widget/TextView;
    .end local v8    # "price":Landroid/widget/TextView;
    .end local v9    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1280
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/Object;

    .line 1281
    .local v7, "obj":[Ljava/lang/Object;
    const/4 v11, 0x0

    aput-object v4, v7, v11

    .line 1282
    const/4 v11, 0x1

    aput-object p1, v7, v11

    .line 1283
    iget-object v11, p0, Lcom/tapjoy/TJCVirtualGoods;->asyncTaskPool:Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

    new-instance v12, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V

    invoke-virtual {v11, v12, v7}, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->addTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1305
    .end local v7    # "obj":[Ljava/lang/Object;
    .restart local v3    # "itemAttribute":Landroid/widget/TextView;
    .restart local v5    # "itemName":Landroid/widget/TextView;
    .restart local v6    # "itemType":Landroid/widget/TextView;
    :cond_2
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private buildPurchasedItemRow(Lcom/tapjoy/VGStoreItem;IILandroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 15
    .param p1, "item"    # Lcom/tapjoy/VGStoreItem;
    .param p2, "i"    # I
    .param p3, "rowId"    # I
    .param p4, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1377
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1379
    .local v10, "vgItem":Landroid/widget/LinearLayout;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "tapjoy_virtualgoods_purchaseitems_row"

    const-string v13, "layout"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v11, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .end local v10    # "vgItem":Landroid/widget/LinearLayout;
    check-cast v10, Landroid/widget/LinearLayout;

    .line 1381
    .restart local v10    # "vgItem":Landroid/widget/LinearLayout;
    move/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setId(I)V

    move-object/from16 v11, p4

    .line 1382
    check-cast v11, Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1383
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "tapjoy_tablerowstates"

    const-string v13, "drawable"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1386
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "Index"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1387
    .local v2, "index":Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "AppIcon"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1390
    .local v4, "itemIcon":Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1392
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 1394
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1405
    :cond_0
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "VGName"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1406
    .local v5, "itemName":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "VGType"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1410
    .local v6, "itemType":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "VGAttribute"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1414
    .local v3, "itemAttribute":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 1416
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-virtual {v11}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-virtual {v11}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1425
    :goto_1
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "points"

    const-string v13, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1426
    .local v8, "price":Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getPrice()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1427
    .local v9, "text":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1430
    return-object v10

    .line 1396
    .end local v3    # "itemAttribute":Landroid/widget/TextView;
    .end local v5    # "itemName":Landroid/widget/TextView;
    .end local v6    # "itemType":Landroid/widget/TextView;
    .end local v8    # "price":Landroid/widget/TextView;
    .end local v9    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1398
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/Object;

    .line 1399
    .local v7, "obj":[Ljava/lang/Object;
    const/4 v11, 0x0

    aput-object v4, v7, v11

    .line 1400
    const/4 v11, 0x1

    aput-object p1, v7, v11

    .line 1401
    iget-object v11, p0, Lcom/tapjoy/TJCVirtualGoods;->asyncTaskPool:Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;

    new-instance v12, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/tapjoy/TJCVirtualGoods$FetchItemIcon;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V

    invoke-virtual {v11, v12, v7}, Lcom/tapjoy/TJCVirtualGoods$AsyncTaskPool;->addTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1421
    .end local v7    # "obj":[Ljava/lang/Object;
    .restart local v3    # "itemAttribute":Landroid/widget/TextView;
    .restart local v5    # "itemName":Landroid/widget/TextView;
    .restart local v6    # "itemType":Landroid/widget/TextView;
    :cond_2
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private buildPurchasedStoreItemTable(ILandroid/content/Context;)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1337
    if-nez p1, :cond_0

    .line 1338
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 1342
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1344
    const-string v2, "Virtual Goods"

    const-string v3, "No items to display"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1364
    :cond_1
    return-void

    .line 1351
    :cond_2
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1355
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1357
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    const/4 v4, 0x2

    invoke-direct {p0, v2, v0, v4, p2}, Lcom/tapjoy/TJCVirtualGoods;->buildPurchasedItemRow(Lcom/tapjoy/VGStoreItem;IILandroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1360
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1361
    .local v1, "line":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "tapjoy_gradientline"

    const-string v4, "drawable"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1362
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private buildStoreItemTable(ILandroid/content/Context;)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1213
    if-nez p1, :cond_0

    .line 1214
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    invoke-virtual {v3}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 1218
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1220
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->storeNoData:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1247
    :cond_1
    return-void

    .line 1225
    :cond_2
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->storeNoData:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1229
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1231
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-direct {p0, v3, v0, v8, p2}, Lcom/tapjoy/TJCVirtualGoods;->buildItemRow(Lcom/tapjoy/VGStoreItem;IILandroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 1234
    .local v2, "storeItemRow":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1235
    .local v1, "line":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "tapjoy_gradientline"

    const-string v5, "drawable"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1236
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->isShown()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1238
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1239
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    :cond_3
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1245
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private callGetPurchasedVGItems()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1628
    const-string v1, "Virtual Goods"

    const-string v2, "callGetPurchasedVGItems"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    const-string v2, "Processing your request ..."

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setProgressDialogMsg(Ljava/lang/String;)V

    .line 1631
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    invoke-virtual {v1, v3}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setProgressDialogVisible(Z)V

    .line 1632
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "DetailProgressBar"

    const-string v3, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 1633
    new-instance v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    .line 1634
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->detailBar:Landroid/widget/ProgressBar;

    .line 1635
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->getMoreItemDialog:Landroid/app/Dialog;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->itemDetailDialog:Landroid/app/Dialog;

    .line 1636
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->getallItemsTable:Landroid/widget/TableLayout;

    .line 1637
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->getPurchaseItemTable:Landroid/widget/TableLayout;

    .line 1638
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->itemDownloadedDialog:Landroid/app/Dialog;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->itemDownloadCompleteDialog:Landroid/app/Dialog;

    .line 1639
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->actionBtn:Landroid/widget/Button;

    .line 1640
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->actionTextView:Landroid/widget/TextView;

    .line 1641
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->retryDetailBtn:Landroid/widget/Button;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->retryItemDeatilButton:Landroid/widget/Button;

    .line 1642
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->errorMsgDetail:Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->errMsgDetailImage:Landroid/widget/ImageView;

    .line 1643
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->exceptionDialog:Landroid/app/Dialog;

    .line 1645
    const-string v1, "Virtual Goods"

    const-string v2, "Processing your request..."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    :try_start_0
    const-string v1, ""

    const-string v2, "Processing your request ..."

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1657
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->progressDialog:Landroid/app/ProgressDialog;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->proDialog:Landroid/app/ProgressDialog;

    .line 1661
    :try_start_1
    const-string v1, "Virtual Goods"

    const-string v2, "getPurchasedVGItems..."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/tapjoy/VGStoreItem;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1671
    :goto_1
    return-void

    .line 1651
    :catch_0
    move-exception v0

    .line 1653
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1664
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v0

    .line 1666
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1668
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    invoke-virtual {v1, v5}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setProgressDialogVisible(Z)V

    .line 1669
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

    invoke-direct {p0, v1}, Lcom/tapjoy/TJCVirtualGoods;->showExceptionDialog(Lcom/tapjoy/VGStoreItem;)V

    goto :goto_1
.end method

.method private checkPurchasedVGForDownload(ILandroid/content/Context;)V
    .locals 9
    .param p1, "moreData"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    const-string v1, "MorePurchasedItemsButton"

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    .line 1161
    .local v8, "moreDataButtonView":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    invoke-virtual {v0, v8}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 1164
    check-cast v8, Landroid/widget/Button;

    .end local v8    # "moreDataButtonView":Landroid/view/View;
    iput-object v8, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    .line 1168
    :cond_0
    if-lez p1, :cond_1

    .line 1170
    const/16 v0, 0x19

    if-le p1, v0, :cond_2

    .line 1171
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    const-string v1, "Show 25 more..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1178
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->checkPurchased:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1180
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->checkPurchased:Ljava/lang/Boolean;

    .line 1181
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "DetailProgressBar"

    const-string v2, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 1182
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "DLComplete"

    const-string v2, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    .line 1185
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    iget v3, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemStart:I

    iget v4, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedThroughAvailableItem:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->retryDetailBtn:Landroid/widget/Button;

    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoods;->errorMsgDetail:Landroid/widget/ImageView;

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downLoadPurcahasedVirtualGood(Ljava/util/List;Landroid/widget/TableLayout;ILandroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/Button;Landroid/widget/ImageView;)V

    .line 1198
    :goto_1
    return-void

    .line 1173
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " more..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1194
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->updateProgress(Landroid/widget/TableLayout;Landroid/widget/ProgressBar;)V

    goto :goto_1
.end method

.method private createColor(IIII)I
    .locals 6
    .param p1, "baseColor"    # I
    .param p2, "redOffset"    # I
    .param p3, "greenOffset"    # I
    .param p4, "blueOffset"    # I

    .prologue
    const/16 v5, 0xff

    .line 932
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    add-int v3, v4, p2

    .line 933
    .local v3, "red":I
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    add-int v2, v4, p3

    .line 934
    .local v2, "green":I
    and-int/lit16 v4, p1, 0xff

    add-int v0, v4, p4

    .line 937
    .local v0, "blue":I
    if-gez v3, :cond_0

    .line 938
    const/4 v3, 0x0

    .line 939
    :cond_0
    if-gez v2, :cond_1

    .line 940
    const/4 v2, 0x0

    .line 941
    :cond_1
    if-gez v0, :cond_2

    .line 942
    const/4 v0, 0x0

    .line 945
    :cond_2
    if-le v3, v5, :cond_3

    .line 946
    const/16 v3, 0xff

    .line 947
    :cond_3
    if-le v2, v5, :cond_4

    .line 948
    const/16 v2, 0xff

    .line 949
    :cond_4
    if-le v0, v5, :cond_5

    .line 950
    const/16 v0, 0xff

    .line 952
    :cond_5
    invoke-static {v5, v3, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 954
    .local v1, "color":I
    return v1
.end method

.method private createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;
    .locals 20
    .param p1, "baseColor"    # I
    .param p2, "start_mod"    # I
    .param p3, "end_mod"    # I
    .param p4, "strokeWidth"    # F
    .param p5, "strokeColor"    # I
    .param p6, "invertOrientation"    # Z
    .param p7, "cornerRadii"    # [F

    .prologue
    .line 977
    const/4 v10, 0x0

    .line 979
    .local v10, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    shr-int/lit8 v19, p1, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 980
    .local v17, "red":I
    shr-int/lit8 v19, p1, 0x8

    move/from16 v0, v19

    and-int/lit16 v11, v0, 0xff

    .line 981
    .local v11, "green":I
    move/from16 v0, p1

    and-int/lit16 v4, v0, 0xff

    .line 983
    .local v4, "blue":I
    const/16 v19, 0x64

    move/from16 v0, v19

    new-array v7, v0, [I

    .line 984
    .local v7, "colors":[I
    array-length v14, v7

    .line 997
    .local v14, "length":I
    sub-int v18, v17, p2

    .line 998
    .local v18, "red_start":I
    sub-int v12, v11, p2

    .line 999
    .local v12, "green_start":I
    sub-int v5, v4, p2

    .line 1002
    .local v5, "blue_start":I
    if-gez v18, :cond_0

    .line 1003
    const/16 v18, 0x0

    .line 1004
    :cond_0
    if-gez v12, :cond_1

    .line 1005
    const/4 v12, 0x0

    .line 1006
    :cond_1
    if-gez v5, :cond_2

    .line 1007
    const/4 v5, 0x0

    .line 1009
    :cond_2
    add-int v19, p2, p3

    div-int v8, v19, v14

    .line 1012
    .local v8, "delta":I
    if-gtz v8, :cond_3

    .line 1013
    const/4 v8, 0x1

    .line 1018
    :cond_3
    const/16 v2, 0xff

    .line 1019
    .local v2, "a":I
    move/from16 v16, v18

    .line 1020
    .local v16, "r":I
    move v9, v12

    .line 1021
    .local v9, "g":I
    move v3, v5

    .line 1023
    .local v3, "b":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v14, :cond_7

    .line 1025
    add-int v16, v16, v8

    .line 1026
    add-int/2addr v9, v8

    .line 1027
    add-int/2addr v3, v8

    .line 1030
    const/16 v19, 0xff

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 1031
    const/16 v16, 0xff

    .line 1032
    :cond_4
    const/16 v19, 0xff

    move/from16 v0, v19

    if-le v9, v0, :cond_5

    .line 1033
    const/16 v9, 0xff

    .line 1034
    :cond_5
    const/16 v19, 0xff

    move/from16 v0, v19

    if-le v3, v0, :cond_6

    .line 1035
    const/16 v3, 0xff

    .line 1037
    :cond_6
    move/from16 v0, v16

    invoke-static {v2, v0, v9, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 1038
    .local v6, "color":I
    aput v6, v7, v13

    .line 1023
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1046
    .end local v6    # "color":I
    :cond_7
    sget-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1048
    .local v15, "orientation":Landroid/graphics/drawable/GradientDrawable$Orientation;
    if-eqz p6, :cond_8

    .line 1049
    sget-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1052
    :cond_8
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    .end local v10    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v10, v15, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1055
    .restart local v10    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1058
    const/16 v19, 0x0

    cmpl-float v19, p4, v19

    if-lez v19, :cond_9

    .line 1059
    move/from16 v0, p4

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p5

    invoke-virtual {v10, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1061
    :cond_9
    const/high16 v19, 0x42480000    # 50.0f

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 1063
    return-object v10
.end method

.method private downloadVGHelper(Lcom/tapjoy/VGStoreItem;)V
    .locals 25
    .param p1, "storeItem"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 1756
    const-string v3, "Virtual Goods"

    const-string v5, "--------------------"

    invoke-static {v3, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    const-string v3, "Virtual Goods"

    const-string v5, "SUCCESSFUL PURCHASE"

    invoke-static {v3, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v22

    .line 1761
    .local v22, "path":Ljava/io/File;
    new-instance v24, Landroid/os/StatFs;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1762
    .local v24, "stat":Landroid/os/StatFs;
    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    mul-int/2addr v3, v5

    int-to-long v14, v3

    .line 1763
    .local v14, "free_memory":J
    const-string v3, "File System"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FREE INTERNAL MEMORY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x400

    div-long v6, v14, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " KB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    .line 1766
    new-instance v24, Landroid/os/StatFs;

    .end local v24    # "stat":Landroid/os/StatFs;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1767
    .restart local v24    # "stat":Landroid/os/StatFs;
    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    mul-int/2addr v3, v5

    int-to-long v14, v3

    .line 1768
    const-string v3, "File System"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FREE EXTERNAL MEMORY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x400

    div-long v6, v14, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " KB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->detail:Lcom/tapjoy/TJCVirtualGoods$DetailView;

    const/4 v5, 0x2

    iput v5, v3, Lcom/tapjoy/TJCVirtualGoods$DetailView;->itemType:I

    .line 1772
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tapjoy/TJCVirtualGoods;->downloadStarted:Z

    .line 1773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setItemDownloadedDialog(Z)V

    .line 1774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 1776
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/tapjoy/VGStoreItem;->setShown(Z)V

    .line 1781
    new-instance v11, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v11, v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;-><init>(Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;)V

    .line 1783
    .local v11, "downloadVirtualGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->downloadVirtualGoods:Ljava/util/Hashtable;

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedThroughAvailableItem:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedThroughAvailableItem:I

    .line 1788
    const/16 v18, 0x0

    .line 1789
    .local v18, "moreDataButtonView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    const-string v5, "MorePurchasedItemsButton"

    invoke-virtual {v3, v5}, Landroid/widget/TableLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v18

    .line 1793
    if-eqz v18, :cond_0

    .line 1795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 1800
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->purchaseItems:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 1804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    iput-object v5, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->purchaseItems:Ljava/util/ArrayList;

    .line 1805
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1808
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1809
    .local v4, "index":I
    move-object/from16 v0, p0

    iput v4, v0, Lcom/tapjoy/TJCVirtualGoods;->itemIndex:I

    .line 1812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->getNumberOwned()I

    move-result v20

    .line 1814
    .local v20, "owned":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/VGStoreItem;

    add-int/lit8 v5, v20, 0x1

    invoke-virtual {v3, v5}, Lcom/tapjoy/VGStoreItem;->setNumberOwned(I)V

    .line 1815
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "quantity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v20, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1817
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/tapjoy/TJCVirtualGoods;->buildPurchasedItemRow(Lcom/tapjoy/VGStoreItem;IILandroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v19

    .line 1818
    .local v19, "newPurchasedItem":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1820
    new-instance v17, Landroid/view/View;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1821
    .local v17, "line":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "tapjoy_gradientline"

    const-string v6, "drawable"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1826
    if-eqz v18, :cond_2

    .line 1827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    check-cast v18, Landroid/widget/Button;

    .end local v18    # "moreDataButtonView":Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1828
    :cond_2
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "Index"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1829
    .local v16, "indexTextView":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1830
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "ProgressBar01"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ProgressBar;

    .line 1832
    .local v21, "pBar":Landroid/widget/ProgressBar;
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "TextView05"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1835
    .local v10, "downloadText":Landroid/widget/TextView;
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "RetryBtn"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 1837
    .local v23, "retryBtn":Landroid/widget/Button;
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "errorMsg"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 1839
    .local v13, "errorMsg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1840
    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->pBar:Landroid/widget/ProgressBar;

    .line 1841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    iput-object v3, v11, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 1844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    const-string v5, "Download Pending"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1845
    const-string v3, "Download Pending"

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1848
    iput-object v10, v11, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->downloadText:Landroid/widget/TextView;

    .line 1849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1850
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    iput-object v3, v11, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->actionTxt:Landroid/widget/TextView;

    .line 1852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->retryClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v3, v3, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->errorMsgClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1854
    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryBtn:Landroid/widget/Button;

    .line 1855
    iput-object v13, v11, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsg:Landroid/widget/ImageView;

    .line 1857
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->retryDetailBtn:Landroid/widget/Button;

    iput-object v3, v11, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->retryDetailBtn:Landroid/widget/Button;

    .line 1858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->errorMsgDetail:Landroid/widget/ImageView;

    iput-object v3, v11, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->errorMsgDetail:Landroid/widget/ImageView;

    .line 1862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    if-eqz v3, :cond_3

    .line 1868
    :try_start_0
    sget-object v23, Lcom/tapjoy/TJCVirtualGoods;->retryDetailBtn:Landroid/widget/Button;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1879
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    sget-object v8, Lcom/tapjoy/TJCVirtualGoods;->retryDetailBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->errorMsgDetail:Landroid/widget/ImageView;

    invoke-virtual/range {v3 .. v9}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->SetPogressBar(ILjava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;)V

    .line 1880
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/tapjoy/VGStoreItem;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    invoke-static {v11, v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z

    .line 1888
    .end local v4    # "index":I
    .end local v10    # "downloadText":Landroid/widget/TextView;
    .end local v13    # "errorMsg":Landroid/widget/ImageView;
    .end local v16    # "indexTextView":Landroid/widget/TextView;
    .end local v17    # "line":Landroid/view/View;
    .end local v19    # "newPurchasedItem":Landroid/widget/LinearLayout;
    .end local v20    # "owned":I
    .end local v21    # "pBar":Landroid/widget/ProgressBar;
    .end local v23    # "retryBtn":Landroid/widget/Button;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tapjoy/TJCVirtualGoods;->itemDownloadedDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1889
    return-void

    .line 1870
    .restart local v4    # "index":I
    .restart local v10    # "downloadText":Landroid/widget/TextView;
    .restart local v13    # "errorMsg":Landroid/widget/ImageView;
    .restart local v16    # "indexTextView":Landroid/widget/TextView;
    .restart local v17    # "line":Landroid/view/View;
    .restart local v19    # "newPurchasedItem":Landroid/widget/LinearLayout;
    .restart local v20    # "owned":I
    .restart local v21    # "pBar":Landroid/widget/ProgressBar;
    .restart local v23    # "retryBtn":Landroid/widget/Button;
    :catch_0
    move-exception v12

    .line 1875
    .local v12, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v12}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1884
    .end local v4    # "index":I
    .end local v10    # "downloadText":Landroid/widget/TextView;
    .end local v12    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v13    # "errorMsg":Landroid/widget/ImageView;
    .end local v16    # "indexTextView":Landroid/widget/TextView;
    .end local v17    # "line":Landroid/view/View;
    .end local v19    # "newPurchasedItem":Landroid/widget/LinearLayout;
    .end local v20    # "owned":I
    .end local v21    # "pBar":Landroid/widget/ProgressBar;
    .end local v23    # "retryBtn":Landroid/widget/Button;
    :cond_4
    const-string v3, "Ok Dialog"

    const-string v5, "Double Clicked!"

    invoke-static {v3, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getClientPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1605
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->clientPackage:Ljava/lang/String;

    return-object v0
.end method

.method public static getDataSavedAtSDCard()Z
    .locals 1

    .prologue
    .line 1622
    sget-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->dataSavedAtSDCard:Z

    return v0
.end method

.method private manageMoreStoreItemButton(I)V
    .locals 4
    .param p1, "moreData"    # I

    .prologue
    .line 1131
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    const-string v2, "MoreStoreItemsButton"

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1132
    .local v0, "moreDataButtonView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1134
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 1135
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "moreDataButtonView":Landroid/view/View;
    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    .line 1139
    :cond_0
    if-lez p1, :cond_1

    .line 1141
    const/16 v1, 0x19

    if-le p1, v1, :cond_2

    .line 1142
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    const-string v2, "Show 25 more..."

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    :goto_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1149
    :cond_1
    return-void

    .line 1144
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " more..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private rebuildAllTables()V
    .locals 2

    .prologue
    .line 1074
    const-string v0, "Virtual Goods"

    const-string v1, "******************************"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string v0, "Virtual Goods"

    const-string v1, "Rebuilding data arrays..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->rebuildStoreItemTable()V

    .line 1078
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->rebuildPurchasedItemTable()V

    .line 1080
    const-string v0, "Virtual Goods"

    const-string v1, "******************************"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    return-void
.end method

.method private rebuildPurchasedItemTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1111
    const-string v0, "Virtual Goods"

    const-string v1, "******************************"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v0, "Virtual Goods"

    const-string v1, "Rebuilding Purchased Item Table..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1116
    iput v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemStart:I

    .line 1117
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    .line 1119
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->purchasedItemTableLayout:Landroid/widget/TableLayout;

    .line 1120
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    iput-object p0, v0, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->ctx:Landroid/content/Context;

    .line 1121
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1123
    const-string v0, "Virtual Goods"

    const-string v1, "******************************"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method private rebuildStoreItemTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1088
    const-string v0, "Virtual Goods"

    const-string v1, "******************************"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    const-string v0, "Virtual Goods"

    const-string v1, "Rebuilding Store Item Table..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1094
    iput v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemStart:I

    .line 1095
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    .line 1096
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->storeItemsTableLayout:Landroid/widget/TableLayout;

    .line 1097
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateTabhost:Landroid/widget/TabHost;

    .line 1098
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateDetailView:Landroid/widget/LinearLayout;

    .line 1099
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    iput-object p0, v0, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->ctx:Landroid/content/Context;

    .line 1100
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1102
    const-string v0, "Virtual Goods"

    const-string v1, "******************************"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    return-void
.end method

.method public static setDataSavedAtSDCard(Z)V
    .locals 5
    .param p0, "saved"    # Z

    .prologue
    .line 1611
    sput-boolean p0, Lcom/tapjoy/TJCVirtualGoods;->dataSavedAtSDCard:Z

    .line 1613
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1614
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1615
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "containsExternalData"

    sget-boolean v3, Lcom/tapjoy/TJCVirtualGoods;->dataSavedAtSDCard:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1616
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1617
    return-void
.end method

.method private showExceptionDialog(Lcom/tapjoy/VGStoreItem;)V
    .locals 3
    .param p1, "vgStoreItem"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 1997
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

    .line 1998
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Service is unreachable.\nDo you want to try again?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$11;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$11;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Retry"

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$10;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$10;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;

    .line 2016
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2019
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setExceptionDialog(Z)V

    .line 2020
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    const-string v1, "Service is unreachable.\nDo you want to try again?"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setExceptionDialogMsg(Ljava/lang/String;)V

    .line 2021
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setVgStoreItem(Lcom/tapjoy/VGStoreItem;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2028
    :cond_0
    :goto_0
    return-void

    .line 2024
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showFetchAllItemsDialog()V
    .locals 1

    .prologue
    .line 1938
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$9;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCVirtualGoods$9;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1990
    return-void
.end method

.method private showGetItemDetailDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->getItemDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1710
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$6;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$6;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Get More"

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$5;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$5;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->getMoreItemDialog:Landroid/app/Dialog;

    .line 1739
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->getMoreItemDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1740
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setGetMoreItemDialogMsg(Ljava/lang/String;)V

    .line 1741
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setGetMoreItemDialogVisible(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    :goto_0
    return-void

    .line 1743
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showGetItemDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 1676
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$4;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$4;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$3;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$3;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->getItemDialog:Landroid/app/Dialog;

    .line 1695
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->getItemDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1696
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setGetItemDialogMsg(Ljava/lang/String;)V

    .line 1697
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setGetItemDialogVisible(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1704
    :goto_0
    return-void

    .line 1699
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showItemDetail(Lcom/tapjoy/VGStoreItem;ILandroid/view/View;I)V
    .locals 27
    .param p1, "item"    # Lcom/tapjoy/VGStoreItem;
    .param p2, "itemType"    # I
    .param p3, "v"    # Landroid/view/View;
    .param p4, "index"    # I

    .prologue
    .line 1443
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ItemIcon"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 1446
    .local v19, "itemIcon":Landroid/widget/ImageView;
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1448
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1450
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1459
    :cond_0
    :goto_0
    sget-object v4, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    .line 1462
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ItemName"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1463
    .local v20, "itemName":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ItemType"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1467
    .local v26, "vgType":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemTypeName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "detailPoint"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1471
    .local v22, "price":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getPrice()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1472
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1475
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "detailCurrency"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1476
    .local v15, "currency":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ScrollLayout"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 1479
    .local v23, "scrollLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1481
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v13

    .line 1483
    .local v13, "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "virtual_goods_details_text_color"

    const-string v7, "color"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 1486
    .local v14, "color":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_3

    .line 1488
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1489
    .local v11, "attr":Landroid/widget/TextView;
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-virtual {v4}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeType()Ljava/lang/String;

    move-result-object v12

    .line 1494
    .local v12, "attrType":Ljava/lang/String;
    const-string v4, "quantity"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1496
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    .line 1498
    sget-object v4, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getNumberOwned()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1499
    sget-object v4, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1501
    sget-object v4, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1502
    sget-object v4, Lcom/tapjoy/TJCVirtualGoods;->detailDescQuantity:Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1486
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1452
    .end local v11    # "attr":Landroid/widget/TextView;
    .end local v12    # "attrType":Ljava/lang/String;
    .end local v13    # "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    .end local v14    # "color":I
    .end local v15    # "currency":Landroid/widget/TextView;
    .end local v18    # "i":I
    .end local v20    # "itemName":Landroid/widget/TextView;
    .end local v22    # "price":Landroid/widget/TextView;
    .end local v23    # "scrollLayout":Landroid/widget/LinearLayout;
    .end local v26    # "vgType":Landroid/widget/TextView;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1454
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 1455
    .local v21, "obj":[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object v19, v21, v4

    .line 1456
    const/4 v4, 0x1

    aput-object p1, v21, v4

    goto/16 :goto_0

    .line 1507
    .end local v21    # "obj":[Ljava/lang/Object;
    .restart local v11    # "attr":Landroid/widget/TextView;
    .restart local v12    # "attrType":Ljava/lang/String;
    .restart local v13    # "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    .restart local v14    # "color":I
    .restart local v15    # "currency":Landroid/widget/TextView;
    .restart local v18    # "i":I
    .restart local v20    # "itemName":Landroid/widget/TextView;
    .restart local v22    # "price":Landroid/widget/TextView;
    .restart local v23    # "scrollLayout":Landroid/widget/LinearLayout;
    .restart local v26    # "vgType":Landroid/widget/TextView;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-virtual {v4}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-virtual {v11, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1510
    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1511
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1516
    .end local v11    # "attr":Landroid/widget/TextView;
    .end local v12    # "attrType":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1518
    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1519
    .local v16, "des":Landroid/widget/TextView;
    const-string v4, "Description:"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1521
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1522
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1523
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1525
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1526
    .local v17, "description":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1527
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1528
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1531
    .end local v16    # "des":Landroid/widget/TextView;
    .end local v17    # "description":Landroid/widget/TextView;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "Action"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    .line 1532
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "DLComplete"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    .line 1533
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "DetailProgressBar"

    const-string v6, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 1535
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    .line 1536
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v24

    .line 1537
    .local v24, "storeItemName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getPrice()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1538
    .local v25, "storeItemPrice":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->currentVgStoreItem:Lcom/tapjoy/VGStoreItem;

    .line 1540
    packed-switch p2, :pswitch_data_0

    .line 1597
    :goto_3
    :pswitch_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    .line 1598
    new-instance v4, Lcom/tapjoy/TJCVirtualGoods$DetailView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/tapjoy/TJCVirtualGoods$DetailView;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->detail:Lcom/tapjoy/TJCVirtualGoods$DetailView;

    .line 1599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->detail:Lcom/tapjoy/TJCVirtualGoods$DetailView;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods$DetailView;->setDetailView(Lcom/tapjoy/VGStoreItem;ILandroid/view/View;I)V

    .line 1600
    return-void

    .line 1544
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    new-instance v5, Lcom/tapjoy/TJCVirtualGoods$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v5, v0, v1, v2}, Lcom/tapjoy/TJCVirtualGoods$2;-><init>(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1581
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    const-string v5, "Get this item"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 1590
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    sget-object v9, Lcom/tapjoy/TJCVirtualGoods;->retryDetailBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tapjoy/TJCVirtualGoods;->errorMsgDetail:Landroid/widget/ImageView;

    move/from16 v5, p4

    invoke-virtual/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->SetPogressBar(ILjava/lang/String;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/ImageView;)V

    .line 1592
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods;->itemIndex:I

    .line 1593
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 1540
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showItemDownloadedDialog(Ljava/lang/String;Lcom/tapjoy/VGStoreItem;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "storeItem"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 1901
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$8;

    invoke-direct {v2, p0, p2}, Lcom/tapjoy/TJCVirtualGoods$8;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/TJCVirtualGoods$7;

    invoke-direct {v1, p0, p2}, Lcom/tapjoy/TJCVirtualGoods$7;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->itemDownloadedDialog:Landroid/app/Dialog;

    .line 1922
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->itemDownloadedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1923
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setItemDownloadedDialog(Z)V

    .line 1924
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setItemDownloadedMsg(Ljava/lang/String;)V

    .line 1925
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    if-eqz v0, :cond_0

    .line 1926
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    invoke-virtual {v0, p2}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setVgStoreItem(Lcom/tapjoy/VGStoreItem;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1933
    :cond_0
    :goto_0
    return-void

    .line 1929
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showPurchasedItemDialog()V
    .locals 1

    .prologue
    .line 2033
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$12;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCVirtualGoods$12;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2072
    return-void
.end method

.method private showShowingCachedItemsDialog()V
    .locals 1

    .prologue
    .line 2077
    new-instance v0, Lcom/tapjoy/TJCVirtualGoods$13;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCVirtualGoods$13;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2114
    return-void
.end method

.method private updateHeaderFooters(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 2122
    const-string v2, "TJCPrefsFile"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2123
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "currencyName"

    const-string v3, "Points"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    .line 2124
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    const-string v3, "tapPoints"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 2125
    .local v1, "tapPoints":Ljava/lang/String;
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderRightTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2126
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderRightTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2127
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgFooterLeft:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2128
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedFooterLeft:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2129
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailFooterLeft:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2131
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2132
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get more "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2134
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2135
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get more "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2137
    :cond_1
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2138
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get more "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2141
    :cond_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 770
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 771
    if-eqz p3, :cond_2

    .line 773
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 774
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 776
    const-string v1, "OFFER_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 778
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 779
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v1, v4}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 780
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 782
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 783
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 785
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 786
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 789
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    invoke-virtual {v1}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 790
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    invoke-virtual {v1, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->cancel(Z)Z

    .line 792
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    invoke-virtual {v1}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 793
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    invoke-virtual {v1, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->cancel(Z)Z

    .line 795
    :cond_1
    new-instance v1, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    invoke-direct {v1, p0, v5}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    .line 796
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->storeItemsTableLayout:Landroid/widget/TableLayout;

    .line 798
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateTabhost:Landroid/widget/TabHost;

    .line 799
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateDetailView:Landroid/widget/LinearLayout;

    .line 800
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    iput-object p0, v1, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->ctx:Landroid/content/Context;

    .line 801
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 803
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->checkPurchased:Ljava/lang/Boolean;

    .line 805
    new-instance v1, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    invoke-direct {v1, p0, v5}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$1;)V

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    .line 807
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->purchasedItemTableLayout:Landroid/widget/TableLayout;

    .line 808
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    iput-object p0, v1, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->ctx:Landroid/content/Context;

    .line 809
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 814
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 819
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Index"

    const-string v4, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 820
    .local v1, "index":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 821
    .local v0, "i":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    .line 822
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 823
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 825
    const-string v2, "Virtual Goods"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 845
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 830
    :pswitch_1
    const-string v2, "Virtual Goods"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeItemArray.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 834
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    invoke-direct {p0, v2, v6, p1, v0}, Lcom/tapjoy/TJCVirtualGoods;->showItemDetail(Lcom/tapjoy/VGStoreItem;ILandroid/view/View;I)V

    goto :goto_0

    .line 838
    :pswitch_2
    const-string v2, "Virtual Goods"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "purchasedItemArray.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 842
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/tapjoy/TJCVirtualGoods;->showItemDetail(Lcom/tapjoy/VGStoreItem;ILandroid/view/View;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 80
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 249
    sput-object p0, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    .line 251
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v37

    .line 256
    .local v37, "extras":Landroid/os/Bundle;
    const-string v2, "URL_PARAMS"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->urlParams:Ljava/lang/String;

    .line 257
    const-string v2, "CLIENT_PACKAGE"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->clientPackage:Ljava/lang/String;

    .line 259
    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "tapjoy_virtualgoods"

    const-string v9, "layout"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->setContentView(I)V

    .line 265
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyConnect;->getPrimaryColor()I

    move-result v18

    .line 267
    .local v18, "baseColor":I
    const-string v2, "Virtual Goods"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "baseColor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/16 v2, -0x10

    const/16 v8, -0x10

    const/16 v9, -0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v2, v8, v9}, Lcom/tapjoy/TJCVirtualGoods;->createColor(IIII)I

    move-result v22

    .line 271
    .local v22, "buttonNormalColor":I
    const/16 v2, -0x40

    const/16 v8, -0x40

    const/16 v9, -0x40

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v2, v8, v9}, Lcom/tapjoy/TJCVirtualGoods;->createColor(IIII)I

    move-result v3

    .line 272
    .local v3, "buttonFocusedColor":I
    const/16 v2, 0x40

    const/16 v8, 0x40

    const/16 v9, 0x40

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v2, v8, v9}, Lcom/tapjoy/TJCVirtualGoods;->createColor(IIII)I

    move-result v26

    .line 273
    .local v26, "detailBGColor":I
    const/16 v2, -0x50

    const/16 v8, -0x50

    const/16 v9, -0x50

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v2, v8, v9}, Lcom/tapjoy/TJCVirtualGoods;->createColor(IIII)I

    move-result v7

    .line 276
    .local v7, "strokeColor":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 277
    .local v6, "strokeWidthButton":F
    const/high16 v69, 0x40000000    # 2.0f

    .line 280
    .local v69, "strokeWidthArea":F
    const/16 v4, 0x30

    .line 281
    .local v4, "button_start_mod":I
    const/16 v5, 0x50

    .line 282
    .local v5, "button_end_mod":I
    const/16 v20, 0x20

    .line 283
    .local v20, "bg_start_mod":I
    const/16 v19, 0x20

    .line 284
    .local v19, "bg_end_mod":I
    const/16 v28, 0x20

    .line 285
    .local v28, "detail_start_mod":I
    const/16 v27, 0x4

    .line 287
    .local v27, "detail_end_mod":I
    const v66, 0x10100a7

    .line 288
    .local v66, "statePressed":I
    const v65, 0x101009c

    .line 289
    .local v65, "stateFocused":I
    const v67, 0x10100a1

    .line 292
    .local v67, "stateSelected":I
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerLeft:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v56

    .line 293
    .local v56, "s1":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerLeft:[F

    move-object/from16 v8, p0

    move/from16 v9, v22

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v48

    .line 294
    .local v48, "n1":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerLeft:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v38

    .line 296
    .local v38, "f1":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerRight:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v57

    .line 297
    .local v57, "s2":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerRight:[F

    move-object/from16 v8, p0

    move/from16 v9, v22

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v49

    .line 298
    .local v49, "n2":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerRight:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v39

    .line 300
    .local v39, "f2":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v58

    .line 301
    .local v58, "s3":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v8, p0

    move/from16 v9, v22

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v50

    .line 302
    .local v50, "n3":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v40

    .line 304
    .local v40, "f3":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v59

    .line 305
    .local v59, "s4":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v8, p0

    move/from16 v9, v22

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v51

    .line 306
    .local v51, "n4":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v41

    .line 308
    .local v41, "f4":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v60

    .line 309
    .local v60, "s5":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v8, p0

    move/from16 v9, v22

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v52

    .line 310
    .local v52, "n5":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v42

    .line 312
    .local v42, "f5":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v61

    .line 313
    .local v61, "s6":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v8, p0

    move/from16 v9, v22

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v53

    .line 314
    .local v53, "n6":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v43

    .line 316
    .local v43, "f6":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v62

    .line 317
    .local v62, "s7":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v8, p0

    move/from16 v9, v22

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v54

    .line 318
    .local v54, "n7":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v44

    .line 321
    .local v44, "f7":Landroid/graphics/drawable/Drawable;
    new-instance v32, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 322
    .local v32, "drawableLeft":Landroid/graphics/drawable/StateListDrawable;
    new-instance v35, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 323
    .local v35, "drawableRight":Landroid/graphics/drawable/StateListDrawable;
    new-instance v36, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 324
    .local v36, "drawableStoreGetMore":Landroid/graphics/drawable/StateListDrawable;
    new-instance v33, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 325
    .local v33, "drawableMyItemsGetMore":Landroid/graphics/drawable/StateListDrawable;
    new-instance v30, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 326
    .local v30, "drawableDetailGetMore":Landroid/graphics/drawable/StateListDrawable;
    new-instance v31, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 327
    .local v31, "drawableGetThisItem":Landroid/graphics/drawable/StateListDrawable;
    new-instance v34, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 329
    .local v34, "drawableRetryDetail":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v8, 0x0

    aput v66, v2, v8

    move-object/from16 v0, v32

    move-object/from16 v1, v56

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 330
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    move/from16 v0, v67

    neg-int v9, v0

    aput v9, v2, v8

    move-object/from16 v0, v32

    move-object/from16 v1, v48

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 331
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    aput v67, v2, v8

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 333
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v8, 0x0

    aput v66, v2, v8

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 334
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    move/from16 v0, v67

    neg-int v9, v0

    aput v9, v2, v8

    move-object/from16 v0, v35

    move-object/from16 v1, v49

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 335
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    aput v67, v2, v8

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 337
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v8, 0x0

    aput v66, v2, v8

    move-object/from16 v0, v36

    move-object/from16 v1, v58

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 338
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    move/from16 v0, v67

    neg-int v9, v0

    aput v9, v2, v8

    move-object/from16 v0, v36

    move-object/from16 v1, v50

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 339
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    aput v67, v2, v8

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 341
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v8, 0x0

    aput v66, v2, v8

    move-object/from16 v0, v33

    move-object/from16 v1, v59

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 342
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    move/from16 v0, v67

    neg-int v9, v0

    aput v9, v2, v8

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 343
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    aput v67, v2, v8

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 345
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v8, 0x0

    aput v66, v2, v8

    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 346
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    move/from16 v0, v67

    neg-int v9, v0

    aput v9, v2, v8

    move-object/from16 v0, v30

    move-object/from16 v1, v52

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 347
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    aput v67, v2, v8

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 349
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v8, 0x0

    aput v66, v2, v8

    move-object/from16 v0, v31

    move-object/from16 v1, v61

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 350
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    move/from16 v0, v67

    neg-int v9, v0

    aput v9, v2, v8

    move-object/from16 v0, v31

    move-object/from16 v1, v53

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 351
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    aput v67, v2, v8

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 353
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v8, 0x0

    aput v66, v2, v8

    move-object/from16 v0, v34

    move-object/from16 v1, v62

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 354
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    move/from16 v0, v67

    neg-int v9, v0

    aput v9, v2, v8

    move-object/from16 v0, v34

    move-object/from16 v1, v54

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 355
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v8, 0x0

    move/from16 v0, v65

    neg-int v9, v0

    aput v9, v2, v8

    const/4 v8, 0x1

    aput v67, v2, v8

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "VGTabHost"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    const-string v8, "tab1"

    invoke-virtual {v2, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v68

    .line 366
    .local v68, "storeTab":Landroid/widget/TabHost$TabSpec;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "Store"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v68

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 368
    new-instance v23, Landroid/widget/Button;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 369
    .local v23, "button_left":Landroid/widget/Button;
    const-string v2, "Available Items"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 370
    const/4 v2, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 371
    const/16 v2, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    const/16 v10, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8, v9, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 372
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "vg_shadow_color"

    const-string v12, "color"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8, v9, v10}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 375
    move-object/from16 v0, v68

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    move-object/from16 v0, v68

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    const-string v8, "tab3"

    invoke-virtual {v2, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v55

    .line 380
    .local v55, "purchasedItemTab":Landroid/widget/TabHost$TabSpec;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "YourItem"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 382
    new-instance v24, Landroid/widget/Button;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 383
    .local v24, "button_right":Landroid/widget/Button;
    const-string v2, "My Items"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 384
    const/4 v2, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 385
    const/16 v2, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    const/16 v10, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8, v9, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 386
    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "vg_shadow_color"

    const-string v12, "color"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8, v9, v10}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 389
    move-object/from16 v0, v55

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    move-object/from16 v0, v55

    invoke-virtual {v2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "StoreProgress"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->storeProgress:Landroid/widget/ProgressBar;

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "YourItemProgress"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemProgress:Landroid/widget/ProgressBar;

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "StoreTable"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "YourItemTable"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    .line 398
    new-instance v2, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getItemDialog:Landroid/app/Dialog;

    .line 399
    new-instance v2, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getMoreItemDialog:Landroid/app/Dialog;

    .line 400
    new-instance v2, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->itemDownloadedDialog:Landroid/app/Dialog;

    .line 401
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    .line 402
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    .line 404
    new-instance v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    const-string v8, "MoreStoreItemsButton"

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->moreStoreItemsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    new-instance v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    const-string v8, "MorePurchasedItemsButton"

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItemListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "ItemDetail"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    .line 416
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    const-string v8, "TJCPrefsFile"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v64

    .line 417
    .local v64, "settings":Landroid/content/SharedPreferences;
    const-string v2, "currencyName"

    const-string v8, "Points"

    move-object/from16 v0, v64

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    .line 419
    new-instance v45, Ljava/text/DecimalFormat;

    invoke-direct/range {v45 .. v45}, Ljava/text/DecimalFormat;-><init>()V

    .line 420
    .local v45, "format":Ljava/text/DecimalFormat;
    const-string v2, "###,###,###"

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 421
    const-string v2, "tapPoints"

    const/4 v8, 0x0

    move-object/from16 v0, v64

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v8, v2

    move-object/from16 v0, v45

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v70

    .line 423
    .local v70, "tapPoints":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "storeHeaderLeftTitle"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderLeftTitle:Landroid/widget/TextView;

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderLeftTitle:Landroid/widget/TextView;

    const-string v8, "Item"

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "errorMsg"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->errorMsgDetail:Landroid/widget/ImageView;

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "myItemsHeaderLeftTitle"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderLeftTitle:Landroid/widget/TextView;

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderLeftTitle:Landroid/widget/TextView;

    const-string v8, "Item"

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "storeHeaderRightTitle"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderRightTitle:Landroid/widget/TextView;

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->storeHeaderRightTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "myItemsHeaderRightTitle"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderRightTitle:Landroid/widget/TextView;

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->myItemsHeaderRightTitle:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "VGFooterLeft"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgFooterLeft:Landroid/widget/TextView;

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgFooterLeft:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Your "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v70

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "VGYourItemFooterLeft"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedFooterLeft:Landroid/widget/TextView;

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedFooterLeft:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Your "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v70

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "VGDetailFooterLeft"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailFooterLeft:Landroid/widget/TextView;

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailFooterLeft:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Your "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v70

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "VGGetMoreBtn"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get more "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "VGYourItemGetMoreBtn"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get more "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "VGDetailGetMoreBtn"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get more "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "Action"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    const-string v8, "Get this item"

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "RetryDetailBtn"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->retryDetailBtn:Landroid/widget/Button;

    .line 466
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->retryDetailBtn:Landroid/widget/Button;

    const-string v8, "Retry"

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 467
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->retryDetailBtn:Landroid/widget/Button;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "vg_background"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v71

    check-cast v71, Landroid/widget/LinearLayout;

    .line 473
    .local v71, "vgBackground":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "vg_store_footer"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v78

    check-cast v78, Landroid/widget/LinearLayout;

    .line 474
    .local v78, "vgStoreFooter":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "vg_item_footer"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v77

    check-cast v77, Landroid/widget/LinearLayout;

    .line 475
    .local v77, "vgItemFooter":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "vg_detail_header"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v74

    check-cast v74, Landroid/widget/TextView;

    .line 476
    .local v74, "vgDetailHeader":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "vg_detail_info"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v75

    check-cast v75, Landroid/widget/RelativeLayout;

    .line 477
    .local v75, "vgDetailInfo":Landroid/widget/RelativeLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "vg_detail_desc"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v72

    check-cast v72, Landroid/widget/ScrollView;

    .line 478
    .local v72, "vgDetailDesc":Landroid/widget/ScrollView;
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "vg_detail_footer"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v73

    check-cast v73, Landroid/widget/LinearLayout;

    .line 480
    .local v73, "vgDetailFooter":Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerNone:[F

    move-object/from16 v8, p0

    move/from16 v9, v18

    move/from16 v10, v20

    move/from16 v11, v19

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    move-object/from16 v0, v71

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerNone:[F

    move-object/from16 v8, p0

    move/from16 v9, v18

    move/from16 v10, v20

    move/from16 v11, v19

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    move-object/from16 v0, v78

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 482
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerNone:[F

    move-object/from16 v8, p0

    move/from16 v9, v18

    move/from16 v10, v20

    move/from16 v11, v19

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    move-object/from16 v0, v77

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v8, p0

    move/from16 v9, v26

    move/from16 v10, v28

    move/from16 v11, v27

    move/from16 v12, v69

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    move-object/from16 v0, v74

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v8, p0

    move/from16 v9, v26

    move/from16 v10, v28

    move/from16 v11, v27

    move/from16 v12, v69

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    move-object/from16 v0, v75

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v8, p0

    move/from16 v9, v26

    move/from16 v10, v28

    move/from16 v11, v27

    move/from16 v12, v69

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    move-object/from16 v0, v72

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tapjoy/TJCVirtualGoods;->cornerAll:[F

    move-object/from16 v8, p0

    move/from16 v9, v26

    move/from16 v10, v28

    move/from16 v11, v27

    move/from16 v12, v69

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->createGradient(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    move-object/from16 v0, v73

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    .line 490
    new-instance v76, Lcom/tapjoy/TJCVirtualGoods$1;

    move-object/from16 v0, v76

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$1;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    .line 509
    .local v76, "vgGetMoreBtnListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgGetMoreBtn:Landroid/widget/Button;

    move-object/from16 v0, v76

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgPurchasedGetMoreBtn:Landroid/widget/Button;

    move-object/from16 v0, v76

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->vgDetailGetMoreBtn:Landroid/widget/Button;

    move-object/from16 v0, v76

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "StoreNoDataText"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->storeNoData:Landroid/widget/TextView;

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "YourItemNoDataText"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;

    .line 516
    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->showingCachedItemsDialog:Z

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->showShowingCachedItemsDialog()V

    .line 518
    :cond_0
    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->DLErrorDialogShown:Z

    if-eqz v2, :cond_1

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->showDLErrorDialog()V

    .line 521
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    .line 522
    .local v21, "bundle":Landroid/os/Bundle;
    if-eqz v21, :cond_6

    .line 524
    const-string v2, "tab"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 525
    .local v17, "activeTab":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 527
    const/16 v63, 0x0

    .line 528
    .local v63, "scrollView":Landroid/widget/ScrollView;
    const-string v2, "yourItem"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "YourItemLayout"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v63

    .end local v63    # "scrollView":Landroid/widget/ScrollView;
    check-cast v63, Landroid/widget/ScrollView;

    .line 536
    .restart local v63    # "scrollView":Landroid/widget/ScrollView;
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, v63

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 537
    const/4 v2, 0x0

    move-object/from16 v0, v63

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setScrollContainer(Z)V

    .line 548
    .end local v17    # "activeTab":Ljava/lang/String;
    .end local v63    # "scrollView":Landroid/widget/ScrollView;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v25

    .line 550
    .local v25, "data":Ljava/lang/Object;
    if-nez v25, :cond_7

    .line 553
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->rebuildAllTables()V

    .line 688
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    if-nez v2, :cond_4

    .line 690
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->connectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 693
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->setPurchasedItemArray(Ljava/util/ArrayList;)V

    .line 695
    return-void

    .line 534
    .end local v25    # "data":Ljava/lang/Object;
    .restart local v17    # "activeTab":Ljava/lang/String;
    .restart local v63    # "scrollView":Landroid/widget/ScrollView;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "StoreLayout"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v63

    .end local v63    # "scrollView":Landroid/widget/ScrollView;
    check-cast v63, Landroid/widget/ScrollView;

    .restart local v63    # "scrollView":Landroid/widget/ScrollView;
    goto :goto_0

    .line 542
    .end local v17    # "activeTab":Ljava/lang/String;
    .end local v63    # "scrollView":Landroid/widget/ScrollView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "StoreLayout"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v63

    check-cast v63, Landroid/widget/ScrollView;

    .line 544
    .restart local v63    # "scrollView":Landroid/widget/ScrollView;
    const/4 v2, 0x0

    move-object/from16 v0, v63

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 545
    const/4 v2, 0x0

    move-object/from16 v0, v63

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setScrollContainer(Z)V

    goto :goto_1

    .end local v63    # "scrollView":Landroid/widget/ScrollView;
    .restart local v25    # "data":Ljava/lang/Object;
    :cond_7
    move-object/from16 v47, v25

    .line 557
    check-cast v47, Ljava/util/ArrayList;

    .line 558
    .local v47, "list":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    const/4 v2, 0x5

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 559
    const/4 v2, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    .line 560
    const/4 v2, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 564
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/TJCVirtualGoods;->buildStoreItemTable(ILandroid/content/Context;)V

    .line 565
    sget v2, Lcom/tapjoy/VGStoreItem;->availableItemsMoreDataAvailable:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->manageMoreStoreItemButton(I)V

    .line 570
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    if-eqz v2, :cond_9

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v8, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v8, :cond_9

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->storeItemsTableLayout:Landroid/widget/TableLayout;

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateTabhost:Landroid/widget/TabHost;

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->updateDetailView:Landroid/widget/LinearLayout;

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    move-object/from16 v0, p0

    iput-object v0, v2, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->ctx:Landroid/content/Context;

    .line 583
    :cond_9
    const/4 v2, 0x3

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    .line 584
    const/4 v2, 0x4

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    .line 586
    const/16 v2, 0x8

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 589
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/TJCVirtualGoods;->buildPurchasedStoreItemTable(ILandroid/content/Context;)V

    .line 590
    sget v2, Lcom/tapjoy/VGStoreItem;->purchasedItemsMoreDataAvailable:I

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/TJCVirtualGoods;->checkPurchasedVGForDownload(ILandroid/content/Context;)V

    .line 598
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    if-eqz v2, :cond_b

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v8, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v8, :cond_b

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->purchasedItemTableLayout:Landroid/widget/TableLayout;

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    move-object/from16 v0, p0

    iput-object v0, v2, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->ctx:Landroid/content/Context;

    .line 609
    :cond_b
    const/4 v2, 0x6

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    .line 611
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    const/4 v8, 0x1

    if-ne v2, v8, :cond_c

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 614
    const/16 v2, 0xe

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/TJCVirtualGoods$DetailView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->detail:Lcom/tapjoy/TJCVirtualGoods$DetailView;

    .line 615
    const/16 v2, 0xd

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v46

    .line 616
    .local v46, "indexOfPurchasedItem":I
    const/4 v2, -0x1

    move/from16 v0, v46

    if-ne v0, v2, :cond_12

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->detail:Lcom/tapjoy/TJCVirtualGoods$DetailView;

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoods$DetailView;->vgItem:Lcom/tapjoy/VGStoreItem;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->detail:Lcom/tapjoy/TJCVirtualGoods$DetailView;

    invoke-virtual {v8}, Lcom/tapjoy/TJCVirtualGoods$DetailView;->getItemType()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->detail:Lcom/tapjoy/TJCVirtualGoods$DetailView;

    iget-object v9, v9, Lcom/tapjoy/TJCVirtualGoods$DetailView;->view:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tapjoy/TJCVirtualGoods;->detail:Lcom/tapjoy/TJCVirtualGoods$DetailView;

    iget v10, v10, Lcom/tapjoy/TJCVirtualGoods$DetailView;->index:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v9, v10}, Lcom/tapjoy/TJCVirtualGoods;->showItemDetail(Lcom/tapjoy/VGStoreItem;ILandroid/view/View;I)V

    .line 620
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 622
    .end local v46    # "indexOfPurchasedItem":I
    :cond_c
    const/16 v2, 0x9

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 623
    .local v16, "AllItemflag":Z
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_d

    .line 625
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->showFetchAllItemsDialog()V

    .line 627
    :cond_d
    const/16 v2, 0xa

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v79

    .line 628
    .local v79, "yourItemFlag":Z
    const/4 v2, 0x1

    move/from16 v0, v79

    if-ne v0, v2, :cond_e

    .line 630
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->showPurchasedItemDialog()V

    .line 632
    :cond_e
    const/16 v2, 0xb

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    .line 634
    .local v29, "dialogStatusAfterSwitch":Lcom/tapjoy/TJCVirtualGoods$DialogStatus;
    const/16 v2, 0xc

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    if-eqz v2, :cond_f

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v8, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v8, :cond_f

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "DetailProgressBar"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v8, "DLComplete"

    const-string v9, "id"

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->getMoreItemDialog:Landroid/app/Dialog;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->itemDetailDialog:Landroid/app/Dialog;

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->itemDownloadedDialog:Landroid/app/Dialog;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->itemDownloadCompleteDialog:Landroid/app/Dialog;

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->getPurchaseItemTable:Landroid/widget/TableLayout;

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->getallItemsTable:Landroid/widget/TableLayout;

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->detailProgressBar:Landroid/widget/ProgressBar;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->detailBar:Landroid/widget/ProgressBar;

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->action:Landroid/widget/Button;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->actionBtn:Landroid/widget/Button;

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->actionTxt:Landroid/widget/TextView;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->actionTextView:Landroid/widget/TextView;

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    sget-object v8, Lcom/tapjoy/TJCVirtualGoods;->retryDetailBtn:Landroid/widget/Button;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->retryItemDeatilButton:Landroid/widget/Button;

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->errorMsgDetail:Landroid/widget/ImageView;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->errMsgDetailImage:Landroid/widget/ImageView;

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->exceptionDialog:Landroid/app/Dialog;

    .line 655
    :cond_f
    invoke-virtual/range {v29 .. v29}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->isGetItemDialogVisible()Z

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_13

    .line 657
    invoke-virtual/range {v29 .. v29}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getGetItemDialogMsg()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->showGetItemDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 567
    .end local v16    # "AllItemflag":Z
    .end local v29    # "dialogStatusAfterSwitch":Lcom/tapjoy/TJCVirtualGoods$DialogStatus;
    .end local v79    # "yourItemFlag":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v8, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v2, v8, :cond_8

    .line 568
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->storeNoData:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 593
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v8, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v2, v8, :cond_a

    .line 595
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 619
    .restart local v46    # "indexOfPurchasedItem":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->detail:Lcom/tapjoy/TJCVirtualGoods$DetailView;

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoods$DetailView;->vgItem:Lcom/tapjoy/VGStoreItem;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->detail:Lcom/tapjoy/TJCVirtualGoods$DetailView;

    invoke-virtual {v8}, Lcom/tapjoy/TJCVirtualGoods$DetailView;->getItemType()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tapjoy/TJCVirtualGoods;->detail:Lcom/tapjoy/TJCVirtualGoods$DetailView;

    iget-object v9, v9, Lcom/tapjoy/TJCVirtualGoods$DetailView;->view:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v2, v8, v9, v1}, Lcom/tapjoy/TJCVirtualGoods;->showItemDetail(Lcom/tapjoy/VGStoreItem;ILandroid/view/View;I)V

    goto/16 :goto_5

    .line 659
    .end local v46    # "indexOfPurchasedItem":I
    .restart local v16    # "AllItemflag":Z
    .restart local v29    # "dialogStatusAfterSwitch":Lcom/tapjoy/TJCVirtualGoods$DialogStatus;
    .restart local v79    # "yourItemFlag":Z
    :cond_13
    invoke-virtual/range {v29 .. v29}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->isProgressDialogVisible()Z

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_14

    .line 663
    :try_start_0
    const-string v2, ""

    const-string v8, "Processing your request ..."

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->progressDialog:Landroid/app/ProgressDialog;

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->getPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tapjoy/TJCVirtualGoods;->progressDialog:Landroid/app/ProgressDialog;

    iput-object v8, v2, Lcom/tapjoy/TJCVirtualGoods$GetPurchasedVGItems;->proDialog:Landroid/app/ProgressDialog;

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoods;->dialogStatus:Lcom/tapjoy/TJCVirtualGoods$DialogStatus;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->setProgressDialogVisible(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 667
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 672
    :cond_14
    invoke-virtual/range {v29 .. v29}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->isGetMoreItemDialogVisible()Z

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_15

    .line 674
    invoke-virtual/range {v29 .. v29}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getGetMoreItemDialogMsg()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->showGetItemDetailDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 676
    :cond_15
    invoke-virtual/range {v29 .. v29}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->isItemDownloadedDialog()Z

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_16

    .line 679
    invoke-virtual/range {v29 .. v29}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getItemDownloadedMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getVgStoreItem()Lcom/tapjoy/VGStoreItem;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/tapjoy/TJCVirtualGoods;->showItemDownloadedDialog(Ljava/lang/String;Lcom/tapjoy/VGStoreItem;)V

    goto/16 :goto_2

    .line 681
    :cond_16
    invoke-virtual/range {v29 .. v29}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->isExceptionDialog()Z

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 683
    invoke-virtual/range {v29 .. v29}, Lcom/tapjoy/TJCVirtualGoods$DialogStatus;->getVgStoreItem()Lcom/tapjoy/VGStoreItem;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->showExceptionDialog(Lcom/tapjoy/VGStoreItem;)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 762
    const-string v0, "ExtendedFocusListener"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 764
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 852
    const/4 v2, 0x4

    if-ne p1, v2, :cond_7

    .line 855
    iget-boolean v2, p0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    if-ne v2, v3, :cond_2

    .line 857
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v2, v5}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 858
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->detailView:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 860
    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->downloadStarted:Z

    if-ne v2, v3, :cond_0

    .line 862
    sput-boolean v5, Lcom/tapjoy/TJCVirtualGoods;->downloadStarted:Z

    .line 863
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 866
    :cond_0
    iput-boolean v5, p0, Lcom/tapjoy/TJCVirtualGoods;->isItemDetailView:Z

    .line 868
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    if-eqz v2, :cond_1

    .line 870
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/tapjoy/TJCVirtualGoods;->itemIndex:I

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 872
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    iget v4, p0, Lcom/tapjoy/TJCVirtualGoods;->itemIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 873
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;

    iget v5, p0, Lcom/tapjoy/TJCVirtualGoods;->itemIndex:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->DisconnectDetailPBar(Ljava/lang/String;)V

    :cond_1
    :goto_0
    move v2, v3

    .line 915
    :goto_1
    return v2

    .line 880
    :cond_2
    sput-boolean v5, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 882
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 884
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;

    .line 885
    .local v0, "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v4, :cond_3

    .line 886
    invoke-virtual {v0, v3}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;->cancel(Z)Z

    .line 882
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 889
    .end local v0    # "dGood":Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil$DownloadVirtualGood;
    :cond_4
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 890
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 891
    sput-boolean v5, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->DLErrorDialogShown:Z

    .line 895
    sput v5, Lcom/tapjoy/VGStoreItem;->availableItemsMoreDataAvailable:I

    .line 896
    sput v5, Lcom/tapjoy/VGStoreItem;->purchasedItemsMoreDataAvailable:I

    .line 897
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->checkPurchased:Ljava/lang/Boolean;

    .line 898
    sput-boolean v5, Lcom/tapjoy/TJCVirtualGoods;->downloadStarted:Z

    .line 899
    iput v5, p0, Lcom/tapjoy/TJCVirtualGoods;->purchasedThroughAvailableItem:I

    .line 900
    sput-boolean v5, Lcom/tapjoy/TJCVirtualGoods;->showingCachedItemsDialog:Z

    .line 903
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v4, :cond_5

    .line 904
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchAllStoreItems;->cancel(Z)Z

    .line 906
    :cond_5
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v4, :cond_6

    .line 907
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->fetPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchPurchasedVGItems;->cancel(Z)Z

    .line 908
    :cond_6
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoods$VirtualGoodUtil;->CancelExecution()V

    .line 910
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->finish()V

    goto :goto_0

    .line 915
    .end local v1    # "i":I
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 701
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 702
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 704
    .local v0, "connectInstance":Lcom/tapjoy/TapjoyConnect;
    if-eqz v0, :cond_1

    .line 706
    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    if-eqz v2, :cond_2

    .line 709
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->getFocusListener()Lcom/tapjoy/TJCVirtualGoods$FocusListener;

    move-result-object v1

    .line 710
    .local v1, "focusListener":Lcom/tapjoy/TJCVirtualGoods$FocusListener;
    if-eqz v1, :cond_0

    .line 712
    const-string v2, "ExtendedFocusListener"

    const-string v3, "On Pause"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-interface {v1}, Lcom/tapjoy/TJCVirtualGoods$FocusListener;->onFocusLost()V

    .line 721
    .end local v1    # "focusListener":Lcom/tapjoy/TJCVirtualGoods$FocusListener;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 723
    :cond_1
    return-void

    .line 718
    :cond_2
    const-string v2, "ExtendedFocusListener"

    const-string v3, "On Pause Not called"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 729
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 732
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance(Landroid/content/Context;)Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 734
    .local v0, "connectInstance":Lcom/tapjoy/TapjoyConnect;
    if-eqz v0, :cond_1

    .line 737
    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->vgFromOffers:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->vgFromDownloadedVG:Z

    if-nez v2, :cond_2

    .line 740
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->getFocusListener()Lcom/tapjoy/TJCVirtualGoods$FocusListener;

    move-result-object v1

    .line 742
    .local v1, "focusListener":Lcom/tapjoy/TJCVirtualGoods$FocusListener;
    if-eqz v1, :cond_0

    .line 744
    const-string v2, "ExtendedFocusListener"

    const-string v3, "On Resume"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-interface {v1}, Lcom/tapjoy/TJCVirtualGoods$FocusListener;->onFocusGain()V

    .line 753
    .end local v1    # "focusListener":Lcom/tapjoy/TJCVirtualGoods$FocusListener;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 754
    const/4 v2, 0x0

    sput-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->vgFromOffers:Z

    .line 756
    :cond_1
    return-void

    .line 750
    :cond_2
    const-string v2, "ExtendedFocusListener"

    const-string v3, "On Resume Not Called"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
