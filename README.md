# NRF5_SDK template project

## About
This is the template for peripheral projects using nRF5 SDK

## Getting Started
To get a local copy up and running follow these steps.

### Prerequisites
- Linux/Unix Environment
- GNU make
- nRF Comand Line Tools
- Segger JLink Software
- Java JRE (for sdk_config)

### Setup

1. *Clone this reponstory*
   
   ```sh
   https://github.com/ngttai/nRF5_SDK_template.git
   ```
   
2. *Setup SDK* 
   Follow [this](./nRF5_SDKs/README.md)

3. *Setup toolchain*
   
   ```sh
      export GNU_INSTALL_ROOT=path/to/arm-toolchain
      
      # OR add to system path
      export PATH=path/to/arm-toolchain:$PATH
   ```
   
4. *Clone and build micro-ecc*
   
   ```sh
   cd NRF5_SDKs/nRF5_SDK_17.1.0_ddde560/external/micro-ecc
      sed -i "s/\r$//g" build_all.sh # Fixed CRLF
      chmod +x build_all.sh
      ./build_all.sh
   ```

### Build and flash
```sh
# Build
   make clean && make BOARD=<board_name> BUILD_TYPE=<build_type>
   # <board_name> are: `ss_unitag` or `pca10056`
   # <build_type> are: `Debug` or `Release`
   Example:
   make clean && make BOARD=ss_unitag BUILD_TYPE=Release
# Flash
   make flash BOARD=<board_name> BUILD_TYPE=<build_type>
   # <board_name> are: `ss_unitag` or `pca10056`
   # <build_type> are: `Debug` or `Release`
   Example:
   make flash BOARD=ss_unitag BUILD_TYPE=Release
```

## License
Distributed under the GNU License. See `LICENSE` for more information.