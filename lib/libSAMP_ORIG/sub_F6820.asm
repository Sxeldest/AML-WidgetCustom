; =========================================================
; Game Engine Function: sub_F6820
; Address            : 0xF6820 - 0xF6838
; =========================================================

F6820:  CMP.W           R1, #0x40000000
F6824:  ITT CC
F6826:  LSLCC           R0, R1, #2; unsigned int
F6828:  BCC.W           _Znaj_0; operator new[](uint)
F682C:  PUSH            {R7,LR}
F682E:  MOV             R7, SP
F6830:  LDR             R0, =(aAllocatorTAllo - 0xF6836); "allocator<T>::allocate(size_t n) 'n' ex"... ...
F6832:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
F6834:  BL              sub_7B270
