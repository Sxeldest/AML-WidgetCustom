; =========================================================
; Game Engine Function: sub_86E30
; Address            : 0x86E30 - 0x86ECA
; =========================================================

86E30:  PUSH            {R4-R7,LR}
86E32:  ADD             R7, SP, #0xC
86E34:  PUSH.W          {R8}
86E38:  CMP             R2, #1
86E3A:  BLT             loc_86E4C
86E3C:  MOV             R5, R0
86E3E:  MOV             R6, R1
86E40:  LDR             R1, [R5,#8]
86E42:  MOV             R4, R2
86E44:  LDR             R0, [R0]
86E46:  ADD             R1, R2
86E48:  CMP             R1, R0
86E4A:  BLE             loc_86E54
86E4C:  MOVS            R0, #0
86E4E:  POP.W           {R8}
86E52:  POP             {R4-R7,PC}
86E54:  ADDS            R0, R4, #7
86E56:  MOV             R8, R3
86E58:  LSRS            R1, R0, #3; n
86E5A:  MOV             R0, R6; int
86E5C:  BLX             sub_10967C
86E60:  LDR             R2, [R5,#8]
86E62:  AND.W           R0, R2, #7
86E66:  RSB.W           R12, R0, #8
86E6A:  LDR             R3, [R5,#0xC]
86E6C:  ASRS            R2, R2, #3
86E6E:  LDRB            R2, [R3,R2]
86E70:  LDRB            R3, [R6]
86E72:  LSL.W           R2, R2, R0
86E76:  ORR.W           R2, R2, R3
86E7A:  STRB            R2, [R6]
86E7C:  CBZ             R0, loc_86E96
86E7E:  CMP             R4, R12
86E80:  ITTTT HI
86E82:  LDRDHI.W        R3, R1, [R5,#8]
86E86:  ADDHI.W         R1, R1, R3,ASR#3
86E8A:  LDRBHI          R1, [R1,#1]
86E8C:  LSRHI.W         R1, R1, R12
86E90:  ITT HI
86E92:  ORRHI           R2, R1
86E94:  STRBHI          R2, [R6]
86E96:  CMP             R4, #7
86E98:  BLS             loc_86EAA
86E9A:  LDR             R1, [R5,#8]
86E9C:  ADDS            R6, #1
86E9E:  SUBS            R4, #8
86EA0:  ADD.W           R2, R1, #8
86EA4:  STR             R2, [R5,#8]
86EA6:  BGT             loc_86E6A
86EA8:  B               loc_86EC2
86EAA:  CMP.W           R8, #0
86EAE:  ITTTT NE
86EB0:  RSBNE.W         R0, R4, #8
86EB4:  UXTBNE          R1, R2
86EB6:  LSRNE.W         R0, R1, R0
86EBA:  STRBNE          R0, [R6]
86EBC:  LDR             R0, [R5,#8]
86EBE:  ADD             R0, R4
86EC0:  STR             R0, [R5,#8]
86EC2:  MOVS            R0, #1
86EC4:  POP.W           {R8}
86EC8:  POP             {R4-R7,PC}
