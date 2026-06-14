; =========================================================
; Game Engine Function: _ZN8CMirrors14BuildCamMatrixEP7CMatrix7CVectorS2_
; Address            : 0x5C5688 - 0x5C5722
; =========================================================

5C5688:  PUSH            {R4-R7,LR}
5C568A:  ADD             R7, SP, #0xC
5C568C:  PUSH.W          {R8}
5C5690:  SUB             SP, SP, #0x10
5C5692:  MOV             R5, R3
5C5694:  MOV             R8, R2
5C5696:  MOV             R6, R1
5C5698:  MOV             R4, R0
5C569A:  BLX.W           j__ZN7CMatrix16SetTranslateOnlyEfff; CMatrix::SetTranslateOnly(float,float,float)
5C569E:  VMOV            S4, R5
5C56A2:  VLDR            S2, [R7,#arg_8]
5C56A6:  VMOV            S0, R6
5C56AA:  VLDR            S10, [R7,#arg_0]
5C56AE:  VLDR            S6, [R7,#arg_4]
5C56B2:  VMOV            S8, R8
5C56B6:  VSUB.F32        S2, S2, S4
5C56BA:  ADD.W           R5, R4, #0x10
5C56BE:  VSUB.F32        S0, S10, S0
5C56C2:  VSUB.F32        S4, S6, S8
5C56C6:  MOV             R0, R5; this
5C56C8:  VSTR            S0, [R4,#0x10]
5C56CC:  VSTR            S4, [R4,#0x14]
5C56D0:  VSTR            S2, [R4,#0x18]
5C56D4:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5C56D8:  MOVS            R0, #0
5C56DA:  MOV.W           R1, #0x3F800000
5C56DE:  MOV             R6, R4
5C56E0:  STRD.W          R0, R1, [R4,#0x24]
5C56E4:  STR.W           R0, [R6,#0x20]!
5C56E8:  MOV             R0, SP; CVector *
5C56EA:  MOV             R2, R5
5C56EC:  MOV             R1, R6; CVector *
5C56EE:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5C56F2:  VLDR            D16, [SP,#0x20+var_20]
5C56F6:  LDR             R0, [SP,#0x20+var_18]
5C56F8:  STR             R0, [R4,#8]
5C56FA:  MOV             R0, R4; this
5C56FC:  VSTR            D16, [R4]
5C5700:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5C5704:  MOV             R0, SP; CVector *
5C5706:  MOV             R1, R5; CVector *
5C5708:  MOV             R2, R4
5C570A:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5C570E:  VLDR            D16, [SP,#0x20+var_20]
5C5712:  LDR             R0, [SP,#0x20+var_18]
5C5714:  STR             R0, [R4,#0x28]
5C5716:  VSTR            D16, [R6]
5C571A:  ADD             SP, SP, #0x10
5C571C:  POP.W           {R8}
5C5720:  POP             {R4-R7,PC}
