; =========================================================
; Game Engine Function: sub_125D30
; Address            : 0x125D30 - 0x125DA4
; =========================================================

125D30:  PUSH            {R4,R6,R7,LR}
125D32:  ADD             R7, SP, #8
125D34:  LDR             R0, =(dword_263C44 - 0x125D3C)
125D36:  CMP             R1, #0xA2
125D38:  ADD             R0, PC; dword_263C44
125D3A:  LDR             R0, [R0]
125D3C:  BLT             loc_125D60
125D3E:  LDR             R2, =(dword_238E94 - 0x125D48)
125D40:  SUB.W           R4, R1, #0xA2
125D44:  ADD             R2, PC; dword_238E94
125D46:  LDR             R2, [R2]
125D48:  CMP             R4, R2
125D4A:  BGE             loc_125D60
125D4C:  CBZ             R0, loc_125D8A
125D4E:  LDR             R1, =(dword_238E90 - 0x125D54)
125D50:  ADD             R1, PC; dword_238E90
125D52:  LDR             R1, [R1]
125D54:  RSB.W           R1, R1, R1,LSL#3
125D58:  ADD.W           R0, R0, R1,LSL#5
125D5C:  ADDS            R0, #0x14
125D5E:  B               loc_125D9E
125D60:  CBZ             R0, loc_125D74
125D62:  LDR             R1, =(dword_238E90 - 0x125D68)
125D64:  ADD             R1, PC; dword_238E90
125D66:  LDR             R1, [R1]
125D68:  RSB.W           R1, R1, R1,LSL#3
125D6C:  ADD.W           R0, R0, R1,LSL#5
125D70:  ADDS            R0, #0x14
125D72:  POP             {R4,R6,R7,PC}
125D74:  LDR             R1, =(aAxl - 0x125D80); "AXL" ...
125D76:  MOVS            R0, #5; prio
125D78:  LDR             R2, =(aChandlinghookF - 0x125D82); "CHandlingHook: fail to call %s. Custom "... ...
125D7A:  LDR             R3, =(aStaticCharChan - 0x125D84); "static char *CHandlingHook::getBikeStar"... ...
125D7C:  ADD             R1, PC; "AXL"
125D7E:  ADD             R2, PC; "CHandlingHook: fail to call %s. Custom "...
125D80:  ADD             R3, PC; "static char *CHandlingHook::getBikeStar"...
125D82:  BLX             __android_log_print
125D86:  MOVS            R0, #0
125D88:  POP             {R4,R6,R7,PC}
125D8A:  LDR             R1, =(aAxl - 0x125D96); "AXL" ...
125D8C:  MOVS            R0, #5; prio
125D8E:  LDR             R2, =(aChandlinghookF - 0x125D98); "CHandlingHook: fail to call %s. Custom "... ...
125D90:  LDR             R3, =(aStaticCharChan - 0x125D9A); "static char *CHandlingHook::getBikeStar"... ...
125D92:  ADD             R1, PC; "AXL"
125D94:  ADD             R2, PC; "CHandlingHook: fail to call %s. Custom "...
125D96:  ADD             R3, PC; "static char *CHandlingHook::getBikeStar"...
125D98:  BLX             __android_log_print
125D9C:  MOVS            R0, #0
125D9E:  ADD.W           R0, R0, R4,LSL#6
125DA2:  POP             {R4,R6,R7,PC}
