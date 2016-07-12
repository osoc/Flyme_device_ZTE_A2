.class public Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;
.super Ljava/lang/Object;
.source "GsmVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$GsmVTMessagePacker;,
        Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;,
        Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$Size;
    }
.end annotation


# static fields
.field public static final DUMMY_CAMERA:I = 0xff

.field public static final HIDE_ME_TYPE_DISABLE:I = 0x1

.field public static final HIDE_ME_TYPE_FREEZE:I = 0x2

.field public static final HIDE_ME_TYPE_NONE:I = 0x0

.field public static final HIDE_ME_TYPE_PICTURE:I = 0x3

.field public static final HIDE_YOU_TYPE_DISABLE:I = 0x0

.field public static final HIDE_YOU_TYPE_ENABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GsmVTProviderUtil"

.field public static final TURN_OFF_CAMERA:I = -0x1

.field private static mPacker:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$GsmVTMessagePacker;

.field private static mParamSet:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;

.field private static mProviderById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mSurfaceStatusById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 454
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$GsmVTMessagePacker;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$GsmVTMessagePacker;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mPacker:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$GsmVTMessagePacker;

    .line 455
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mProviderById:Ljava/util/Map;

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mSurfaceStatusById:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    new-instance v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;-><init>(Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;)V

    sput-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mParamSet:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;

    .line 460
    return-void
.end method

.method public static getSetting()Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mParamSet:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$ParameterSet;

    return-object v0
.end method

.method public static packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "VideoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 467
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mPacker:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$GsmVTMessagePacker;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$GsmVTMessagePacker;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static recordAdd(ILcom/mediatek/internal/telephony/gsm/GsmVTProvider;)V
    .locals 3
    .param p0, "Id"    # I
    .param p1, "p"    # Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    .prologue
    .line 530
    const-string v0, "GsmVTProviderUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordAdd id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    return-void
.end method

.method public static recordContain(I)Z
    .locals 2
    .param p0, "Id"    # I

    .prologue
    .line 557
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static recordGet(I)Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;
    .locals 3
    .param p0, "Id"    # I

    .prologue
    .line 542
    const-string v0, "GsmVTProviderUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordGet id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    return-object v0
.end method

.method public static recordPopId()I
    .locals 3

    .prologue
    .line 548
    sget-object v2, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    sget-object v2, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 550
    .local v1, "p":Ljava/lang/Object;
    check-cast v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;

    .end local v1    # "p":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/gsm/GsmVTProvider;->getId()I

    move-result v2

    .line 553
    :goto_0
    return v2

    :cond_0
    const/16 v2, -0x2710

    goto :goto_0
.end method

.method public static recordRemove(I)V
    .locals 3
    .param p0, "Id"    # I

    .prologue
    .line 536
    const-string v0, "GsmVTProviderUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordRemove id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->recordSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    return-void
.end method

.method public static recordSize()I
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static surfaceGet(I)I
    .locals 4
    .param p0, "Id"    # I

    .prologue
    .line 519
    sget-object v1, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mSurfaceStatusById:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 520
    .local v0, "status":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 521
    const-string v1, "GsmVTProviderUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[surfaceGet] state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 525
    :goto_0
    return v1

    .line 524
    :cond_0
    const-string v1, "GsmVTProviderUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[surfaceGet] state = 0, Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static surfaceSet(IZZ)V
    .locals 5
    .param p0, "Id"    # I
    .param p1, "isLocal"    # Z
    .param p2, "isSet"    # Z

    .prologue
    .line 475
    sget-object v2, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mSurfaceStatusById:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 478
    .local v0, "status":Ljava/lang/Integer;
    const-string v2, "GsmVTProviderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[surfaceSet] isLocal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-eqz v0, :cond_3

    .line 481
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 482
    .local v1, "statusInt":I
    const-string v2, "GsmVTProviderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[surfaceSet] state (before) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    if-eqz p1, :cond_1

    .line 484
    if-nez p2, :cond_0

    .line 485
    and-int/lit8 v1, v1, -0x2

    .line 512
    :goto_0
    const-string v2, "GsmVTProviderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[surfaceSet] state (after) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    sget-object v2, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mSurfaceStatusById:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    return-void

    .line 487
    :cond_0
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_1
    if-nez p2, :cond_2

    .line 491
    and-int/lit8 v1, v1, -0x3

    goto :goto_0

    .line 493
    :cond_2
    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 497
    .end local v1    # "statusInt":I
    :cond_3
    const-string v2, "GsmVTProviderUtil"

    const-string v3, "[surfaceSet] state (before) = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    if-eqz p1, :cond_5

    .line 499
    if-nez p2, :cond_4

    .line 500
    const/4 v1, 0x0

    .restart local v1    # "statusInt":I
    goto :goto_0

    .line 502
    .end local v1    # "statusInt":I
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "statusInt":I
    goto :goto_0

    .line 505
    .end local v1    # "statusInt":I
    :cond_5
    if-nez p2, :cond_6

    .line 506
    const/4 v1, 0x0

    .restart local v1    # "statusInt":I
    goto :goto_0

    .line 508
    .end local v1    # "statusInt":I
    :cond_6
    const/4 v1, 0x2

    .restart local v1    # "statusInt":I
    goto :goto_0
.end method

.method public static unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;
    .locals 1
    .param p0, "flattened"    # Ljava/lang/String;

    .prologue
    .line 471
    sget-object v0, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil;->mPacker:Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$GsmVTMessagePacker;

    invoke-virtual {v0, p0}, Lcom/mediatek/internal/telephony/gsm/GsmVTProviderUtil$GsmVTMessagePacker;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    return-object v0
.end method
