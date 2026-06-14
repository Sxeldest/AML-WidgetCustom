; =========================================================
; Game Engine Function: sub_1EAEB0
; Address            : 0x1EAEB0 - 0x1EAEDA
; =========================================================

1EAEB0:  PUSH            {R4,R5,R7,LR}
1EAEB2:  ADD             R7, SP, #8
1EAEB4:  MOV             R4, R0
1EAEB6:  LDR             R0, =(RtAnimAnimationFreeList_ptr - 0x1EAEC0)
1EAEB8:  LDR             R1, =(RtAnimInterpolatorInfoBlockNumEntries_ptr - 0x1EAEC2)
1EAEBA:  MOVS            R5, #0
1EAEBC:  ADD             R0, PC; RtAnimAnimationFreeList_ptr
1EAEBE:  ADD             R1, PC; RtAnimInterpolatorInfoBlockNumEntries_ptr
1EAEC0:  LDR             R0, [R0]; RtAnimAnimationFreeList
1EAEC2:  LDR             R1, [R1]; RtAnimInterpolatorInfoBlockNumEntries
1EAEC4:  LDR             R0, [R0]
1EAEC6:  STR             R5, [R1]
1EAEC8:  CBZ             R0, loc_1EAED6
1EAECA:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1EAECE:  LDR             R0, =(RtAnimAnimationFreeList_ptr - 0x1EAED4)
1EAED0:  ADD             R0, PC; RtAnimAnimationFreeList_ptr
1EAED2:  LDR             R0, [R0]; RtAnimAnimationFreeList
1EAED4:  STR             R5, [R0]
1EAED6:  MOV             R0, R4
1EAED8:  POP             {R4,R5,R7,PC}
