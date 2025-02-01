# Flatpak Java Launcher

## Description
This project provides a Flatpak manifest and a launcher script for running Java JAR files in a Flatpak environment. When run, it opens a file selection dialog (via Zenity) allowing the user to choose a JAR file, which it then executes using a bundled OpenJDK 11 runtime.

## Features
- Integrates OpenJDK 11 within the Flatpak environment
- Provides a simple launcher script to select and run JAR files
- Leverages Flatpak's sandboxing features for resource control and permission management

## Project File Overview
- **io.github.overwatcheddude.flatpak_java_launcher.desktop**: A desktop entry file used by the system to integrate the application into the desktop environment (menus, icons, etc.).
- **io.github.overwatcheddude.flatpak_java_launcher.svg**: An SVG icon file representing the application.
- **io.github.overwatcheddude.flatpak_java_launcher.yml**: The Flatpak manifest file that defines the application's runtime, SDK, dependencies, and permissions.
- **java_launcher.sh**: A shell script that prompts the user to select a JAR file and then executes it using the included OpenJDK 11 runtime.
- **LICENSE**: The file detailing the legal terms under which the software is distributed.
- **README.md**: Refers to this documentation.

## Building and Running
### Install Flatpak
Ensure you have Flatpak installed on your system. Refer to the official Flatpak documentation for installation instructions: https://flatpak.org/setup/

### Obtaining the Repository
#### Cloning with Git
If you have Git installed, you can clone the repository using the following command:
```bash
git clone https://github.com/overwatcheddude/Flatpak_Java_Launcher.git
```

#### Downloading as a .zip File
If you don't have Git, you can download the repository as a .zip file by clicking the "Code" button on the GitHub repository page and then selecting "Download ZIP". Ensure to extract the contents of the .zip file.

### Dependencies
Before building, ensure you have the following Flatpak dependencies installed:
```bash
flatpak install flathub org.flatpak.Builder org.freedesktop.Platform//24.08 org.freedesktop.Sdk//24.08 runtime/org.freedesktop.Sdk.Extension.openjdk11/x86_64/24.08
```

### Build the Flatpak:
Open a terminal in the project directory.
Run the following command to build the Flatpak:

```bash
flatpak run org.flatpak.Builder --user --install --force-clean build-dir io.github.overwatcheddude.flatpak_java_launcher.yml
```

### Run the Launcher:
After successful build, run the launcher using:

```bash
flatpak run io.github.overwatcheddude.flatpak_java_launcher
```

The launcher will prompt you to select a JAR file to execute.
