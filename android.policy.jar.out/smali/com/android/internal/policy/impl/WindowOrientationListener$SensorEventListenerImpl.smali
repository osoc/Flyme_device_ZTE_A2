.class final Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 4.0f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 75.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 13.80665f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x4b

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 5.80665f

.field private static final NANOS_PER_MS:J = 0xf4240L

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0x28


# instance fields
.field private final TILT_OVERHEAD_ENTER:I

.field private final TILT_OVERHEAD_EXIT:I

.field private final TILT_TOLERANCE:[[I

.field private mAccelerating:Z

.field private mAccelerationTimestampNanos:J

.field private mFlat:Z

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mOverhead:Z

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mSwinging:Z

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J

.field final synthetic this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V
    .locals 5

    .prologue
    const/16 v4, 0x28

    const/4 v3, 0x2

    .line 255
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    .line 380
    const/16 v0, -0x28

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->TILT_OVERHEAD_ENTER:I

    .line 384
    const/16 v0, -0xf

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->TILT_OVERHEAD_EXIT:I

    .line 423
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    .line 424
    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    return-void

    .line 371
    nop

    :array_0
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_1
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_2
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_3
    .array-data 4
        -0x19
        0x41
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V

    return-void
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .locals 5
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 772
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput-wide p1, v0, v1

    .line 773
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x28

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 774
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 775
    return-void
.end method

.method private clearPredictedRotationLocked()V
    .locals 2

    .prologue
    .line 749
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 750
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 751
    return-void
.end method

.method private clearTiltHistoryLocked()V
    .locals 4

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 767
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 768
    return-void
.end method

.method private getLastTiltLocked()F
    .locals 2

    .prologue
    .line 809
    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    .line 810
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x7fc00000    # NaNf

    goto :goto_0
.end method

.method private isAcceleratingLocked(F)Z
    .locals 1
    .param p1, "magnitude"    # F

    .prologue
    .line 761
    const v0, 0x40b9d014

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x415ce80a

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlatLocked(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 778
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 779
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42960000    # 75.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 787
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 782
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v2, v1, v0

    const-wide/32 v4, 0x3b9aca00

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gtz v1, :cond_0

    .line 784
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .locals 5
    .param p1, "rotation"    # I
    .param p2, "orientationAngle"    # I

    .prologue
    const/4 v3, 0x0

    .line 660
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v0

    .line 661
    .local v0, "currentRotation":I
    if-ltz v0, :cond_5

    .line 666
    if-eq p1, v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_3

    .line 668
    :cond_0
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, -0x2d

    add-int/lit8 v1, v4, 0x16

    .line 670
    .local v1, "lowerBound":I
    if-nez p1, :cond_2

    .line 671
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_3

    add-int/lit16 v4, v1, 0x168

    if-ge p2, v4, :cond_3

    .line 700
    .end local v1    # "lowerBound":I
    :cond_1
    :goto_0
    return v3

    .line 675
    .restart local v1    # "lowerBound":I
    :cond_2
    if-lt p2, v1, :cond_1

    .line 685
    .end local v1    # "lowerBound":I
    :cond_3
    if-eq p1, v0, :cond_4

    add-int/lit8 v4, v0, 0x3

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_5

    .line 687
    :cond_4
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, 0x2d

    add-int/lit8 v2, v4, -0x16

    .line 689
    .local v2, "upperBound":I
    if-nez p1, :cond_6

    .line 690
    const/16 v4, 0x2d

    if-gt p2, v4, :cond_5

    if-gt p2, v2, :cond_1

    .line 700
    .end local v2    # "upperBound":I
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 694
    .restart local v2    # "upperBound":I
    :cond_6
    if-le p2, v2, :cond_5

    goto :goto_0
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .locals 9
    .param p1, "now"    # J

    .prologue
    const-wide/32 v6, 0x1dcd6500

    const/4 v0, 0x0

    .line 709
    iget-wide v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    const-wide/32 v4, 0x2625a00

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 731
    :cond_0
    :goto_0
    return v0

    .line 714
    :cond_1
    iget-wide v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 720
    iget-wide v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    const-wide/32 v4, 0x11e1a300

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 725
    iget-wide v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 731
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSwingingLocked(JF)Z
    .locals 7
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .prologue
    .line 791
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 792
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v2, v1, v0

    const-wide/32 v4, 0x11e1a300

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gez v1, :cond_2

    .line 800
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 795
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_0

    .line 797
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .locals 3
    .param p1, "rotation"    # I
    .param p2, "tiltAngle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 646
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private nextTiltHistoryIndexLocked(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 804
    if-nez p1, :cond_0

    const/16 p1, 0x28

    .end local p1    # "index":I
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 805
    .restart local p1    # "index":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .end local p1    # "index":I
    :goto_0
    return p1

    .restart local p1    # "index":I
    :cond_1
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private remainingMS(JJ)F
    .locals 3
    .param p1, "now"    # J
    .param p3, "until"    # J

    .prologue
    .line 814
    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sub-long v0, p3, p1

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private resetLocked()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x0

    .line 735
    iput-wide v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 736
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 737
    iput-wide v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 738
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlat:Z

    .line 739
    iput-wide v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 740
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwinging:Z

    .line 741
    iput-wide v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 742
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerating:Z

    .line 743
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    .line 744
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    .line 745
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearTiltHistoryLocked()V

    .line 746
    return-void
.end method

.method private updatePredictedRotationLocked(JI)V
    .locals 1
    .param p1, "now"    # J
    .param p3, "rotation"    # I

    .prologue
    .line 754
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    if-eq v0, p3, :cond_0

    .line 755
    iput p3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 756
    iput-wide p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 758
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mPredictedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastFilteredX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastFilteredY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastFilteredZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mTiltHistory={last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->getLastTiltLocked()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mFlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSwinging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAccelerating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mOverhead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public getProposedRotationLocked()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 446
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 30
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    move-object/from16 v23, v0

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$100(Lcom/android/internal/policy/impl/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 457
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v23, v0

    const/16 v25, 0x0

    aget v20, v23, v25

    .line 458
    .local v20, "x":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v23, v0

    const/16 v25, 0x1

    aget v21, v23, v25

    .line 459
    .local v21, "y":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v23, v0

    const/16 v25, 0x2

    aget v22, v23, v25

    .line 461
    .local v22, "z":F
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 462
    const-string v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Raw acceleration vector: x="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", y="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", z="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", magnitude="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    mul-float v26, v20, v20

    mul-float v27, v21, v21

    add-float v26, v26, v27

    mul-float v27, v22, v22

    add-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 472
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    move-wide/from16 v16, v0

    .line 473
    .local v16, "then":J
    sub-long v26, v10, v16

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v23, v0

    const v25, 0x358637bd    # 1.0E-6f

    mul-float v19, v23, v25

    .line 475
    .local v19, "timeDeltaMS":F
    cmp-long v23, v10, v16

    if-ltz v23, :cond_1

    const-wide/32 v26, 0x3b9aca00

    add-long v26, v26, v16

    cmp-long v23, v10, v26

    if-gtz v23, :cond_1

    const/16 v23, 0x0

    cmpl-float v23, v20, v23

    if-nez v23, :cond_a

    const/16 v23, 0x0

    cmpl-float v23, v21, v23

    if-nez v23, :cond_a

    const/16 v23, 0x0

    cmpl-float v23, v22, v23

    if-nez v23, :cond_a

    .line 478
    :cond_1
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 479
    const-string v23, "WindowOrientationListener"

    const-string v25, "Resetting orientation listener."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V

    .line 482
    const/4 v15, 0x1

    .line 495
    .local v15, "skipSample":Z
    :goto_0
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 496
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    .line 497
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    .line 498
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    .line 500
    const/4 v5, 0x0

    .line 501
    .local v5, "isAccelerating":Z
    const/4 v6, 0x0

    .line 502
    .local v6, "isFlat":Z
    const/4 v7, 0x0

    .line 503
    .local v7, "isSwinging":Z
    if-nez v15, :cond_4

    .line 505
    mul-float v23, v20, v20

    mul-float v25, v21, v21

    add-float v23, v23, v25

    mul-float v25, v22, v22

    add-float v23, v23, v25

    invoke-static/range {v23 .. v23}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v8

    .line 506
    .local v8, "magnitude":F
    const/high16 v23, 0x3f800000    # 1.0f

    cmpg-float v23, v8, v23

    if-gez v23, :cond_c

    .line 507
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 508
    const-string v23, "WindowOrientationListener"

    const-string v25, "Ignoring sensor data, magnitude too close to zero."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    .line 600
    .end local v8    # "magnitude":F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlat:Z

    .line 601
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwinging:Z

    .line 602
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerating:Z

    .line 605
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 606
    .local v12, "oldProposedRotation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v23, v0

    if-ltz v23, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isPredictedRotationAcceptableLocked(J)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 607
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 609
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 612
    .local v14, "proposedRotation":I
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 613
    const-string v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Result: currentRotation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    move-object/from16 v26, v0

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static/range {v26 .. v26}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", proposedRotation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", predictedRotation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", timeDeltaMS="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", isAccelerating="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", isFlat="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", isSwinging="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", isOverhead="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", timeUntilSettledMS="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x2625a00

    add-long v26, v26, v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x1dcd6500

    add-long v26, v26, v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x1dcd6500

    add-long v26, v26, v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x11e1a300

    add-long v26, v26, v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v10, v11, v1, v2}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_7
    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    if-eq v14, v12, :cond_9

    if-ltz v14, :cond_9

    .line 634
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 635
    const-string v23, "WindowOrientationListener"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Proposed rotation changed!  proposedRotation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", oldProposedRotation="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->this$0:Lcom/android/internal/policy/impl/WindowOrientationListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 640
    :cond_9
    return-void

    .line 484
    .end local v5    # "isAccelerating":Z
    .end local v6    # "isFlat":Z
    .end local v7    # "isSwinging":Z
    .end local v12    # "oldProposedRotation":I
    .end local v14    # "proposedRotation":I
    .end local v15    # "skipSample":Z
    :cond_a
    const/high16 v23, 0x43480000    # 200.0f

    add-float v23, v23, v19

    div-float v4, v19, v23

    .line 485
    .local v4, "alpha":F
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v23, v0

    sub-float v23, v20, v23

    mul-float v23, v23, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v25, v0

    add-float v20, v23, v25

    .line 486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v23, v0

    sub-float v23, v21, v23

    mul-float v23, v23, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v25, v0

    add-float v21, v23, v25

    .line 487
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v23, v0

    sub-float v23, v22, v23

    mul-float v23, v23, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v25, v0

    add-float v22, v23, v25

    .line 488
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 489
    const-string v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Filtered acceleration vector: x="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", y="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", z="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", magnitude="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    mul-float v26, v20, v20

    mul-float v27, v21, v21

    add-float v26, v26, v27

    mul-float v27, v22, v22

    add-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_b
    const/4 v15, 0x0

    .restart local v15    # "skipSample":Z
    goto/16 :goto_0

    .line 514
    .end local v4    # "alpha":F
    .restart local v5    # "isAccelerating":Z
    .restart local v6    # "isFlat":Z
    .restart local v7    # "isSwinging":Z
    .restart local v8    # "magnitude":F
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isAcceleratingLocked(F)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 515
    const/4 v5, 0x1

    .line 516
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 525
    :cond_d
    div-float v23, v22, v8

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    const-wide v28, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v18, v0

    .line 527
    .local v18, "tiltAngle":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v10, v11, v1}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->addTiltHistoryEntryLocked(JF)V

    .line 530
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isFlatLocked(J)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 531
    const/4 v6, 0x1

    .line 532
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 534
    :cond_e
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v10, v11, v1}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isSwingingLocked(JF)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 535
    const/4 v7, 0x1

    .line 536
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 541
    :cond_f
    const/16 v23, -0x28

    move/from16 v0, v18

    move/from16 v1, v23

    if-gt v0, v1, :cond_12

    .line 542
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    .line 546
    :cond_10
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    move/from16 v23, v0

    if-eqz v23, :cond_13

    .line 547
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 548
    const-string v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Ignoring sensor data, device is overhead: tiltAngle="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    goto/16 :goto_1

    .line 630
    .end local v5    # "isAccelerating":Z
    .end local v6    # "isFlat":Z
    .end local v7    # "isSwinging":Z
    .end local v8    # "magnitude":F
    .end local v10    # "now":J
    .end local v15    # "skipSample":Z
    .end local v16    # "then":J
    .end local v18    # "tiltAngle":I
    .end local v19    # "timeDeltaMS":F
    .end local v20    # "x":F
    .end local v21    # "y":F
    .end local v22    # "z":F
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    .line 543
    .restart local v5    # "isAccelerating":Z
    .restart local v6    # "isFlat":Z
    .restart local v7    # "isSwinging":Z
    .restart local v8    # "magnitude":F
    .restart local v10    # "now":J
    .restart local v15    # "skipSample":Z
    .restart local v16    # "then":J
    .restart local v18    # "tiltAngle":I
    .restart local v19    # "timeDeltaMS":F
    .restart local v20    # "x":F
    .restart local v21    # "y":F
    .restart local v22    # "z":F
    :cond_12
    const/16 v23, -0xf

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    .line 544
    const/16 v23, 0x0

    :try_start_2
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mOverhead:Z

    goto :goto_2

    .line 552
    :cond_13
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v23

    const/16 v25, 0x4b

    move/from16 v0, v23

    move/from16 v1, v25

    if-le v0, v1, :cond_15

    .line 553
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v23

    if-eqz v23, :cond_14

    .line 554
    const-string v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V

    goto/16 :goto_1

    .line 562
    :cond_15
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->round(D)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v13, v0

    .line 564
    .local v13, "orientationAngle":I
    if-gez v13, :cond_16

    .line 566
    add-int/lit16 v13, v13, 0x168

    .line 570
    :cond_16
    add-int/lit8 v23, v13, 0x2d

    div-int/lit8 v9, v23, 0x5a

    .line 571
    .local v9, "nearestRotation":I
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v9, v0, :cond_17

    .line 572
    const/4 v9, 0x0

    .line 576
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptableLocked(II)Z

    move-result v23

    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptableLocked(II)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 579
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v9}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->updatePredictedRotationLocked(JI)V

    .line 580
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 581
    const-string v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Predicted: tiltAngle="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", orientationAngle="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", predictedRotation="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", predictedRotationAgeMS="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v26, v0

    sub-long v26, v10, v26

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x358637bd    # 1.0E-6f

    mul-float v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 590
    :cond_18
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v23

    if-eqz v23, :cond_19

    .line 591
    const-string v23, "WindowOrientationListener"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", orientationAngle="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotationLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method