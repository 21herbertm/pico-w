/**
 * Copyright (c) 2020 Raspberry Pi (Trading) Ltd.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */
#include <stdio.h>
#include "pico/stdlib.h"
#include "/Users/mherbert/pico-sdk/src/rp2_common/hardware_i2c/include/hardware/i2c.h"
#include "ltr303.h"

// Include your OV5640 functions and definitions
#include "ov5640.h"

#include "sensor.h"

#define LIGHT_THRESHOLD 500 // This is just an example. You might need to adjust based on testing.

int main() {
    stdio_init_all();

    // Initialize I2C for LTR303
    i2c_inst_t *i2c_ltr303 = i2c0;
    i2c_init(i2c_ltr303, 400000);
    gpio_set_function(4, GPIO_FUNC_I2C);
    gpio_set_function(5, GPIO_FUNC_I2C);
    gpio_pull_up(4);
    gpio_pull_up(5);

    ltr303_init(i2c_ltr303);

    // Initialize I2C for OV5640 using the provided pins
    i2c_inst_t *i2c_ov5640 = i2c1;
    i2c_init(i2c_ov5640, 400000);
    gpio_set_function(8, GPIO_FUNC_I2C); // SDA
    gpio_set_function(9, GPIO_FUNC_I2C); // SCL
    gpio_pull_up(8);
    gpio_pull_up(9);

    ov5640_pin_init(); // Initialize all pins of OV5640
    ov5640_init();     // Power up and initialize OV5640
    ov5640_cnfig();   // Configure OV5640 for your specific use

    while (true) {
        uint16_t ambient_light = ltr303_read_ambient_light(i2c_ltr303);
        printf("Ambient light: %d\n", ambient_light);

        if (ambient_light > LIGHT_THRESHOLD) {
            printf("Detected light, starting camera capture...\n");
            ov5640_capture();

            // Add logic to handle captured data, if needed.
        } else {
            printf("Light level below threshold. Not capturing.\n");
        }

        sleep_ms(1000);
    }

    return 0;
}
