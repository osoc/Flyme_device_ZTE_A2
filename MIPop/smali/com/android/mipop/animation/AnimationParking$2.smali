.class final Lcom/android/mipop/animation/AnimationParking$2;
.super Ljava/lang/Object;
.source "AnimationParking.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/animation/AnimationParking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 77
    # invokes: Lcom/android/mipop/animation/AnimationParking;->shrinking()V
    invoke-static {}, Lcom/android/mipop/animation/AnimationParking;->access$100()V

    .line 78
    return-void
.end method