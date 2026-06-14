; =========================================================
; Game Engine Function: _Z16RpAtomicInstanceP8RpAtomic
; Address            : 0x21575C - 0x21579C
; =========================================================

21575C:  PUSH            {R4,R5,R7,LR}
21575E:  ADD             R7, SP, #8
215760:  MOV             R4, R0
215762:  LDR             R5, [R4,#0x18]
215764:  LDR             R0, [R5,#0x18]
215766:  CMP             R0, #1
215768:  ITT NE
21576A:  MOVNE           R0, #0
21576C:  POPNE           {R4,R5,R7,PC}
21576E:  LDR             R1, [R5,#8]
215770:  TST.W           R1, #0x1000000
215774:  ITT NE
215776:  MOVNE           R0, #1
215778:  POPNE           {R4,R5,R7,PC}
21577A:  LDR             R0, [R5,#0x5C]
21577C:  CBZ             R0, loc_215784
21577E:  BLX             j__Z23RwResourcesFreeResEntryP10RwResEntry; RwResourcesFreeResEntry(RwResEntry *)
215782:  LDR             R1, [R5,#8]
215784:  ORR.W           R0, R1, #0x2000000
215788:  STR             R0, [R5,#8]
21578A:  LDR             R1, [R4,#0x48]
21578C:  MOV             R0, R4
21578E:  BLX             R1
215790:  LDR             R1, [R5,#8]
215792:  MOVS            R0, #1
215794:  BFI.W           R1, R0, #0x18, #2
215798:  STR             R1, [R5,#8]
21579A:  POP             {R4,R5,R7,PC}
