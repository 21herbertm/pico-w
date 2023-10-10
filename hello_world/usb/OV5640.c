// set up all the necessary pin func e.g. clk, D2-D9...
// Whats the protocol used for data?
// How to set up the func
// Figure out what functions to include (from https://github.com/espressif/esp32-camera/blob/master/driver/esp_camera.c#L256)
// Figure out specific registers to write into based on the code (linked above)
// example.c should be helpful

#include "pico/stdlib.h"
#include "hardware/i2c.h"
#include "hardware/gpio.h"
//hardware/dma.h
#include "/Users/mherbert/pico-sdk/src/rp2_common/hardware_dma/include/hardware/dma.h"


// Assuming I2C0 for the OV5640
#define I2C_PORT i2c0
#define I2C_SDA 8
#define I2C_SCL 9
#define D3_PIN 13
#define D4_PIN 14
#define D5_PIN 15
#define D6_PIN 16
#define D7_PIN 17
#define D8_PIN 18
#define D9_PIN 19

#define OV5640_I2C_ADDR 0x78 // This is a generic
// DVP pins
#define HS_PIN 21
#define VS_PIN 7
#define D2_PIN 12

#define IMAGE_WIDTH 640 // Example for VGA
#define IMAGE_HEIGHT 480

void ov5640_pin_init() {
    // Initialize I2C
    i2c_init(I2C_PORT, 100 * 1000); // 100kHz
    gpio_set_function(I2C_SDA, GPIO_FUNC_I2C);
    gpio_set_function(I2C_SCL, GPIO_FUNC_I2C);
    gpio_pull_up(I2C_SDA);
    gpio_pull_up(I2C_SCL);

    // DVP pins initialization (assuming simple GPIO for now)
    gpio_init(D2_PIN);
    gpio_init(D3_PIN);
    gpio_init(D4_PIN);
    gpio_init(D5_PIN);
    gpio_init(D6_PIN);
    gpio_init(D7_PIN);
    gpio_init(D8_PIN);
    gpio_init(D9_PIN);
    // clk
    // SDA
    // SCL
    // INT
    // D2-D9
        // GPIO?
}


void ov5640_write_reg(uint16_t reg, uint8_t val) {
    uint8_t buf[3];
    buf[0] = reg >> 8;
    buf[1] = reg & 0xFF;
    buf[2] = val;
    i2c_write_blocking(I2C_PORT, OV5640_I2C_ADDR, buf, 3, false);
}

uint8_t ov5640_read_reg(uint16_t reg) {
    uint8_t buf[2];
    buf[0] = reg >> 8;
    buf[1] = reg & 0xFF;
    i2c_write_blocking(I2C_PORT, OV5640_I2C_ADDR, buf, 2, true); // Write with repeated start
    uint8_t val;
    i2c_read_blocking(I2C_PORT, OV5640_I2C_ADDR, &val, 1, false);
    return val;
}


void ov5640_init() {
    // powerup
    // quit low power mode
    // Software reset
    ov5640_write_reg(0x3008, 0x82);
    sleep_ms(10);

    // System clock from PLL, 100MHz
    ov5640_write_reg(0x3103, 0x93);
    ov5640_write_reg(0x3017, 0xff);
    ov5640_write_reg(0x3018, 0xff);
    // PLL settings...
    // Other init settings...

    // Disable power-down
    ov5640_write_reg(0x3008, 0x02);
    sleep_ms(10);
}

void ov5640_cnfig() {
    // Mode
    // Resolution
    // frame setting
    // data format - JPEG, YUV, RGB
    // Image format: YUV422
    ov5640_write_reg(0x4300, 0x30);

    // Output size: VGA (640x480)
    ov5640_write_reg(0x3800, 0x00); // X start high
    ov5640_write_reg(0x3801, 0x00); // X start low
    ov5640_write_reg(0x3802, 0x00); // Y start high
    ov5640_write_reg(0x3803, 0x00); // Y start low
    ov5640_write_reg(0x3804, 0x0a); // X end high
    ov5640_write_reg(0x3805, 0x3f); // X end low
    ov5640_write_reg(0x3806, 0x07); // Y end high
    ov5640_write_reg(0x3807, 0x9f); // Y end low
    ov5640_write_reg(0x3808, 0x02); // DVP output width high byte
    ov5640_write_reg(0x3809, 0x80); // DVP output width low byte
    ov5640_write_reg(0x380a, 0x01); // DVP output height high byte
    ov5640_write_reg(0x380b, 0xe0); // DVP output height low byte

    // Frame rate: 30fps...
    // Other configurations...

    // Format control: YUV422
    ov5640_write_reg(0x4300, 0x30);
    ov5640_write_reg(0x501f, 0x01);
}

void ov5640_capture() {
    // send commmand over i2C
    ov5640_write_reg(0x4202, 0x0f); // Enter standby mode (stop streaming)
    ov5640_write_reg(0x4202, 0x00); // Exit standby (start capture/streaming)
}

uint8_t image_buffer[IMAGE_WIDTH * IMAGE_HEIGHT]; // Destination buffer
int dma_channel;

void ov5640_dma_setup() {
    dma_channel = dma_claim_unused_channel(true); // Claim an unused DMA channel
    dma_channel_config dma_config = dma_channel_get_default_config(dma_channel);

    // Configure the DMA transfer settings
    channel_config_set_transfer_data_size(&dma_config, DMA_SIZE_8);
    channel_config_set_read_increment(&dma_config, false);
    channel_config_set_write_increment(&dma_config, true);

    // Set the source as the data GPIOs and the destination as the image buffer
    dma_channel_configure(dma_channel, &dma_config,
                          &image_buffer,    // Destination
                          NULL,             // Source: this should be your data GPIO
                          IMAGE_WIDTH * IMAGE_HEIGHT,
                          false);           // Don't start immediately
}
void ov5640_receive() {
    // figure out how to receive data
        // MIPI? DVP?
        // Parallel / Serial
     // Deal with data
    // Data reading using DVP would typically involve monitoring HS/VS signals and reading pixel data.
    // This can be quite involved and would likely require direct interfacing with RP2040 PIO for efficient processing.
    dma_start_channel_mask(1u << dma_channel);

}
/*
int main() {
    stdio_init_all();
    ov5640_pin_init();
    ov5640_init();
    ov5640_cnfig();
    ov5640_capture();
    // ... Later, or in a loop: ov5640_receive()
}
 */