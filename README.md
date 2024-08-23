# Essentials Web3 wallet

This project has been transfered to the Cyber Republic. Please check [https://github.com/CyberRepublic/Elastos.Essentials](https://github.com/CyberRepublic/Elastos.Essentials)


## Introduction

Elastos Essentials is a multi-purpose wallet application of the Elastos ecosystem. It integrates all the services that Elastos provides such as decentralized identities (DID), storage (Hive), chains (Wallet) and combines them into a singular environment for end-users to easily use Elastos features in third party dApps.

Elastos Essentials is distributed on Android and iOS.

[Join us on Telegram](https://t.me/elastosbrowser)

## dApp Developers - should you build this repo?

You don't need to build from the source. Instead, get the latest Essentials from app stores or Android daily builds from GitHub releases.

## Download Essentials for Android
[stable version](https://github.com/elastos/Elastos.Essentials/releases/latest)

## Build from Source

### Prerequisites

Latest versions of: Git, Node.js, npm, Python, Cordova, Ionic

#### Github

- Upload your SSH public key to your GitHub profile if not already done - https://github.com/settings/keys

#### For Android:

- Java Development Kit (JDK) 11
- Android SDK
- Node.js

 The supported way of doing this nowadays is to use Android Studio.

 Set the ANDROID_HOME environment variable to match the Android SDK path.

 on Mac and Linux, add the following line to your login script (e.g., ~/.bashrc, ~/.bash_profile, etc...):

 ```
 export ANDROID_HOME="YOUR-PATH/sdk"
 ```

 On Windows, set the environment variable in the control panel.

#### For iOS:
- Xcode 12

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
./synccode.sh
./ToolChains/bin/build clobber
./ToolChains/bin/build all
```

This will build the android platform only. To build ios:

```
./ToolChains/bin/build all -pf ios
```

**Depending on what you are working on (runtime, plugins, dapps...)**:

Check **build script options** below.

### Build script options

- build clean: deletes runtime platforms.

    If you update plugins, you should call build clean, then build runtime. Otherwise, the latest plugin changes are not applied inside the native app.

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

- From Android Studio, import the project from `Elastos.Essentials/App/platforms/android`
- Run the project

**Using Xcode:**

- Open the xcworkspace from `Elastos.Essentials/App/platforms/ios`
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

## Contribution

We welcome contributions to the Elastos Essentials Project. Please reach us on Telegram if you would like to jump in the code, but you don't know how to start, or if you want to know who is currently working on what.

## Acknowledgments

A sincere thank you to all teams and projects that we rely on directly or indirectly.
