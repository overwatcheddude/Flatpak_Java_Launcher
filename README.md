# Flatpak Java Launcher

## Description

This project provides a Flatpak manifest and a launcher script for running Java JAR files in a self-contained Flatpak environment. It simplifies the process of packaging and running Java applications as Flatpaks.

## Key Features

- Integrates OpenJDK 11 within the Flatpak environment
- Provides a user-friendly launcher script to select and run JAR files
- Isolates the Java application from the host system for enhanced security and portability
- Leverages Flatpak's sandboxing features for resource control and permission management

## Files
- io.github.overwatcheddude.flatpak_java_launcher.yml: The Flatpak manifest file that defines the application's runtime, SDK, dependencies, and permissions.
- java_launcher.sh: A shell script that prompts the user to select a JAR file and then executes it using the included OpenJDK 11 runtime.

## Building and Running
### Install Flatpak
Ensure you have Flatpak installed on your system. Refer to the official Flatpak documentation for installation instructions: https://flatpak.org/setup/
### Build the Flatpak:
Open a terminal in the project directory.
Run the following command to build the Flatpak:

```bash
flatpak-builder build io.github.overwatcheddude.flatpak_java_launcher.yml
```

### Run the Launcher:
After successful build, run the launcher using:

```bash
flatpak run io.github.overwatcheddude.flatpak_java_launcher
```

The launcher will prompt you to select a JAR file to execute.
