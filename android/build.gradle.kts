allprojects {
    repositories {
        // ✅ Flutter engine artifacts (mirror for Pakistan)
        maven {
            url = uri("https://storage.flutter-io.cn/download.flutter.io")
            content {
                // Limit this repo to Flutter artifacts only
                includeGroup("io.flutter")
            }
        }

        // ✅ Main repositories for Android dependencies
        google()
        mavenCentral()

        // ✅ Any other repos you need
        maven {
            url = uri("https://phonepe.mycloudrepo.io/public/repositories/phonepe-intentsdk-android")
        }
    }
}


// ✅ Keep your existing custom build dir setup
val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
