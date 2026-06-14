; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarAlign10FixHeadingEP4CPed
; Address            : 0x50088C - 0x5009DA
; =========================================================

50088C:  PUSH            {R4-R7,LR}
50088E:  ADD             R7, SP, #0xC
500890:  PUSH.W          {R8}
500894:  VPUSH           {D8-D10}; float
500898:  MOV             R4, R1
50089A:  LDR             R1, [R0,#0x10]
50089C:  CMP             R1, #0
50089E:  BEQ.W           loc_5009D0
5008A2:  LDR.W           R2, [R1,#0x5A0]
5008A6:  CMP             R2, #0
5008A8:  BNE.W           loc_5009D0
5008AC:  LDR             R1, [R1,#0x14]
5008AE:  LDR             R0, [R0,#0x20]
5008B0:  VLDR            S16, [R1]
5008B4:  BIC.W           R0, R0, #1
5008B8:  VLDR            S18, [R1,#4]
5008BC:  CMP             R0, #0xA
5008BE:  VLDR            S20, [R1,#8]
5008C2:  ITTT EQ
5008C4:  VNEGEQ.F32      S20, S20
5008C8:  VNEGEQ.F32      S18, S18
5008CC:  VNEGEQ.F32      S16, S16
5008D0:  LDR             R6, [R4,#0x14]
5008D2:  CBZ             R6, loc_5008E2
5008D4:  VLDR            S2, [R6,#0x10]
5008D8:  VLDR            S4, [R6,#0x14]
5008DC:  VLDR            S0, [R6,#0x18]
5008E0:  B               loc_500902
5008E2:  LDR             R5, [R4,#0x10]
5008E4:  MOV             R0, R5; x
5008E6:  BLX             sinf
5008EA:  MOV             R8, R0
5008EC:  MOV             R0, R5; x
5008EE:  BLX             cosf
5008F2:  VMOV            S4, R0
5008F6:  EOR.W           R0, R8, #0x80000000
5008FA:  VLDR            S0, =0.0
5008FE:  VMOV            S2, R0
500902:  VMUL.F32        S4, S18, S4
500906:  VMUL.F32        S2, S16, S2
50090A:  VMUL.F32        S0, S20, S0
50090E:  VADD.F32        S2, S2, S4
500912:  VADD.F32        S0, S2, S0
500916:  VCMPE.F32       S0, #0.0
50091A:  VMRS            APSR_nzcv, FPSCR
50091E:  BLE             loc_5009D0
500920:  VLDR            S2, =0.1
500924:  VCMPE.F32       S0, S2
500928:  VMRS            APSR_nzcv, FPSCR
50092C:  BGE             loc_5009D0
50092E:  CBZ             R6, loc_50093E
500930:  VLDR            S4, [R6,#0x10]
500934:  VLDR            S2, [R6,#0x14]
500938:  VLDR            S0, [R6,#0x18]
50093C:  B               loc_50095E
50093E:  LDR             R5, [R4,#0x10]
500940:  MOV             R0, R5; x
500942:  BLX             sinf
500946:  MOV             R8, R0
500948:  MOV             R0, R5; x
50094A:  BLX             cosf
50094E:  VMOV            S2, R0
500952:  EOR.W           R0, R8, #0x80000000
500956:  VLDR            S0, =0.0
50095A:  VMOV            S4, R0
50095E:  VMUL.F32        S4, S16, S4
500962:  CMP             R6, #0
500964:  VMUL.F32        S2, S18, S2
500968:  VMUL.F32        S0, S20, S0
50096C:  VADD.F32        S2, S2, S4
500970:  VADD.F32        S0, S0, S2
500974:  VMUL.F32        S18, S18, S0
500978:  VMUL.F32        S16, S16, S0
50097C:  BEQ             loc_500988
50097E:  VLDR            S2, [R6,#0x10]
500982:  VLDR            S0, [R6,#0x14]
500986:  B               loc_5009A4
500988:  LDR             R5, [R4,#0x10]
50098A:  MOV             R0, R5; x
50098C:  BLX             sinf
500990:  MOV             R6, R0
500992:  MOV             R0, R5; x
500994:  BLX             cosf
500998:  VMOV            S0, R0
50099C:  EOR.W           R0, R6, #0x80000000
5009A0:  VMOV            S2, R0
5009A4:  VSUB.F32        S2, S2, S16
5009A8:  MOVS            R2, #0; float
5009AA:  VSUB.F32        S0, S0, S18
5009AE:  MOVS            R3, #0; float
5009B0:  VSUB.F32        S2, S2, S16
5009B4:  VSUB.F32        S0, S0, S18
5009B8:  VMOV            R0, S2; this
5009BC:  VMOV            R1, S0; float
5009C0:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
5009C4:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
5009C8:  STR.W           R0, [R4,#0x55C]
5009CC:  STR.W           R0, [R4,#0x560]
5009D0:  VPOP            {D8-D10}
5009D4:  POP.W           {R8}
5009D8:  POP             {R4-R7,PC}
