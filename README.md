# Flutter Starter Kit

A feature ready start point for flexible & scalable flutter apps.

[![GitHub stars](https://img.shields.io/github/stars/leoalbalah/FlutterStarterKit?style=for-the-badge)](https://github.com/leoalbalah/FlutterStarterKit/stargazers)
[![GitHub license](https://img.shields.io/github/license/leoalbalah/FlutterStarterKit?style=for-the-badge)](https://github.com/leoalbalah/FlutterStarterKit/blob/master/LICENSE)

## Table of Content

1. [Features](#features)
2. [Usage](#usage)
3. [Dependencies](#dependencies)
4. [Naming Conventions](#naming-convention)
5. [Folder Arquitecture](#folder-arquitecture)
6. [License](#license)
7. [Disclaimer](#disclaimer)

## Features

### Logic

- [X] Working provider
- [X] Working package_info
- [X] Working permission_handler
- [X] Working shared_preferences
- [X] Add Alert Support
- [X] Prevent Unwanted Exit

### UI

- [X] Splash Screen
- [X] Provider Based Bottom Navbar
- [X] Main Screen
- [X] Settings Page
- [X] Secundary Screen 

### Tests

- [ ] Add Tests

## Usage

1. Clone or download repository
2. Run: flutter pub get
3. Enjoy!!!

## Dependencies

### package_info

[Pub.dev Page](https://pub.dev/packages/package_info)

Flutter plugin that provides an API for querying information about an application package.

### shared_preferences 

[Pub.dev Page](https://pub.dev/packages/shared_preferences)

Persistent storage for simple data.

### permission_handler

[Pub.dev Page](https://pub.dev/packages/permission_handler)

Add Support to request OS permissions and check their current status.

### provider

[Pub.dev Page](https://pub.dev/packages/provider)

Google Official Plugin for State Managment.

## Naming Conventions

I dont follow any flutter recomended naming convention, I code in a lot of languajes at the same time and I use the same for everyting, that makes my workflow easier and faster.

* [**CamelCase**](https://en.wikipedia.org/wiki/Camel_case) notation for everything.
* Pages files start with UpperCase.
* Widgets start with LowerCase.
* Private vars start with _.
* Images and assets start with LowerCase.

## Folder Arquitecture

The project includes a very scalable & organized folder architecture. It's centered over the concept of separating (as much as possible) the logic side from the visual side. 

* assets
    * fonts ===============> Contains the **fonts** assets.
    * images ==============> Contains the **image** assets.
* lib
    * logic ===============> Contains the majority of the **business logic**.
        * globals =========> Contains **global data** like texts, colors, etc.
        * handlers ========> Contain code to handle **specific responsabilities**, for example,permission handler code.
        * models ==========> **Models** folder if needed.
        * providers =======> Contains all the **providers**.
        * utils ===========> Contains all the **utilities** that does not fit in the previous categories.
    * ui ==================> Contains the majority of the **visuals**.
        * pages ===========> Contains only **Pages** files
        * widgets =========> Contains only **Widgets** files

## License

Project licensed under the [*MIT License*](https://github.com/leoalbalah/FlutterStarterKit/blob/master/LICENSE).

## Disclaimer

This Project is currently in development, so consider it *incomplete and subject to change* (scope, missing features, integrations, etc). The [**Features**](#features) Section keeps track of the progress.  
Many Concepts used in this project are my favorites, but **is a matter of preference**, you can and should use your very own naming conventions, folder architecture, etc.  
This project is tested on android, I have not tested the iOS or the web versions.

## Author 

You can contact me at leoalbalah@gmail.com for any help, suggestions, or collaborations.