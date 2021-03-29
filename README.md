# FlashpointURLRedirect
Takes a URL with a GUID and passes it onto CLIFp, which will then launch the game in [BlueMaxima's Flashpoint](https://bluemaxima.org/flashpoint/). This also adds an https URL that redirects to the flashpoint:// protocol for chat clients.

# How to use
1. Grab the latest release with CLIFp from [the releases page](https://github.com/VFDan/FlashpointURLRedirect/releases) and unzip it into the Flashpoint folder. (You can also grab the version without CLIFp and get the latest version of CLIFp from [its releases page](https://github.com/oblivioncth/CLIFp/releases) and drop that into Flashpoint folder.)
2. Run `FlashpointAddRegistry.bat`.
3. Open the Flashpoint Launcher and find a game/animation — we'll use Run 2 as an example.
4. Right click the game and press "Copy Game UUID"; for Run 2, this is will copy 371749ad-fbb1-491e-8037-5953e1d46477 to the clipboard.
5. Close the Launcher.
6. Type https://vfdan.github.io/FlashpointURLRedirect/?guid= and add the GUID to the end; for Run 2 the link is https://vfdan.github.io/FlashpointURLRedirect/?guid=371749ad-fbb1-491e-8037-5953e1d46477. In Discord, you can use `<flashpoint://371749ad-fbb1-491e-8037-5953e1d46477>` to directly link to it, however some chat clients may not support this and may need to use the https link.
7. Allow vfdan.github.io to open `Microsoft ® Windows Based Script Host`.
8. Your game/animation should start!

# What if I don't want it anymore?
You can use `FlashpointRemoveRegistry.bat` and then delete `FlashpointRemoveRegistry.bat`, `FlashpointAddRegistry.bat`, `FlashpointURLs.vbs`, and `CLIFp.exe`.
