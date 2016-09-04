.class public Lcom/zte/mifavor/widget/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;,
        Lcom/zte/mifavor/widget/AlertController$AlertParams;,
        Lcom/zte/mifavor/widget/AlertController$RecycleListView;,
        Lcom/zte/mifavor/widget/AlertController$ButtonHandler;
    }
.end annotation


# static fields
.field public static titleColor:I


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;

.field private mdivider1:Landroid/widget/ImageView;

.field private mdivider2:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, -0x1

    sput v0, Lcom/zte/mifavor/widget/AlertController;->titleColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    .line 96
    iput v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    .line 108
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mCheckedItem:I

    .line 117
    iput v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelLayoutHint:I

    .line 123
    new-instance v1, Lcom/zte/mifavor/widget/AlertController$1;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/AlertController$1;-><init>(Lcom/zte/mifavor/widget/AlertController;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 181
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 183
    iput-object p3, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    .line 184
    new-instance v1, Lcom/zte/mifavor/widget/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/zte/mifavor/widget/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mHandler:Landroid/os/Handler;

    .line 186
    const/4 v1, 0x0

    sget-object v2, Lcom/zte/extres/R$styleable;->AlertDialog:[I

    sget v3, Lcom/zte/extres/R$attr;->alertDialogStyle:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 190
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_layout:I

    sget v2, Lcom/zte/extres/R$layout;->alert_dialog_zte_light:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mAlertDialogLayout:I

    .line 192
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelSideLayout:I

    .line 195
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 196
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_listLayout:I

    sget v2, Lcom/zte/extres/R$layout;->select_dialog_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mListLayout:I

    .line 199
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    sget v2, Lcom/zte/extres/R$layout;->select_dialog_multichoice_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mMultiChoiceItemLayout:I

    .line 202
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    sget v2, Lcom/zte/extres/R$layout;->select_dialog_singlechoice_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mSingleChoiceItemLayout:I

    .line 205
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_listItemLayout:I

    sget v2, Lcom/zte/extres/R$layout;->select_dialog_item_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mListItemLayout:I

    .line 223
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->setBottomOnZteTheme()V

    .line 228
    :cond_0
    return-void

    .line 209
    :cond_1
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_listLayout:I

    sget v2, Lcom/zte/extres/R$layout;->select_dialog_holo:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mListLayout:I

    .line 212
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    sget v2, Lcom/zte/extres/R$layout;->select_dialog_multichoice_holo:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mMultiChoiceItemLayout:I

    .line 215
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    sget v2, Lcom/zte/extres/R$layout;->select_dialog_singlechoice_holo:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mSingleChoiceItemLayout:I

    .line 218
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_listItemLayout:I

    sget v2, Lcom/zte/extres/R$layout;->select_dialog_item_holo:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mListItemLayout:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/mifavor/widget/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/zte/mifavor/widget/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/zte/mifavor/widget/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1302(Lcom/zte/mifavor/widget/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/zte/mifavor/widget/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1502(Lcom/zte/mifavor/widget/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/mifavor/widget/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 61
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mListLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    :goto_0
    return v2

    .line 242
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 243
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 246
    check-cast v1, Landroid/view/ViewGroup;

    .line 247
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 248
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 249
    add-int/lit8 v0, v0, -0x1

    .line 250
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 251
    invoke-static {p0}, Lcom/zte/mifavor/widget/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 256
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 715
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 716
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 717
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 718
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    return-void
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 271
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 272
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mAlertDialogLayout:I

    .line 278
    :goto_0
    return v0

    .line 274
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 275
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelSideLayout:I

    goto :goto_0

    .line 278
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mAlertDialogLayout:I

    goto :goto_0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 24
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .prologue
    .line 731
    const/4 v10, 0x0

    .line 732
    .local v10, "fullDark":I
    const/16 v19, 0x0

    .line 733
    .local v19, "topDark":I
    const/4 v7, 0x0

    .line 734
    .local v7, "centerDark":I
    const/4 v4, 0x0

    .line 735
    .local v4, "bottomDark":I
    const/4 v9, 0x0

    .line 736
    .local v9, "fullBright":I
    const/16 v18, 0x0

    .line 737
    .local v18, "topBright":I
    const/4 v6, 0x0

    .line 738
    .local v6, "centerBright":I
    const/4 v3, 0x0

    .line 739
    .local v3, "bottomBright":I
    const/4 v5, 0x0

    .line 743
    .local v5, "bottomMedium":I
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_needsDefaultBackgrounds:I

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 745
    .local v15, "needsDefaultBackgrounds":Z
    if-eqz v15, :cond_0

    .line 746
    sget v10, Lcom/zte/extres/R$drawable;->dialog_full_zte_light:I

    .line 747
    sget v19, Lcom/zte/extres/R$drawable;->dialog_top_zte_light:I

    .line 748
    sget v7, Lcom/zte/extres/R$drawable;->dialog_middle_zte_light:I

    .line 749
    sget v4, Lcom/zte/extres/R$drawable;->dialog_bottom_zte_light:I

    .line 750
    sget v9, Lcom/zte/extres/R$drawable;->dialog_full_zte_light:I

    .line 751
    sget v18, Lcom/zte/extres/R$drawable;->dialog_top_zte_light:I

    .line 752
    sget v6, Lcom/zte/extres/R$drawable;->dialog_middle_zte_light:I

    .line 753
    sget v3, Lcom/zte/extres/R$drawable;->dialog_bottom_zte_light:I

    .line 754
    sget v5, Lcom/zte/extres/R$drawable;->dialog_middle_zte_light:I

    .line 757
    :cond_0
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_topBright:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 758
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_topDark:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 759
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_centerBright:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 760
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_centerDark:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 770
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v21, v0

    .line 771
    .local v21, "views":[Landroid/view/View;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v13, v0, [Z

    .line 772
    .local v13, "light":[Z
    const/4 v12, 0x0

    .line 773
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    .line 775
    .local v11, "lastLight":Z
    const/16 v16, 0x0

    .line 776
    .local v16, "pos":I
    if-eqz p6, :cond_1

    .line 777
    aput-object p2, v21, v16

    .line 778
    const/16 v22, 0x0

    aput-boolean v22, v13, v16

    .line 779
    add-int/lit8 v16, v16, 0x1

    .line 787
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 p3, 0x0

    .end local p3    # "contentPanel":Landroid/view/View;
    :cond_2
    aput-object p3, v21, v16

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    :goto_0
    aput-boolean v22, v13, v16

    .line 789
    add-int/lit8 v16, v16, 0x1

    .line 791
    if-eqz p7, :cond_3

    .line 792
    aput-object p4, v21, v16

    .line 793
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/AlertController;->mForceInverseBackground:Z

    move/from16 v22, v0

    aput-boolean v22, v13, v16

    .line 794
    add-int/lit8 v16, v16, 0x1

    .line 797
    :cond_3
    if-eqz p8, :cond_4

    .line 798
    aput-object p5, v21, v16

    .line 799
    const/16 v22, 0x1

    aput-boolean v22, v13, v16

    .line 802
    :cond_4
    const/16 v17, 0x0

    .line 803
    .local v17, "setView":Z
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 804
    aget-object v20, v21, v16

    .line 805
    .local v20, "v":Landroid/view/View;
    if-nez v20, :cond_6

    .line 803
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 788
    .end local v17    # "setView":Z
    .end local v20    # "v":Landroid/view/View;
    :cond_5
    const/16 v22, 0x0

    goto :goto_0

    .line 809
    .restart local v17    # "setView":Z
    .restart local v20    # "v":Landroid/view/View;
    :cond_6
    if-eqz v12, :cond_7

    .line 810
    if-nez v17, :cond_9

    .line 811
    if-eqz v11, :cond_8

    move/from16 v22, v18

    :goto_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 815
    :goto_4
    const/16 v17, 0x1

    .line 818
    :cond_7
    move-object/from16 v12, v20

    .line 819
    aget-boolean v11, v13, v16

    goto :goto_2

    :cond_8
    move/from16 v22, v19

    .line 811
    goto :goto_3

    .line 813
    :cond_9
    if-eqz v11, :cond_a

    move/from16 v22, v6

    :goto_5
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_a
    move/from16 v22, v7

    goto :goto_5

    .line 822
    .end local v20    # "v":Landroid/view/View;
    :cond_b
    if-eqz v12, :cond_c

    .line 823
    if-eqz v17, :cond_10

    .line 824
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_bottomBright:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 825
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_bottomMedium:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 826
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_bottomDark:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 830
    if-eqz v11, :cond_f

    if-eqz p8, :cond_e

    move/from16 v22, v5

    :goto_6
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 840
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    .line 841
    .local v14, "listView":Landroid/widget/ListView;
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 843
    move-object/from16 v0, p0

    iget v8, v0, Lcom/zte/mifavor/widget/AlertController;->mCheckedItem:I

    .line 844
    .local v8, "checkedItem":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v8, v0, :cond_d

    .line 845
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v8, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 846
    invoke-virtual {v14, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 849
    .end local v8    # "checkedItem":I
    :cond_d
    return-void

    .end local v14    # "listView":Landroid/widget/ListView;
    :cond_e
    move/from16 v22, v3

    .line 830
    goto :goto_6

    :cond_f
    move/from16 v22, v4

    goto :goto_6

    .line 833
    :cond_10
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_fullBright:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 834
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_fullDark:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 836
    if-eqz v11, :cond_11

    move/from16 v22, v9

    :goto_8
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_11
    move/from16 v22, v10

    goto :goto_8
.end method

.method private setBottomOnZteTheme()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 235
    return-void
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 642
    const/4 v2, 0x1

    .line 643
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 644
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 645
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 646
    .local v3, "whichButtons":I
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcom/zte/extres/R$id;->button1:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 647
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 650
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 657
    :goto_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcom/zte/extres/R$id;->button2:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 658
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 661
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 669
    :goto_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcom/zte/extres/R$id;->button3:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 670
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 673
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 681
    :goto_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/zte/mifavor/widget/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    if-ne v3, v2, :cond_6

    .line 687
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/zte/mifavor/widget/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 695
    :cond_0
    :goto_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-le v4, v6, :cond_2

    .line 696
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcom/zte/extres/R$id;->divider1:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider1:Landroid/widget/ImageView;

    .line 697
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider1:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcom/zte/extres/R$id;->divider2:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider2:Landroid/widget/ImageView;

    .line 700
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider2:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 702
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 703
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider1:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    :cond_1
    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 707
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider1:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider2:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    :cond_2
    if-eqz v3, :cond_8

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 652
    :cond_3
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 654
    or-int/2addr v3, v2

    goto/16 :goto_0

    .line 663
    :cond_4
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 666
    or-int/2addr v3, v0

    goto/16 :goto_1

    .line 675
    :cond_5
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 678
    or-int/2addr v3, v1

    goto :goto_2

    .line 688
    :cond_6
    if-ne v3, v0, :cond_7

    .line 689
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/zte/mifavor/widget/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 690
    :cond_7
    if-ne v3, v1, :cond_0

    .line 691
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/zte/mifavor/widget/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_8
    move v4, v5

    .line 711
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 615
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/zte/extres/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 616
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 619
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/zte/extres/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 620
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 639
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 630
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/zte/extres/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 632
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 636
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupDecor()V
    .locals 4

    .prologue
    .line 471
    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/zte/extres/R$id;->parentPanel:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 473
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 474
    new-instance v2, Lcom/zte/mifavor/widget/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/zte/mifavor/widget/AlertController$2;-><init>(Lcom/zte/mifavor/widget/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 486
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 487
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 489
    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 565
    const/4 v1, 0x1

    .line 567
    .local v1, "hasTitle":Z
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 569
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 572
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 575
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/zte/extres/R$id;->title_template:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 576
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 611
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :goto_0
    return v1

    .line 578
    :cond_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/zte/extres/R$id;->icon:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 580
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 581
    .local v0, "hasTextTitle":Z
    :cond_1
    if-eqz v0, :cond_4

    .line 583
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/zte/extres/R$id;->alertTitle:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 584
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    if-eqz v4, :cond_2

    .line 590
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 591
    :cond_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 592
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 596
    :cond_3
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 600
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 604
    :cond_4
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/zte/extres/R$id;->title_template:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 605
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 607
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 608
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 22

    .prologue
    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->contentPanel:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 493
    .local v7, "contentPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/zte/mifavor/widget/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/zte/mifavor/widget/AlertController;->setupButtons()Z

    move-result v12

    .line 496
    .local v12, "hasButtons":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->topPanel:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 497
    .local v6, "topPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    sget-object v19, Lcom/zte/extres/R$styleable;->AlertDialog:[I

    const v20, 0x101005d

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 499
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/zte/mifavor/widget/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v10

    .line 501
    .local v10, "hasTitle":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->buttonPanel:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 502
    .local v9, "buttonPanel":Landroid/view/View;
    if-nez v12, :cond_1

    .line 503
    const/16 v4, 0x8

    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->textSpacerNoButtons:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 505
    .local v17, "spacer":Landroid/view/View;
    if-eqz v17, :cond_0

    .line 506
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 508
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 511
    .end local v17    # "spacer":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->customPanel:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 513
    .local v8, "customPanel":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    .line 522
    .local v14, "customView":Landroid/view/View;
    :goto_0
    if-eqz v14, :cond_a

    const/4 v11, 0x1

    .line 523
    .local v11, "hasCustomView":Z
    :goto_1
    if-eqz v11, :cond_2

    invoke-static {v14}, Lcom/zte/mifavor/widget/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 524
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v18, 0x20000

    const/high16 v19, 0x20000

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 528
    :cond_3
    if-eqz v11, :cond_b

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->custom:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 530
    .local v13, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_4

    .line 533
    move-object/from16 v0, p0

    iget v4, v0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingTop:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingBottom:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v13, v4, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 537
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_5

    .line 538
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 546
    .end local v13    # "custom":Landroid/widget/FrameLayout;
    :cond_5
    :goto_2
    if-eqz v10, :cond_7

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_c

    .line 549
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->titleDivider:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 554
    .local v15, "divider":Landroid/view/View;
    :goto_3
    if-eqz v15, :cond_7

    .line 555
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    .end local v15    # "divider":Landroid/view/View;
    :cond_7
    move-object/from16 v4, p0

    .line 559
    invoke-direct/range {v4 .. v12}, Lcom/zte/mifavor/widget/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 561
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 562
    return-void

    .line 515
    .end local v11    # "hasCustomView":Z
    .end local v14    # "customView":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_9

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .line 517
    .local v16, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v4, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 518
    .restart local v14    # "customView":Landroid/view/View;
    goto/16 :goto_0

    .line 519
    .end local v14    # "customView":Landroid/view/View;
    .end local v16    # "inflater":Landroid/view/LayoutInflater;
    :cond_9
    const/4 v14, 0x0

    .restart local v14    # "customView":Landroid/view/View;
    goto/16 :goto_0

    .line 522
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 541
    .restart local v11    # "hasCustomView":Z
    :cond_b
    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 551
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->titleDividerTop:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .restart local v15    # "divider":Landroid/view/View;
    goto :goto_3
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 448
    packed-switch p1, :pswitch_data_0

    .line 456
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 450
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 452
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 454
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 434
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 435
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 436
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 262
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->selectContentView()I

    move-result v0

    .line 263
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 264
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->setupView()V

    .line 265
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->setupDecor()V

    .line 268
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 364
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 365
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 368
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :pswitch_0
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 372
    iput-object p4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 388
    :goto_0
    return-void

    .line 376
    :pswitch_1
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 377
    iput-object p4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 381
    :pswitch_2
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 382
    iput-object p4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .prologue
    .line 346
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelLayoutHint:I

    .line 347
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 301
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 398
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    .line 400
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 401
    if-eqz p1, :cond_1

    .line 402
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    .line 418
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 419
    if-eqz p1, :cond_1

    .line 420
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/AlertController;->mForceInverseBackground:Z

    .line 441
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 305
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 283
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 290
    move v0, p1

    .line 291
    .local v0, "titleColor":I
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    .line 315
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    .line 317
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 323
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    .line 324
    iput v0, p0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    .line 325
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    .line 326
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 333
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    .line 336
    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingLeft:I

    .line 337
    iput p3, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingTop:I

    .line 338
    iput p4, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingRight:I

    .line 339
    iput p5, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingBottom:I

    .line 340
    return-void
.end method