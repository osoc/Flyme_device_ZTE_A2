.class public Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
.super Landroid/app/ActionBar$LayoutParams;
.source "ToolBarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/ToolBarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 2191
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;-><init>(III)V

    .line 2192
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2181
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 2174
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    .line 2182
    const v0, 0x800013

    iput v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->gravity:I

    .line 2183
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 2186
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 2174
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    .line 2187
    iput p3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->gravity:I

    .line 2188
    return-void
.end method

.method public constructor <init>(Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 2201
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    .line 2174
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    .line 2202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2177
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2174
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    .line 2178
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2212
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2174
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    .line 2213
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 2205
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2174
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    .line 2208
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2209
    return-void
.end method

.method public constructor <init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .prologue
    .line 2195
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    .line 2174
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    .line 2197
    iget v0, p1, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    iput v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    .line 2198
    return-void
.end method
