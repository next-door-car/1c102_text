/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __LS1C103_ADC_H
#define __LS1C103_ADC_H

/* Includes ------------------------------------------------------------------*/
#include "ls1c103_map.h"

/* Exported types ------------------------------------------------------------*/
/* ADC Init structure definition */
typedef struct
{
  uint32_t ADC_Mode;
  FunctionalState ADC_ScanConvMode; 
  FunctionalState ADC_ContinuousConvMode;
  uint32_t ADC_ExternalTrigConv;
  uint32_t ADC_DataAlign;
  uint8_t ADC_NbrOfChannel;
  uint8_t ADC_ClkDivider;
  uint8_t ADC_JTrigMod;
  uint8_t ADC_ADCEdge;
  uint8_t ADC_OutPhaseSel;
}ADC_InitTypeDef;

/* Exported constants --------------------------------------------------------*/
#define IS_ADC_ALL_PERIPH(PERIPH) (((*(uint32_t*)&(PERIPH)) == ADC1_BASE))
                                 
#define IS_ADC_DMA_PERIPH(PERIPH) (((*(uint32_t*)&(PERIPH)) == ADC1_BASE))

/* ADC dual mode -------------------------------------------------------------*/
#define ADC_Mode_Independent                       ((uint32_t)0x00000000)
#define ADC_Mode_RegInjecSimult                    ((uint32_t)0x00010000)
#define ADC_Mode_RegSimult_AlterTrig               ((uint32_t)0x00020000)
#define ADC_Mode_InjecSimult_FastInterl            ((uint32_t)0x00030000)
#define ADC_Mode_InjecSimult_SlowInterl            ((uint32_t)0x00040000)
#define ADC_Mode_InjecSimult                       ((uint32_t)0x00050000)
#define ADC_Mode_RegSimult                         ((uint32_t)0x00060000)
#define ADC_Mode_FastInterl                        ((uint32_t)0x00070000)
#define ADC_Mode_SlowInterl                        ((uint32_t)0x00080000)
#define ADC_Mode_AlterTrig                         ((uint32_t)0x00090000)

#define IS_ADC_MODE(MODE) (((MODE) == ADC_Mode_Independent) || \
                           ((MODE) == ADC_Mode_RegInjecSimult) || \
                           ((MODE) == ADC_Mode_RegSimult_AlterTrig) || \
                           ((MODE) == ADC_Mode_InjecSimult_FastInterl) || \
                           ((MODE) == ADC_Mode_InjecSimult_SlowInterl) || \
                           ((MODE) == ADC_Mode_InjecSimult) || \
                           ((MODE) == ADC_Mode_RegSimult) || \
                           ((MODE) == ADC_Mode_FastInterl) || \
                           ((MODE) == ADC_Mode_SlowInterl) || \
                           ((MODE) == ADC_Mode_AlterTrig))

/* ADC extrenal trigger sources for regular channels conversion --------------*/
#define ADC_ExternalTrigConv_T1_CC1                ((uint32_t)0x00000000)
#define ADC_ExternalTrigConv_T1_CC2                ((uint32_t)0x00020000)
#define ADC_ExternalTrigConv_T1_CC3                ((uint32_t)0x00040000)
#define ADC_ExternalTrigConv_T2_CC2                ((uint32_t)0x00060000)
#define ADC_ExternalTrigConv_Ext_IT11              ((uint32_t)0x000C0000)
#define ADC_ExternalTrigConv_None                  ((uint32_t)0x000E0000)

#define IS_ADC_EXT_TRIG(REGTRIG) (((REGTRIG) == ADC_ExternalTrigConv_T1_CC1) || \
                                  ((REGTRIG) == ADC_ExternalTrigConv_T1_CC2) || \
                                  ((REGTRIG) == ADC_ExternalTrigConv_T1_CC3) || \
                                  ((REGTRIG) == ADC_ExternalTrigConv_T2_CC2) || \
                                  ((REGTRIG) == ADC_ExternalTrigConv_Ext_IT11) || \
                                  ((REGTRIG) == ADC_ExternalTrigConv_None) || \
                                  ((REGTRIG) == ADC_ExternalTrigConv_T2_CC3))

/* ADC data align ------------------------------------------------------------*/
#define ADC_DataAlign_Right                        ((uint32_t)0x00000000)
#define ADC_DataAlign_Left                         ((uint32_t)0x00000800)

#define IS_ADC_DATA_ALIGN(ALIGN) (((ALIGN) == ADC_DataAlign_Right) || \
                                  ((ALIGN) == ADC_DataAlign_Left))

/* ADC channels --------------------------------------------------------------*/
#define ADC_Channel_0                               ((uint8_t)0x00)
#define ADC_Channel_1                               ((uint8_t)0x01)
#define ADC_Channel_2                               ((uint8_t)0x02)
#define ADC_Channel_3                               ((uint8_t)0x03)
#define ADC_Channel_4                               ((uint8_t)0x04)
#define ADC_Channel_5                               ((uint8_t)0x05)
#define ADC_Channel_6                               ((uint8_t)0x06)
#define ADC_Channel_7                               ((uint8_t)0x07)
#define ADC_Channel_8                               ((uint8_t)0x08)
#define ADC_Channel_9                               ((uint8_t)0x09)
#define ADC_Channel_10                              ((uint8_t)0x0A)
#define ADC_Channel_11                              ((uint8_t)0x0B)

#define IS_ADC_CHANNEL(CHANNEL) (((CHANNEL) == ADC_Channel_0) || ((CHANNEL) == ADC_Channel_1) || \
                                 ((CHANNEL) == ADC_Channel_2) || ((CHANNEL) == ADC_Channel_3) || \
                                 ((CHANNEL) == ADC_Channel_4) || ((CHANNEL) == ADC_Channel_5) || \
                                 ((CHANNEL) == ADC_Channel_6) || ((CHANNEL) == ADC_Channel_7) || \
                                 ((CHANNEL) == ADC_Channel_8) || ((CHANNEL) == ADC_Channel_9) || \
                                 ((CHANNEL) == ADC_Channel_10) || ((CHANNEL) == ADC_Channel_11))

/* ADC sampling times --------------------------------------------------------*/
#define ADC_SampleTime_1Cycles                    ((uint8_t)0x00)
#define ADC_SampleTime_2Cycles                    ((uint8_t)0x01)
#define ADC_SampleTime_4Cycles                    ((uint8_t)0x02)
#define ADC_SampleTime_8Cycles                    ((uint8_t)0x03)
#define ADC_SampleTime_16Cycles                   ((uint8_t)0x04)
#define ADC_SampleTime_32Cycles                   ((uint8_t)0x05)
#define ADC_SampleTime_64Cycles                   ((uint8_t)0x06)
#define ADC_SampleTime_128Cycles                  ((uint8_t)0x07)

#define IS_ADC_SAMPLE_TIME(TIME) (((TIME) == ADC_SampleTime_1Cycles5)  || \
                                  ((TIME) == ADC_SampleTime_2Cycles5)  || \
                                  ((TIME) == ADC_SampleTime_4Cycles5)  || \
                                  ((TIME) == ADC_SampleTime_8Cycles5)  || \
                                  ((TIME) == ADC_SampleTime_16Cycles5) || \
                                  ((TIME) == ADC_SampleTime_32Cycles5) || \
                                  ((TIME) == ADC_SampleTime_64Cycles5) || \
                                  ((TIME) == ADC_SampleTime_128Cycles5))

/* ADC extrenal trigger sources for injected channels conversion -------------*/
#define ADC_ExternalTrigInjecConv_T2_TRGO           ((uint32_t)0x00002000)
#define ADC_ExternalTrigInjecConv_T2_CC1            ((uint32_t)0x00003000)
#define ADC_ExternalTrigInjecConv_Ext_IT15          ((uint32_t)0x00006000)
#define ADC_ExternalTrigInjecConv_T1_TRGO           ((uint32_t)0x00000000)
#define ADC_ExternalTrigInjecConv_T1_CC4            ((uint32_t)0x00001000)
#define ADC_ExternalTrigInjecConv_None              ((uint32_t)0x00007000)

#define IS_ADC_EXT_INJEC_TRIG(INJTRIG) (((INJTRIG) == ADC_ExternalTrigInjecConv_T1_TRGO) || \
                                        ((INJTRIG) == ADC_ExternalTrigInjecConv_T1_CC4) || \
                                        ((INJTRIG) == ADC_ExternalTrigInjecConv_T2_TRGO) || \
                                        ((INJTRIG) == ADC_ExternalTrigInjecConv_T2_CC1) || \
                                        ((INJTRIG) == ADC_ExternalTrigInjecConv_Ext_IT15) || \
                                        ((INJTRIG) == ADC_ExternalTrigInjecConv_None))

/* ADC injected channel selection --------------------------------------------*/
#define ADC_InjectedChannel_1                       ((uint8_t)0x14)
#define ADC_InjectedChannel_2                       ((uint8_t)0x18)
#define ADC_InjectedChannel_3                       ((uint8_t)0x1C)
#define ADC_InjectedChannel_4                       ((uint8_t)0x20)

#define IS_ADC_INJECTED_CHANNEL(CHANNEL) (((CHANNEL) == ADC_InjectedChannel_1) || \
                                          ((CHANNEL) == ADC_InjectedChannel_2) || \
                                          ((CHANNEL) == ADC_InjectedChannel_3) || \
                                          ((CHANNEL) == ADC_InjectedChannel_4))

/* ADC analog watchdog selection ---------------------------------------------*/
#define ADC_AnalogWatchdog_SingleRegEnable         ((uint32_t)0x00800200)
#define ADC_AnalogWatchdog_SingleInjecEnable       ((uint32_t)0x00400200)
#define ADC_AnalogWatchdog_SingleRegOrInjecEnable  ((uint32_t)0x00C00200)
#define ADC_AnalogWatchdog_AllRegEnable            ((uint32_t)0x00800000)
#define ADC_AnalogWatchdog_AllInjecEnable          ((uint32_t)0x00400000)
#define ADC_AnalogWatchdog_AllRegAllInjecEnable    ((uint32_t)0x00C00000)
#define ADC_AnalogWatchdog_None                    ((uint32_t)0x00000000)

#define IS_ADC_ANALOG_WATCHDOG(WATCHDOG) (((WATCHDOG) == ADC_AnalogWatchdog_SingleRegEnable) || \
                                          ((WATCHDOG) == ADC_AnalogWatchdog_SingleInjecEnable) || \
                                          ((WATCHDOG) == ADC_AnalogWatchdog_SingleRegOrInjecEnable) || \
                                          ((WATCHDOG) == ADC_AnalogWatchdog_AllRegEnable) || \
                                          ((WATCHDOG) == ADC_AnalogWatchdog_AllInjecEnable) || \
                                          ((WATCHDOG) == ADC_AnalogWatchdog_AllRegAllInjecEnable) || \
                                          ((WATCHDOG) == ADC_AnalogWatchdog_None))

/* ADC interrupts definition -------------------------------------------------*/
#define ADC_IT_EOC                                 ((uint16_t)0x0220)
#define ADC_IT_AWD                                 ((uint16_t)0x0140)
#define ADC_IT_JEOC                                ((uint16_t)0x0480)

#define IS_ADC_IT(IT) ((((IT) & (uint16_t)0xF81F) == 0x00) && ((IT) != 0x00))
#define IS_ADC_GET_IT(IT) (((IT) == ADC_IT_EOC) || ((IT) == ADC_IT_AWD) || \
                           ((IT) == ADC_IT_JEOC))

/* ADC flags definition ------------------------------------------------------*/
#define ADC_FLAG_AWD                               ((uint8_t)0x01)
#define ADC_FLAG_EOC                               ((uint8_t)0x02)
#define ADC_FLAG_JEOC                              ((uint8_t)0x04)
#define ADC_FLAG_JSTRT                             ((uint8_t)0x08)
#define ADC_FLAG_STRT                              ((uint8_t)0x10)

#define IS_ADC_CLEAR_FLAG(FLAG) ((((FLAG) & (uint8_t)0xE0) == 0x00) && ((FLAG) != 0x00))
#define IS_ADC_GET_FLAG(FLAG) (((FLAG) == ADC_FLAG_AWD) || ((FLAG) == ADC_FLAG_EOC) || \
                               ((FLAG) == ADC_FLAG_JEOC) || ((FLAG)== ADC_FLAG_JSTRT) || \
                               ((FLAG) == ADC_FLAG_STRT))

/* ADC thresholds ------------------------------------------------------------*/
#define IS_ADC_THRESHOLD(THRESHOLD) ((THRESHOLD) <= 0xFFF)

/* ADC injected offset -------------------------------------------------------*/
#define IS_ADC_OFFSET(OFFSET) ((OFFSET) <= 0xFFF)

/* ADC injected length -------------------------------------------------------*/
#define IS_ADC_INJECTED_LENGTH(LENGTH) (((LENGTH) >= 0x1) && ((LENGTH) <= 0x4))

/* ADC injected rank ---------------------------------------------------------*/
#define IS_ADC_INJECTED_RANK(RANK) (((RANK) >= 0x1) && ((RANK) <= 0x4))

/* ADC regular length --------------------------------------------------------*/
#define IS_ADC_REGULAR_LENGTH(LENGTH) (((LENGTH) >= 0x1) && ((LENGTH) <= 0x10))

/* ADC regular rank ----------------------------------------------------------*/
#define IS_ADC_REGULAR_RANK(RANK) (((RANK) >= 0x1) && ((RANK) <= 0x10))

/* ADC regular discontinuous mode number -------------------------------------*/
#define IS_ADC_REGULAR_DISC_NUMBER(NUMBER) (((NUMBER) >= 0x1) && ((NUMBER) <= 0x8))

/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void ADC_DeInit(ADC_TypeDef* ADCx);
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ITConfig(ADC_TypeDef* ADCx, uint16_t ADC_IT, FunctionalState NewState);
void ADC_ResetCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetResetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_StartCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_SoftwareStartConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx);
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, uint8_t Number);
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_TestChannelMap(uint8_t ADC_Channel, uint8_t ADC_DOUT);
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_ExternalTrigConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx);
uint32_t ADC_GetDualModeConversionValue(void);
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConv);
void ADC_ExternalTrigInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_SoftwareStartInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx);
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, uint8_t Length);
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel, uint16_t Offset);
uint16_t ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel);
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog);
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold, uint16_t LowThreshold);
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel);
void ADC_TempSensorVrefintCmd(FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, uint16_t ADC_IT);
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint16_t ADC_IT);

#endif

