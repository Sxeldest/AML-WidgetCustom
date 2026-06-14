; =========================================================
; Game Engine Function: sub_F7EF0
; Address            : 0xF7EF0 - 0xF7F8A
; =========================================================

F7EF0:  PUSH            {R4-R7,LR}
F7EF2:  ADD             R7, SP, #0xC
F7EF4:  PUSH.W          {R8-R11}
F7EF8:  SUB             SP, SP, #0x2C
F7EFA:  MOV             R5, R0
F7EFC:  LDR             R0, [R0,#0xC]
F7EFE:  CBZ             R0, loc_F7F6E
F7F00:  LDRD.W          R0, R11, [R7,#arg_8]
F7F04:  MOV             R9, R3
F7F06:  LDR             R6, [R7,#arg_10]
F7F08:  MOV             R4, R2
F7F0A:  STR             R0, [SP,#0x48+var_20]
F7F0C:  MOV             R8, R1
F7F0E:  LDR             R0, [R7,#arg_4]
F7F10:  STR             R0, [SP,#0x48+var_24]
F7F12:  LDR             R0, [R5,#8]
F7F14:  LDR.W           R10, [R7,#arg_0]
F7F18:  BL              sub_1082F4
F7F1C:  CBZ             R0, loc_F7F6E
F7F1E:  LDR             R1, =(aSex - 0xF7F26); "SEX" ...
F7F20:  MOV             R0, R4; s1
F7F22:  ADD             R1, PC; "SEX"
F7F24:  BLX             strcasecmp
F7F28:  CBZ             R0, loc_F7F6E
F7F2A:  STR.W           R11, [SP,#0x48+var_28]
F7F2E:  MOV             R1, R4
F7F30:  LDR             R0, =(off_234970 - 0xF7F36)
F7F32:  ADD             R0, PC; off_234970
F7F34:  LDR.W           R11, [R0]; dword_23DEF0
F7F38:  LDR.W           R0, [R11]
F7F3C:  BL              sub_F9748
F7F40:  CBZ             R0, loc_F7F76
F7F42:  LDR             R0, =(unk_92DAA - 0xF7F5A)
F7F44:  VMOV            S0, R9
F7F48:  LDR             R1, [R5,#8]
F7F4A:  MOV             R3, R4
F7F4C:  STR.W           R10, [SP,#0x48+var_40]
F7F50:  VCVT.F64.F32    D16, S0
F7F54:  LDR             R2, [SP,#0x48+var_24]
F7F56:  ADD             R0, PC; unk_92DAA
F7F58:  STR             R2, [SP,#0x48+var_3C]
F7F5A:  LDR             R2, [SP,#0x48+var_20]
F7F5C:  STR             R2, [SP,#0x48+var_38]
F7F5E:  LDR             R2, [SP,#0x48+var_28]
F7F60:  STRD.W          R2, R6, [SP,#0x48+var_34]
F7F64:  MOV             R2, R8
F7F66:  VSTR            D16, [SP,#0x48+var_48]
F7F6A:  BL              sub_107188
F7F6E:  ADD             SP, SP, #0x2C ; ','
F7F70:  POP.W           {R8-R11}
F7F74:  POP             {R4-R7,PC}
F7F76:  LDR.W           R0, [R11]
F7F7A:  MOV             R1, R4
F7F7C:  ADD             SP, SP, #0x2C ; ','
F7F7E:  POP.W           {R8-R11}
F7F82:  POP.W           {R4-R7,LR}
F7F86:  B.W             sub_F9EC8
