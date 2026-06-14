; =========================================================
; Game Engine Function: INT123_synth_1to1_8bit_wrap_mono
; Address            : 0x233CE8 - 0x233D54
; =========================================================

233CE8:  PUSH            {R4-R7,LR}
233CEA:  ADD             R7, SP, #0xC
233CEC:  PUSH.W          {R8-R11}
233CF0:  SUB             SP, SP, #0x84
233CF2:  MOV             R4, R1
233CF4:  MOVW            R1, #0x9194
233CF8:  LDR.W           R12, [R4,R1]
233CFC:  MOVW            R9, #0xB2A8
233D00:  MOVW            R10, #0xB2A0
233D04:  MOVS            R5, #0
233D06:  MOVS            R1, #0
233D08:  MOV             R2, R4
233D0A:  MOVS            R3, #0
233D0C:  LDR.W           R8, [R4,R9]
233D10:  ADD             R6, SP, #0xA0+var_9C
233D12:  LDR.W           R11, [R4,R10]
233D16:  STR.W           R6, [R4,R10]
233D1A:  STR.W           R5, [R4,R9]
233D1E:  BLX             R12
233D20:  MOVW            R2, #0x4A7C
233D24:  ADD.W           R1, R11, R8
233D28:  ADDS            R3, R4, R2
233D2A:  ADD.W           R12, R4, R9
233D2E:  STR.W           R11, [R4,R10]
233D32:  LDRSH.W         R4, [R6,R5,LSL#2]
233D36:  LDR             R2, [R3]
233D38:  ASRS            R4, R4, #3
233D3A:  LDRB            R2, [R2,R4]
233D3C:  STRB            R2, [R1,R5]
233D3E:  ADDS            R5, #1
233D40:  CMP             R5, #0x20 ; ' '
233D42:  BNE             loc_233D32
233D44:  ADD.W           R1, R8, #0x20 ; ' '
233D48:  STR.W           R1, [R12]
233D4C:  ADD             SP, SP, #0x84
233D4E:  POP.W           {R8-R11}
233D52:  POP             {R4-R7,PC}
