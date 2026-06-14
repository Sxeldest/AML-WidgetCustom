; =========================================================
; Game Engine Function: sub_139754
; Address            : 0x139754 - 0x139828
; =========================================================

139754:  PUSH            {R4-R7,LR}
139756:  ADD             R7, SP, #0xC
139758:  PUSH.W          {R8-R11}
13975C:  SUB             SP, SP, #4
13975E:  MOV             R4, R0
139760:  LDRD.W          R5, R0, [R0,#8]
139764:  MOV             R8, R1
139766:  CMP             R5, R0
139768:  BNE             loc_13980C
13976A:  LDRD.W          R10, R6, [R4]
13976E:  CMP             R6, R10
139770:  BLS             loc_1397AE
139772:  SUB.W           R0, R6, R10
139776:  MOVS            R1, #1
139778:  SUBS.W          R9, R5, R6
13977C:  ADD.W           R0, R1, R0,ASR#2
139780:  MOV.W           R1, #0
139784:  ADD.W           R0, R0, R0,LSR#31
139788:  SUB.W           R10, R1, R0,ASR#1
13978C:  MOV.W           R0, R0,ASR#1
139790:  SUB.W           R5, R6, R0,LSL#2
139794:  BEQ             loc_1397A2
139796:  MOV             R0, R5; dest
139798:  MOV             R1, R6; src
13979A:  MOV             R2, R9; n
13979C:  BLX             j_memmove
1397A0:  LDR             R6, [R4,#4]
1397A2:  ADD             R5, R9
1397A4:  ADD.W           R0, R6, R10,LSL#2
1397A8:  STRD.W          R0, R5, [R4,#4]
1397AC:  B               loc_13980C
1397AE:  SUBS.W          R0, R5, R10
1397B2:  MOV.W           R9, R0,ASR#1
1397B6:  IT EQ
1397B8:  MOVEQ.W         R9, #1
1397BC:  CMP.W           R9, #0x40000000
1397C0:  BCS             loc_139820
1397C2:  MOV.W           R0, R9,LSL#2; unsigned int
1397C6:  BIC.W           R11, R9, #3
1397CA:  BLX             j__Znwj; operator new(uint)
1397CE:  ADD.W           LR, R0, R11
1397D2:  SUBS            R1, R5, R6
1397D4:  ADD.W           R12, R0, R9,LSL#2
1397D8:  MOV             R5, LR
1397DA:  BEQ             loc_1397F6
1397DC:  BIC.W           R3, R1, #3
1397E0:  ASRS            R1, R1, #2
1397E2:  ADD.W           R5, LR, R3
1397E6:  LSLS            R3, R1, #2
1397E8:  MOV             R1, LR
1397EA:  LDR.W           R2, [R6],#4
1397EE:  SUBS            R3, #4
1397F0:  STR.W           R2, [R1],#4
1397F4:  BNE             loc_1397EA
1397F6:  CMP.W           R10, #0
1397FA:  STRD.W          R0, LR, [R4]
1397FE:  STRD.W          R5, R12, [R4,#8]
139802:  BEQ             loc_13980C
139804:  MOV             R0, R10; void *
139806:  BLX             j__ZdlPv; operator delete(void *)
13980A:  LDR             R5, [R4,#8]
13980C:  LDR.W           R0, [R8]
139810:  STR             R0, [R5]
139812:  LDR             R0, [R4,#8]
139814:  ADDS            R0, #4
139816:  STR             R0, [R4,#8]
139818:  ADD             SP, SP, #4
13981A:  POP.W           {R8-R11}
13981E:  POP             {R4-R7,PC}
139820:  LDR             R0, =(aAllocatorTAllo - 0x139826); "allocator<T>::allocate(size_t n) 'n' ex"... ...
139822:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
139824:  BL              sub_DC8D4
