# URLRedirect
Takes a URL with a GUID and passes it onto the flashpoint:// protocol, which will then launch the game.

# How to use
1. Grab the latest release with CLIFp from [the releases page](https://github.com/FlashpointProject/URLRedirect/releases) and unzip it into the Flashpoint folder. (You can also grab the version without CLIFp and get the latest version of CLIFp from [its releases page](https://github.com/oblivioncth/CLIFp/releases/tag/v0.4) and drop that into Flashpoint folder.)
2. Run `FlashpointAddRegistry.bat`.
3. Open the Flashpoint Launcher and find a game/animation — we'll use Run 2 as an example.
4. Right click the game and press "Copy Game UUID"; for Run 2, this is will copy 371749ad-fbb1-491e-8037-5953e1d46477 to the clipboard.
5. Close the Launcher.
6. Type https://flashpointproject.github.io/URLRedirect/?guid= and add the GUID to the end; for Run 2 the link is https://flashpointproject.github.io/URLRedirect/?guid=371749ad-fbb1-491e-8037-5953e1d46477.
7. Allow flashpointproject.github.io to open FlashpointURLS.bat.
8. Your game/animation should start!
