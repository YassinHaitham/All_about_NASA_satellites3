.class synthetic Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

.field static final synthetic $SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapType:[I

.field static final synthetic $SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1312
    invoke-static {}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->values()[Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    :try_start_9
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_82

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_80

    .line 1297
    :goto_1f
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    :try_start_28
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_7e

    :goto_33
    :try_start_33
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_7c

    .line 376
    :goto_3e
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapType:[I

    :try_start_47
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapType:[I

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ROADS:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_52} :catch_7a

    :goto_52
    :try_start_52
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapType:[I

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->AERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5d} :catch_78

    :goto_5d
    :try_start_5d
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapType:[I

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->TERRAIN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_68} :catch_76

    :goto_68
    :try_start_68
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapType:[I

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_73} :catch_74

    :goto_73
    return-void

    :catch_74
    move-exception v0

    goto :goto_73

    :catch_76
    move-exception v0

    goto :goto_68

    :catch_78
    move-exception v0

    goto :goto_5d

    :catch_7a
    move-exception v0

    goto :goto_52

    .line 1297
    :catch_7c
    move-exception v0

    goto :goto_3e

    :catch_7e
    move-exception v0

    goto :goto_33

    .line 1312
    :catch_80
    move-exception v0

    goto :goto_1f

    :catch_82
    move-exception v0

    goto :goto_14
.end method
