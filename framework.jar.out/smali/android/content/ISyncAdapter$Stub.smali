.class public abstract Landroid/content/ISyncAdapter$Stub;
.super Landroid/os/Binder;
.source "ISyncAdapter.java"

# interfaces
.implements Landroid/content/ISyncAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ISyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.ISyncAdapter"

.field static final TRANSACTION_cancelSync:I = 0x2

.field static final TRANSACTION_initialize_2:I = 0x3

.field static final TRANSACTION_startSync_0:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.content.ISyncAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/content/ISyncAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.content.ISyncAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/ISyncAdapter;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/content/ISyncAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/ISyncAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/ISyncAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 46
    :sswitch_0
    const-string/jumbo v5, "android.content.ISyncAdapter"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v6

    .line 51
    :sswitch_1
    const-string/jumbo v5, "android.content.ISyncAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ISyncContext$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;

    move-result-object v1

    .line 55
    .local v1, "_arg0":Landroid/content/ISyncContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    .line 64
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 70
    :goto_1
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/ISyncAdapter$Stub;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 71
    return v6

    .line 61
    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg2":Landroid/accounts/Account;
    goto :goto_0

    .line 68
    .end local v3    # "_arg2":Landroid/accounts/Account;
    :cond_1
    const/4 v4, 0x0

    .local v4, "_arg3":Landroid/os/Bundle;
    goto :goto_1

    .line 75
    .end local v1    # "_arg0":Landroid/content/ISyncContext;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v5, "android.content.ISyncAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ISyncContext$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncContext;

    move-result-object v1

    .line 78
    .restart local v1    # "_arg0":Landroid/content/ISyncContext;
    invoke-virtual {p0, v1}, Landroid/content/ISyncAdapter$Stub;->cancelSync(Landroid/content/ISyncContext;)V

    .line 79
    return v6

    .line 83
    .end local v1    # "_arg0":Landroid/content/ISyncContext;
    :sswitch_3
    const-string/jumbo v5, "android.content.ISyncAdapter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 92
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/content/ISyncAdapter$Stub;->initialize(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 94
    return v6

    .line 89
    .end local v2    # "_arg1":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/accounts/Account;
    goto :goto_2

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
