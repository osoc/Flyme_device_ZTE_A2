.class Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$1;
.super Ljava/lang/Object;
.source "TurnOverRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$1;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer$1;->this$0:Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;

    const/4 v1, 0x0

    # setter for: Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->mDecting:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;->access$002(Lcom/zte/zgesture/core/sensorrec/TurnOverRecognizer;Z)Z

    .line 28
    const-string v0, "TurnOverRecognizer"

    const-string v1, " Detecting end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method