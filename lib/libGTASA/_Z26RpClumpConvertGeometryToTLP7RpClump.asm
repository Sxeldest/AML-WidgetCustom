; =========================================================
; Game Engine Function: _Z26RpClumpConvertGeometryToTLP7RpClump
; Address            : 0x5D1504 - 0x5D1522
; =========================================================

5D1504:  PUSH            {R7,LR}
5D1506:  MOV             R7, SP
5D1508:  SUB             SP, SP, #8
5D150A:  LDR             R1, =(sub_5D1528+1 - 0x5D1518)
5D150C:  MOVS            R2, #1
5D150E:  STRB.W          R2, [R7,#-1]
5D1512:  SUBS            R2, R7, #1
5D1514:  ADD             R1, PC; sub_5D1528
5D1516:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5D151A:  LDRB.W          R0, [R7,#-1]
5D151E:  ADD             SP, SP, #8
5D1520:  POP             {R7,PC}
