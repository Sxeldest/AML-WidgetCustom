; =========================================================
; Game Engine Function: sub_14AAD8
; Address            : 0x14AAD8 - 0x14ABB6
; =========================================================

14AAD8:  PUSH            {R4-R7,LR}
14AADA:  ADD             R7, SP, #0xC
14AADC:  PUSH.W          {R8}
14AAE0:  SUB             SP, SP, #0x48
14AAE2:  MOV             R5, R0
14AAE4:  LDR.W           R0, [R0,#0x128]
14AAE8:  CMP             R0, #0
14AAEA:  BEQ             loc_14ABAE
14AAEC:  MOV             R8, R1
14AAEE:  ADDS            R6, R1, #1
14AAF0:  LDRB            R1, [R1]
14AAF2:  BL              sub_1051AC
14AAF6:  LDR             R0, [R6]
14AAF8:  ADD             R3, SP, #0x58+var_40
14AAFA:  LDR             R1, [R6,#4]
14AAFC:  LDR             R2, [R6,#8]
14AAFE:  STM             R3!, {R0-R2}
14AB00:  ADD             R3, SP, #0x58+var_4C
14AB02:  STM             R3!, {R0-R2}
14AB04:  MOVS            R0, #0
14AB06:  MOV             R1, SP
14AB08:  STR             R0, [SP,#0x58+var_50]
14AB0A:  STRD.W          R0, R0, [SP,#0x58+var_58]
14AB0E:  ADD             R0, SP, #0x58+var_4C
14AB10:  BL              sub_F8050
14AB14:  LDMFD.W         SP, {R0,R1,R12}
14AB18:  LDR             R2, [R6,#0x14]
14AB1A:  STRD.W          R0, R1, [SP,#0x58+var_1C]
14AB1E:  ADD             R1, SP, #0x58+var_2C
14AB20:  LDR             R4, [R6,#0x10]
14AB22:  LDR.W           R0, [R5,#0x128]
14AB26:  LDR             R3, [R6,#0xC]
14AB28:  STM             R1!, {R2-R4}
14AB2A:  ADD             R1, SP, #0x58+var_40
14AB2C:  STR.W           R12, [SP,#0x58+var_14]
14AB30:  STRD.W          R3, R4, [SP,#0x58+var_34]
14AB34:  STR             R2, [SP,#0x58+var_20]
14AB36:  BL              sub_105110
14AB3A:  LDR             R1, [R6,#0x18]
14AB3C:  LDR.W           R0, [R5,#0x128]
14AB40:  BL              sub_10514C
14AB44:  LDRB.W          R1, [R8,#0x1E]
14AB48:  LDRB.W          R0, [R8,#0x1D]
14AB4C:  VLDR            D17, =0.0039215689
14AB50:  VMOV            S0, R1
14AB54:  AND.W           R0, R0, #0x3F ; '?'
14AB58:  VLDR            D19, =0.015873017
14AB5C:  VCVT.F64.U32    D16, S0
14AB60:  VMOV            S0, R0
14AB64:  LDR.W           R0, [R5,#0x128]
14AB68:  VMUL.F64        D16, D16, D17
14AB6C:  VCVT.F64.U32    D18, S0
14AB70:  VMUL.F64        D17, D18, D19
14AB74:  VCVT.F32.F64    S0, D16
14AB78:  VCVT.F32.F64    S2, D17
14AB7C:  VMOV            R2, S0
14AB80:  VMOV            R1, S2
14AB84:  BL              sub_1051B8
14AB88:  LDR.W           R0, [R5,#0x128]
14AB8C:  BL              sub_105190
14AB90:  LDRB.W          R1, [R8,#0x1D]
14AB94:  LSRS            R1, R1, #6
14AB96:  CMP             R1, #2
14AB98:  BEQ             loc_14ABA4
14AB9A:  CMP             R1, #3
14AB9C:  BNE             loc_14ABAC
14AB9E:  MOVS            R1, #2
14ABA0:  STR             R1, [R0,#4]
14ABA2:  B               loc_14ABAE
14ABA4:  LDR             R1, [R0,#8]
14ABA6:  CMP             R1, #1
14ABA8:  BHI             loc_14ABAE
14ABAA:  MOVS            R1, #2
14ABAC:  STR             R1, [R0,#8]
14ABAE:  ADD             SP, SP, #0x48 ; 'H'
14ABB0:  POP.W           {R8}
14ABB4:  POP             {R4-R7,PC}
