; =========================================================
; Game Engine Function: sub_A6BA8
; Address            : 0xA6BA8 - 0xA6D36
; =========================================================

A6BA8:  PUSH            {R4-R7,LR}
A6BAA:  ADD             R7, SP, #0xC
A6BAC:  PUSH.W          {R8-R10}
A6BB0:  SUB             SP, SP, #0x30
A6BB2:  MOV             R5, R0
A6BB4:  LDR             R0, =(off_114D5C - 0xA6BC0)
A6BB6:  MOVW            R3, #0x1550
A6BBA:  ADD             R6, SP, #0x48+var_30
A6BBC:  ADD             R0, PC; off_114D5C
A6BBE:  MOV.W           R8, #0
A6BC2:  LDR             R0, [R0]; dword_1ACF68
A6BC4:  LDR             R0, [R0]
A6BC6:  LDR             R2, =(__stack_chk_guard_ptr - 0xA6BCE)
A6BC8:  ADDS            R4, R0, R3
A6BCA:  ADD             R2, PC; __stack_chk_guard_ptr
A6BCC:  LDR             R2, [R2]; __stack_chk_guard
A6BCE:  LDR             R2, [R2]
A6BD0:  STR             R2, [SP,#0x48+var_1C]
A6BD2:  MOVW            R2, #0x19AC
A6BD6:  VLDR            S0, [R4]
A6BDA:  VLDR            S2, [R4,#4]
A6BDE:  VLDR            S4, [R4,#0x378]
A6BE2:  VADD.F32        S0, S0, S0
A6BE6:  VLDR            S8, [R1,#4]
A6BEA:  VADD.F32        S2, S2, S2
A6BEE:  VLDR            S6, [R1]
A6BF2:  VADD.F32        S8, S4, S8
A6BF6:  LDR.W           R9, [R0,R2]
A6BFA:  VADD.F32        S4, S4, S6
A6BFE:  LDRD.W          R0, R1, [R1]
A6C02:  MOVS            R2, #0
A6C04:  STRD.W          R0, R1, [SP,#0x48+var_30]
A6C08:  MOV             R0, R6
A6C0A:  MOV             R1, R5
A6C0C:  VADD.F32        S2, S8, S2
A6C10:  VADD.F32        S0, S4, S0
A6C14:  VSTR            S2, [SP,#0x48+var_24]
A6C18:  VSTR            S0, [SP,#0x48+var_28]
A6C1C:  BL              sub_8B314
A6C20:  SUB.W           R2, R7, #-var_31
A6C24:  SUB.W           R3, R7, #-var_32
A6C28:  MOV             R0, R6
A6C2A:  MOV             R1, R5
A6C2C:  STR.W           R8, [SP,#0x48+var_48]
A6C30:  BL              sub_A634C
A6C34:  MOV             R8, R0
A6C36:  LDRB.W          R0, [R7,#var_31]
A6C3A:  MOVS            R1, #0x16
A6C3C:  MOV.W           R10, #0x3F800000
A6C40:  CMP             R0, #0
A6C42:  IT EQ
A6C44:  MOVEQ           R1, #0x15
A6C46:  LDRB.W          R2, [R7,#var_32]
A6C4A:  MOV             R0, R1
A6C4C:  IT NE
A6C4E:  MOVNE           R0, #0x17
A6C50:  CMP             R2, #0
A6C52:  IT EQ
A6C54:  MOVEQ           R0, R1
A6C56:  MOV.W           R1, #0x3F800000
A6C5A:  BL              sub_88C10
A6C5E:  MOV             R5, R0
A6C60:  MOVS            R0, #0
A6C62:  MOV.W           R1, #0x3F800000
A6C66:  BL              sub_88C10
A6C6A:  VLDR            S0, [SP,#0x48+var_30]
A6C6E:  VMOV.F32        S4, #0.5
A6C72:  VLDR            S6, [SP,#0x48+var_28]
A6C76:  MOV             R6, R0
A6C78:  VLDR            S2, [SP,#0x48+var_2C]
A6C7C:  VLDR            S8, [SP,#0x48+var_24]
A6C80:  VADD.F32        S6, S0, S6
A6C84:  LDRB.W          R0, [R7,#var_32]
A6C88:  VADD.F32        S8, S2, S8
A6C8C:  LDRB.W          R1, [R7,#var_31]
A6C90:  ORRS            R0, R1
A6C92:  VMUL.F32        S6, S6, S4
A6C96:  VMUL.F32        S8, S8, S4
A6C9A:  VSTR            S6, [SP,#0x48+var_3C]
A6C9E:  VSTR            S8, [SP,#0x48+var_38]
A6CA2:  BEQ             loc_A6CCC
A6CA4:  VMOV.F32        S0, #1.0
A6CA8:  VLDR            S2, [R4,#0x378]
A6CAC:  LDR.W           R0, [R9,#0x27C]; int
A6CB0:  MOVS            R1, #0xC
A6CB2:  STR             R1, [SP,#0x48+var_48]; int
A6CB4:  ADD             R1, SP, #0x48+var_3C; int
A6CB6:  MOV             R3, R5; int
A6CB8:  VMLA.F32        S0, S2, S4
A6CBC:  VMOV            R2, S0; int
A6CC0:  BL              sub_9D838
A6CC4:  VLDR            S0, [SP,#0x48+var_30]
A6CC8:  VLDR            S2, [SP,#0x48+var_2C]
A6CCC:  VLDR            S4, [R4]
A6CD0:  MOVS            R5, #1
A6CD2:  VLDR            S6, [R4,#4]
A6CD6:  VADD.F32        S0, S0, S4
A6CDA:  LDRB.W          R3, [R9,#0x7D]
A6CDE:  VADD.F32        S2, S2, S6
A6CE2:  LDR.W           R0, [R9,#0x27C]
A6CE6:  CMP             R3, #0
A6CE8:  MOV             R3, R6
A6CEA:  IT EQ
A6CEC:  MOVEQ           R5, #3
A6CEE:  STRD.W          R5, R10, [SP,#0x48+var_48]
A6CF2:  VMOV            R1, S0
A6CF6:  VMOV            R2, S2
A6CFA:  BL              sub_8A0BC
A6CFE:  BL              sub_955FC
A6D02:  CBZ             R0, loc_A6D1A
A6D04:  MOVS            R1, #0
A6D06:  MOVS            R0, #0
A6D08:  MOVT            R1, #0xBF80
A6D0C:  BL              sub_955B0
A6D10:  CMP             R0, #0
A6D12:  ITT NE
A6D14:  MOVNE           R0, R9
A6D16:  BLNE            sub_8C564
A6D1A:  LDR             R0, [SP,#0x48+var_1C]
A6D1C:  LDR             R1, =(__stack_chk_guard_ptr - 0xA6D22)
A6D1E:  ADD             R1, PC; __stack_chk_guard_ptr
A6D20:  LDR             R1, [R1]; __stack_chk_guard
A6D22:  LDR             R1, [R1]
A6D24:  CMP             R1, R0
A6D26:  ITTTT EQ
A6D28:  MOVEQ           R0, R8
A6D2A:  ADDEQ           SP, SP, #0x30 ; '0'
A6D2C:  POPEQ.W         {R8-R10}
A6D30:  POPEQ           {R4-R7,PC}
A6D32:  BLX             __stack_chk_fail
