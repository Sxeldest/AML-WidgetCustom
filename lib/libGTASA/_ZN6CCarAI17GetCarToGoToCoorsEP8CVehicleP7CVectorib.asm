; =========================================================
; Game Engine Function: _ZN6CCarAI17GetCarToGoToCoorsEP8CVehicleP7CVectorib
; Address            : 0x2E659C - 0x2E6682
; =========================================================

2E659C:  PUSH            {R4-R7,LR}
2E659E:  ADD             R7, SP, #0xC
2E65A0:  PUSH.W          {R11}
2E65A4:  MOV             R4, R0
2E65A6:  MOV             R6, R1
2E65A8:  LDRSB.W         R0, [R4,#0x3BE]
2E65AC:  SUB.W           R1, R0, #0x2D ; '-'
2E65B0:  CMP             R1, #5
2E65B2:  BHI             loc_2E65EE
2E65B4:  MOVS            R5, #1
2E65B6:  LSL.W           R1, R5, R1
2E65BA:  TST.W           R1, #0x33
2E65BE:  BEQ             loc_2E65EE
2E65C0:  LDR             R0, [R4,#0x14]
2E65C2:  VLDR            D16, [R6]
2E65C6:  ADD.W           R1, R0, #0x30 ; '0'
2E65CA:  CMP             R0, #0
2E65CC:  IT EQ
2E65CE:  ADDEQ           R1, R4, #4
2E65D0:  VLDR            D17, [R1]
2E65D4:  VSUB.F32        D16, D17, D16
2E65D8:  VMUL.F32        D0, D16, D16
2E65DC:  VADD.F32        S0, S0, S1
2E65E0:  VSQRT.F32       S0, S0
2E65E4:  VMOV            R0, S0
2E65E8:  POP.W           {R11}
2E65EC:  POP             {R4-R7,PC}; bool
2E65EE:  UXTB            R0, R0
2E65F0:  AND.W           R0, R0, #0xFE
2E65F4:  CMP             R0, #8
2E65F6:  BNE             loc_2E6630
2E65F8:  VLDR            S0, [R4,#0x3F0]
2E65FC:  VLDR            S2, [R6]
2E6600:  VSUB.F32        S2, S2, S0
2E6604:  VMOV.F32        S0, #5.0
2E6608:  VABS.F32        S2, S2
2E660C:  VCMPE.F32       S2, S0
2E6610:  VMRS            APSR_nzcv, FPSCR
2E6614:  BGT             loc_2E6630
2E6616:  VLDR            S2, [R4,#0x3F4]
2E661A:  VLDR            S4, [R6,#4]
2E661E:  VSUB.F32        S2, S4, S2
2E6622:  VABS.F32        S2, S2
2E6626:  VCMPE.F32       S2, S0
2E662A:  VMRS            APSR_nzcv, FPSCR
2E662E:  BLE             loc_2E65C0
2E6630:  MOVS            R0, #0
2E6632:  CMP             R3, #1
2E6634:  STRB.W          R0, [R4,#0x3BF]
2E6638:  MOV.W           R3, #0; bool
2E663C:  STRB.W          R2, [R4,#0x3BD]
2E6640:  ITT EQ
2E6642:  MOVEQ           R0, #0x14
2E6644:  STRBEQ.W        R0, [R4,#0x3D4]
2E6648:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E6650)
2E664A:  MOVS            R2, #0; CVector *
2E664C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E664E:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
2E6650:  LDRB.W          R0, [R4,#0x3A]
2E6654:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2E6656:  STR.W           R1, [R4,#0x3B0]
2E665A:  AND.W           R1, R0, #0xF8
2E665E:  CMP             R1, #0x60 ; '`'
2E6660:  ITTT NE
2E6662:  MOVNE           R1, #3
2E6664:  BFINE.W         R0, R1, #3, #0x1D
2E6668:  STRBNE.W        R0, [R4,#0x3A]
2E666C:  MOV             R0, R4; this
2E666E:  MOV             R1, R6; CVehicle *
2E6670:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
2E6674:  MOVS            R1, #8
2E6676:  CMP             R0, #0
2E6678:  IT NE
2E667A:  MOVNE           R1, #9
2E667C:  STRB.W          R1, [R4,#0x3BE]
2E6680:  B               loc_2E65C0
