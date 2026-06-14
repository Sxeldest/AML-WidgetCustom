; =========================================================
; Game Engine Function: _ZN14CCarFXRenderer23CustomCarPipeClumpSetupEP7RpClump
; Address            : 0x2C9F9C - 0x2C9FB0
; =========================================================

2C9F9C:  PUSH            {R4,R6,R7,LR}
2C9F9E:  ADD             R7, SP, #8
2C9FA0:  LDR             R1, =(j_j_j__ZN24CCustomCarEnvMapPipeline21CustomPipeAtomicSetupEP8RpAtomic+1 - 0x2C9FAA)
2C9FA2:  MOVS            R2, #0
2C9FA4:  MOV             R4, R0
2C9FA6:  ADD             R1, PC; j_j_j__ZN24CCustomCarEnvMapPipeline21CustomPipeAtomicSetupEP8RpAtomic
2C9FA8:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
2C9FAC:  MOV             R0, R4
2C9FAE:  POP             {R4,R6,R7,PC}
