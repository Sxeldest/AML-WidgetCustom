; =========================================================
; Game Engine Function: sub_1EF628
; Address            : 0x1EF628 - 0x1EF640
; =========================================================

1EF628:  CMP.W           R1, #0x40000000
1EF62C:  ITT CC
1EF62E:  LSLCC           R0, R1, #2; unsigned int
1EF630:  BCC.W           _Znaj_0; operator new[](uint)
1EF634:  PUSH            {R7,LR}
1EF636:  MOV             R7, SP
1EF638:  LDR             R0, =(aAllocatorTAllo - 0x1EF63E); "allocator<T>::allocate(size_t n) 'n' ex"... ...
1EF63A:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
1EF63C:  BL              sub_DC8D4
