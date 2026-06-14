; =========================================================
; Game Engine Function: png_gamma_8bit_correct
; Address            : 0x1F1048 - 0x1F10B2
; =========================================================

1F1048:  SUBS            R2, R0, #1
1F104A:  CMP             R2, #0xFD
1F104C:  BHI             loc_1F10AE
1F104E:  PUSH            {R7,LR}
1F1050:  MOV             R7, SP
1F1052:  VPUSH           {D8}
1F1056:  VMOV            S0, R0
1F105A:  VLDR            D8, =255.0
1F105E:  VLDR            D18, =0.00001
1F1062:  VCVT.F64.S32    D16, S0
1F1066:  VDIV.F64        D16, D16, D8
1F106A:  VMOV            S0, R1
1F106E:  VMOV            R0, R1, D16; x
1F1072:  VCVT.F64.S32    D17, S0
1F1076:  VMUL.F64        D17, D17, D18
1F107A:  VMOV            R2, R3, D17; y
1F107E:  BLX             pow
1F1082:  VMOV            D16, R0, R1
1F1086:  VMOV.F64        D17, #0.5
1F108A:  VMUL.F64        D16, D16, D8
1F108E:  VADD.F64        D16, D16, D17
1F1092:  VMOV            R0, R1, D16; x
1F1096:  BLX             floor
1F109A:  VMOV            D16, R0, R1
1F109E:  VCVT.U32.F64    S0, D16
1F10A2:  VMOV            R0, S0
1F10A6:  VPOP            {D8}
1F10AA:  POP.W           {R7,LR}
1F10AE:  UXTB            R0, R0
1F10B0:  BX              LR
