; =========================================================
; Game Engine Function: _ZN34CTaskComplexGoToPointAndStandStill14ControlSubTaskEP4CPed
; Address            : 0x51D748 - 0x51D812
; =========================================================

51D748:  PUSH            {R4-R7,LR}
51D74A:  ADD             R7, SP, #0xC
51D74C:  PUSH.W          {R11}
51D750:  MOV             R4, R0
51D752:  MOV             R6, R1
51D754:  LDRB.W          R1, [R4,#0x24]
51D758:  LDR             R0, [R4,#8]
51D75A:  LSLS            R1, R1, #0x1D
51D75C:  BMI             loc_51D798
51D75E:  LDR             R1, [R0]
51D760:  LDR             R1, [R1,#0x14]
51D762:  BLX             R1
51D764:  CMP.W           R0, #0x384
51D768:  BNE             loc_51D80A
51D76A:  LDRD.W          R0, R1, [R4,#8]
51D76E:  CMP             R1, #7
51D770:  BEQ             loc_51D7BA
51D772:  CMP             R1, #6
51D774:  BNE             loc_51D80A
51D776:  LDR             R1, [R6,#0x14]
51D778:  VLDR            D16, [R0,#0xC]
51D77C:  ADD.W           R2, R1, #0x30 ; '0'
51D780:  CMP             R1, #0
51D782:  IT EQ
51D784:  ADDEQ           R2, R6, #4
51D786:  VLDR            S2, =0.0
51D78A:  VLDR            D17, [R2]
51D78E:  VSUB.F32        D16, D17, D16
51D792:  VLDR            S4, =1.0e16
51D796:  B               loc_51D7DA
51D798:  LDR             R1, [R0]
51D79A:  MOVS            R2, #1
51D79C:  MOVS            R3, #0
51D79E:  LDR             R5, [R1,#0x1C]
51D7A0:  MOV             R1, R6
51D7A2:  BLX             R5
51D7A4:  CMP             R0, #1
51D7A6:  BNE             loc_51D80A
51D7A8:  LDR             R0, [R4]
51D7AA:  MOV             R1, R6
51D7AC:  LDR             R2, [R0,#0x2C]
51D7AE:  MOV             R0, R4
51D7B0:  POP.W           {R11}
51D7B4:  POP.W           {R4-R7,LR}
51D7B8:  BX              R2
51D7BA:  LDR             R1, [R6,#0x14]
51D7BC:  VLDR            D16, [R0,#0xC]
51D7C0:  ADD.W           R2, R1, #0x30 ; '0'
51D7C4:  CMP             R1, #0
51D7C6:  IT EQ
51D7C8:  ADDEQ           R2, R6, #4
51D7CA:  VLDR            S2, =0.0
51D7CE:  VLDR            D17, [R2]
51D7D2:  VSUB.F32        D16, D17, D16
51D7D6:  VLDR            S4, =100.0
51D7DA:  VMUL.F32        D0, D16, D16
51D7DE:  VADD.F32        S0, S0, S1
51D7E2:  VADD.F32        S0, S0, S2
51D7E6:  VLDR            S2, [R4,#0x20]
51D7EA:  VMUL.F32        S2, S2, S2
51D7EE:  VCMPE.F32       S0, S4
51D7F2:  MOVS            R1, #7
51D7F4:  VMRS            APSR_nzcv, FPSCR
51D7F8:  VCMPE.F32       S0, S2
51D7FC:  IT LT
51D7FE:  MOVLT           R1, #6
51D800:  VMRS            APSR_nzcv, FPSCR
51D804:  IT LT
51D806:  MOVLT           R1, #4
51D808:  STR             R1, [R0,#8]
51D80A:  LDR             R0, [R4,#8]
51D80C:  POP.W           {R11}
51D810:  POP             {R4-R7,PC}
