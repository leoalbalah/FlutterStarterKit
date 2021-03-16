# Flutter Starter Kit

A feature ready start point for flexible & scalable flutter apps.

[![GitHub stars](https://img.shields.io/github/stars/leoalbalah/FlutterStarterKit?style=for-the-badge)](https://github.com/leoalbalah/FlutterStarterKit/stargazers)
[![GitHub license](https://img.shields.io/github/license/leoalbalah/FlutterStarterKit?style=for-the-badge)](https://github.com/leoalbalah/FlutterStarterKit/blob/master/LICENSE)

## Table of Content

## Features

### Logic

- [X] Working provider
- [X] Working package_info
- [ ] Working shared_preferences
- [ ] Working permission_handler
- [ ] Add Alert Support
- [ ] Prevent Unwanted Exit

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
2. Run flutter pub get
3. Enjoy

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

## Naming Convention

I dont follow any flutter recomended naming convention, I code in a lot of languajes at the same time and I use the same for everyting, that makes my workflow easier and faster.

* [CamelCase](https://en.wikipedia.org/wiki/Camel_case#:~:text=Camel%20case%20(sometimes%20stylized%20as,word%20starting%20with%20either%20case.) Notation for everything.
* Pages files start with UpperCase
* Widgets start with LowerCase
* Private vars start with _
* image and assets start with LowerCase



## Folder Arquitecture Description

The project includes a very scalable & organized folder architecture. It's centered over the concept of separating (as much as possible the logic from the UI). 

* assets
    * fonts ===============> Contains the fonts assets.
    * images ==============> Contains the image assets.
* lib
    * logic ===============> Contains the majority of the business logic.
        * globals =========> Contains global data like texts, colors, etc.
        * handlers ========> Contain code to handle specific responsabilities, for example,permission handler code.
        * models ==========> Models folder if needed.
        * providers =======> Contains all the providers.
        * utils ===========> Contains all the utilities that does not fit in the previous categories.
    * ui ==================>
        * widgets =========>
        * pages ===========>

## License

Project licensed under the [MIT License](https://github.com/leoalbalah/FlutterStarterKit/blob/master/LICENSE).

## Disclaimer

This Project is currently in development, so consider it incomplete and subject to change (scope, missing features, integrations, etc). The [Features](#features) Section keeps track of the progress.  
Many Concepts used in this project are my favorites, but is a matter of preference, you can and should use your very own naming conventions, folder architecture, etc.
