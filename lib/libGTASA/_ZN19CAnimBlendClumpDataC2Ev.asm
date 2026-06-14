; =========================================================
; Game Engine Function: _ZN19CAnimBlendClumpDataC2Ev
; Address            : 0x38A060 - 0x38A070
; =========================================================

38A060:  VMOV.I32        Q8, #0; Alternative name is 'CAnimBlendClumpData::CAnimBlendClumpData(void)'
38A064:  MOV             R1, R0
38A066:  MOVS            R2, #0
38A068:  VST1.32         {D16-D17}, [R1]!
38A06C:  STR             R2, [R1]
38A06E:  BX              LR
