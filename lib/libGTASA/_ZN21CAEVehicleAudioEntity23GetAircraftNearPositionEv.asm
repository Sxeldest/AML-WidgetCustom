; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity23GetAircraftNearPositionEv
; Address            : 0x3AC060 - 0x3AC094
; =========================================================

3AC060:  MOV             R2, R0
3AC062:  LDR             R0, [R1,#4]
3AC064:  LDRB.W          R1, [R1,#0x80]
3AC068:  CMP             R1, #4
3AC06A:  BNE             loc_3AC07A
3AC06C:  PUSH            {R7,LR}
3AC06E:  MOV             R7, SP
3AC070:  LDR             R1, [R0]
3AC072:  LDR             R3, [R1,#0x68]
3AC074:  MOVS            R1, #0xE
3AC076:  BLX             R3
3AC078:  POP             {R7,PC}
3AC07A:  LDR             R1, [R0,#0x14]
3AC07C:  ADD.W           R3, R1, #0x30 ; '0'
3AC080:  CMP             R1, #0
3AC082:  IT EQ
3AC084:  ADDEQ           R3, R0, #4
3AC086:  VLDR            D16, [R3]
3AC08A:  LDR             R0, [R3,#8]
3AC08C:  STR             R0, [R2,#8]
3AC08E:  VSTR            D16, [R2]
3AC092:  BX              LR
