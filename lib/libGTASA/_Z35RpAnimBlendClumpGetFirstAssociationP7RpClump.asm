; =========================================================
; Game Engine Function: _Z35RpAnimBlendClumpGetFirstAssociationP7RpClump
; Address            : 0x38D908 - 0x38D92C
; =========================================================

38D908:  PUSH            {R4,R6,R7,LR}
38D90A:  ADD             R7, SP, #8
38D90C:  LDR             R1, =(ClumpOffset_ptr - 0x38D912)
38D90E:  ADD             R1, PC; ClumpOffset_ptr
38D910:  LDR             R1, [R1]; ClumpOffset
38D912:  LDR             R1, [R1]
38D914:  LDR             R4, [R0,R1]
38D916:  BLX             j__Z29RpAnimBlendClumpIsInitializedP7RpClump; RpAnimBlendClumpIsInitialized(RpClump *)
38D91A:  CMP             R0, #1
38D91C:  BNE             loc_38D928
38D91E:  LDR             R0, [R4]
38D920:  CMP             R0, #0
38D922:  ITT NE
38D924:  SUBNE           R0, #4
38D926:  POPNE           {R4,R6,R7,PC}
38D928:  MOVS            R0, #0
38D92A:  POP             {R4,R6,R7,PC}
