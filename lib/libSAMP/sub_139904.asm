; =========================================================
; Game Engine Function: sub_139904
; Address            : 0x139904 - 0x1399DC
; =========================================================

139904:  PUSH            {R4-R7,LR}
139906:  ADD             R7, SP, #0xC
139908:  PUSH.W          {R8-R11}
13990C:  SUB             SP, SP, #4
13990E:  MOV             R4, R0
139910:  LDR             R0, [R0]
139912:  LDR.W           R11, [R4,#4]
139916:  MOV             R8, R1
139918:  CMP             R11, R0
13991A:  BEQ             loc_139920
13991C:  MOV             R10, R11
13991E:  B               loc_1399BE
139920:  LDRD.W          R9, R0, [R4,#8]
139924:  CMP             R9, R0
139926:  BCS             loc_13995E
139928:  SUB.W           R0, R0, R9
13992C:  MOVS            R1, #1
13992E:  SUBS.W          R2, R9, R11; n
139932:  ADD.W           R0, R1, R0,ASR#2
139936:  ADD.W           R0, R0, R0,LSR#31
13993A:  MOV.W           R5, R0,ASR#1
13993E:  ADD.W           R10, R9, R5,LSL#2
139942:  BEQ             loc_139954
139944:  SUB.W           R10, R10, R2
139948:  MOV             R1, R11; src
13994A:  MOV             R0, R10; dest
13994C:  BLX             j_memmove
139950:  LDR.W           R9, [R4,#8]
139954:  ADD.W           R0, R9, R5,LSL#2
139958:  STRD.W          R10, R0, [R4,#4]
13995C:  B               loc_1399BE
13995E:  SUBS.W          R0, R0, R11
139962:  MOV.W           R5, R0,ASR#1
139966:  IT EQ
139968:  MOVEQ           R5, #1
13996A:  CMP.W           R5, #0x40000000
13996E:  BCS             loc_1399D4
139970:  ADDS            R0, R5, #3
139972:  BIC.W           R6, R0, #3
139976:  LSLS            R0, R5, #2; unsigned int
139978:  BLX             j__Znwj; operator new(uint)
13997C:  ADD.W           R10, R0, R6
139980:  SUBS.W          R3, R9, R11
139984:  ADD.W           R12, R0, R5,LSL#2
139988:  MOV             R2, R10
13998A:  BEQ             loc_1399A6
13998C:  BIC.W           R2, R3, #3
139990:  ASRS            R3, R3, #2
139992:  ADD             R2, R10
139994:  LSLS            R3, R3, #2
139996:  MOV             R5, R10
139998:  MOV             R6, R11
13999A:  LDR.W           R1, [R6],#4
13999E:  SUBS            R3, #4
1399A0:  STR.W           R1, [R5],#4
1399A4:  BNE             loc_13999A
1399A6:  CMP.W           R11, #0
1399AA:  STRD.W          R0, R10, [R4]
1399AE:  STRD.W          R2, R12, [R4,#8]
1399B2:  BEQ             loc_1399BE
1399B4:  MOV             R0, R11; void *
1399B6:  BLX             j__ZdlPv; operator delete(void *)
1399BA:  LDR.W           R10, [R4,#4]
1399BE:  LDR.W           R0, [R8]
1399C2:  STR.W           R0, [R10,#-4]
1399C6:  LDR             R0, [R4,#4]
1399C8:  SUBS            R0, #4
1399CA:  STR             R0, [R4,#4]
1399CC:  ADD             SP, SP, #4
1399CE:  POP.W           {R8-R11}
1399D2:  POP             {R4-R7,PC}
1399D4:  LDR             R0, =(aAllocatorTAllo - 0x1399DA); "allocator<T>::allocate(size_t n) 'n' ex"... ...
1399D6:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
1399D8:  BL              sub_DC8D4
