# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in C:\Users\Administrator\AppData\Local\Android\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
-dontwarn
#混淆的压缩比率 0 ~ 7
-optimizationpasses 5
#Aa aA
-dontusemixedcaseclassnames
#混淆jar包里面的class
-dontskipnonpubliclibraryclasses
-dontpreverify
#混淆后生产映射文件 map 类名->转化后类名的映射
-verbose
#混淆采用的算法.
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

-keepattributes *Annotation*
-keepattributes Signature
-keepattributes EnclosingMethod
-keepattributes *JavascriptInterface*

#忽略警告
-ignorewarnings
#保证是独立的jar,没有任何项目引用,如果不写就会认为我们所有的代码是无用的,从而把所有的代码压缩掉,导出一个空的jar
-dontshrink
#保护泛型
-keepattributes Signature

#Jpush
-libraryjars ../MerchantLibrary/src/main/jniLibs/arm64-v8a/libjcore113.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi/libjcore113.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi-v7a/libjcore113.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/mips/libjcore113.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/mips64/libjcore113.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/x86/libjcore113.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/x86_64/libjcore113.so
-libraryjars ../MerchantLibrary/libs/jcore-android_v1.1.3.jar
-libraryjars ../MerchantLibrary/libs/jpush-android_v3.0.6.jar
-dontwarn cn.jpush.**
-keep class cn.jpush.** { *; }

#直播
-libraryjars ../MerchantLibrary/libs/ZBTLivestreaming.jar
-libraryjars ../MerchantLibrary/libs/ZBTVideoEffect.jar
-libraryjars ../MerchantLibrary/libs/NELivePlayer-1.3.0.jar
-libraryjars ../MerchantLibrary/src/main/jniLibs/arm64-v8a/liblivestreaming.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/arm64-v8a/libneliveplayer.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/arm64-v8a/libnelpengine.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/arm64-v8a/libnelprender.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/arm64-v8a/libvideoeffect.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi/libneliveplayer.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi/libnelpengine.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi/libnelprender.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi-v7a/liblivestreaming.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi-v7a/libneliveplayer.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi-v7a/libnelpengine.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi-v7a/libnelprender.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi-v7a/libvideoeffect.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/x86/libneliveplayer.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/x86/libnelpengine.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/x86/libnelprender.so

#==================gson==========================
-dontwarn com.google.**
-keep class com.google.gson.** {*;}
-keep class com.google.protobuf.** {*;}


#glide-3.7.0
#-libraryjars  ../OmengCommon/libs/glide-3.7.0.jar
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}
-keepresourcexmlelements manifest/application/meta-data@value=GlideModule

#alipaySDK-20150818
-libraryjars ../MerchantLibrary/libs/alipaySdk-20170725.jar
-dontwarn com.alipay.**
-keep class com.alipay.** { *; }
-keep class com.ta.** { *; }
-keep class com.ut.** { *; }
-keep class org.json.** { *; }

#银联
-libraryjars ../MerchantLibrary/libs/UPPayAssistEx.jar
-libraryjars ../MerchantLibrary/libs/UPPayPluginExPro.jar
-libraryjars ../MerchantLibrary/src/main/jniLibs/arm64-v8a/libentryexpro.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/arm64-v8a/libuptsmaddon.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi/libentryexpro.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi/libuptsmaddon.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi-v7a/libentryexpro.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/armeabi-v7a/libuptsmaddon.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/x86/libentryexpro.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/x86/libuptsmaddon.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/x86_64/libentryexpro.so
-libraryjars ../MerchantLibrary/src/main/jniLibs/x86_64/libuptsmaddon.so
-keep class com.unionpay.** {*;}

#gson-2.6.2
#-libraryjars  ../MerchantLibrary/libs/gson-2.6.2.jar

#okhttp-3.5.0
#-libraryjars ../OmengCommon/libs/okhttp-3.5.0.jar

#okio-1.11.0
#-libraryjars ../OmengCommon/libs/okio-1.11.0.jar
-dontwarn okio.**

#qq_open_sdk_r4889
-libraryjars ../MerchantLibrary/libs/open_sdk_r5793.jar
-keep class com.tencent.open.TDialog$*
-keep class com.tencent.open.TDialog$* {*;}
-keep class com.tencent.open.PKDialog
-keep class com.tencent.open.PKDialog {*;}
-keep class com.tencent.open.PKDialog$*
-keep class com.tencent.open.PKDialog$* {*;}

#rebound-0.3.7
#-libraryjars ../OmengCommon/libs/rebound-0.3.7.jar

#retrofit-2.1.0
#-libraryjars ../OmengCommon/libs/retrofit-2.1.0.jar
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
-keepattributes Signature
-keepattributes Exceptions

#tbs_sdk_v1.5.1.1057_25436_obfs_20160331_144900
-libraryjars  ../MerchantLibrary/libs/tbs_sdk_v3.1.0.1034_20170301.jar


-keep public class * extends android.app.Fragment
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.support.v4.**
-keep public class com.android.vending.licensing.ILicensingService

-keep class com.google.gson.stream.** { *; }
-keep class com.google.gson.examples.android.model.** { *; }
-keep class com.uuhelper.Application.** { *; }
-keep class net.sourceforge.zbar.** { *; }
-keep class com.google.android.gms.** { *; }

-keep class com.android.vending.licensing.ILicensingService
-keep class android.support.v4.** { *; }
-keep class org.apache.commons.net.** { *; }
-keep class com.tencent.** { *; }

-dontwarn android.support.v4.**
-dontwarn org.apache.commons.net.**
-dontwarn com.tencent.**

#Native
-keepclasseswithmembernames class * {
    native <methods>;
}

#自定义view构造方法
-keepclasseswithmembers class * {
    public <init>(android.content.Context);
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

#枚举
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
#保持 Parcelable 不被混淆
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

#保持 Serializable 不被混淆
-keepnames class * implements java.io.Serializable

#服务者
-keep class com.shanjin.android.omeng.merchant.library.bean.** { *; }
-keep class com.cl.dangjian.bean.** { *; }

-dontshrink
-dontoptimize
-dontwarn com.google.android.maps.**
-dontwarn android.webkit.WebView
-dontwarn com.umeng.**
-dontwarn com.tencent.weibo.sdk.**
-dontwarn com.facebook.**

-keep enum com.facebook.**
-keepattributes Exceptions,InnerClasses,Signature
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable

-keep public interface com.facebook.**
-keep public interface com.tencent.**
-keep public interface com.umeng.socialize.**
-keep public interface com.umeng.socialize.sensor.**
-keep public interface com.umeng.scrshot.**

-keep public class com.umeng.socialize.* {*;}
-keep public class javax.**
-keep public class android.webkit.**

-keep class com.facebook.**
-keep class com.umeng.scrshot.**
-keep public class com.tencent.** {*;}
-keep class com.umeng.socialize.sensor.**

-keep class com.tencent.mm.sdk.openapi.WXMediaMessage {*;}
-keep class com.tencent.mm.sdk.openapi.** implements com.tencent.mm.sdk.openapi.WXMediaMessage$IMediaObject {*;}

-keep class **.R$* {   *;   }

#EventBus
-keepclassmembers class * extends android.app.Activity {
public void onEvent*(***);
}

-keepclassmembers class * extends android.support.v4.app.Fragment {
public void onEvent*(***);
}

-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

-keepclassmembers class **.R$* {
    public static <fields>;
}

# The support library contains references to newer platform versions.
# Don't warn about those in case this app is linking against an older
# platform version.  We know about them, and they are safe.
-dontwarn android.support.**

# Understand the @Keep support annotation.
-keep class android.support.annotation.Keep

-keep @android.support.annotation.Keep class * {*;}

-keepclasseswithmembers class * {
    @android.support.annotation.Keep <methods>;
}

-keepclasseswithmembers class * {
    @android.support.annotation.Keep <fields>;
}

-keepclasseswithmembers class * {
    @android.support.annotation.Keep <init>(...);
}

-keep  public class com.unionpay.uppay.net.HttpConnection {
	public <methods>;
}
-keep  public class com.unionpay.uppay.net.HttpParameters {
	public <methods>;
}
-keep  public class com.unionpay.uppay.model.BankCardInfo {
	public <methods>;
}
-keep  public class com.unionpay.uppay.model.PAAInfo {
	public <methods>;
}
-keep  public class com.unionpay.uppay.model.ResponseInfo {
	public <methods>;
}
-keep  public class com.unionpay.uppay.model.PurchaseInfo {
	public <methods>;
}
-keep  public class com.unionpay.uppay.util.DeviceInfo {
	public <methods>;
}
-keep  public class java.util.HashMap {
	public <methods>;
}
-keep  public class java.lang.String {
	public <methods>;
}
-keep  public class java.util.List {
	public <methods>;
}
-keep  public class com.unionpay.uppay.util.PayEngine {
	public <methods>;
	native <methods>;
}