; =========================================================
; Game Engine Function: _ZN11CWaterLevel15AddWaveToResultEiiPfff
; Address            : 0x595808 - 0x595820
; =========================================================

595808:  PUSH            {R7,LR}
59580A:  MOV             R7, SP
59580C:  SUB             SP, SP, #8
59580E:  LDR.W           R12, [R7,#8]
595812:  STR             R2, [SP,#0x10+var_10]; float
595814:  MOV             R2, R3; int
595816:  MOV             R3, R12; float
595818:  BLX.W           j__ZN11CWaterLevel31CalculateWavesOnlyForCoordinateEiiffPf; CWaterLevel::CalculateWavesOnlyForCoordinate(int,int,float,float,float *)
59581C:  ADD             SP, SP, #8
59581E:  POP             {R7,PC}
