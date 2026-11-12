# OrangeFox R12.0 builder for flame (POCO M7 5G / Redmi 14C 5G / Redmi 14R 5G)

Builds the latest OrangeFox from source on GitHub's free servers. Nothing runs on your PC.

## Build it (automatic)

Extract the zip (on H: is fine), then double-click **START-BUILD.bat**.
It downloads a portable GitHub CLI into the `_tools` folder here, opens your browser so you
can sign in to GitHub, creates the public repo `ofox-flame-builder`, uploads the files and
starts the build. Nothing is installed on C:.

## Build it (by hand)

1. Create a new **public** repository on GitHub (public = free build minutes).
2. Upload everything from this folder, keeping the `.github/workflows/` folder.
3. Open the repo's **Actions** tab, pick **Build OrangeFox for flame**, press **Run workflow**.
   Leave the branch on `14.1` for the first run.
4. Wait about 2 to 4 hours. When it turns green, open the run and download the
   `OrangeFox-flame-14.1` artifact. It holds the flashable zip and the `.img`.

## Flash it

Keep your current OrangeFox zip so you can go back.

- From your current OrangeFox: flash the new `OrangeFox-R12.0-...-flame.zip`, then reboot to recovery.
- Or from fastboot:

      fastboot flash recovery_a OrangeFox-...-flame.img
      fastboot flash recovery_b OrangeFox-...-flame.img
      fastboot reboot recovery

## Change things

- `fox_vars.sh` holds every OrangeFox setting (maintainer name, screen height, extra tools).
- The workflow's inputs let you switch to the `16.0` source branch or to a different device tree.

## Credits

Device tree: atlas4381/twrp_device_xiaomi_flame. Recovery: the OrangeFox Recovery Project.
