; =========================================================
; Game Engine Function: _ZN6CCarAI25GetCarToGoToCoorsAccurateEP8CVehicleP7CVectorib
; Address            : 0x2E6768 - 0x2E6850
; =========================================================

2E6768:  PUSH            {R4,R5,R7,LR}; bool
2E676A:  ADD             R7, SP, #8
2E676C:  MOV             R4, R0
2E676E:  MOV             R5, R1
2E6770:  LDRB.W          R0, [R4,#0x3BE]
2E6774:  AND.W           R0, R0, #0xFE
2E6778:  CMP             R0, #0xC
2E677A:  BNE             loc_2E67C6
2E677C:  VLDR            S2, [R4,#0x3F0]
2E6780:  VLDR            S0, [R5]
2E6784:  VSUB.F32        S4, S0, S2
2E6788:  VMOV.F32        S2, #2.0
2E678C:  VABS.F32        S4, S4
2E6790:  VCMPE.F32       S4, S2
2E6794:  VMRS            APSR_nzcv, FPSCR
2E6798:  BGT             loc_2E67B4
2E679A:  VLDR            S4, [R4,#0x3F4]
2E679E:  VLDR            S6, [R5,#4]
2E67A2:  VSUB.F32        S4, S6, S4
2E67A6:  VABS.F32        S4, S4
2E67AA:  VCMPE.F32       S4, S2
2E67AE:  VMRS            APSR_nzcv, FPSCR
2E67B2:  BLE             loc_2E681A
2E67B4:  ADD.W           R0, R4, #0x3F0
2E67B8:  VLDR            D16, [R5]
2E67BC:  LDR             R1, [R5,#8]
2E67BE:  STR             R1, [R0,#8]
2E67C0:  VSTR            D16, [R0]
2E67C4:  B               loc_2E681A
2E67C6:  MOVS            R0, #0
2E67C8:  CMP             R3, #1
2E67CA:  STRB.W          R0, [R4,#0x3BF]
2E67CE:  MOV.W           R3, #0; bool
2E67D2:  STRB.W          R2, [R4,#0x3BD]
2E67D6:  ITT EQ
2E67D8:  MOVEQ           R0, #0x14
2E67DA:  STRBEQ.W        R0, [R4,#0x3D4]
2E67DE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E67E6)
2E67E0:  MOVS            R2, #0; CVector *
2E67E2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E67E4:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
2E67E6:  LDRB.W          R0, [R4,#0x3A]
2E67EA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2E67EC:  STR.W           R1, [R4,#0x3B0]
2E67F0:  AND.W           R1, R0, #0xF8
2E67F4:  CMP             R1, #0x60 ; '`'
2E67F6:  ITTT NE
2E67F8:  MOVNE           R1, #3
2E67FA:  BFINE.W         R0, R1, #3, #0x1D
2E67FE:  STRBNE.W        R0, [R4,#0x3A]
2E6802:  MOV             R0, R4; this
2E6804:  MOV             R1, R5; CVehicle *
2E6806:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
2E680A:  MOVS            R1, #0xC
2E680C:  CMP             R0, #0
2E680E:  IT NE
2E6810:  MOVNE           R1, #0xD
2E6812:  STRB.W          R1, [R4,#0x3BE]
2E6816:  VLDR            S0, [R5]
2E681A:  LDR             R0, [R4,#0x14]
2E681C:  VLDR            S2, [R5,#4]
2E6820:  ADD.W           R1, R0, #0x30 ; '0'
2E6824:  CMP             R0, #0
2E6826:  IT EQ
2E6828:  ADDEQ           R1, R4, #4
2E682A:  VLDR            S4, [R1]
2E682E:  VLDR            S6, [R1,#4]
2E6832:  VSUB.F32        S0, S4, S0
2E6836:  VSUB.F32        S2, S6, S2
2E683A:  VMUL.F32        S0, S0, S0
2E683E:  VMUL.F32        S2, S2, S2
2E6842:  VADD.F32        S0, S0, S2
2E6846:  VSQRT.F32       S0, S0
2E684A:  VMOV            R0, S0
2E684E:  POP             {R4,R5,R7,PC}
