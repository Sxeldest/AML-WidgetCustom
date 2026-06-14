; =========================================================
; Game Engine Function: _Z25RpAnimBlendClumpFindFrameP7RpClumpPKc
; Address            : 0x390574 - 0x3905B4
; =========================================================

390574:  PUSH            {R4,R5,R7,LR}
390576:  ADD             R7, SP, #8
390578:  MOV             R4, R1
39057A:  LDR             R1, =(ClumpOffset_ptr - 0x390582)
39057C:  LDR             R2, =(dword_942EC8 - 0x390584)
39057E:  ADD             R1, PC; ClumpOffset_ptr
390580:  ADD             R2, PC; dword_942EC8
390582:  LDR             R1, [R1]; ClumpOffset
390584:  LDR             R1, [R1]
390586:  LDR             R5, [R0,R1]
390588:  MOVS            R1, #0
39058A:  STR             R1, [R2]
39058C:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
390590:  CBZ             R0, loc_3905A0
390592:  LDR             R0, [R0,#0x18]
390594:  BLX             j_RpSkinGeometryGetSkin
390598:  CBZ             R0, loc_3905A0
39059A:  LDR             R1, =(sub_3905C8+1 - 0x3905A0)
39059C:  ADD             R1, PC; sub_3905C8
39059E:  B               loc_3905A4
3905A0:  LDR             R1, =(sub_3905F4+1 - 0x3905A6)
3905A2:  ADD             R1, PC; sub_3905F4
3905A4:  MOV             R0, R5
3905A6:  MOV             R2, R4
3905A8:  BLX             j__ZN19CAnimBlendClumpData12ForAllFramesEPFvP18AnimBlendFrameDataPvES2_; CAnimBlendClumpData::ForAllFrames(void (*)(AnimBlendFrameData *,void *),void *)
3905AC:  LDR             R0, =(dword_942EC8 - 0x3905B2)
3905AE:  ADD             R0, PC; dword_942EC8
3905B0:  LDR             R0, [R0]
3905B2:  POP             {R4,R5,R7,PC}
