; =========================================================
; Game Engine Function: _Z14GetFirstAtomicP7RpClump
; Address            : 0x5D0CE4 - 0x5D0D00
; =========================================================

5D0CE4:  PUSH            {R7,LR}
5D0CE6:  MOV             R7, SP
5D0CE8:  SUB             SP, SP, #8
5D0CEA:  LDR             R1, =(_Z22GetFirstAtomicCallbackP8RpAtomicPv_ptr - 0x5D0CF6)
5D0CEC:  MOVS            R2, #0
5D0CEE:  STR             R2, [SP,#0x10+var_C]
5D0CF0:  ADD             R2, SP, #0x10+var_C
5D0CF2:  ADD             R1, PC; _Z22GetFirstAtomicCallbackP8RpAtomicPv_ptr
5D0CF4:  LDR             R1, [R1]; GetFirstAtomicCallback(RpAtomic *,void *)
5D0CF6:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5D0CFA:  LDR             R0, [SP,#0x10+var_C]
5D0CFC:  ADD             SP, SP, #8
5D0CFE:  POP             {R7,PC}
