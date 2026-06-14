; =========================================================
; Game Engine Function: sub_116E48
; Address            : 0x116E48 - 0x116ED8
; =========================================================

116E48:  PUSH            {R4-R7,LR}
116E4A:  ADD             R7, SP, #0xC
116E4C:  PUSH.W          {R11}
116E50:  VPUSH           {D8}
116E54:  SUB             SP, SP, #0x10
116E56:  MOV             R4, R0
116E58:  LDR             R0, [R1]
116E5A:  MOV             R5, R1
116E5C:  LDR             R2, [R0,#0x5C]
116E5E:  ADD             R0, SP, #0x28+var_20
116E60:  BLX             R2
116E62:  LDR             R0, [SP,#0x28+var_20]
116E64:  MOV             R1, R5
116E66:  STR             R0, [R4]
116E68:  LDR             R0, [R5]
116E6A:  LDR             R2, [R0,#0x5C]
116E6C:  ADD             R0, SP, #0x28+var_20
116E6E:  BLX             R2
116E70:  LDR             R0, [SP,#0x28+var_1C]
116E72:  MOV             R1, R5
116E74:  STR             R0, [R4,#4]
116E76:  LDR             R0, [R5]
116E78:  LDR             R2, [R0,#0x5C]
116E7A:  ADD             R0, SP, #0x28+var_20
116E7C:  BLX             R2
116E7E:  LDR             R0, [R5]
116E80:  MOV             R6, SP
116E82:  MOV             R1, R5
116E84:  VLDR            S16, [SP,#0x28+var_20]
116E88:  LDR             R2, [R0,#0x58]
116E8A:  MOV             R0, R6
116E8C:  BLX             R2
116E8E:  VLDR            S0, [SP,#0x28+var_28]
116E92:  MOV             R1, R5
116E94:  LDR             R0, [R5]
116E96:  VADD.F32        S0, S16, S0
116E9A:  VLDR            S16, [R5,#0x58]
116E9E:  LDR             R2, [R0,#0x58]
116EA0:  ADD             R0, SP, #0x28+var_20
116EA2:  VSTR            S0, [R4,#8]
116EA6:  BLX             R2
116EA8:  VLDR            S0, [SP,#0x28+var_1C]
116EAC:  VCMP.F32        S16, S0
116EB0:  VMRS            APSR_nzcv, FPSCR
116EB4:  BLE             loc_116EBC
116EB6:  ADD.W           R0, R5, #0x58 ; 'X'
116EBA:  B               loc_116EC8
116EBC:  LDR             R0, [R5]
116EBE:  MOV             R1, R5
116EC0:  LDR             R2, [R0,#0x58]
116EC2:  MOV             R0, R6
116EC4:  BLX             R2
116EC6:  ADDS            R0, R6, #4
116EC8:  LDR             R0, [R0]
116ECA:  STR             R0, [R4,#0xC]
116ECC:  ADD             SP, SP, #0x10
116ECE:  VPOP            {D8}
116ED2:  POP.W           {R11}
116ED6:  POP             {R4-R7,PC}
