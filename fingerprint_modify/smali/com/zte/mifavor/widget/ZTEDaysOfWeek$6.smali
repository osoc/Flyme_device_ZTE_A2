.class Lcom/zte/mifavor/widget/ZTEDaysOfWeek$6;
.super Ljava/lang/Object;
.source "ZTEDaysOfWeek.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->InitToggleButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/ZTEDaysOfWeek;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$6;->this$0:Lcom/zte/mifavor/widget/ZTEDaysOfWeek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$6;->this$0:Lcom/zte/mifavor/widget/ZTEDaysOfWeek;

    const/4 v1, 0x5

    # invokes: Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->set(IZ)V
    invoke-static {v0, v1, p2}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->access$000(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;IZ)V

    .line 149
    return-void
.end method
