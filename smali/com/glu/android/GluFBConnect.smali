.class public Lcom/glu/android/GluFBConnect;
.super Ljava/lang/Object;
.source "GluFBConnect.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/GluFBConnect$FBItem;
    }
.end annotation


# static fields
.field public static final CNGS_CONNECTION_COMPLETE:I = 0x2

.field public static final CNGS_CONNECTION_CONNECTING:I = 0x1

.field public static final CNGS_CONNECTION_FAIL:I = 0x3

.field public static final CNGS_CONNECTION_IDLE:I = 0x0

.field public static final CNSG_CONNECTION_CANCEL:I = 0x4

.field public static final FACEBOOK_DIALOG_CANCELLED:I = 0x2

.field public static final FACEBOOK_DIALOG_FAILURE:I = 0x3

.field public static final FACEBOOK_DIALOG_SUCCESS:I = 0x1

.field public static final FACEBOOK_EVENT_FREE_ALL_FRIEND_PICS:I = 0x9

.field public static final FACEBOOK_EVENT_LOGIN:I = 0x1

.field public static final FACEBOOK_EVENT_LOGOUT:I = 0x2

.field public static final FACEBOOK_EVENT_QUEUE_FEED_BODY:I = 0xc

.field public static final FACEBOOK_EVENT_QUEUE_FEED_CAPTION:I = 0x18

.field public static final FACEBOOK_EVENT_QUEUE_FEED_HEADER:I = 0xb

.field public static final FACEBOOK_EVENT_QUEUE_FEED_PROMPT:I = 0xa

.field public static final FACEBOOK_EVENT_QUEUE_FRIEND_IMAGE_URL:I = 0x12

.field public static final FACEBOOK_EVENT_QUEUE_FRIEND_LINK:I = 0x10

.field public static final FACEBOOK_EVENT_QUEUE_FRIEND_MESSAGE:I = 0xe

.field public static final FACEBOOK_EVENT_QUEUE_FRIEND_TEXT_FOR_LINK:I = 0x11

.field public static final FACEBOOK_EVENT_QUEUE_FRIEND_UID:I = 0xf

.field public static final FACEBOOK_EVENT_REQUEST_FRIEND_NAME_FROM_UID:I = 0x14

.field public static final FACEBOOK_EVENT_REQUEST_FRIEND_PICS:I = 0x8

.field public static final FACEBOOK_EVENT_REQUEST_LOAD_FRIENDS:I = 0x6

.field public static final FACEBOOK_EVENT_REQUEST_USER_INFO:I = 0x3

.field public static final FACEBOOK_EVENT_SEND_FEED:I = 0x4

.field public static final FACEBOOK_EVENT_SEND_INVITE:I = 0x5

.field public static final FACEBOOK_EVENT_SESSION_VALID:I = 0x17

.field public static final FACEBOOK_EVENT_SET_APP_ID:I = 0x7

.field public static final FACEBOOK_EVENT_SET_NEXT_FRIEND_REQUEST_SIZE:I = 0x15

.field public static final FACEBOOK_EVENT_SET_SECRET_ID:I = 0x16

.field public static final FACEBOOK_EVENT_SUBMIT_QUEUED_FEED:I = 0xd

.field public static final FACEBOOK_EVENT_SUBMIT_QUEUED_FRIEND_FEED:I = 0x13

.field public static final FACEBOOK_FL_NAME_INDEX:I = 0x1

.field public static final FACEBOOK_FL_UID_INDEX:I = 0x0

.field public static final FACEBOOK_LOGIN_LOGGED_IN:I = 0x1

.field public static final FACEBOOK_LOGIN_LOGGED_OUT:I = 0x4

.field public static final FACEBOOK_LOGIN_LOGGING_IN:I = 0x2

.field public static final FACEBOOK_LOGIN_LOGGING_OUT:I = 0x3

.field public static final FACEBOOK_LOGIN_LOGIN_FAILED:I = 0x5

.field public static final FACEBOOK_LOGIN_LOGOUT_FAILED:I = 0x6

.field public static final FACEBOOK_LOGIN_POSTING_TO_WALL:I = 0x7

.field public static final FACEBOOK_NUM_FL_INDEXES:I = 0x2

.field public static final FB_CHECK_FILE:Ljava/lang/String; = "fbcheck"

.field public static FIVE_THOUSAND_FRIENDS_TEST:Z = false

.field public static final FIVE_THOUSAND_NAMES:[Ljava/lang/String;

.field public static final FIVE_THOUSAND_UIDS:[J

.field private static final MESSAGE_SUBMIT_QUEUED_FEED:I = 0x1

.field private static final MESSAGE_SUBMIT_QUEUED_FRIEND_MESSAGE:I = 0x2

.field public static final NATIVE_FACEBOOK_EVENT_DIALOG_STATUS:I = 0x5

.field public static final NATIVE_FACEBOOK_EVENT_ERROR_CODE:I = 0x1

.field public static final NATIVE_FACEBOOK_EVENT_ERROR_DESCRIPTION:I = 0x2

.field public static final NATIVE_FACEBOOK_EVENT_ERROR_REASON:I = 0x3

.field public static final NATIVE_FACEBOOK_EVENT_LOADPIC_DONE:I = 0xb

.field public static final NATIVE_FACEBOOK_EVENT_LOAD_FRIENDS:I = 0x9

.field public static final NATIVE_FACEBOOK_EVENT_LOGIN_STATUS:I = 0x4

.field public static final NATIVE_FACEBOOK_EVENT_LOGOUT_STATUS:I = 0xc

.field public static final NATIVE_FACEBOOK_EVENT_REPORT_FRIEND_NAME:I = 0xa

.field public static final NATIVE_FACEBOOK_EVENT_REPORT_SID:I = 0x7

.field public static final NATIVE_FACEBOOK_EVENT_REPORT_UID:I = 0x6

.field public static final NATIVE_FACEBOOK_EVENT_REPORT_USERNAME:I = 0x8

.field public static final NGS_TEMP_FILES:[Ljava/lang/String;

.field public static instance:Lcom/glu/android/GluFBConnect;

.field public static m_connectionState:I

.field public static m_facebookState:I


# instance fields
.field public RUNNING:Z

.field private m_appID:Ljava/lang/String;

.field public m_body:Ljava/lang/String;

.field public m_facebook:Lcom/facebook/android/Facebook;

.field public m_feedCaption:Ljava/lang/String;

.field public m_friendInfo:[Ljava/lang/String;

.field public m_friendLink:Ljava/lang/String;

.field public m_friendLinkImageURL:Ljava/lang/String;

.field public m_friendLinkText:Ljava/lang/String;

.field public m_friendMessage:Ljava/lang/String;

.field public m_friendRequestQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/GluFBConnect$FBItem;",
            ">;"
        }
    .end annotation
.end field

.field public m_friendUID:Ljava/lang/String;

.field private m_getUserInfoRunner:Lcom/facebook/android/AsyncFacebookRunner;

.field public m_header:Ljava/lang/String;

.field private m_loadFriendsRunner:Lcom/facebook/android/AsyncFacebookRunner;

.field public m_nextImageSize:Ljava/lang/String;

.field public m_prompt:Ljava/lang/String;

.field public m_quickAccessFriendInfo:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_secretID:Ljava/lang/String;

.field private m_viewManipulationHandler:Landroid/os/Handler;

.field private final msgQueue:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x19

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    sput-boolean v2, Lcom/glu/android/GluFBConnect;->FIVE_THOUSAND_FRIENDS_TEST:Z

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    .line 102
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Credentials.dat"

    aput-object v1, v0, v2

    const-string v1, "ActiveCred.dat"

    aput-object v1, v0, v3

    const-string v1, "Session.dat"

    aput-object v1, v0, v4

    sput-object v0, Lcom/glu/android/GluFBConnect;->NGS_TEMP_FILES:[Ljava/lang/String;

    .line 278
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/glu/android/GluFBConnect;->FIVE_THOUSAND_UIDS:[J

    .line 286
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Lori Cox Glu"

    aput-object v1, v0, v2

    const-string v1, "Thomas Glu"

    aput-object v1, v0, v3

    const-string v1, "Nikita Glu Kupriyanov"

    aput-object v1, v0, v4

    const-string v1, "Spark Glu"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "Glufour Fbtester"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Gluten Fbtester"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Glutwo Fbtester"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Gluone Fbtester"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Gluthree Fbtester"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Glufive Fbtester"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Atom Fbtester"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Atom Tester"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Noah Glu"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Thunder Cracker"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Lingzhi Glu"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Tf-tracks Glu"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "FB-Cosmos Glu"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Adam Ellington"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "FB-Mirage Glu"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "FB-Warpath Glu"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Tf-grimlock Glu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "FB-Defensor Glu"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "David Jimenez"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Glu Francisco"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Duff Glu"

    aput-object v2, v0, v1

    sput-object v0, Lcom/glu/android/GluFBConnect;->FIVE_THOUSAND_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x5a9b4c7a
        0x5bdb8722
        0x5d41f924
        0x60e829a0
        0x66874a57
        0x669072c6
        0x66b33c34
        0x67637999
        0x68df6b4d
        0x6a0e753f
        0x5af32d1e41f8L
        0x5af32e0b6113L
        0x5af331ab078bL
        0x5af338c2d143L
        0x5af368826de1L
        0x5af371365149L    # 4.94073664220007E-310
        0x5af377cd2fbeL
        0x5af378c4e1caL
        0x5af378e13357L
        0x5af379caa384L
        0x5af37b5d7384L
        0x5af37cc881b8L
        0x5af3882b52ffL
        0x5af3960436c1L
        0x5af396511fb9L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_facebook:Lcom/facebook/android/Facebook;

    .line 105
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_appID:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_secretID:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_friendInfo:[Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluFBConnect;->m_quickAccessFriendInfo:Ljava/util/Hashtable;

    .line 293
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_loadFriendsRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 398
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_getUserInfoRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 609
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_prompt:Ljava/lang/String;

    .line 610
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_header:Ljava/lang/String;

    .line 611
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_body:Ljava/lang/String;

    .line 612
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_feedCaption:Ljava/lang/String;

    .line 637
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_friendMessage:Ljava/lang/String;

    .line 638
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_friendUID:Ljava/lang/String;

    .line 639
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_friendLink:Ljava/lang/String;

    .line 640
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_friendLinkText:Ljava/lang/String;

    .line 641
    iput-object v1, p0, Lcom/glu/android/GluFBConnect;->m_friendLinkImageURL:Ljava/lang/String;

    .line 675
    new-instance v0, Lcom/glu/android/GluFBConnect$3;

    invoke-direct {v0, p0}, Lcom/glu/android/GluFBConnect$3;-><init>(Lcom/glu/android/GluFBConnect;)V

    iput-object v0, p0, Lcom/glu/android/GluFBConnect;->m_viewManipulationHandler:Landroid/os/Handler;

    .line 783
    iput-boolean v2, p0, Lcom/glu/android/GluFBConnect;->RUNNING:Z

    .line 805
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluFBConnect;->m_friendRequestQueue:Ljava/util/Vector;

    .line 806
    const-string v0, "small"

    iput-object v0, p0, Lcom/glu/android/GluFBConnect;->m_nextImageSize:Ljava/lang/String;

    .line 183
    sget-boolean v0, Lcom/glu/android/GluFBConnect;->FIVE_THOUSAND_FRIENDS_TEST:Z

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "Set FIVE_THOUSAND_FRIENDS_TEST to false."

    invoke-static {v0}, Lcom/glu/android/Debug;->relDie(Ljava/lang/String;)V

    .line 186
    :cond_0
    sput-object p0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    .line 188
    sput v2, Lcom/glu/android/GluFBConnect;->m_connectionState:I

    .line 189
    const/4 v0, 0x4

    sput v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/glu/android/GluFBConnect;->msgQueue:Landroid/os/Handler;

    .line 191
    return-void
.end method

.method static synthetic access$002(Lcom/glu/android/GluFBConnect;Lcom/facebook/android/AsyncFacebookRunner;)Lcom/facebook/android/AsyncFacebookRunner;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluFBConnect;
    .param p1, "x1"    # Lcom/facebook/android/AsyncFacebookRunner;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_loadFriendsRunner:Lcom/facebook/android/AsyncFacebookRunner;

    return-object p1
.end method

.method static synthetic access$102(Lcom/glu/android/GluFBConnect;Lcom/facebook/android/AsyncFacebookRunner;)Lcom/facebook/android/AsyncFacebookRunner;
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluFBConnect;
    .param p1, "x1"    # Lcom/facebook/android/AsyncFacebookRunner;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_getUserInfoRunner:Lcom/facebook/android/AsyncFacebookRunner;

    return-object p1
.end method

.method static synthetic access$200(Lcom/glu/android/GluFBConnect;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluFBConnect;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/glu/android/GluFBConnect;->shouldFileBeReplacedIfNotGetExtension(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/glu/android/GluFBConnect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/glu/android/GluFBConnect;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/glu/android/GluFBConnect;->deleteSingleUserFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/glu/android/GluFBConnect;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/glu/android/GluFBConnect;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->msgQueue:Landroid/os/Handler;

    return-object v0
.end method

.method public static createFBCanLoginFile()V
    .locals 5

    .prologue
    .line 765
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fbcheck"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 767
    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 768
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 769
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "fbcheck creation failed for some reason."

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteSingleUserFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "friendId"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 217
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 218
    return-void
.end method

.method private displayPostingToWallFailureModal()V
    .locals 3

    .prologue
    .line 758
    const v0, 0x7f070071

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070072

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070007

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->openModalDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method public static facebookEvent(II[B[C)I
    .locals 6
    .param p0, "event"    # I
    .param p1, "iParam"    # I
    .param p2, "paramBA"    # [B
    .param p3, "paramCA"    # [C

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 22
    if-ne p0, v0, :cond_2

    .line 24
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    move v0, v1

    .line 93
    :cond_1
    :goto_1
    return v0

    .line 26
    :cond_2
    const/4 v3, 0x2

    if-ne p0, v3, :cond_3

    .line 29
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    invoke-virtual {v0}, Lcom/glu/android/GluFBConnect;->logout()V

    goto :goto_0

    .line 31
    :cond_3
    const/16 v3, 0x17

    if-ne p0, v3, :cond_4

    .line 32
    sget-object v2, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    invoke-virtual {v2}, Lcom/glu/android/GluFBConnect;->isSessionValid()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1

    .line 34
    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    .line 36
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    iput-object v2, v0, Lcom/glu/android/GameLet;->m_facebookParam:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 39
    :cond_5
    if-ne p0, v5, :cond_6

    .line 41
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    invoke-virtual {v0}, Lcom/glu/android/GluFBConnect;->loadFriends()V

    goto :goto_0

    .line 43
    :cond_6
    if-ne p0, v4, :cond_7

    .line 45
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    iput-object v2, v0, Lcom/glu/android/GameLet;->m_facebookParam:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 48
    :cond_7
    const/4 v0, 0x5

    if-ne p0, v0, :cond_8

    .line 50
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    iput-object v2, v0, Lcom/glu/android/GameLet;->m_facebookParam:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_viewManipulationHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 53
    :cond_8
    const/4 v0, 0x7

    if-ne p0, v0, :cond_9

    .line 55
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->setAppID(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_9
    const/16 v0, 0x8

    if-ne p0, v0, :cond_a

    .line 59
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->requestFriendPicsStartingWith(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_a
    const/16 v0, 0x9

    if-ne p0, v0, :cond_b

    .line 63
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    invoke-virtual {v0}, Lcom/glu/android/GluFBConnect;->freeAllFriendPics()V

    goto/16 :goto_0

    .line 65
    :cond_b
    const/16 v0, 0xa

    if-ne p0, v0, :cond_d

    .line 66
    sget-object v3, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    if-nez p3, :cond_c

    move-object v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/glu/android/GluFBConnect;->queueFeedPrompt(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    .line 67
    :cond_d
    const/16 v0, 0xb

    if-ne p0, v0, :cond_f

    .line 68
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    if-nez p3, :cond_e

    :goto_3
    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->queueFeedHeader(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_3

    .line 69
    :cond_f
    const/16 v0, 0xc

    if-ne p0, v0, :cond_11

    .line 70
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    if-nez p3, :cond_10

    :goto_4
    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->queueFeedBody(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_4

    .line 71
    :cond_11
    const/16 v0, 0x18

    if-ne p0, v0, :cond_13

    .line 72
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    if-nez p3, :cond_12

    :goto_5
    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->queueFeedCaption(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_5

    .line 73
    :cond_13
    const/16 v0, 0xd

    if-ne p0, v0, :cond_14

    .line 74
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    invoke-virtual {v0}, Lcom/glu/android/GluFBConnect;->submitQueuedFeed()V

    goto/16 :goto_0

    .line 75
    :cond_14
    const/16 v0, 0xe

    if-ne p0, v0, :cond_16

    .line 76
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    if-nez p3, :cond_15

    :goto_6
    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->queueFriendMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_6

    .line 77
    :cond_16
    const/16 v0, 0xf

    if-ne p0, v0, :cond_18

    .line 78
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    if-nez p3, :cond_17

    :goto_7
    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->queueFriendUID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_7

    .line 79
    :cond_18
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1a

    .line 80
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    if-nez p3, :cond_19

    :goto_8
    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->queueFriendLink(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_8

    .line 81
    :cond_1a
    const/16 v0, 0x11

    if-ne p0, v0, :cond_1c

    .line 82
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    if-nez p3, :cond_1b

    :goto_9
    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->queueFriendLinkText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_9

    .line 83
    :cond_1c
    const/16 v0, 0x12

    if-ne p0, v0, :cond_1e

    .line 84
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    if-nez p3, :cond_1d

    :goto_a
    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->queueFriendImageURL(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_a

    .line 85
    :cond_1e
    const/16 v0, 0x13

    if-ne p0, v0, :cond_1f

    .line 86
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    invoke-virtual {v0}, Lcom/glu/android/GluFBConnect;->submitQueuedFriendFeed()V

    goto/16 :goto_0

    .line 87
    :cond_1f
    const/16 v0, 0x14

    if-ne p0, v0, :cond_21

    .line 88
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    if-nez p3, :cond_20

    :goto_b
    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->requestFriendNameFromUID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_b

    .line 89
    :cond_21
    const/16 v0, 0x15

    if-ne p0, v0, :cond_23

    .line 90
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    if-nez p3, :cond_22

    :goto_c
    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->setNextFriendRequestSize(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_c

    .line 91
    :cond_23
    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    .line 92
    sget-object v0, Lcom/glu/android/GluFBConnect;->instance:Lcom/glu/android/GluFBConnect;

    if-nez p3, :cond_24

    :goto_d
    invoke-virtual {v0, v2}, Lcom/glu/android/GluFBConnect;->setSecretID(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([C)V

    goto :goto_d
.end method

.method private shouldFileBeReplaced(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "friendId"    # Ljava/lang/String;
    .param p3, "fileTooOldDate"    # J

    .prologue
    const/4 v2, 0x1

    .line 222
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "testPNG":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "testJPG":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v2

    .line 226
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-lez v3, :cond_0

    .line 228
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-lez v3, :cond_0

    .line 231
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private shouldFileBeReplacedIfNotGetExtension(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "friendIdPlusSize"    # Ljava/lang/String;
    .param p3, "fileTooOldDate"    # J

    .prologue
    const/4 v2, 0x0

    .line 788
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 789
    .local v1, "testPNG":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 790
    .local v0, "testJPG":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-object v2

    .line 792
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-lez v3, :cond_0

    .line 794
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-lez v3, :cond_0

    .line 797
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 798
    const-string v2, ".png"

    goto :goto_0

    .line 799
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 800
    const-string v2, ".jpg"

    goto :goto_0

    .line 802
    :cond_5
    const-string v2, ".wtf"

    goto :goto_0
.end method

.method public static testFBCanLoginFile()Z
    .locals 3

    .prologue
    .line 777
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getSecureSaveDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fbcheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 778
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public freeAllFriendPics()V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getFacebookSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/glu/android/GluUtil;->rmrf(Ljava/io/File;)V

    .line 237
    return-void
.end method

.method public getUserInfo()V
    .locals 3

    .prologue
    .line 401
    const-string v0, "Getting user info"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 405
    sget v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 407
    const-string v0, "Cannot get FB user info if not logged in."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 456
    :goto_0
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_getUserInfoRunner:Lcom/facebook/android/AsyncFacebookRunner;

    if-eqz v0, :cond_1

    .line 412
    const-string v0, "Tried to run two FB get info runners at once."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_1
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/glu/android/GluFBConnect;->m_facebook:Lcom/facebook/android/Facebook;

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    iput-object v0, p0, Lcom/glu/android/GluFBConnect;->m_getUserInfoRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v1, "/me"

    new-instance v2, Lcom/glu/android/GluFBConnect$2;

    invoke-direct {v2, p0}, Lcom/glu/android/GluFBConnect$2;-><init>(Lcom/glu/android/GluFBConnect;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluFBConnect;->m_appID:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public isSessionValid()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public loadFriends()V
    .locals 3

    .prologue
    .line 296
    const-string v0, "Getting friends"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 297
    sget v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 390
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_loadFriendsRunner:Lcom/facebook/android/AsyncFacebookRunner;

    if-eqz v0, :cond_1

    .line 301
    const-string v0, "Tried to run more than one load friends at a time."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/glu/android/GluFBConnect;->m_facebook:Lcom/facebook/android/Facebook;

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    iput-object v0, p0, Lcom/glu/android/GluFBConnect;->m_loadFriendsRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v1, "me/friends"

    new-instance v2, Lcom/glu/android/GluFBConnect$1;

    invoke-direct {v2, p0}, Lcom/glu/android/GluFBConnect$1;-><init>(Lcom/glu/android/GluFBConnect;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    goto :goto_0
.end method

.method public login()V
    .locals 2

    .prologue
    .line 242
    sget-boolean v0, Lcom/glu/android/Settings;->ONLINE_PLAY_DISABLED:Z

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "FB connect login attempt when online play disabled. (not necessarily a bug)"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V

    .line 260
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string v0, "FACEBOOK Login start"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x1

    sput v0, Lcom/glu/android/GluFBConnect;->m_connectionState:I

    .line 251
    const/4 v0, 0x2

    sput v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 252
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_appID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 254
    const-string v0, "FB cannot login: APP ID not set. Aborting."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_facebook:Lcom/facebook/android/Facebook;

    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0, v1, p0}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 259
    const-string v0, "FACEBOOK Login called"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 265
    sput v4, Lcom/glu/android/GluFBConnect;->m_connectionState:I

    .line 266
    const/4 v2, 0x3

    sput v2, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 268
    :try_start_0
    iget-object v2, p0, Lcom/glu/android/GluFBConnect;->m_facebook:Lcom/facebook/android/Facebook;

    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2, v3}, Lcom/facebook/android/Facebook;->logout(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "response":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logged out with response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v1    # "response":Ljava/lang/String;
    :goto_0
    const/16 v2, 0xc

    invoke-static {v2, v4}, Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V

    .line 275
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FB logout exception (probably harmless): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCancel()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 571
    sput v6, Lcom/glu/android/GluFBConnect;->m_connectionState:I

    .line 572
    const-string v3, "FACEBOOK ~~onCancel"

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 573
    sget v3, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    if-ne v3, v5, :cond_3

    .line 575
    invoke-static {v6, v5}, Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V

    .line 576
    sput v7, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 583
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v3}, Lcom/glu/android/GameLet;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 584
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/GluUtil;->filePathNoEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/cache"

    const-string v5, "/databases/webview.db"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .local v2, "webviewDB":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/GluUtil;->filePathNoEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/cache"

    const-string v5, "/databases/webviewCache.db"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    .local v1, "webviewCacheDB":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 590
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 591
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 607
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "webviewCacheDB":Ljava/io/File;
    .end local v2    # "webviewDB":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 589
    .restart local v0    # "cacheDir":Ljava/io/File;
    .restart local v1    # "webviewCacheDB":Ljava/io/File;
    .restart local v2    # "webviewDB":Ljava/io/File;
    :cond_1
    const-string v3, "No webview DB to delete."

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :cond_2
    const-string v3, "No webview cache DB to delete."

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 595
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "webviewCacheDB":Ljava/io/File;
    .end local v2    # "webviewDB":Ljava/io/File;
    :cond_3
    sget v3, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 600
    sput v6, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    goto :goto_1

    .line 602
    :cond_4
    sget v3, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 604
    const/4 v3, 0x1

    sput v3, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 605
    invoke-static {v7, v5}, Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V

    goto :goto_1
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 501
    const-string v2, "facebook ~~onComplete"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 502
    sput v4, Lcom/glu/android/GluFBConnect;->m_connectionState:I

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "facebook "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " post? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "post_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 504
    sget v2, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    if-ne v2, v4, :cond_1

    .line 506
    sput v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 507
    const-string v0, "facebook ~~onComplete getting user info now"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/glu/android/GluFBConnect;->getUserInfo()V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    sget v2, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    if-ne v2, v1, :cond_2

    .line 513
    const/4 v0, 0x4

    sput v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    goto :goto_0

    .line 515
    :cond_2
    sget v2, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 517
    sput v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 518
    const/4 v2, 0x5

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "post_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    invoke-static {v2, v0}, Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 5
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x5

    const/4 v2, 0x3

    .line 547
    sput v2, Lcom/glu/android/GluFBConnect;->m_connectionState:I

    .line 548
    const-string v0, "facebook ~~onError"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 549
    sget v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 551
    invoke-static {v4, v3}, Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V

    .line 552
    sput v3, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    sget v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    if-ne v0, v2, :cond_2

    .line 559
    sput v4, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    goto :goto_0

    .line 561
    :cond_2
    sget v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/glu/android/GluFBConnect;->displayPostingToWallFailureModal()V

    .line 564
    const/4 v0, 0x1

    sput v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 565
    invoke-static {v3, v2}, Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V

    goto :goto_0
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 5
    .param p1, "e"    # Lcom/facebook/android/FacebookError;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 524
    sput v2, Lcom/glu/android/GluFBConnect;->m_connectionState:I

    .line 525
    const-string v0, "facebook ~~onFacebookError"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 526
    sget v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 528
    invoke-static {v3, v2}, Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V

    .line 529
    sput v4, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    sget v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    if-ne v0, v2, :cond_2

    .line 535
    sput v3, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    goto :goto_0

    .line 537
    :cond_2
    sget v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/glu/android/GluFBConnect;->displayPostingToWallFailureModal()V

    .line 540
    invoke-static {v4, v2}, Lcom/glu/android/GluJNI;->javaToNativeFacebookSafe(II)V

    .line 541
    const/4 v0, 0x1

    sput v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    goto :goto_0
.end method

.method public queueFeedBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_body:Ljava/lang/String;

    return-void
.end method

.method public queueFeedCaption(Ljava/lang/String;)V
    .locals 0
    .param p1, "caption"    # Ljava/lang/String;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_feedCaption:Ljava/lang/String;

    return-void
.end method

.method public queueFeedHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 614
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_header:Ljava/lang/String;

    return-void
.end method

.method public queueFeedPrompt(Ljava/lang/String;)V
    .locals 0
    .param p1, "prompt"    # Ljava/lang/String;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_prompt:Ljava/lang/String;

    return-void
.end method

.method public queueFriendImageURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_friendLinkImageURL:Ljava/lang/String;

    return-void
.end method

.method public queueFriendLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_friendLink:Ljava/lang/String;

    return-void
.end method

.method public queueFriendLinkText(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_friendLinkText:Ljava/lang/String;

    return-void
.end method

.method public queueFriendMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_friendMessage:Ljava/lang/String;

    return-void
.end method

.method public queueFriendUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_friendUID:Ljava/lang/String;

    return-void
.end method

.method public requestFriendNameFromUID(Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v1, p0, Lcom/glu/android/GluFBConnect;->m_quickAccessFriendInfo:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    .local v0, "ret":Ljava/lang/String;
    const/16 v2, 0xa

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/glu/android/GluJNI;->javaToNativeFacebook(II[B)V

    .line 396
    return-void

    .line 395
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->utf16ToUtf8(Ljava/lang/String;Z)[B

    move-result-object v1

    goto :goto_0
.end method

.method public requestFriendPicsStartingWith(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_friendInfo:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 816
    const-string v0, "Error: Attempted to request friend pics with null info array."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 941
    :goto_0
    return-void

    .line 820
    :cond_0
    monitor-enter p0

    .line 822
    :try_start_0
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_friendRequestQueue:Ljava/util/Vector;

    new-instance v1, Lcom/glu/android/GluFBConnect$FBItem;

    iget-object v2, p0, Lcom/glu/android/GluFBConnect;->m_nextImageSize:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/glu/android/GluFBConnect$FBItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOADING FRIEND: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/glu/android/GluFBConnect;->m_friendRequestQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (running)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/glu/android/GluFBConnect;->RUNNING:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 824
    iget-boolean v0, p0, Lcom/glu/android/GluFBConnect;->RUNNING:Z

    if-eqz v0, :cond_1

    .line 825
    monitor-exit p0

    goto :goto_0

    .line 827
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 826
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/glu/android/GluFBConnect;->RUNNING:Z

    .line 827
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 829
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/glu/android/GluFBConnect$4;

    invoke-direct {v1, p0}, Lcom/glu/android/GluFBConnect$4;-><init>(Lcom/glu/android/GluFBConnect;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public sendFeed(Ljava/lang/String;)V
    .locals 4
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GluFBConnect.sendFeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 466
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 467
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/glu/android/GluFBConnect;->m_facebook:Lcom/facebook/android/Facebook;

    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const-string v3, "stream.publish"

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 470
    return-void
.end method

.method public sendInvite(Ljava/lang/String;)V
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GluFBConnect.sendInvite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 480
    const/16 v2, 0x7e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 481
    .local v0, "delimIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 483
    const-string v2, "Facebook error: Cannot parse invite feed."

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 487
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 488
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "message"

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v2, "uid"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v2, p0, Lcom/glu/android/GluFBConnect;->m_facebook:Lcom/facebook/android/Facebook;

    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const-string v4, "stream.publish"

    invoke-virtual {v2, v3, v4, v1, p0}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_appID:Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/facebook/android/Facebook;

    iget-object v1, p0, Lcom/glu/android/GluFBConnect;->m_appID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glu/android/GluFBConnect;->m_facebook:Lcom/facebook/android/Facebook;

    .line 202
    return-void
.end method

.method public setNextFriendRequestSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_nextImageSize:Ljava/lang/String;

    .line 810
    return-void
.end method

.method public setSecretID(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/glu/android/GluFBConnect;->m_secretID:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public submitQueuedFeed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 627
    sget v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    if-eq v0, v1, :cond_0

    .line 629
    const-string v0, "submitQueuedFeed() called while not logged in."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 635
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_viewManipulationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public submitQueuedFriendFeed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 650
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_friendMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_friendUID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 652
    :cond_0
    const-string v0, "submitQueuedFriendFeed() with null message or uid..."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 671
    :goto_0
    return-void

    .line 655
    :cond_1
    sget v0, Lcom/glu/android/GluFBConnect;->m_facebookState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 657
    const-string v0, "submitQueuedFriendFeed() called while not logged in."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GluFBConnect.submitQueuedFriendFeed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/glu/android/GluFBConnect;->m_friendMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_friendLink:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_friendLink:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 664
    iput-object v2, p0, Lcom/glu/android/GluFBConnect;->m_friendLink:Ljava/lang/String;

    .line 665
    :cond_3
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_friendLinkText:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_friendLinkText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 666
    iput-object v2, p0, Lcom/glu/android/GluFBConnect;->m_friendLinkText:Ljava/lang/String;

    .line 667
    :cond_4
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_friendLinkImageURL:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_friendLinkImageURL:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 668
    iput-object v2, p0, Lcom/glu/android/GluFBConnect;->m_friendLinkImageURL:Ljava/lang/String;

    .line 670
    :cond_5
    iget-object v0, p0, Lcom/glu/android/GluFBConnect;->m_viewManipulationHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
