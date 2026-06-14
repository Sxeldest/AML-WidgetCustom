; =========================================================
; Game Engine Function: _ZN9cBuoyancy18FindWaterLevelNormERK7CVectorPS0_P11tWaterLevelS3_
; Address            : 0x57061A - 0x5706C0
; =========================================================

57061A:  PUSH            {R4-R7,LR}
57061C:  ADD             R7, SP, #0xC
57061E:  PUSH.W          {R8,R9,R11}
570622:  SUB             SP, SP, #0x18
570624:  MOV             R5, R0
570626:  MOV             R9, R1
570628:  ADD.W           R1, R5, #0xC; CVector *
57062C:  ADD             R0, SP, #0x30+var_24; CMatrix *
57062E:  MOV             R8, R3
570630:  MOVS            R4, #1
570632:  MOV             R6, R2
570634:  STR.W           R4, [R8]
570638:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
57063C:  VLDR            S0, [SP,#0x30+var_24]
570640:  VLDR            S4, [R5]
570644:  VLDR            S2, [SP,#0x30+var_20]
570648:  VLDR            S6, [R5,#4]
57064C:  VADD.F32        S0, S4, S0
570650:  LDR             R3, [R7,#arg_0]
570652:  VADD.F32        S2, S6, S2
570656:  VMOV            R0, S0; this
57065A:  VSTR            S0, [SP,#0x30+var_24]
57065E:  VMOV            R1, S2; float
570662:  VSTR            S2, [SP,#0x30+var_20]
570666:  LDR             R2, [R5,#8]; float
570668:  STRD.W          R4, R3, [SP,#0x30+var_30]; float *
57066C:  ADD.W           R4, R6, #8
570670:  MOV             R3, R4; float
570672:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
570676:  VLDR            S0, [R9,#8]
57067A:  VLDR            S2, [SP,#0x30+var_1C]
57067E:  VADD.F32        S0, S2, S0
570682:  VLDR            S2, [R6,#8]
570686:  VSUB.F32        S2, S2, S0
57068A:  VSTR            S2, [R6,#8]
57068E:  VLDR            S0, [R5,#0x78]
570692:  VCMPE.F32       S2, S0
570696:  VMRS            APSR_nzcv, FPSCR
57069A:  BLE             loc_5706A0
57069C:  MOVS            R0, #2
57069E:  B               loc_5706B0
5706A0:  VLDR            S0, [R5,#0x84]
5706A4:  VCMPE.F32       S2, S0
5706A8:  VMRS            APSR_nzcv, FPSCR
5706AC:  BGE             loc_5706B8
5706AE:  MOVS            R0, #0
5706B0:  VSTR            S0, [R4]
5706B4:  STR.W           R0, [R8]
5706B8:  ADD             SP, SP, #0x18
5706BA:  POP.W           {R8,R9,R11}
5706BE:  POP             {R4-R7,PC}
