; =========================================================
; Game Engine Function: sub_125AF0
; Address            : 0x125AF0 - 0x125B70
; =========================================================

125AF0:  PUSH            {R4-R7,LR}
125AF2:  ADD             R7, SP, #0xC
125AF4:  PUSH.W          {R8}
125AF8:  SUB             SP, SP, #8
125AFA:  LDR             R4, =(dword_263C48 - 0x125B04)
125AFC:  MOV             R5, R0
125AFE:  MOV             R8, R1
125B00:  ADD             R4, PC; dword_263C48
125B02:  LDR             R0, [R4]
125B04:  CBZ             R0, loc_125B4C
125B06:  CMP             R5, #0
125B08:  BMI             loc_125B56
125B0A:  LDR             R0, =(dword_238E90 - 0x125B10)
125B0C:  ADD             R0, PC; dword_238E90
125B0E:  LDR             R0, [R0]
125B10:  CMP             R0, R5
125B12:  BLE             loc_125B56
125B14:  LDR             R0, =(dword_238EA0 - 0x125B1A)
125B16:  ADD             R0, PC; dword_238EA0
125B18:  LDR             R1, [R0]
125B1A:  CMP             R1, R5
125B1C:  IT LT
125B1E:  STRLT           R5, [R0]
125B20:  MOV             R0, R8; s
125B22:  BLX             strlen
125B26:  MOV             R6, R0
125B28:  CMP             R0, #0xD
125B2A:  IT CS
125B2C:  MOVCS           R6, #0xD
125B2E:  LDR             R0, [R4]
125B30:  RSB.W           R5, R5, R5,LSL#3
125B34:  MOV             R1, R8; src
125B36:  MOV             R2, R6; n
125B38:  ADD.W           R0, R0, R5,LSL#1; dest
125B3C:  BLX             j_memcpy
125B40:  LDR             R0, [R4]
125B42:  MOVS            R1, #0
125B44:  ADD.W           R0, R0, R5,LSL#1
125B48:  STRB            R1, [R0,R6]
125B4A:  B               loc_125B68
125B4C:  LDR             R1, =(aAxl - 0x125B54); "AXL" ...
125B4E:  LDR             R2, =(aChandlinghookC_4 - 0x125B56); "CHandlingHook: Can't Set handling name "... ...
125B50:  ADD             R1, PC; "AXL"
125B52:  ADD             R2, PC; "CHandlingHook: Can't Set handling name "...
125B54:  B               loc_125B5E
125B56:  LDR             R1, =(aAxl - 0x125B5E); "AXL" ...
125B58:  LDR             R2, =(aChandlinghookC_5 - 0x125B60); "CHandlingHook: Can't Set handling name "... ...
125B5A:  ADD             R1, PC; "AXL"
125B5C:  ADD             R2, PC; "CHandlingHook: Can't Set handling name "...
125B5E:  MOVS            R0, #5; prio
125B60:  MOV             R3, R8
125B62:  STR             R5, [SP,#0x18+var_18]
125B64:  BLX             __android_log_print
125B68:  ADD             SP, SP, #8
125B6A:  POP.W           {R8}
125B6E:  POP             {R4-R7,PC}
