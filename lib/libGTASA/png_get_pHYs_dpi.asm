; =========================================================
; Game Engine Function: png_get_pHYs_dpi
; Address            : 0x1F3590 - 0x1F3624
; =========================================================

1F3590:  MOV             R12, R0
1F3592:  CMP.W           R12, #0
1F3596:  MOV.W           R0, #0
1F359A:  IT NE
1F359C:  CMPNE           R1, #0
1F359E:  BEQ             locret_1F3622
1F35A0:  LDRB            R0, [R1,#8]
1F35A2:  LSLS            R0, R0, #0x18
1F35A4:  ITT PL
1F35A6:  MOVPL           R0, #0
1F35A8:  BXPL            LR
1F35AA:  CBZ             R2, loc_1F35B6
1F35AC:  LDR.W           R0, [R1,#0xC0]
1F35B0:  STR             R0, [R2]
1F35B2:  MOVS            R0, #0x80
1F35B4:  B               loc_1F35B8
1F35B6:  MOVS            R0, #0
1F35B8:  CMP             R3, #0
1F35BA:  LDR.W           R12, [SP,#arg_0]
1F35BE:  ITTT NE
1F35C0:  LDRNE.W         R0, [R1,#0xC4]
1F35C4:  STRNE           R0, [R3]
1F35C6:  MOVNE           R0, #0x80
1F35C8:  CMP.W           R12, #0
1F35CC:  IT EQ
1F35CE:  BXEQ            LR
1F35D0:  LDRB.W          R0, [R1,#0xC8]
1F35D4:  STR.W           R0, [R12]
1F35D8:  CMP             R0, #1
1F35DA:  BNE             loc_1F3620
1F35DC:  CBZ             R2, loc_1F35FE
1F35DE:  VLDR            S0, [R2]
1F35E2:  VLDR            D17, =0.0254
1F35E6:  VCVT.F64.U32    D16, S0
1F35EA:  VMUL.F64        D16, D16, D17
1F35EE:  VMOV.F64        D17, #0.5
1F35F2:  VADD.F64        D16, D16, D17
1F35F6:  VCVT.U32.F64    S0, D16
1F35FA:  VSTR            S0, [R2]
1F35FE:  CBZ             R3, loc_1F3620
1F3600:  VLDR            S0, [R3]
1F3604:  VLDR            D17, =0.0254
1F3608:  VCVT.F64.U32    D16, S0
1F360C:  VMUL.F64        D16, D16, D17
1F3610:  VMOV.F64        D17, #0.5
1F3614:  VADD.F64        D16, D16, D17
1F3618:  VCVT.U32.F64    S0, D16
1F361C:  VSTR            S0, [R3]
1F3620:  MOVS            R0, #0x80
1F3622:  BX              LR
