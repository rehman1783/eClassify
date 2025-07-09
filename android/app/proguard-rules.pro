# === KEEP FLUTTER ESSENTIAL CLASSES ===
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.plugin.** { *; }

# === KEEP FIREBASE & GOOGLE SERVICES ===
-keep class com.google.firebase.** { *; }
-keep class com.google.android.gms.** { *; }
-keep class com.google.android.play.core.** { *; }

# === KEEP PLUGIN CLASSES ===
-keep class com.mr.flutter.plugin.filepicker.** { *; }
-keep class com.ryanheise.audio_session.** { *; }
-keep class com.stripe.** { *; }
-keep class dev.fluttercommunity.** { *; }
-keep class me.carda.awesome_notifications.** { *; }
-keep class xyz.luan.audioplayers.** { *; }
-keep class com.example.device_region.** { *; }

# === KEEP RAZORPAY DEPENDENCIES ===
-keep class proguard.annotation.Keep { *; }
-keep class proguard.annotation.KeepClassMembers { *; }
-keep class com.razorpay.** { *; }

# === KEEP STRIPE PUSH PROVISIONING ===
-keep class com.stripe.android.pushProvisioning.** { *; }

# === KEEP SPLIT INSTALL CLASSES ===
-keep class com.google.android.play.core.splitinstall.** { *; }
-keep class com.google.android.play.core.tasks.** { *; }
-keep class com.google.android.apps.nbu.paisa.** { *; }

# === KEEP CONNECTIVITY, DEVICE INFO ===
-keep class dev.fluttercommunity.plus.connectivity.** { *; }
-keep class dev.fluttercommunity.plus.device_info.** { *; }

# === KEEP PLUGIN LIFECYCLE SUPPORT ===
-keep class io.flutter.plugins.flutter_plugin_android_lifecycle.** { *; }

# === KEEP EVERYTHING USED VIA REFLECTION ===
-keepattributes *Annotation*
-keep class **.R$* { *; }
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keepclassmembers class * {
    public <init>(...);
}
