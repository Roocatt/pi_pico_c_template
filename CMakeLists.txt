cmake_minimum_required(VERSION 3.24)

include($ENV{PICO_SDK_PATH}/external/pico_sdk_import.cmake)

set(PROJECT_NAME pi_pico_c_template)

project(${PROJECT_NAME} C CXX ASM)

set(PICO_BOARD pico)
pico_sdk_init()
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

add_executable(${PROJECT_NAME}_target src/main.c)
target_link_libraries(${PROJECT_NAME}_target pico_stdlib)
# Some other libraries where linking may be wanted:
# hardware_adc hardware_clocks hardware_dma hardware_flash hardware_gpio hardware_i2c hardware_irq hardware_pio
# hardware_pwm hardware_spi hardware_timer hardware_uart pico_lwip

pico_add_extra_outputs(${PROJECT_NAME}_target)