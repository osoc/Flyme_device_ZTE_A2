.class public Lcom/zte/mifavor/preference/Preference$BaseSavedState;
.super Lcom/zte/mifavor/preference/AbsSavedState;
.source "Preference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zte/mifavor/preference/Preference$BaseSavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1934
    new-instance v0, Lcom/zte/mifavor/preference/Preference$BaseSavedState$1;

    invoke-direct {v0}, Lcom/zte/mifavor/preference/Preference$BaseSavedState$1;-><init>()V

    sput-object v0, Lcom/zte/mifavor/preference/Preference$BaseSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1927
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/AbsSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1928
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1931
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1932
    return-void
.end method