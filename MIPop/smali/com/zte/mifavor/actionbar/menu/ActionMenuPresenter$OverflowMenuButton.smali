.class Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 841
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .line 842
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 844
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 845
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 846
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 847
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 849
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 878
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 904
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 905
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 906
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 882
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    :goto_0
    return v1

    .line 886
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 887
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 910
    invoke-super/range {p0 .. p4}, Landroid/widget/ImageButton;->setFrame(IIII)Z

    move-result v3

    .line 913
    .local v3, "changed":Z
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 914
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 915
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v9

    .line 917
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v6

    .line 918
    .local v6, "height":I
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit8 v5, v10, 0x2

    .line 919
    .local v5, "halfEdge":I
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->getPaddingRight()I

    move-result v11

    sub-int v7, v10, v11

    .line 920
    .local v7, "offsetX":I
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->getPaddingBottom()I

    move-result v11

    sub-int v8, v10, v11

    .line 921
    .local v8, "offsetY":I
    add-int v10, v9, v7

    div-int/lit8 v1, v10, 0x2

    .line 922
    .local v1, "centerX":I
    add-int v10, v6, v8

    div-int/lit8 v2, v10, 0x2

    .line 923
    .local v2, "centerY":I
    sub-int v10, v1, v5

    sub-int v11, v2, v5

    add-int v12, v1, v5

    add-int v13, v2, v5

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 927
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    .end local v5    # "halfEdge":I
    .end local v6    # "height":I
    .end local v7    # "offsetX":I
    .end local v8    # "offsetY":I
    .end local v9    # "width":I
    :cond_0
    return v3
.end method