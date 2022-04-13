# Boilerplate Project

A boilerplate project created in flutter using Flutter Hook and RiverPod

## Getting Started

<br />
<dl>
  <dt> <b>Domain-driven design </b></dt>
  <dd>Has been developed by using Domain-driven design concept. </dd>
  <dt> <b>Clean & Doc-commented</b> </dt>
  <dd>Has a clean architecture, and is doc-commented for the most class in it.  </dd>
  <dt> <b>River-pod state managment</b> </dt>
  <dd>Uses a River-pod state managment which is recommended by Flutter.</dd>
  <dt> <b>Responsive Degisn</b> </dt>
  <dd>Supports responsive mobile design, and compatible every device even tablet!</dd>
</dl>

## How to Use

- Step 1: Download or clone this repo by using the link below:

```
https://github.com/zubairehman/flutter-boilerplate-project.git
```

- Step 2: Setup derry

```
dart pub global activate derry
```

And maybe you have warning: Pub installs executables

```
You can fix that by adding that directory to your system's "Path" environment variable.
-Example your 'Path' environment: C:\Users\AppData\Local\Pub\Cache\bin
A web search for "configure windows path" will show you how.
Then reset your pc
```

- Step 3: Go to project root and execute the following command in console to get the required dependencies:

```
derry gen
```

Or

```
flutter pub get
```

This project uses `inject` library that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

## Hide Generated Files

In-order to hide generated files, navigate to `Android Studio` -> `Preferences` -> `Editor` -> `File Types` and paste the below lines under `ignore files and folders` section:

```
*.inject.summary;*.inject.dart;*.g.dart;
```

In Visual Studio Code, navigate to `Preferences` -> `Settings` and search for `Files:Exclude`. Add the following patterns:

```
**/*.inject.summary
**/*.inject.dart
**/*.g.dart
```

### Up-Coming Features:

- Connectivity Support
- Background Fetch Support

### Libraries & Tools Used

- [Dio](https://github.com/flutterchina/dio)
- [Logging](https://github.com/zubairehman/Flogs)
- [Json Serialization](https://github.com/dart-lang/json_serializable)

### Folder Structure

Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- core/
|- data/
|- domain/
|- ui/
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- core -  contains the objects that is used all across the application.
2- data - Contains the data layer of your project, includes directories for local, network and shared pref/cache.
3- domain - contains the usecases, repositories and entities of the application.
4- ui — contains the ui-pages and BLoCs of the application.
5- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```

### Core

contains the objects that is used all across the application.

```
core/
|- const
|- l10n
|- theme
|- utils
    |- extension
    |- http
|- widgets
```

### Data

```
data/
|- datasources
    |- local/
    |- remote/
    |- sharedpref
|- models.dart
|- repositories.dart

```

The bottom layer as shown in the above diagram, its responsibility is to deal directly with the raw data from different data sources (REST API, GraphQl, Sqlite, …etc). The raw data then will be mapped or converted into models (dart objects) using some serialization methods to serialize/deserialize data (Json, Xml, …etc) from and into.

The data layer is also contains the `real implementations of the abstraction in the domain layer including the repositories`, so we define the interface (abstracted class) in the domain layer.. then we implement that class in the data layer and this is useful because we have the ability to change or add multiple implementations without interacting with the Domain layer.

Keep in mind that repositories returns entities and not models, because the contract written inside the Domain layer, and with that.. we can say that the Data layer depends on Domain layer.

### Domain

```
domain/
|- entities
|- repositories
|- usecases

```

this layer contains only the internal entities and what this mean is that our domain’s entities are completely independent from any changes that could occur outside this layer. Both `Presentation` and `Data` layers depending on this layer, since the data layer will implement what ever contracts written here.. and the presentation layer will use those contracts with the implementations to be used as an injected dependencies.

**Use Cases:**

A use cases are individual classes that depends on those repositories we defined earlier, and normally a use case should only perform one precise action (getting articles, post data, signing in, …etc). One use case may takes multiple repositories injected to it, and the bloc (viewmodel) may also takes multiple use cases injected to it.

```
We should think about our application as a group of use cases that describe the intent of the applications and group of plugins that give those use cases access to outside world. (Uncle Bob)
```

### UI

This directory contains all the ui of your application. Each screen is located in a separate folder making it easy to combine group of files related to that particular screen. All the screen specific widgets will be placed in `widgets` directory as shown in the example below:

```
ui/
|- login
   |- login_screen.dart
   |- widgets
      |- login_form.dart
      |- login_button.dart
```

## App Flow Chart

<br />

![CallFlow](https://miro.medium.com/max/700/1*N_XONqoIoxQIExSn2yVNDQ.png)
<br />

> Flow chart was taken from [devmuaz](https://devmuaz.medium.com/flutter-clean-architecture-series-part-1-d2d4c2e75c47) website
