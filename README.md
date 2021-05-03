# Rebirth of the Night

Inspired by Terraria, 7 Days to Die, and more, Rebirth of the Night is a Minecraft 1.12.2 modpack with its own
progression system, lore, mechanics, and art. It's built with the idea of remembering the central themes of what made
Minecraft enjoyable and expanding them in every way, increasing the overall risk and reward as you progress.

Fear the dark. Defy the odds. Embrace the night. In an ever-changing world, bravery is vital... and arrogance is lethal.

## Community

Join the community on the [Official RotN Discord](https://discord.gg/rotn). Discuss base ideas, pitch suggestions and
lore, and keep tabs on recent events and developments.

If you wish to support Rebirth of the Night, consider donating to
the [Rebirth of the Night Patreon](https://www.patreon.com/rebirthofthenight).

## Website

[Official website for Rebirth of the Night](https://rebirthofthenight.com/), which includes the modpack, standalone
Unity game, and merchandise.

## Installation

Client and server files are available through [CurseForge](https://www.curseforge.com/). See
the [RotN Modpack on CurseForge](https://www.curseforge.com/minecraft/modpacks/rebirth-of-the-night) for all options.

### Version 2

Rebirth of the Night is best with the atmosphere provided by **Optifine Shaders** and **Soundtrack.** These mods needs
to be installed separately. Follow the [Installation guide here](https://wiki.rebirthofthenight.com/wiki/Installation).

[v2.77.5 Client](https://www.curseforge.com/minecraft/modpacks/rebirth-of-the-night/files/2974800)

[v2.77.5 Server](https://www.curseforge.com/minecraft/modpacks/rebirth-of-the-night/files/2974807)

### Version 3 (Latest Beta)

As of Version 3, OptiFine and the Soundtrack are automatically included and **do not** need to be installed separately.

[v3.0 BETA 4 Client](https://www.curseforge.com/minecraft/modpacks/rebirth-of-the-night/files/3219146)

[v3.0 BETA 4 Server Pack](https://www.curseforge.com/minecraft/modpacks/rebirth-of-the-night/files/3219159)

## Development Resources and Links

[Conceptual Locations Map](https://rebirthofthenight.com/map/)

[Development Board](https://trello.com/b/PZyYdW4A/rebirth-of-the-night)

[Wiki](https://wiki.rebirthofthenight.com)

### Building and Running

The src (source) directory holds the assets to build the pack. Depending on where you place files, they will be present
or not when assembling the development, client, and server versions of the modpack.

```yaml
src:
  # available on all versions
  common: ...

  # only on the final client and development
  client-only: ...
    - music
    - sound
    - many artistic assets
    - client only mods that cause issues when present.
  # only on the server
  server-only:
    - mods that improve server performance
    - server specific logging configs
    - server script files
  # only on development
  test:
    - mods that are useful for dev porposes
    - alternate logging configs
  # only on development
  local:
    - things you don't want tracked
    - personal configurations and keybindings
    - credentials

```

Use the following gradle commands

```shell
# cleans the build directory. Use this to blank slate
gradlew clean

# assembles the test client at ./build/test. You can launch this with minecraft launcher or import into a curse forge profile
gradlew build

# assembles the client files. At this time, you'll still need to import into curseforge and export to get the curseForge client meta file.
# Due to config backwashing, clean and rebuild before final packaging.
gradlew packageClient

# assembles the server files (exploded). Zip it up and you should have a server. 
# You can also test the server/client boundary by running the start server bat file, and connecting with a client or development profile.
# Due to config backwashing, clean and rebuild before final packaging.
gradlew packageServer
```