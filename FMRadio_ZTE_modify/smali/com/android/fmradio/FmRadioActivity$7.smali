.class Lcom/android/fmradio/FmRadioActivity$7;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v0, 0x0

    .line 579
    const-string v1, "FmRx/Activity"

    const-string v2, "FmRadioActivity.onServiceConnected start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    check-cast p2, Lcom/android/fmradio/FmService$ServiceBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/fmradio/FmService$ServiceBinder;->getService()Lcom/android/fmradio/FmService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fmradio/FmRadioActivity;->access$33(Lcom/android/fmradio/FmRadioActivity;Lcom/android/fmradio/FmService;)V

    .line 581
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 582
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: Error: can\'t get Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    invoke-virtual {v1}, Lcom/android/fmradio/FmRadioActivity;->finish()V

    .line 642
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mFmListener:Lcom/android/fmradio/FmListener;
    invoke-static {v2}, Lcom/android/fmradio/FmRadioActivity;->access$34(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fmradio/FmService;->registerFmRadioListener(Lcom/android/fmradio/FmListener;)V

    .line 588
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isServiceInited()Z

    move-result v1

    if-nez v1, :cond_1

    .line 589
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: FM service is not init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/android/fmradio/FmRadioActivity;->access$8(Lcom/android/fmradio/FmRadioActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/fmradio/FmService;->initService(I)V

    .line 591
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->powerUpFm()V
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$35(Lcom/android/fmradio/FmRadioActivity;)V

    .line 641
    :goto_1
    const-string v1, "FmRx/Activity"

    const-string v2, "FmRadioActivity.onServiceConnected end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    :cond_1
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: FM service is already init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isDeviceOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 602
    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v2}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isModeNormal()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 603
    const-string v1, "FmRx/Activity"

    const-string v2, "Need to power up auto for this case"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->powerUpFm()V
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$35(Lcom/android/fmradio/FmRadioActivity;)V

    .line 617
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mNeedTuneto:Z
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$37(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 618
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/android/fmradio/FmRadioActivity;->access$8(Lcom/android/fmradio/FmRadioActivity;)I

    move-result v2

    # invokes: Lcom/android/fmradio/FmRadioActivity;->tuneToStation(I)V
    invoke-static {v1, v2}, Lcom/android/fmradio/FmRadioActivity;->access$5(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 619
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    invoke-static {v1, v0}, Lcom/android/fmradio/FmRadioActivity;->access$38(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 621
    :cond_3
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->updateCurrentStation()V
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$39(Lcom/android/fmradio/FmRadioActivity;)V

    .line 622
    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v2}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v2

    if-ne v1, v2, :cond_4

    const/4 v0, 0x1

    .line 627
    .local v0, "isPlaying":Z
    :cond_4
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    invoke-static {v1, v0}, Lcom/android/fmradio/FmRadioActivity;->access$17(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 628
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->updateMenuStatus()V
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$40(Lcom/android/fmradio/FmRadioActivity;)V

    .line 629
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->updateDialogStatus()V
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$41(Lcom/android/fmradio/FmRadioActivity;)V

    .line 630
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->restoreRecorderState()V
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$42(Lcom/android/fmradio/FmRadioActivity;)V

    .line 631
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->restoreCountDownState()V
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$43(Lcom/android/fmradio/FmRadioActivity;)V

    goto/16 :goto_1

    .line 605
    .end local v0    # "isPlaying":Z
    :cond_5
    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    iget-object v2, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v2}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isModeNormal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 608
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$36(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isAntennaAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 609
    const-string v1, "FmRx/Activity"

    const-string v2, "Need to show no antenna dialog for plug out earphone in onPause state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->dismissNoAntennaDialog()Z
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$26(Lcom/android/fmradio/FmRadioActivity;)Z

    .line 611
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    invoke-virtual {v1}, Lcom/android/fmradio/FmRadioActivity;->showNoAntennaDialog()V

    goto/16 :goto_2

    .line 635
    :cond_6
    const-string v1, "FmRx/Activity"

    .line 636
    const-string v2, "ServiceConnection: service is exiting while start FM again"

    .line 635
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->exitService()V
    invoke-static {v1}, Lcom/android/fmradio/FmRadioActivity;->access$44(Lcom/android/fmradio/FmRadioActivity;)V

    .line 638
    iget-object v1, p0, Lcom/android/fmradio/FmRadioActivity$7;->this$0:Lcom/android/fmradio/FmRadioActivity;

    invoke-virtual {v1}, Lcom/android/fmradio/FmRadioActivity;->finish()V

    goto/16 :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 652
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void
.end method
