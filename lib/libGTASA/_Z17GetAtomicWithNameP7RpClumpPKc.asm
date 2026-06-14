; =========================================================
; Game Engine Function: _Z17GetAtomicWithNameP7RpClumpPKc
; Address            : 0x459D24 - 0x459D42
; =========================================================

459D24:  PUSH            {R7,LR}
459D26:  MOV             R7, SP
459D28:  SUB             SP, SP, #8
459D2A:  LDR             R3, =(_Z20FindAtomicFromNameCBP8RpAtomicPv_ptr - 0x459D36)
459D2C:  MOV             R2, SP
459D2E:  STR             R1, [SP,#0x10+var_10]
459D30:  MOVS            R1, #0
459D32:  ADD             R3, PC; _Z20FindAtomicFromNameCBP8RpAtomicPv_ptr
459D34:  STR             R1, [SP,#0x10+var_C]
459D36:  LDR             R1, [R3]; FindAtomicFromNameCB(RpAtomic *,void *)
459D38:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
459D3C:  LDR             R0, [SP,#0x10+var_C]
459D3E:  ADD             SP, SP, #8
459D40:  POP             {R7,PC}
