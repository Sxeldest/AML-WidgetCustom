; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler22ComputeDrivebyResponseEP9CPedGroupP4CPedS3_
; Address            : 0x4B61E0 - 0x4B61F6
; =========================================================

4B61E0:  PUSH            {R4,R6,R7,LR}
4B61E2:  ADD             R7, SP, #8
4B61E4:  MOVS            R0, #dword_14; this
4B61E6:  MOV             R4, R1
4B61E8:  BLX             j__ZN14CTaskAllocatornwEj; CTaskAllocator::operator new(uint)
4B61EC:  MOV             R1, R4; CPed *
4B61EE:  POP.W           {R4,R6,R7,LR}
4B61F2:  B.W             sub_19F5A4
