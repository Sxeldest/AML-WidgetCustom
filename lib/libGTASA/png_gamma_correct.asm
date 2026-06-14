; =========================================================
; Game Engine Function: png_gamma_correct
; Address            : 0x1F1148 - 0x1F1212
; =========================================================

1F1148:  PUSH            {R7,LR}
1F114A:  MOV             R7, SP
1F114C:  VPUSH           {D8}
1F1150:  LDRB.W          R3, [R0,#0x210]
1F1154:  SUBS            R0, R1, #1
1F1156:  CMP             R3, #8
1F1158:  BNE             loc_1F11B2
1F115A:  CMP             R0, #0xFD
1F115C:  BHI             loc_1F11AE
1F115E:  VMOV            S0, R1
1F1162:  VLDR            D8, =255.0
1F1166:  VLDR            D18, =0.00001
1F116A:  VCVT.F64.S32    D16, S0
1F116E:  VDIV.F64        D16, D16, D8
1F1172:  VMOV            S0, R2
1F1176:  VMOV            R0, R1, D16; x
1F117A:  VCVT.F64.S32    D17, S0
1F117E:  VMUL.F64        D17, D17, D18
1F1182:  VMOV            R2, R3, D17; y
1F1186:  BLX             pow
1F118A:  VMOV            D16, R0, R1
1F118E:  VMOV.F64        D17, #0.5
1F1192:  VMUL.F64        D16, D16, D8
1F1196:  VADD.F64        D16, D16, D17
1F119A:  VMOV            R0, R1, D16; x
1F119E:  BLX             floor
1F11A2:  VMOV            D16, R0, R1
1F11A6:  VCVT.U32.F64    S0, D16
1F11AA:  VMOV            R1, S0
1F11AE:  UXTB            R1, R1
1F11B0:  B               loc_1F120A
1F11B2:  MOVW            R3, #0xFFFD
1F11B6:  CMP             R0, R3
1F11B8:  BHI             loc_1F120A
1F11BA:  VMOV            S0, R1
1F11BE:  VLDR            D8, =65535.0
1F11C2:  VLDR            D18, =0.00001
1F11C6:  VCVT.F64.S32    D16, S0
1F11CA:  VDIV.F64        D16, D16, D8
1F11CE:  VMOV            S0, R2
1F11D2:  VMOV            R0, R1, D16; x
1F11D6:  VCVT.F64.S32    D17, S0
1F11DA:  VMUL.F64        D17, D17, D18
1F11DE:  VMOV            R2, R3, D17; y
1F11E2:  BLX             pow
1F11E6:  VMOV            D16, R0, R1
1F11EA:  VMOV.F64        D17, #0.5
1F11EE:  VMUL.F64        D16, D16, D8
1F11F2:  VADD.F64        D16, D16, D17
1F11F6:  VMOV            R0, R1, D16; x
1F11FA:  BLX             floor
1F11FE:  VMOV            D16, R0, R1
1F1202:  VCVT.U32.F64    S0, D16
1F1206:  VMOV            R1, S0
1F120A:  UXTH            R0, R1
1F120C:  VPOP            {D8}
1F1210:  POP             {R7,PC}
