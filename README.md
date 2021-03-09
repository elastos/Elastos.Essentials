# Elastos Essentials [TODO:: need to modify]

|Travis|Actions|
|:-:|:-:|
|[![Build Status](https://travis-ci.com/elastos/Elastos.Essentials.svg)](https://travis-ci.com/elastos/Elastos.Essentials)|[![Build App](https://github.com/elastos/Elastos.Essentials/actions/workflows/app.yml/badge.svg)](https://github.com/elastos/Elastos.Essentials/actions/workflows/app.yml)|

## Introduction

Elastos Essentials is the project name for the multi-platforms elastOS browser applications. It integrates all the services that Elastos provides and combines them into a singular environment for DApp developers to easily build dApps, and for end user to easily use those dApps.

DApp developers only need to write their application using the ionic javascript framework and have only one set of Runtime APIs to manage, and their project can run on all major platforms.

Elastos Essentials is supported on Android, iOS and soon MacOS, Windows and Linux.

[Join us on Telegram](https://t.me/elastosbrowser)

## Dapp Developers - should you build this repo?

You don't need to build from source. Instead get the latest APK from app stores or github releases and follow the [Elastos Developer Website Essentials guides](https://developer.elastos.org/build/elastos/).

## Download Essentials for Android
[stable version](https://github.com/elastos/Elastos.Essentials/releases/latest)

[latest version(tag starting with daily)](https://github.com/elastos/Elastos.Essentials/releases)


## Build from Source

### Prerequisites

git, node, npm, python, cordova, ionic

#### Github

- Upload your SSH public key to your github profile if not already done - https://github.com/settings/keys

#### For Android:
- Java JDK 1.8 or greater
- Android SDK
- Android NDK (android-ndk-r16b or higher)

 The supported way of doing this nowadays is to use Android Studio.

 Set the ANDROID_HOME environment variable to match the Android SDK path.

 on Mac and Linux, add the following line to your login script (e.g., ~/.bashrc, ~/.bash_profile, etc...):

 ```
 export ANDROID_HOME="YOUR-PATH/sdk"
 ```

 On Windows, set the environment variable in the control panel.

#### For iOS:
- Xcode 10 or higher

### Get the Code

```sh
cd <YOUR_PATH>
git clone --recurse-submodules git@github.com:elastos/Elastos.Essentials.git
cd Elastos.Essentials
```

Hold on, this will take a while.

### Build on Mac OS, Ubuntu / Debian / Linux Hosts

**For a fresh start or restart:**

```shell
./ToolChains/bin/build clobber
./ToolChains/bin/build all
```

**Depending on what you are working on (runtime, plugins, dapps...)**:

Check **build script options** below.

### Build script options

- build clean: deletes runtime platforms.

    if you update plugins, you should call build clean, then build runtime. Otherwise, latest plugins changes are not applied inside the native app.

- build clobber: deletes all generated or downloaded files (everything).

- build runtime: builds runtime module.
- build launcher: builds launcher and runtime module.
- build all: builds all modules, include runtime, launcher and dapps.

- build plugin -p plugin_path: reinstalls the specified plugin.

NOTE：You can type `./ToolChains/bin/build --help` for more details.

**build all** takes time, so it is advised to build the relevant target only.


### Build on Windows Host

```shell
python ToolChains\bin\build all
```

**Build and run the Android platform in Android Studio:**

- From Android Studio, import the project from `Elastos.Essentials/Runtime/platforms/android`
- Run the project

**Using Xcode:**

- Open the xcworkspace from `Elastos.Essentials/Runtime/platforms/ios`
- Run the project

### To update the existing folder to the latest source code

From the root Elastos.Essentials folder, run the following command to update all submodules to master:

```shell
./synccode.sh
```

Then build what you need to work on. Choose among:

```shell
./ToolChains/bin/build runtime
./ToolChains/bin/build plugin -p Plugins/MyPlugin
./ToolChains/bin/build dapp ...
```

## Convert an elastOS capsule to a standalone native app
### Build on Linux(can only build for android)
```
cd ToolChains/native/bin && ./build -p /path/to/elastOS-capsule/directory
```

### Build on Mac(can build for both android and iOS)
```
TODO:
```

## Architecture - Repositories

The Elastos.Essentials repository contains many git-submodules, as shown in this overview:

* [Elastos.Essentials.Runtime](https://github.com/elastos/Elastos.Essentials.Runtime)
* [Elastos.Essentials.ToolChains](https://github.com/elastos/Elastos.Essentials.ToolChains)
* Elastos.Essentials.Plugins
  * [Elastos.Essentials.Runtime.Plugins.AppManager](https://github.com/elastos/Elastos.Essentials.Runtime.Plugins.AppManager)
  * [Elastos.Essentials.Plugins.Carrier](https://github.com/elastos/Elastos.Essentials.Plugins.Carrier)
  * [Elastos.Essentials.Plugins.File](https://github.com/elastos/Elastos.Essentials.Plugins.File)
  * [Elastos.Essentials.Plugins.Hive](https://github.com/elastos/Elastos.Essentials.Plugins.Hive)
  * [Elastos.Essentials.Plugins.Media](https://github.com/elastos/Elastos.Essentials.Plugins.Media)
  * [Elastos.Essentials.Plugins.QRScanner](https://github.com/elastos/Elastos.Essentials.Plugins.QRScanner)
  * [Elastos.Essentials.Plugins.Wallet](https://github.com/elastos/Elastos.Essentials.Plugins.Wallet)
* Elastos.Essentials.DApps
  * [Elastos.Essentials.DApps.Launcher](https://github.com/elastos/Elastos.Essentials.DApps.Launcher)
  * [Elastos.Essentials.DApps.Wallet](https://github.com/elastos/Elastos.Essentials.DApps.Wallet)
  * Elastos.Essentials.DApps.IM (Todo)

## Contribution

We welcome contributions to the Elastos Essentials Project. Please reach us on telegram if you would like to jump in the code but you don't know how to start, or if you want to know who is currently workin on what.

## Roadmap

[Elastos Essentials Roadmap](https://developer.elastos.org/faq_roadmap/modules_status/)

## Acknowledgments

A sincere thank you to all teams and projects that we rely on directly or indirectly.
