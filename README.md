# Gakusei Rainmeter Skins

## Overview

This repository contains the "Gakusei" collection of Rainmeter skins, including the **4000 English Words** vocabulary skin. These skins are designed to enhance your desktop with useful and educational widgets.

## Features

- **4000 English Words**: Displays a new English word and its meaning every 5 minutes to help expand your vocabulary.
- *(Planned)* **Bible Verses**: Will display a new Bible verse every 5 minutes.

## Installation

### Rainmeter

The packages require you to install Rainmeter. You should check out the official website [www.rainmeter.net](https://www.rainmeter.net/) on how to download and install it on your system.

### Manual Installation

1. Download or clone this repository.
2. Extract the contents to your Rainmeter Skins directory, typically:
   ```
   C:\Users\<YourUsername>\Documents\Rainmeter\Skins\
   ```
3. Ensure the folder structure is:
   ```
   Skins/
     Gakusei/
       4000 English Words/
       @Resources/
   ```
4. Open Rainmeter, refresh all, and load the desired skins from the Rainmeter manager.

### RMSKIN Installer Package

Alternatively, download the latest `.rmskin` package from the [Releases](https://github.com/Mumbela/Gakusei/releases) page.

1. Double-click the `.rmskin` file to install.
2. Follow the prompts to select and install your preferred skins.

## Usage

- After installation, open Rainmeter and load the "4000 English Words" skin.
- The skin will display a new word and its meaning every 5 minutes.
- You can customize or extend the word list by editing [`@Resources/words.txt`](./@Resources/words.txt).

## Project Structure

- [`4000 English Words/4000 English Words.ini`](./4000 English Words/4000 English Words.ini): Main Rainmeter skin configuration.
- [`@Resources/words.txt`](./@Resources/words.txt): List of words and meanings.
<!-- - [`@Resources/version.inc`](./@Resources/version.inc): Version information (auto-updated). -->
- [`@Resources/scripts/Script.lua`](./@Resources/scripts/Script.lua): Lua script for word selection.
- `.github/workflows/`: GitHub Actions for semantic versioning and packaging.

## Contributing

Pull requests and suggestions are welcome! Please open an issue to discuss any changes or ideas.

### Commit Messages

```
type(scope): concise summary of change

[Optional body: More detailed explanation of what changed and why.]

[Optional footer: BREAKING CHANGE: description of breaking change]
```

- type: Describes the kind of change (`feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`, etc.)
- scope (optional): What part of the code or project was affected.
- description: One-line describing the change, written in the *imperative* ("add feature" not "added feature")

Example:
```
docs(commit-messages):

add Commit Messages section to docummentation
```

## License

This project is licensed under the Creative Commons Attribution - Non - Commercial - Share Alike 3.0 license.