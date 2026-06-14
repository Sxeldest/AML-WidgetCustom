; =========================================================
; Game Engine Function: _Z26RpClumpConvertGeometryToTSP7RpClump
; Address            : 0x5D155C - 0x5D157A
; =========================================================

5D155C:  PUSH            {R7,LR}
5D155E:  MOV             R7, SP
5D1560:  SUB             SP, SP, #8
5D1562:  LDR             R1, =(sub_5D1580+1 - 0x5D1570)
5D1564:  MOVS            R2, #1
5D1566:  STRB.W          R2, [R7,#-1]
5D156A:  SUBS            R2, R7, #1
5D156C:  ADD             R1, PC; sub_5D1580
5D156E:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5D1572:  LDRB.W          R0, [R7,#-1]
5D1576:  ADD             SP, SP, #8
5D1578:  POP             {R7,PC}
