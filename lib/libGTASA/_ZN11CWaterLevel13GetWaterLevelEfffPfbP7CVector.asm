; =========================================================
; Game Engine Function: _ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector
; Address            : 0x595820 - 0x595890
; =========================================================

595820:  PUSH            {R4-R7,LR}
595822:  ADD             R7, SP, #0xC
595824:  PUSH.W          {R8}
595828:  SUB             SP, SP, #0x10
59582A:  MOV             R6, R0
59582C:  ADD             R0, SP, #0x20+var_18
59582E:  MOV             R8, R1
595830:  ADD             R1, SP, #0x20+var_14
595832:  STRD.W          R1, R0, [SP,#0x20+var_20]; float
595836:  MOV             R0, R6; this
595838:  MOV             R1, R8; float
59583A:  MOV             R4, R3
59583C:  MOV             R5, R2
59583E:  BLX             j__ZN11CWaterLevel20GetWaterLevelNoWavesEfffPfS0_S0_; CWaterLevel::GetWaterLevelNoWaves(float,float,float,float *,float *,float *)
595842:  CMP             R0, #1
595844:  BNE             loc_59586A
595846:  LDR             R0, [R7,#arg_0]
595848:  CBNZ            R0, loc_59586E
59584A:  VMOV            S0, R5
59584E:  VLDR            S2, [R4]
595852:  VMOV.F32        S4, #3.0
595856:  VSUB.F32        S0, S2, S0
59585A:  VCMPE.F32       S0, S4
59585E:  VMRS            APSR_nzcv, FPSCR
595862:  BLE             loc_59586E
595864:  MOVS            R0, #0
595866:  STR             R0, [R4]
595868:  B               loc_595888
59586A:  MOVS            R0, #0
59586C:  B               loc_595888
59586E:  LDR             R3, [SP,#0x20+var_14]; float *
595870:  MOV             R1, R8; float
595872:  LDR             R0, [R7,#arg_4]
595874:  MOV             R2, R4; float
595876:  VLDR            S0, [SP,#0x20+var_18]
59587A:  STR             R0, [SP,#0x20+var_1C]; CVector *
59587C:  MOV             R0, R6; this
59587E:  VSTR            S0, [SP,#0x20+var_20]
595882:  BLX.W           j__ZN11CWaterLevel15AddWaveToResultEffPfffP7CVector; CWaterLevel::AddWaveToResult(float,float,float *,float,float,CVector *)
595886:  MOVS            R0, #1
595888:  ADD             SP, SP, #0x10
59588A:  POP.W           {R8}
59588E:  POP             {R4-R7,PC}
