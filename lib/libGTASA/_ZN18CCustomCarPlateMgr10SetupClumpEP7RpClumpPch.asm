; =========================================================
; Game Engine Function: _ZN18CCustomCarPlateMgr10SetupClumpEP7RpClumpPch
; Address            : 0x5A5190 - 0x5A51B6
; =========================================================

5A5190:  PUSH            {R4,R5,R7,LR}
5A5192:  ADD             R7, SP, #8
5A5194:  LDR.W           R12, =(byte_A26A70 - 0x5A51A4)
5A5198:  MOV             R3, R1
5A519A:  LDR             R5, =(dword_A26A74 - 0x5A51A6)
5A519C:  MOVS            R4, #0
5A519E:  LDR             R1, =(sub_5A51C4+1 - 0x5A51A8)
5A51A0:  ADD             R12, PC; byte_A26A70
5A51A2:  ADD             R5, PC; dword_A26A74
5A51A4:  ADD             R1, PC; sub_5A51C4
5A51A6:  STRB.W          R2, [R12]
5A51AA:  MOV             R2, R3
5A51AC:  STR             R4, [R5]
5A51AE:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5A51B2:  LDR             R0, [R5]
5A51B4:  POP             {R4,R5,R7,PC}
