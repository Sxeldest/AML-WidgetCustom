; =========================================================
; Game Engine Function: _ZN9cBuoyancy14FindWaterLevelERK7CVectorPS0_P11tWaterLevel
; Address            : 0x570574 - 0x57061A
; =========================================================

570574:  PUSH            {R4-R7,LR}
570576:  ADD             R7, SP, #0xC
570578:  PUSH.W          {R8,R9,R11}
57057C:  SUB             SP, SP, #0x18
57057E:  MOV             R5, R0
570580:  MOV             R9, R1
570582:  ADD.W           R1, R5, #0xC; CVector *
570586:  ADD             R0, SP, #0x30+var_24; CMatrix *
570588:  MOV             R8, R3
57058A:  MOVS            R4, #1
57058C:  MOV             R6, R2
57058E:  STR.W           R4, [R8]
570592:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
570596:  VLDR            S0, [SP,#0x30+var_24]
57059A:  MOVS            R3, #0
57059C:  VLDR            S4, [R5]
5705A0:  VLDR            S2, [SP,#0x30+var_20]
5705A4:  VLDR            S6, [R5,#4]
5705A8:  VADD.F32        S0, S4, S0
5705AC:  VADD.F32        S2, S6, S2
5705B0:  VMOV            R0, S0; this
5705B4:  VSTR            S0, [SP,#0x30+var_24]
5705B8:  VMOV            R1, S2; float
5705BC:  VSTR            S2, [SP,#0x30+var_20]
5705C0:  LDR             R2, [R5,#8]; float
5705C2:  STRD.W          R4, R3, [SP,#0x30+var_30]; float *
5705C6:  ADD.W           R4, R6, #8
5705CA:  MOV             R3, R4; float
5705CC:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
5705D0:  VLDR            S0, [R9,#8]
5705D4:  VLDR            S2, [SP,#0x30+var_1C]
5705D8:  VADD.F32        S0, S2, S0
5705DC:  VLDR            S2, [R6,#8]
5705E0:  VSUB.F32        S2, S2, S0
5705E4:  VSTR            S2, [R6,#8]
5705E8:  VLDR            S0, [R5,#0x78]
5705EC:  VCMPE.F32       S2, S0
5705F0:  VMRS            APSR_nzcv, FPSCR
5705F4:  BLE             loc_5705FA
5705F6:  MOVS            R0, #2
5705F8:  B               loc_57060A
5705FA:  VLDR            S0, [R5,#0x84]
5705FE:  VCMPE.F32       S2, S0
570602:  VMRS            APSR_nzcv, FPSCR
570606:  BGE             loc_570612
570608:  MOVS            R0, #0
57060A:  VSTR            S0, [R4]
57060E:  STR.W           R0, [R8]
570612:  ADD             SP, SP, #0x18
570614:  POP.W           {R8,R9,R11}
570618:  POP             {R4-R7,PC}
