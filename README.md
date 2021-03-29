# FlashpointURLRedirect
Takes a URL with a GUID and passes it onto CLIFp, which will then launch the game in [BlueMaxima's Flashpoint](https://bluemaxima.org/flashpoint/). This also adds an https URL that redirects to the flashpoint:// protocol for chat clients.

# How to use
1. Grab the latest release with CLIFp from [the releases page](https://github.com/VFDan/FlashpointURLRedirect/releases) and unzip it into the Flashpoint folder. (You can also grab the version without CLIFp and get the latest version of CLIFp from [its releases page](https://github.com/oblivioncth/CLIFp/releases) and drop that into Flashpoint folder.)
2. Run `FlashpointAddRegistry.bat`.
3. Open the Flashpoint Launcher and find a game/animation — we'll use Run 2 as an example.
4. Right click the game and press "Copy Game UUID"; for Run 2, this is will copy 371749ad-fbb1-491e-8037-5953e1d46477 to the clipboard.
5. Close the Launcher.
6. There are two ways to create a link:
	1. Directly using the flashpoint:// protocol: Type `flashpoint:// + The copied UUID`
	2. Using the https redirector (for use in places that don't support linking custom URL schemes): Type `https://vfdan.github.io/FlashpointURLRedirect/?guid= + The copied UUID`
For Run 2 the link would be flashpoint://371749ad-fbb1-491e-8037-5953e1d46477 or https://vfdan.github.io/FlashpointURLRedirect/?guid=371749ad-fbb1-491e-8037-5953e1d46477.
Keep in mind that in Discord, you can use `<flashpoint://371749ad-fbb1-491e-8037-5953e1d46477>` to create a direct link.
7. (If using the redirector) Allow vfdan.github.io to open `Microsoft ® Windows Based Script Host`.
8. Your game/animation should start!

# What if I don't want it anymore?
To undo the `flashpoint://` registry association, run `FlashpointRemoveRegistry.bat`. You can then delete `FlashpointRemoveRegistry.bat`, `FlashpointAddRegistry.bat`, `FlashpointURLs.vbs`, and `CLIFp.exe`.
