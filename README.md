# equinox: UNVT one-line installer for Raspberry Pi OS

# Installing in a fresh Raspberry Pi OS
```
curl -sL https://unvt.github.io/equinox/install.sh | bash -
```

## Security considerations
`equinox` installs UNVT using the `root` priviledge. It is always good to check what will be done before you actually do it. In order to do so, please run the following. 

```
curl -sL https://unvt.github.io/equinox/install.sh
```

# List of software installed by `equinox`
## Geospatial
- gdal-bin: Geospatial Data Abstraction Library - Utility programs
- osmium-tool: Command line tool for working with OpenStreetMap data
- tippecanoe: Builds vector tilesets from large (or small) collections of GeoJSON, Geobuf, or CSV features.

### Geospatial on Node.js
- @mapbox/mapbox-gl-style-spec: Mapbox GL style specification and utilities
- vt-optimizer: A small NodeJS cli tool to inspect and optimize Mapbox Vector Tiles files
- TODO: @mapbox/vtshaver: Remove unneeded vector tile layers, features, and properties based on particular style

## System
- git: fast, scalable, distributed revision control system
- nginx: small, powerful, scalable web/proxy server
- nodejs (Node.js 13): evented I/O for V8 javascript - runtime executable
- ruby: Interpreter of object-oriented sripting language Ruby
- sqlite3: Command line interface for SQLite 3
- tmux: terminal multiplexer
- code-oss: Visual Studio Code
- vim: Vi IMproved - enhanced vi editor
- xrdp: Remote Desktop Protocol (RDP) server
- yarn: Fast, reliable, and secure dependency management
- zip: Archiver for .zip files

## Development
- autoconf: automatic configure script builder
- automake: Tool for generating GNU Standards-compliant Makefiles
- libtool: Generic library support script

### Library
- libsqlite3-dev: SQLite 3 development files
- linux-headers: Common header files for Linux

## Tools on Node.js
- browserify: Browser-side require() the node way
- budo: A browserify server for rapid prototyping
- hjson: A user interface for JSON
- pm2: Production process manager for Node.JS applications with a built-in load balancer
- rollup: Next-generation ES module bundler
- @pushcorn/hocon-parser: A HOCON Parser for Node.js

## Tools on Ruby
- TODO: mdless: A CLI that provides a formatted and highlighted view of Markdown files in a terminal
