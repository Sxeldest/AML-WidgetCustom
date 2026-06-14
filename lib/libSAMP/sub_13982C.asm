; =========================================================
; Game Engine Function: sub_13982C
; Address            : 0x13982C - 0x139900
; =========================================================

13982C:  PUSH            {R4-R7,LR}
13982E:  ADD             R7, SP, #0xC
139830:  PUSH.W          {R8-R11}
139834:  SUB             SP, SP, #4
139836:  MOV             R4, R0
139838:  LDRD.W          R5, R0, [R0,#8]
13983C:  MOV             R8, R1
13983E:  CMP             R5, R0
139840:  BNE             loc_1398E4
139842:  LDRD.W          R10, R6, [R4]
139846:  CMP             R6, R10
139848:  BLS             loc_139886
13984A:  SUB.W           R0, R6, R10
13984E:  MOVS            R1, #1
139850:  SUBS.W          R9, R5, R6
139854:  ADD.W           R0, R1, R0,ASR#2
139858:  MOV.W           R1, #0
13985C:  ADD.W           R0, R0, R0,LSR#31
139860:  SUB.W           R10, R1, R0,ASR#1
139864:  MOV.W           R0, R0,ASR#1
139868:  SUB.W           R5, R6, R0,LSL#2
13986C:  BEQ             loc_13987A
13986E:  MOV             R0, R5; dest
139870:  MOV             R1, R6; src
139872:  MOV             R2, R9; n
139874:  BLX             j_memmove
139878:  LDR             R6, [R4,#4]
13987A:  ADD             R5, R9
13987C:  ADD.W           R0, R6, R10,LSL#2
139880:  STRD.W          R0, R5, [R4,#4]
139884:  B               loc_1398E4
139886:  SUBS.W          R0, R5, R10
13988A:  MOV.W           R9, R0,ASR#1
13988E:  IT EQ
139890:  MOVEQ.W         R9, #1
139894:  CMP.W           R9, #0x40000000
139898:  BCS             loc_1398F8
13989A:  MOV.W           R0, R9,LSL#2; unsigned int
13989E:  BIC.W           R11, R9, #3
1398A2:  BLX             j__Znwj; operator new(uint)
1398A6:  ADD.W           LR, R0, R11
1398AA:  SUBS            R1, R5, R6
1398AC:  ADD.W           R12, R0, R9,LSL#2
1398B0:  MOV             R5, LR
1398B2:  BEQ             loc_1398CE
1398B4:  BIC.W           R3, R1, #3
1398B8:  ASRS            R1, R1, #2
1398BA:  ADD.W           R5, LR, R3
1398BE:  LSLS            R3, R1, #2
1398C0:  MOV             R1, LR
1398C2:  LDR.W           R2, [R6],#4
1398C6:  SUBS            R3, #4
1398C8:  STR.W           R2, [R1],#4
1398CC:  BNE             loc_1398C2
1398CE:  CMP.W           R10, #0
1398D2:  STRD.W          R0, LR, [R4]
1398D6:  STRD.W          R5, R12, [R4,#8]
1398DA:  BEQ             loc_1398E4
1398DC:  MOV             R0, R10; void *
1398DE:  BLX             j__ZdlPv; operator delete(void *)
1398E2:  LDR             R5, [R4,#8]
1398E4:  LDR.W           R0, [R8]
1398E8:  STR             R0, [R5]
1398EA:  LDR             R0, [R4,#8]
1398EC:  ADDS            R0, #4
1398EE:  STR             R0, [R4,#8]
1398F0:  ADD             SP, SP, #4
1398F2:  POP.W           {R8-R11}
1398F6:  POP             {R4-R7,PC}
1398F8:  LDR             R0, =(aAllocatorTAllo - 0x1398FE); "allocator<T>::allocate(size_t n) 'n' ex"... ...
1398FA:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
1398FC:  BL              sub_DC8D4
