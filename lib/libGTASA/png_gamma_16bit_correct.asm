; =========================================================
; Game Engine Function: png_gamma_16bit_correct
; Address            : 0x1F10C8 - 0x1F1136
; =========================================================

1F10C8:  SUBS            R2, R0, #1
1F10CA:  MOVW            R3, #0xFFFD
1F10CE:  CMP             R2, R3
1F10D0:  BHI             loc_1F1132
1F10D2:  PUSH            {R7,LR}
1F10D4:  MOV             R7, SP
1F10D6:  VPUSH           {D8}
1F10DA:  VMOV            S0, R0
1F10DE:  VLDR            D8, =65535.0
1F10E2:  VLDR            D18, =0.00001
1F10E6:  VCVT.F64.S32    D16, S0
1F10EA:  VDIV.F64        D16, D16, D8
1F10EE:  VMOV            S0, R1
1F10F2:  VMOV            R0, R1, D16; x
1F10F6:  VCVT.F64.S32    D17, S0
1F10FA:  VMUL.F64        D17, D17, D18
1F10FE:  VMOV            R2, R3, D17; y
1F1102:  BLX             pow
1F1106:  VMOV            D16, R0, R1
1F110A:  VMOV.F64        D17, #0.5
1F110E:  VMUL.F64        D16, D16, D8
1F1112:  VADD.F64        D16, D16, D17
1F1116:  VMOV            R0, R1, D16; x
1F111A:  BLX             floor
1F111E:  VMOV            D16, R0, R1
1F1122:  VCVT.U32.F64    S0, D16
1F1126:  VMOV            R0, S0
1F112A:  VPOP            {D8}
1F112E:  POP.W           {R7,LR}
1F1132:  UXTH            R0, R0
1F1134:  BX              LR
