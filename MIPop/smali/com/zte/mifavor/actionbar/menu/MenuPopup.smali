.class public abstract Lcom/zte/mifavor/actionbar/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;
.implements Lcom/zte/mifavor/actionbar/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mEpicenterBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 10
    .param p0, "adapter"    # Landroid/widget/ListAdapter;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "maxAllowedWidth"    # I

    .prologue
    const/4 v9, 0x0

    .line 139
    const/4 v6, 0x0

    .line 140
    .local v6, "maxWidth":I
    const/4 v4, 0x0

    .line 141
    .local v4, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 143
    .local v3, "itemType":I
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 144
    .local v8, "widthMeasureSpec":I
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 145
    .local v1, "heightMeasureSpec":I
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 146
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 147
    invoke-interface {p0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v7

    .line 148
    .local v7, "positionType":I
    if-eq v7, v3, :cond_0

    .line 149
    move v3, v7

    .line 150
    const/4 v4, 0x0

    .line 153
    :cond_0
    if-nez p1, :cond_1

    .line 154
    new-instance p1, Landroid/widget/FrameLayout;

    .end local p1    # "parent":Landroid/view/ViewGroup;
    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 157
    .restart local p1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-interface {p0, v2, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 158
    invoke-virtual {v4, v8, v1}, Landroid/view/View;->measure(II)V

    .line 160
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 161
    .local v5, "itemWidth":I
    if-lt v5, p3, :cond_2

    .line 168
    .end local v5    # "itemWidth":I
    .end local v7    # "positionType":I
    .end local p3    # "maxAllowedWidth":I
    :goto_1
    return p3

    .line 163
    .restart local v5    # "itemWidth":I
    .restart local v7    # "positionType":I
    .restart local p3    # "maxAllowedWidth":I
    :cond_2
    if-le v5, v6, :cond_3

    .line 164
    move v6, v5

    .line 146
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v5    # "itemWidth":I
    .end local v7    # "positionType":I
    :cond_4
    move p3, v6

    .line 168
    goto :goto_1
.end method

.method protected static shouldPreserveIconSpacing(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)Z
    .locals 5
    .param p0, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->size()I

    move-result v1

    .line 201
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 202
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 203
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 204
    const/4 v3, 0x1

    .line 209
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    return v3

    .line 201
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected static toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/zte/mifavor/actionbar/menu/MenuAdapter;
    .locals 1
    .param p0, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 180
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 181
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    .line 183
    :goto_0
    return-object v0

    .restart local p0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    check-cast p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public abstract addMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V
.end method

.method public collapseItemActionView(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "item"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "item"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/zte/mifavor/actionbar/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopups manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    .line 98
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 123
    .local v0, "outerAdapter":Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    move-result-object v1

    .line 127
    .local v1, "wrappedAdapter":Lcom/zte/mifavor/actionbar/menu/MenuAdapter;
    iget-object v3, v1, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mAdapterMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 128
    return-void
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 71
    return-void
.end method

.method public abstract setForceShowIcon(Z)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setShowTitle(Z)V
.end method

.method public abstract setVerticalOffset(I)V
.end method