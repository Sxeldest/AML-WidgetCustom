; =========================================================
; Game Engine Function: sub_1060D4
; Address            : 0x1060D4 - 0x106120
; =========================================================

1060D4:  PUSH            {R4,R6,R7,LR}
1060D6:  ADD             R7, SP, #8
1060D8:  MOV             R4, R0
1060DA:  LDR             R0, [R0,#0x48]
1060DC:  CMP.W           R0, #0x7D0
1060E0:  BLS             loc_10610A
1060E2:  VMOV            S0, R0
1060E6:  VLDR            S2, =0.02
1060EA:  VCVT.F32.U32    S0, S0
1060EE:  VMUL.F32        S0, S0, S2
1060F2:  VCVT.U32.F32    S0, S0
1060F6:  VMOV            R0, S0
1060FA:  CMP             R0, #5
1060FC:  MOV             R2, R0
1060FE:  IT CC
106100:  MOVCC           R2, #0
106102:  CMP             R0, #0xFA
106104:  IT HI
106106:  MOVHI           R2, #0xFA
106108:  B               loc_10610C
10610A:  MOVS            R2, #0
10610C:  LDR             R0, =(unk_B36FE - 0x106114)
10610E:  MOVS            R1, #0
106110:  ADD             R0, PC; unk_B36FE
106112:  BL              sub_107188
106116:  LDR             R0, [R4,#0x48]
106118:  CBZ             R0, locret_10611E
10611A:  SUBS            R0, #1
10611C:  STR             R0, [R4,#0x48]
10611E:  POP             {R4,R6,R7,PC}
