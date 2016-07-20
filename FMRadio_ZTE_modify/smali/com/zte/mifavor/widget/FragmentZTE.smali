.class public Lcom/zte/mifavor/widget/FragmentZTE;
.super Landroid/app/Fragment;
.source "FragmentZTE.java"

# interfaces
.implements Landroid/widget/ActionMenuView$OnMenuItemClickListener;


# static fields
.field public static LEFT_BUTTON:I

.field public static RIGHT_BUTTON:I


# instance fields
.field mScreenWidth:I

.field private mSpiltflag:I

.field mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/zte/mifavor/widget/FragmentZTE;->LEFT_BUTTON:I

    .line 21
    const/4 v0, 0x1

    sput v0, Lcom/zte/mifavor/widget/FragmentZTE;->RIGHT_BUTTON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 19
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mScreenWidth:I

    .line 22
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mSpiltflag:I

    return-void
.end method


# virtual methods
.method public SetBottomBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    goto :goto_0
.end method

.method public SetBottomButtonEnable(IZ)V
    .locals 3
    .param p1, "poistion"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    sget v0, Lcom/zte/mifavor/widget/FragmentZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 100
    if-eqz p2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 108
    :cond_1
    if-eqz p2, :cond_2

    .line 110
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public SetBottomButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 118
    sget v0, Lcom/zte/mifavor/widget/FragmentZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public SetBottomButtonVisible(IZ)V
    .locals 3
    .param p1, "poistion"    # I
    .param p2, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 78
    sget v0, Lcom/zte/mifavor/widget/FragmentZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 79
    if-eqz p2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 88
    :cond_1
    if-eqz p2, :cond_2

    .line 90
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public addBottomBarOptionMenu(Landroid/view/View;I)Landroid/view/View;
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 31
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentZTE;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 32
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 33
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mScreenWidth:I

    .line 35
    new-instance v6, Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentZTE;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget v8, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mScreenWidth:I

    invoke-direct {v6, v7, v8}, Lcom/zte/mifavor/widget/ToolBarZTE;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 36
    iget-object v6, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const v7, -0x1d1d1e

    invoke-virtual {v6, v7}, Lcom/zte/mifavor/widget/ToolBarZTE;->setBackgroundColor(I)V

    .line 37
    iget-object v6, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6, p2}, Lcom/zte/mifavor/widget/ToolBarZTE;->inflateMenu(I)V

    .line 38
    iget-object v6, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6, v11}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 39
    iget-object v6, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6, p0}, Lcom/zte/mifavor/widget/ToolBarZTE;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 40
    iput v12, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mSpiltflag:I

    .line 41
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentZTE;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v10, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 48
    .local v2, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    .local v3, "mToobarParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 55
    .local v5, "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 57
    .end local v5    # "vgroup":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v6, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 59
    iget-object v6, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v6}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 60
    .restart local v5    # "vgroup":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    .end local v5    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v6, p0, Lcom/zte/mifavor/widget/FragmentZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v1, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    return-object v1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/FragmentZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method