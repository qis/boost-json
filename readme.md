# Boost.JSON
Vcpkg port for [vinniefalco/json](https://github.com/vinniefalco/json).

## Usage
1. Install [vcpkg](https://github.com/microsoft/vcpkg).
2. Clone this repository.
3. Install the `boost-json` port using vcpkg overlays.

```sh
cd C:\Workspace
git clone git@github.com:qis/boost-json boost-json
vcpkg install --overlay-ports="C:\Workspace\boost-json" --head boost-json
```
