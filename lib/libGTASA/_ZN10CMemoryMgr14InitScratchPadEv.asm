; =========================================================
; Game Engine Function: _ZN10CMemoryMgr14InitScratchPadEv
; Address            : 0x5D2E34 - 0x5D2E48
; =========================================================

5D2E34:  LDR             R1, =(PC_Scratch_ptr - 0x5D2E42)
5D2E36:  MOV.W           R2, #0x4000; unsigned int
5D2E3A:  LDR             R0, =(dword_A83E04 - 0x5D2E44)
5D2E3C:  MOVS            R3, #0; bool
5D2E3E:  ADD             R1, PC; PC_Scratch_ptr
5D2E40:  ADD             R0, PC; dword_A83E04 ; this
5D2E42:  LDR             R1, [R1]; PC_Scratch ; void *
5D2E44:  B.W             sub_196904
