.class Lcom/zte/mifavor/widget/FusrceenActivity$1;
.super Ljava/lang/Object;
.source "FusrceenActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/FusrceenActivity;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/FusrceenActivity;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/FusrceenActivity;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/zte/mifavor/widget/FusrceenActivity$1;->this$0:Lcom/zte/mifavor/widget/FusrceenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/mifavor/widget/FusrceenActivity$1;->this$0:Lcom/zte/mifavor/widget/FusrceenActivity;

    # invokes: Lcom/zte/mifavor/widget/FusrceenActivity;->possiblyResizeChildOfContent()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/FusrceenActivity;->access$000(Lcom/zte/mifavor/widget/FusrceenActivity;)V

    .line 28
    return-void
.end method