; =========================================================
; Game Engine Function: _ZN6CCarAI23GetCarToGoToCoorsRacingEP8CVehicleP7CVectorib
; Address            : 0x2E6854 - 0x2E6944
; =========================================================

2E6854:  PUSH            {R4,R5,R7,LR}; bool
2E6856:  ADD             R7, SP, #8
2E6858:  MOV             R4, R0
2E685A:  MOV             R5, R1
2E685C:  LDRB.W          R0, [R4,#0x3BE]
2E6860:  CMP             R0, #0x21 ; '!'
2E6862:  IT NE
2E6864:  CMPNE           R0, #9
2E6866:  BNE             loc_2E68B2
2E6868:  VLDR            S2, [R4,#0x3F0]
2E686C:  VLDR            S0, [R5]
2E6870:  VSUB.F32        S4, S0, S2
2E6874:  VMOV.F32        S2, #2.0
2E6878:  VABS.F32        S4, S4
2E687C:  VCMPE.F32       S4, S2
2E6880:  VMRS            APSR_nzcv, FPSCR
2E6884:  BGT             loc_2E68A0
2E6886:  VLDR            S4, [R4,#0x3F4]
2E688A:  VLDR            S6, [R5,#4]
2E688E:  VSUB.F32        S4, S6, S4
2E6892:  VABS.F32        S4, S4
2E6896:  VCMPE.F32       S4, S2
2E689A:  VMRS            APSR_nzcv, FPSCR
2E689E:  BLE             loc_2E690E
2E68A0:  ADD.W           R0, R4, #0x3F0
2E68A4:  VLDR            D16, [R5]
2E68A8:  LDR             R1, [R5,#8]
2E68AA:  STR             R1, [R0,#8]
2E68AC:  VSTR            D16, [R0]
2E68B0:  B               loc_2E690E
2E68B2:  MOVS            R0, #0
2E68B4:  CMP             R3, #1
2E68B6:  STRB.W          R0, [R4,#0x3BF]
2E68BA:  MOV.W           R3, #0; bool
2E68BE:  STRB.W          R2, [R4,#0x3BD]
2E68C2:  ITT EQ
2E68C4:  MOVEQ           R0, #0x14
2E68C6:  STRBEQ.W        R0, [R4,#0x3D4]
2E68CA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E68D2)
2E68CC:  MOVS            R2, #0; CVector *
2E68CE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E68D0:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
2E68D2:  LDRB.W          R0, [R4,#0x3A]
2E68D6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2E68D8:  STR.W           R1, [R4,#0x3B0]
2E68DC:  AND.W           R1, R0, #0xF8
2E68E0:  CMP             R1, #0x60 ; '`'
2E68E2:  ITTT NE
2E68E4:  MOVNE           R1, #3
2E68E6:  BFINE.W         R0, R1, #3, #0x1D
2E68EA:  STRBNE.W        R0, [R4,#0x3A]
2E68EE:  LDR             R0, [R5,#8]
2E68F0:  MOV             R1, R5; CVehicle *
2E68F2:  VLDR            D16, [R5]
2E68F6:  STR.W           R0, [R4,#0x3F8]
2E68FA:  MOVS            R0, #0x21 ; '!'
2E68FC:  STRB.W          R0, [R4,#0x3BE]
2E6900:  MOV             R0, R4; this
2E6902:  VSTR            D16, [R4,#0x3F0]
2E6906:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
2E690A:  VLDR            S0, [R5]
2E690E:  LDR             R0, [R4,#0x14]
2E6910:  VLDR            S2, [R5,#4]
2E6914:  ADD.W           R1, R0, #0x30 ; '0'
2E6918:  CMP             R0, #0
2E691A:  IT EQ
2E691C:  ADDEQ           R1, R4, #4
2E691E:  VLDR            S4, [R1]
2E6922:  VLDR            S6, [R1,#4]
2E6926:  VSUB.F32        S0, S4, S0
2E692A:  VSUB.F32        S2, S6, S2
2E692E:  VMUL.F32        S0, S0, S0
2E6932:  VMUL.F32        S2, S2, S2
2E6936:  VADD.F32        S0, S0, S2
2E693A:  VSQRT.F32       S0, S0
2E693E:  VMOV            R0, S0
2E6942:  POP             {R4,R5,R7,PC}
