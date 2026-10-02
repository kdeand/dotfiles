# Compatibility

These scripts were written and tested on **Linux Mint with the GNOME Desktop Environment**. They may work on other Linux distributions and desktop environments, but some scripts may require additional packages to be installed.

## Workspace Cleaner: `clean_workspace.sh`

**Requirement:**

```bash
sudo apt install wmctrl
```

**Description:**
Clears all open windows in the current workspace.

**Warning:**
Some applications may still show a confirmation prompt before closing. The scrip does not override these termination confirmations.

## Activation

1. Make the script executable:

```bash
chmod +x clean_workspace.sh
```

2. Run the script:

```bash
./clean_workspace.sh
```
