; =========================================================
; Game Engine Function: sub_20E690
; Address            : 0x20E690 - 0x20E6A8
; =========================================================

20E690:  CMP.W           R1, #0x40000000
20E694:  ITT CC
20E696:  LSLCC           R0, R1, #2; unsigned int
20E698:  BCC.W           _Znaj_0; operator new[](uint)
20E69C:  PUSH            {R7,LR}
20E69E:  MOV             R7, SP
20E6A0:  LDR             R0, =(aAllocatorTAllo - 0x20E6A6); "allocator<T>::allocate(size_t n) 'n' ex"... ...
20E6A2:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
20E6A4:  BL              sub_DC8D4
