.class Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolBarActionBarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)V
    .locals 1

    .prologue
    .line 571
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$2;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$2;->mCanceled:Z

    .line 583
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$2;->mCanceled:Z

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$2;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->access$000(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setVisibility(I)V

    .line 578
    :cond_0
    return-void
.end method