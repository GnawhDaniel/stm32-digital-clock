# Digital Clock based on STM32

Digital clock system built on an STM32 Nucleo-C0xx (Arm® Cortex-M0+) platform that synchronizes time over Wi-Fi using an ESP-01S module and displays it on a 16×2 LCD.

The system retrieves date and time data from a web API over a TCP connection using ESP-01S AT commands. Custom STM32 drivers were implemented to transmit and parse AT commands over UART. A dedicated 3.3V linear voltage regulator powers the ESP-01S from the MCU board’s 5V supply.

A DS1307 real-time clock (RTC) with a backup CMOS battery maintains accurate timekeeping when the microcontroller is powered off.

## Demonstration
https://github.com/user-attachments/assets/be06e873-0dd8-48de-b1c8-ff269aef6ca1


## Images
<p align="center">
  <img src="imgs/front.jpg" width="40%" />
  <img src="imgs/top.jpg" width="40%" />
</p>



## Components
- STM32 Nucleo-C031C6
- 16x2 LCD
- B10K Potentiometer
- Linear Voltage Regulator (5.5V -> 3.3V)
- ESP-01S Wi-Fi Module
- DS1307 RTC Module (with CMOS battery)

## Wiring
| From      | Pin  | To       | Pin | Signal |
| --------- | ---- | -------- | --- | ------ | 
| STM32C0   | PB0  | 16x2 LCD | RS  | GPIO   |
| STM32C0   | PB1  | 16x2 LCD | RW  | GPIO   |
| STM32C0   | PB2  | 16x2 LCD | EN  | GPIO   |
| STM32C0   | PB3  | 16x2 LCD | D4  | GPIO   |
| STM32C0   | PB4  | 16x2 LCD | D5  | GPIO   |
| STM32C0   | PB5  | 16x2 LCD | D6  | GPIO   |
| STM32C0   | PB12 | 16x2 LCD | D7  | GPIO   |
| STM32C0   | PA9  | DS1307   | SCL | I2C    |
| STM32C0   | PA10 | DS1307   | SDA | I2C    |
| STM32C0   | PB7  | ESP-01S  | TX  | UART   |
| STM32C0   | PB6  | ESP-01S  | RX  | UART   |
| STM32C0   | 5V   | Regulator| Vin | Power  |
| Regulator | 3.3V | ESP-01S  | VCC | Power  |
| Potentiometer | Vin | STM32C0  | 5V | Power |
| Potentiometer | Wiper | 16x2 LCD | V0 | Contrast |
| STM32C0   |  GND   | All Modules | GND | Ground |


## Interfaces
- UART: ESP-01S Wi-Fi module (AT command interface)
- I2C: DS1307 RTC
- GPIO: 16×2 LCD (4-bit mode)


## Design Notes
- Time synchronization is user-initiated via an external interrupt from the on-board button.
- Timekeeping is maintained independently of network operations.
- LCD screen operates in 4-bit mode.
