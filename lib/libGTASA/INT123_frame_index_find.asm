; =========================================================
; Game Engine Function: INT123_frame_index_find
; Address            : 0x2260E0 - 0x2261FA
; =========================================================

2260E0:  PUSH            {R4-R7,LR}
2260E2:  ADD             R7, SP, #0xC
2260E4:  PUSH.W          {R11}
2260E8:  MOVS            R4, #0
2260EA:  MOVW            R3, #0xB33D
2260EE:  STR             R4, [R2]
2260F0:  LDRB            R3, [R0,R3]
2260F2:  LSLS            R3, R3, #0x1E
2260F4:  BMI             loc_226106
2260F6:  MOVW            R1, #0xB294
2260FA:  MOVS            R3, #0
2260FC:  STR             R4, [R0,R1]
2260FE:  MOVW            R1, #0xB298
226102:  STR             R4, [R0,R1]
226104:  B               loc_2261F2
226106:  MOVW            R12, #0x931C
22610A:  LDR.W           R3, [R0,R12]
22610E:  STR             R4, [R2]
226110:  MOVW            R4, #0x9324
226114:  LDR             R5, [R0,R4]
226116:  CMP             R5, #0
226118:  BEQ             loc_2261AA
22611A:  MOVW            R5, #0x9368
22611E:  LDR.W           LR, [R0,R5]
226122:  CMP.W           LR, #1
226126:  ITTT GE
226128:  MOVWGE          R5, #0xB2E4
22612C:  LDRGE           R6, [R0,R5]
22612E:  CMPGE           R6, #1
226130:  BLT             loc_2261AA
226132:  VMOV            S0, R1
226136:  VLDR            D17, =100.0
22613A:  ADDS            R3, R0, R5
22613C:  ADDS            R6, R0, R4
22613E:  VCVT.F64.S32    D16, S0
226142:  MOV.W           R5, #0x100
226146:  VMUL.F64        D16, D16, D17
22614A:  VMOV            S0, LR
22614E:  VCVT.F64.S32    D18, S0
226152:  VDIV.F64        D16, D16, D18
226156:  VCVT.S32.F64    S0, D16
22615A:  VMOV            R1, S0
22615E:  CMP             R1, #0
226160:  IT LE
226162:  MOVLE           R1, #0
226164:  CMP             R1, #0x63 ; 'c'
226166:  IT GE
226168:  MOVGE           R1, #0x63 ; 'c'
22616A:  VMOV            S0, R1
22616E:  VCVT.F64.S32    D16, S0
226172:  VDIV.F64        D16, D16, D17
226176:  VMUL.F64        D16, D16, D18
22617A:  VCVT.S32.F64    S0, D16
22617E:  VSTR            S0, [R2]
226182:  MOVW            R2, #0x9320
226186:  STRH            R5, [R0,R2]
226188:  LDR             R0, [R6]
22618A:  VLDR            D17, =0.00390625
22618E:  LDRB            R0, [R0,R1]
226190:  VMOV            S0, R0
226194:  VCVT.F64.U32    D16, S0
226198:  VMUL.F64        D16, D16, D17
22619C:  VLDR            S0, [R3]
2261A0:  VCVT.F64.S32    D17, S0
2261A4:  VMUL.F64        D16, D16, D17
2261A8:  B               loc_2261EA
2261AA:  MOVW            R6, #0x9370
2261AE:  ADDS            R4, R0, R6
2261B0:  VLDR            D16, [R4]
2261B4:  VCMPE.F64       D16, #0.0
2261B8:  VMRS            APSR_nzcv, FPSCR
2261BC:  BLE             loc_2261F2
2261BE:  VMOV            S0, R1
2261C2:  MOVW            R6, #0x9320
2261C6:  MOV.W           R5, #0x100
2261CA:  ADD.W           R3, R0, R12
2261CE:  VCVT.F64.S32    D16, S0
2261D2:  STRH            R5, [R0,R6]
2261D4:  STR             R1, [R2]
2261D6:  VLDR            D17, [R4]
2261DA:  VLDR            S0, [R3]
2261DE:  VMUL.F64        D16, D17, D16
2261E2:  VCVT.F64.S32    D17, S0
2261E6:  VADD.F64        D16, D16, D17
2261EA:  VCVT.S32.F64    S0, D16
2261EE:  VMOV            R3, S0
2261F2:  MOV             R0, R3
2261F4:  POP.W           {R11}
2261F8:  POP             {R4-R7,PC}
