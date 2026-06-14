; =========================================================
; Game Engine Function: sub_10A0FC
; Address            : 0x10A0FC - 0x10A124
; =========================================================

10A0FC:  PUSH            {R4,R5,R7,LR}
10A0FE:  ADD             R7, SP, #8
10A100:  MOV             R4, R0
10A102:  LDR             R0, [R0,#8]
10A104:  MOV             R5, R1
10A106:  BL              sub_108354
10A10A:  CBZ             R0, locret_10A122
10A10C:  VMOV            S0, R5
10A110:  LDR             R0, =(unk_B3D0A - 0x10A11C)
10A112:  LDR             R1, [R4,#8]
10A114:  VCVT.F64.F32    D16, S0
10A118:  ADD             R0, PC; unk_B3D0A
10A11A:  VMOV            R2, R3, D16
10A11E:  BL              sub_107188
10A122:  POP             {R4,R5,R7,PC}
