-dontskipnonpubliclibraryclassmembers
-dontshrink
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*,!code/allocation/variable
-dontusemixedcaseclassnames
-keepattributes SourceFile,LineNumberTable,*Annotation*,Signature,Deprecated,InnerClasses
-keepparameternames
-renamesourcefileattribute SourceFile
-verbose
-dontwarn android.support.v4.**


-keep class * extends android.app.Activity {
    public protected <fields>;
    <methods>;
}

-keep public class * extends android.app.Service

-keep public class * extends android.content.BroadcastReceiver

-keep class com.mobgi.android.* {
    public <fields>;
    public <methods>;
}

-keep class * extends com.s1.lib.internal.ProguardObject {
    public <fields>;
}

-keep class * extends com.s1.lib.plugin.interfaces.* {
    <methods>;
}

-keep class * extends com.s1.lib.plugin.Plugin {
    <methods>;
}

-keep class com.skynet.android.* {
    <fields>;
    <methods>;
}

-keep class com.dsstate.track.DsStateAPI {
    public static <fields>;
    public static <methods>;
}

-keep class com.dsstate.track.DsDataMapKey {
    public static <fields>;
}

-keep class * extends com.dsstate.track.BaseBean {
    <fields>;
}

-keep class * extends com.dsstate.track.DefBean {
    <fields>;
}

-keep class com.android.coll.* {
    public <fields>;
    public <methods>;
}

-keep class com.android.coll.model.* {
    public <fields>;
    public <methods>;
}

-keep class com.mobgi.android.service.MobgiService {
    public static <fields>;
}

# Also keep - Serialization code. Keep all fields and methods that are used for
# serialization.
-keepclassmembers class * extends java.io.Serializable {
    static final long serialVersionUID;
    static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

# Keep names - Native method names. Keep all native class/method names.
-keepclasseswithmembers,allowshrinking class * {
    native <methods>;
}
