; =========================================================
; Game Engine Function: sub_60E78
; Address            : 0x60E78 - 0x60F36
; =========================================================

60E78:  PUSH            {R4-R7,LR}
60E7A:  ADD             R7, SP, #0xC
60E7C:  PUSH.W          {R8-R11}
60E80:  SUB             SP, SP, #4
60E82:  VPUSH           {D8}
60E86:  SUB             SP, SP, #0x20
60E88:  MOV             R6, R0
60E8A:  LDR             R0, [R0,#0x5C]
60E8C:  CMP             R0, #0
60E8E:  BEQ             loc_60F28
60E90:  LDR             R0, [R6,#8]
60E92:  MOV             R5, R3
60E94:  MOV             R4, R2
60E96:  MOV             R8, R1
60E98:  BL              sub_685E0
60E9C:  CMP             R0, #0
60E9E:  BEQ             loc_60F28
60EA0:  LDR             R1, =(aSex - 0x60EA8); "SEX" ...
60EA2:  MOV             R0, R4; s1
60EA4:  ADD             R1, PC; "SEX"
60EA6:  BLX             strcasecmp
60EAA:  CBZ             R0, loc_60F28
60EAC:  LDR             R1, =(aSamp - 0x60EB4); "SAMP" ...
60EAE:  MOV             R0, R4; s1
60EB0:  ADD             R1, PC; "SAMP"
60EB2:  BLX             strcasecmp
60EB6:  CBZ             R0, loc_60F28
60EB8:  LDR             R0, =(unk_5090E - 0x60EC8)
60EBA:  MOV             R1, R4
60EBC:  LDR.W           R11, [R7,#arg_10]
60EC0:  VMOV            S16, R5
60EC4:  ADD             R0, PC; unk_5090E
60EC6:  LDRD.W          R10, R9, [R7,#arg_8]
60ECA:  BL              sub_682E8
60ECE:  CBZ             R0, loc_60ED8
60ED0:  VCVT.F64.F32    D8, S16
60ED4:  LDR             R2, [R7,#arg_4]
60ED6:  B               loc_60F08
60ED8:  LDR             R0, =(unk_50922 - 0x60EE0)
60EDA:  MOV             R1, R4
60EDC:  ADD             R0, PC; unk_50922
60EDE:  BL              sub_682E8
60EE2:  VCVT.F64.F32    D8, S16
60EE6:  LDR             R0, =(unk_50936 - 0x60EF2)
60EE8:  LDR             R1, [R6,#8]
60EEA:  MOV             R3, R4
60EEC:  LDR             R2, [R7,#arg_0]
60EEE:  ADD             R0, PC; unk_50936
60EF0:  STR             R2, [SP,#0x48+var_40]
60EF2:  MOV             R2, R8
60EF4:  LDR             R5, [R7,#arg_4]
60EF6:  STRD.W          R5, R10, [SP,#0x48+var_3C]
60EFA:  STRD.W          R9, R11, [SP,#0x48+var_34]
60EFE:  VSTR            D8, [SP,#0x48+var_48]
60F02:  BL              sub_682E8
60F06:  MOV             R2, R5
60F08:  LDR             R1, [R6,#8]
60F0A:  LDR             R0, =(unk_50936 - 0x60F12)
60F0C:  LDR             R3, [R7,#arg_0]
60F0E:  ADD             R0, PC; unk_50936
60F10:  STRD.W          R3, R2, [SP,#0x48+var_40]
60F14:  MOV             R2, R8
60F16:  MOV             R3, R4
60F18:  STRD.W          R10, R9, [SP,#0x48+var_38]
60F1C:  STR.W           R11, [SP,#0x48+var_30]
60F20:  VSTR            D8, [SP,#0x48+var_48]
60F24:  BL              sub_682E8
60F28:  ADD             SP, SP, #0x20 ; ' '
60F2A:  VPOP            {D8}
60F2E:  ADD             SP, SP, #4
60F30:  POP.W           {R8-R11}
60F34:  POP             {R4-R7,PC}
