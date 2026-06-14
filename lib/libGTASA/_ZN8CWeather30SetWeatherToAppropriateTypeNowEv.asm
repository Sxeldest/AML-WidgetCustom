; =========================================================
; Game Engine Function: _ZN8CWeather30SetWeatherToAppropriateTypeNowEv
; Address            : 0x5CDF60 - 0x5CE08E
; =========================================================

5CDF60:  PUSH            {R4-R7,LR}
5CDF62:  ADD             R7, SP, #0xC
5CDF64:  PUSH.W          {R11}
5CDF68:  SUB             SP, SP, #0x10
5CDF6A:  ADD             R0, SP, #0x20+var_1C; int
5CDF6C:  MOV.W           R1, #0xFFFFFFFF
5CDF70:  BLX.W           j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
5CDF74:  VLDR            S6, =1000.0
5CDF78:  VLDR            S2, [SP,#0x20+var_1C]
5CDF7C:  VLDR            S0, [SP,#0x20+var_18]
5CDF80:  VCMPE.F32       S2, S6
5CDF84:  VMRS            APSR_nzcv, FPSCR
5CDF88:  ITTT GT
5CDF8A:  VLDRGT          S4, =910.0
5CDF8E:  VCMPEGT.F32     S0, S4
5CDF92:  VMRSGT          APSR_nzcv, FPSCR
5CDF96:  BLE             loc_5CDF9C
5CDF98:  MOVS            R6, #3
5CDF9A:  B               loc_5CE048
5CDF9C:  VLDR            S4, =-850.0
5CDFA0:  VCMPE.F32       S2, S4
5CDFA4:  VMRS            APSR_nzcv, FPSCR
5CDFA8:  BLE             loc_5CDFC6
5CDFAA:  VCMPE.F32       S2, S6
5CDFAE:  VMRS            APSR_nzcv, FPSCR
5CDFB2:  BGE             loc_5CDFC6
5CDFB4:  VLDR            S6, =1280.0
5CDFB8:  VCMPE.F32       S0, S6
5CDFBC:  VMRS            APSR_nzcv, FPSCR
5CDFC0:  BLE             loc_5CDFC6
5CDFC2:  MOVS            R6, #4
5CDFC4:  B               loc_5CE048
5CDFC6:  VLDR            S6, =1430.0
5CDFCA:  VCMPE.F32       S0, S6
5CDFCE:  VMRS            APSR_nzcv, FPSCR
5CDFD2:  ITTT LT
5CDFD4:  VLDRLT          S6, =-1430.0
5CDFD8:  VCMPELT.F32     S2, S6
5CDFDC:  VMRSLT          APSR_nzcv, FPSCR
5CDFE0:  BGE             loc_5CDFF4
5CDFE2:  VLDR            S6, =-580.0
5CDFE6:  VCMPE.F32       S0, S6
5CDFEA:  VMRS            APSR_nzcv, FPSCR
5CDFEE:  BLE             loc_5CDFF4
5CDFF0:  MOVS            R6, #2
5CDFF2:  B               loc_5CE048
5CDFF4:  VLDR            S6, =3000.0
5CDFF8:  MOVS            R1, #0
5CDFFA:  VLDR            S8, =250.0
5CDFFE:  MOVS            R2, #0
5CE000:  VCMPE.F32       S2, S6
5CE004:  VLDR            S10, =-3000.0
5CE008:  VMRS            APSR_nzcv, FPSCR
5CE00C:  VCMPE.F32       S2, S8
5CE010:  MOV.W           R0, #0
5CE014:  IT LT
5CE016:  MOVLT           R1, #1
5CE018:  VMRS            APSR_nzcv, FPSCR
5CE01C:  VCMPE.F32       S0, S10
5CE020:  IT GT
5CE022:  MOVGT           R2, #1
5CE024:  VMRS            APSR_nzcv, FPSCR
5CE028:  AND.W           R1, R1, R2
5CE02C:  MOV.W           R2, #0
5CE030:  VCMPE.F32       S0, S4
5CE034:  IT GT
5CE036:  MOVGT           R2, #1
5CE038:  VMRS            APSR_nzcv, FPSCR
5CE03C:  AND.W           R1, R1, R2
5CE040:  IT LT
5CE042:  MOVLT           R0, #1
5CE044:  AND.W           R6, R0, R1
5CE048:  LDR             R1, =(_ZN8CWeather17ForcedWeatherTypeE_ptr - 0x5CE05A)
5CE04A:  EOR.W           R4, R6, #4
5CE04E:  LDR             R3, =(_ZN8CWeather13WeatherRegionE_ptr - 0x5CE060)
5CE050:  MOVW            R5, #0xFFFF
5CE054:  LDR             R2, =(off_66E370 - 0x5CE066)
5CE056:  ADD             R1, PC; _ZN8CWeather17ForcedWeatherTypeE_ptr
5CE058:  LDR.W           LR, =(_ZN8CWeather14OldWeatherTypeE_ptr - 0x5CE070)
5CE05C:  ADD             R3, PC; _ZN8CWeather13WeatherRegionE_ptr
5CE05E:  LDR.W           R12, =(_ZN8CWeather14NewWeatherTypeE_ptr - 0x5CE06C)
5CE062:  ADD             R2, PC; off_66E370
5CE064:  LDR             R1, [R1]; CWeather::ForcedWeatherType ...
5CE066:  UXTH            R4, R4
5CE068:  ADD             R12, PC; _ZN8CWeather14NewWeatherTypeE_ptr
5CE06A:  LDR             R3, [R3]; CWeather::WeatherRegion ...
5CE06C:  ADD             LR, PC; _ZN8CWeather14OldWeatherTypeE_ptr
5CE06E:  LDR.W           R2, [R2,R4,LSL#2]
5CE072:  LDR.W           R0, [R12]; CWeather::NewWeatherType ...
5CE076:  LDR.W           R4, [LR]; CWeather::OldWeatherType ...
5CE07A:  STRH            R5, [R1]; CWeather::ForcedWeatherType
5CE07C:  STRH            R6, [R3]; CWeather::WeatherRegion
5CE07E:  LDRSB.W         R1, [R2]
5CE082:  STRH            R1, [R0]; CWeather::NewWeatherType
5CE084:  STRH            R1, [R4]; CWeather::OldWeatherType
5CE086:  ADD             SP, SP, #0x10
5CE088:  POP.W           {R11}
5CE08C:  POP             {R4-R7,PC}
