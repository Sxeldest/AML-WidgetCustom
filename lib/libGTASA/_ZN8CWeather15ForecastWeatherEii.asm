; =========================================================
; Game Engine Function: _ZN8CWeather15ForecastWeatherEii
; Address            : 0x5CEA58 - 0x5CEAC8
; =========================================================

5CEA58:  PUSH            {R4-R7,LR}
5CEA5A:  ADD             R7, SP, #0xC
5CEA5C:  PUSH.W          {R11}
5CEA60:  CMP             R1, #0
5CEA62:  BLT             loc_5CEAB8
5CEA64:  LDR             R2, =(_ZN8CWeather13WeatherRegionE_ptr - 0x5CEA6C)
5CEA66:  LDR             R3, =(_ZN8CWeather17WeatherTypeInListE_ptr - 0x5CEA70)
5CEA68:  ADD             R2, PC; _ZN8CWeather13WeatherRegionE_ptr
5CEA6A:  LDR             R6, =(WeatherTypesListDefault_ptr - 0x5CEA76)
5CEA6C:  ADD             R3, PC; _ZN8CWeather17WeatherTypeInListE_ptr
5CEA6E:  LDR             R4, =(off_66E390 - 0x5CEA7A)
5CEA70:  LDR             R2, [R2]; CWeather::WeatherRegion ...
5CEA72:  ADD             R6, PC; WeatherTypesListDefault_ptr
5CEA74:  LDR             R3, [R3]; CWeather::WeatherTypeInList ...
5CEA76:  ADD             R4, PC; off_66E390
5CEA78:  LDR.W           LR, [R6]; WeatherTypesListDefault
5CEA7C:  LDRSH.W         R2, [R2]; CWeather::WeatherRegion
5CEA80:  LDR.W           R12, [R3]; CWeather::WeatherTypeInList
5CEA84:  SUBS            R3, R2, #1
5CEA86:  MOV.W           R2, #0xFFFFFFFF
5CEA8A:  ADD.W           R5, R12, R2
5CEA8E:  CMP             R3, #3
5CEA90:  ADD.W           R5, R5, #1
5CEA94:  MOV.W           R6, R5,ASR#31
5CEA98:  ADD.W           R6, R5, R6,LSR#26
5CEA9C:  BIC.W           R6, R6, #0x3F ; '?'
5CEAA0:  SUB.W           R5, R5, R6
5CEAA4:  MOV             R6, LR
5CEAA6:  IT LS
5CEAA8:  LDRLS.W         R6, [R4,R3,LSL#2]
5CEAAC:  LDRSB           R5, [R6,R5]
5CEAAE:  CMP             R5, R0
5CEAB0:  BEQ             loc_5CEAC0
5CEAB2:  ADDS            R2, #1
5CEAB4:  CMP             R2, R1
5CEAB6:  BLT             loc_5CEA8A
5CEAB8:  MOVS            R0, #0
5CEABA:  POP.W           {R11}
5CEABE:  POP             {R4-R7,PC}
5CEAC0:  MOVS            R0, #1
5CEAC2:  POP.W           {R11}
5CEAC6:  POP             {R4-R7,PC}
