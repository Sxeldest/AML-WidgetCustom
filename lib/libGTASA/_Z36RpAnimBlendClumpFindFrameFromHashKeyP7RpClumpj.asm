; =========================================================
; Game Engine Function: _Z36RpAnimBlendClumpFindFrameFromHashKeyP7RpClumpj
; Address            : 0x39061C - 0x39065C
; =========================================================

39061C:  PUSH            {R4,R5,R7,LR}
39061E:  ADD             R7, SP, #8
390620:  MOV             R4, R1
390622:  LDR             R1, =(ClumpOffset_ptr - 0x39062A)
390624:  LDR             R2, =(dword_942EC8 - 0x39062C)
390626:  ADD             R1, PC; ClumpOffset_ptr
390628:  ADD             R2, PC; dword_942EC8
39062A:  LDR             R1, [R1]; ClumpOffset
39062C:  LDR             R1, [R1]
39062E:  LDR             R5, [R0,R1]
390630:  MOVS            R1, #0
390632:  STR             R1, [R2]
390634:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
390638:  CBZ             R0, loc_390648
39063A:  LDR             R0, [R0,#0x18]
39063C:  BLX             j_RpSkinGeometryGetSkin
390640:  CBZ             R0, loc_390648
390642:  LDR             R1, =(sub_390670+1 - 0x390648)
390644:  ADD             R1, PC; sub_390670
390646:  B               loc_39064C
390648:  LDR             R1, =(sub_390698+1 - 0x39064E)
39064A:  ADD             R1, PC; sub_390698
39064C:  MOV             R0, R5
39064E:  MOV             R2, R4
390650:  BLX             j__ZN19CAnimBlendClumpData12ForAllFramesEPFvP18AnimBlendFrameDataPvES2_; CAnimBlendClumpData::ForAllFrames(void (*)(AnimBlendFrameData *,void *),void *)
390654:  LDR             R0, =(dword_942EC8 - 0x39065A)
390656:  ADD             R0, PC; dword_942EC8
390658:  LDR             R0, [R0]
39065A:  POP             {R4,R5,R7,PC}
