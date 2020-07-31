# Boost.JSON
Vcpkg port for [CPPAlliance/json](https://github.com/CPPAlliance/json).

## Usage
1. Install [vcpkg](https://github.com/microsoft/vcpkg).
2. Clone this repository.
3. Install the `boost-json` port using vcpkg overlay ports.

```cmd
git clone git@github.com:qis/boost-json C:\Workspace\ports\boost-json
vcpkg install --overlay-ports=C:\Workspace\ports --head boost-json
```
