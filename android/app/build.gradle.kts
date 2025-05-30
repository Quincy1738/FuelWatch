plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}
apply plugin: 'com.google.gms.google-services' // ADD THIS at the bottom

dependencies {
    implementation 'com.google.firebase:firebase-auth'
}


android {
    namespace = "com.example.petroleumv1"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973" // Updated NDK version

    compileOptions {
        isCoreLibraryDesugaringEnabled = true // Enable desugaring
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }

    kotlinOptions {
        jvmTarget = "1.8" // Changed to match Java 8
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.petroleumv1"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        multiDexEnabled = true // Recommended when using desugaring
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

dependencies {
    implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk8:1.9.20") // Updated Kotlin version
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.0.4") // Desugaring dependency
}

flutter {
    source = "../.."
}