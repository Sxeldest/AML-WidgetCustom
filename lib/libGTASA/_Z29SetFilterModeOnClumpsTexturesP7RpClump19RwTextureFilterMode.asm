; =========================================================
; Game Engine Function: _Z29SetFilterModeOnClumpsTexturesP7RpClump19RwTextureFilterMode
; Address            : 0x5D15F8 - 0x5D160C
; =========================================================

5D15F8:  PUSH            {R7,LR}
5D15FA:  MOV             R7, SP
5D15FC:  MOV             R2, R1
5D15FE:  LDR             R1, =(_Z29forceLinearFilteringAtomicsCBP8RpAtomicPv_ptr - 0x5D1604)
5D1600:  ADD             R1, PC; _Z29forceLinearFilteringAtomicsCBP8RpAtomicPv_ptr
5D1602:  LDR             R1, [R1]; forceLinearFilteringAtomicsCB(RpAtomic *,void *)
5D1604:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5D1608:  MOVS            R0, #1
5D160A:  POP             {R7,PC}
