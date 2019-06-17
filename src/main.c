/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0 
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/


#include "stm32f10x.h"
#include "stm32f1xx_nucleo.h"
#include "MPU6050.h"
#include "tim2_delay.h"
			

int main(void)
{
	int16_t data_acc[20];

	delay_init();
	MPU6050_I2C_Init();

	if(MPU6050_TestConnection())
			MPU6050_Initialize();

	for(;;)
	{
		MPU6050_GetRawAccelGyro(data_acc);
		delay_ms(100);
	}
}
