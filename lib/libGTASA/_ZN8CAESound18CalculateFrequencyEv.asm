; =========================================================
; Game Engine Function: _ZN8CAESound18CalculateFrequencyEv
; Address            : 0x3A7C5C - 0x3A7CA0
; =========================================================

3A7C5C:  PUSH            {R4,R6,R7,LR}
3A7C5E:  ADD             R7, SP, #8
3A7C60:  VPUSH           {D8}
3A7C64:  MOV             R4, R0
3A7C66:  VLDR            S0, [R4,#0x20]
3A7C6A:  VLDR            S16, [R4,#0x1C]
3A7C6E:  VCMPE.F32       S0, #0.0
3A7C72:  VMRS            APSR_nzcv, FPSCR
3A7C76:  BLE             loc_3A7C96
3A7C78:  VCMPE.F32       S0, S16
3A7C7C:  VMRS            APSR_nzcv, FPSCR
3A7C80:  BGE             loc_3A7C96
3A7C82:  VMOV            R1, S0; float
3A7C86:  EOR.W           R0, R1, #0x80000000; this
3A7C8A:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEff; CAEAudioUtility::GetRandomNumberInRange(float,float)
3A7C8E:  VMOV            S0, R0
3A7C92:  VADD.F32        S16, S16, S0
3A7C96:  VSTR            S16, [R4,#0x64]
3A7C9A:  VPOP            {D8}
3A7C9E:  POP             {R4,R6,R7,PC}
