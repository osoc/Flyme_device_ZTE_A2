.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3

    .prologue
    .line 2658
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2659
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2660
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2661
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2662
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2663
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2664
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2666
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2667
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2668
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2669
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2670
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2674
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v12, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2675
    :try_start_0
    const-string v12, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UninstallReceiver  action = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2677
    .local v1, "action":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2678
    .local v9, "pkgList":[Ljava/lang/String;
    const-string v12, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2679
    const-string v12, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2680
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v2, v5

    .line 2681
    .local v7, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v12, v7}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2683
    const-string v12, "android"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2685
    const/4 v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 2686
    monitor-exit v13

    .line 2739
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "packageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 2680
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2692
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v13

    goto :goto_1

    .line 2738
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "pkgList":[Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 2693
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v9    # "pkgList":[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v12, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2694
    const-string v12, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2719
    :cond_3
    :goto_2
    if-eqz v9, :cond_b

    array-length v12, v9

    if-lez v12, :cond_b

    .line 2720
    move-object v2, v9

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_b

    aget-object v8, v2, v5

    .line 2722
    .local v8, "pkg":Ljava/lang/String;
    const-string v12, "android"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2720
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2695
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_5
    const-string v12, "android.intent.action.USER_STOPPED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2696
    const-string v12, "android.intent.extra.user_handle"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 2697
    .local v11, "userHandle":I
    if-ltz v11, :cond_3

    .line 2698
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v12, v11}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V

    goto :goto_2

    .line 2701
    .end local v11    # "userHandle":I
    :cond_6
    const-string v12, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "android.intent.extra.REPLACING"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2704
    monitor-exit v13

    goto :goto_1

    .line 2706
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 2707
    .local v3, "data":Landroid/net/Uri;
    if-eqz v3, :cond_3

    .line 2708
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 2709
    .restart local v8    # "pkg":Ljava/lang/String;
    const-string v12, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "com.zte.smartpower"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2711
    const-string v12, "AlarmManager"

    const-string v14, " restart power return"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    monitor-exit v13

    goto/16 :goto_1

    .line 2714
    :cond_8
    if-eqz v8, :cond_3

    .line 2715
    const/4 v12, 0x1

    new-array v9, v12, [Ljava/lang/String;

    .end local v9    # "pkgList":[Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v8, v9, v12

    .restart local v9    # "pkgList":[Ljava/lang/String;
    goto :goto_2

    .line 2726
    .end local v3    # "data":Landroid/net/Uri;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v12, v8}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 2727
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2728
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .local v4, "i":I
    :goto_4
    if-ltz v4, :cond_4

    .line 2729
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    .line 2730
    .local v10, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 2731
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-gtz v12, :cond_a

    .line 2732
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2728
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 2738
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v10    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_b
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method