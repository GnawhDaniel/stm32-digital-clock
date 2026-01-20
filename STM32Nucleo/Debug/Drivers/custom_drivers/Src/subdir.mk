################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/custom_drivers/Src/ds1307.c \
../Drivers/custom_drivers/Src/esp8266_driver.c \
../Drivers/custom_drivers/Src/lcd.c 

OBJS += \
./Drivers/custom_drivers/Src/ds1307.o \
./Drivers/custom_drivers/Src/esp8266_driver.o \
./Drivers/custom_drivers/Src/lcd.o 

C_DEPS += \
./Drivers/custom_drivers/Src/ds1307.d \
./Drivers/custom_drivers/Src/esp8266_driver.d \
./Drivers/custom_drivers/Src/lcd.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/custom_drivers/Src/%.o Drivers/custom_drivers/Src/%.su Drivers/custom_drivers/Src/%.cyclo: ../Drivers/custom_drivers/Src/%.c Drivers/custom_drivers/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32C031xx -c -I../Core/Inc -I"/home/danie/Projects/digital-clock/STM32Nucleo/Drivers/custom_drivers" -I"/home/danie/Projects/digital-clock/STM32Nucleo/Drivers/custom_drivers/Inc" -I"/home/danie/Projects/digital-clock/STM32Nucleo/Drivers/custom_drivers/Src" -I../Drivers/STM32C0xx_HAL_Driver/Inc -I../Drivers/STM32C0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32C0xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-custom_drivers-2f-Src

clean-Drivers-2f-custom_drivers-2f-Src:
	-$(RM) ./Drivers/custom_drivers/Src/ds1307.cyclo ./Drivers/custom_drivers/Src/ds1307.d ./Drivers/custom_drivers/Src/ds1307.o ./Drivers/custom_drivers/Src/ds1307.su ./Drivers/custom_drivers/Src/esp8266_driver.cyclo ./Drivers/custom_drivers/Src/esp8266_driver.d ./Drivers/custom_drivers/Src/esp8266_driver.o ./Drivers/custom_drivers/Src/esp8266_driver.su ./Drivers/custom_drivers/Src/lcd.cyclo ./Drivers/custom_drivers/Src/lcd.d ./Drivers/custom_drivers/Src/lcd.o ./Drivers/custom_drivers/Src/lcd.su

.PHONY: clean-Drivers-2f-custom_drivers-2f-Src

