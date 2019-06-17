################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/MPU6050.c \
../src/main.c \
../src/syscalls.c \
../src/system_stm32f10x.c \
../src/tim2_delay.c 

OBJS += \
./src/MPU6050.o \
./src/main.o \
./src/syscalls.o \
./src/system_stm32f10x.o \
./src/tim2_delay.o 

C_DEPS += \
./src/MPU6050.d \
./src/main.d \
./src/syscalls.d \
./src/system_stm32f10x.d \
./src/tim2_delay.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -DSTM32 -DSTM32F1 -DSTM32F103RBTx -DNUCLEO_F103RB -DDEBUG -DSTM32F10X_MD -DUSE_STDPERIPH_DRIVER -I"C:/Users/javie/WorkspaceSTM/Env_monitoring/stm32f103_mpu6050_example/Utilities/STM32F1xx-Nucleo" -I"C:/Users/javie/WorkspaceSTM/Env_monitoring/stm32f103_mpu6050_example/StdPeriph_Driver/inc" -I"C:/Users/javie/WorkspaceSTM/Env_monitoring/stm32f103_mpu6050_example/inc" -I"C:/Users/javie/WorkspaceSTM/Env_monitoring/stm32f103_mpu6050_example/CMSIS/device" -I"C:/Users/javie/WorkspaceSTM/Env_monitoring/stm32f103_mpu6050_example/CMSIS/core" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


