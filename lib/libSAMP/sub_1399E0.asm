; =========================================================
; Game Engine Function: sub_1399E0
; Address            : 0x1399E0 - 0x139AB4
; =========================================================

1399E0:  PUSH            {R4-R7,LR}
1399E2:  ADD             R7, SP, #0xC
1399E4:  PUSH.W          {R8-R11}
1399E8:  SUB             SP, SP, #4
1399EA:  MOV             R4, R0
1399EC:  LDRD.W          R5, R0, [R0,#8]
1399F0:  MOV             R8, R1
1399F2:  CMP             R5, R0
1399F4:  BNE             loc_139A98
1399F6:  LDRD.W          R10, R6, [R4]
1399FA:  CMP             R6, R10
1399FC:  BLS             loc_139A3A
1399FE:  SUB.W           R0, R6, R10
139A02:  MOVS            R1, #1
139A04:  SUBS.W          R9, R5, R6
139A08:  ADD.W           R0, R1, R0,ASR#2
139A0C:  MOV.W           R1, #0
139A10:  ADD.W           R0, R0, R0,LSR#31
139A14:  SUB.W           R10, R1, R0,ASR#1
139A18:  MOV.W           R0, R0,ASR#1
139A1C:  SUB.W           R5, R6, R0,LSL#2
139A20:  BEQ             loc_139A2E
139A22:  MOV             R0, R5; dest
139A24:  MOV             R1, R6; src
139A26:  MOV             R2, R9; n
139A28:  BLX             j_memmove
139A2C:  LDR             R6, [R4,#4]
139A2E:  ADD             R5, R9
139A30:  ADD.W           R0, R6, R10,LSL#2
139A34:  STRD.W          R0, R5, [R4,#4]
139A38:  B               loc_139A98
139A3A:  SUBS.W          R0, R5, R10
139A3E:  MOV.W           R9, R0,ASR#1
139A42:  IT EQ
139A44:  MOVEQ.W         R9, #1
139A48:  CMP.W           R9, #0x40000000
139A4C:  BCS             loc_139AAC
139A4E:  MOV.W           R0, R9,LSL#2; unsigned int
139A52:  BIC.W           R11, R9, #3
139A56:  BLX             j__Znwj; operator new(uint)
139A5A:  ADD.W           LR, R0, R11
139A5E:  SUBS            R1, R5, R6
139A60:  ADD.W           R12, R0, R9,LSL#2
139A64:  MOV             R5, LR
139A66:  BEQ             loc_139A82
139A68:  BIC.W           R3, R1, #3
139A6C:  ASRS            R1, R1, #2
139A6E:  ADD.W           R5, LR, R3
139A72:  LSLS            R3, R1, #2
139A74:  MOV             R1, LR
139A76:  LDR.W           R2, [R6],#4
139A7A:  SUBS            R3, #4
139A7C:  STR.W           R2, [R1],#4
139A80:  BNE             loc_139A76
139A82:  CMP.W           R10, #0
139A86:  STRD.W          R0, LR, [R4]
139A8A:  STRD.W          R5, R12, [R4,#8]
139A8E:  BEQ             loc_139A98
139A90:  MOV             R0, R10; void *
139A92:  BLX             j__ZdlPv; operator delete(void *)
139A96:  LDR             R5, [R4,#8]
139A98:  LDR.W           R0, [R8]
139A9C:  STR             R0, [R5]
139A9E:  LDR             R0, [R4,#8]
139AA0:  ADDS            R0, #4
139AA2:  STR             R0, [R4,#8]
139AA4:  ADD             SP, SP, #4
139AA6:  POP.W           {R8-R11}
139AAA:  POP             {R4-R7,PC}
139AAC:  LDR             R0, =(aAllocatorTAllo - 0x139AB2); "allocator<T>::allocate(size_t n) 'n' ex"... ...
139AAE:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
139AB0:  BL              sub_DC8D4
