.class Lcom/mediatek/aal/AalUtils$AalConfig;
.super Ljava/lang/Object;
.source "AalUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/aal/AalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AalConfig"
.end annotation


# instance fields
.field public mLevel:I

.field public mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/aal/AalUtils;


# direct methods
.method public constructor <init>(Lcom/mediatek/aal/AalUtils;Ljava/lang/String;I)V
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "level"    # I

    .prologue
    .line 440
    iput-object p1, p0, Lcom/mediatek/aal/AalUtils$AalConfig;->this$0:Lcom/mediatek/aal/AalUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/aal/AalUtils$AalConfig;->mPackageName:Ljava/lang/String;

    .line 438
    const/16 v0, 0x80

    iput v0, p0, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    .line 441
    iput-object p2, p0, Lcom/mediatek/aal/AalUtils$AalConfig;->mPackageName:Ljava/lang/String;

    .line 442
    iput p3, p0, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    .line 443
    return-void
.end method
