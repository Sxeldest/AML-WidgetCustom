; =========================================================
; Game Engine Function: sub_139AB8
; Address            : 0x139AB8 - 0x139B90
; =========================================================

139AB8:  PUSH            {R4-R7,LR}
139ABA:  ADD             R7, SP, #0xC
139ABC:  PUSH.W          {R8-R11}
139AC0:  SUB             SP, SP, #4
139AC2:  MOV             R4, R0
139AC4:  LDR             R0, [R0]
139AC6:  LDR.W           R11, [R4,#4]
139ACA:  MOV             R8, R1
139ACC:  CMP             R11, R0
139ACE:  BEQ             loc_139AD4
139AD0:  MOV             R10, R11
139AD2:  B               loc_139B72
139AD4:  LDRD.W          R9, R0, [R4,#8]
139AD8:  CMP             R9, R0
139ADA:  BCS             loc_139B12
139ADC:  SUB.W           R0, R0, R9
139AE0:  MOVS            R1, #1
139AE2:  SUBS.W          R2, R9, R11; n
139AE6:  ADD.W           R0, R1, R0,ASR#2
139AEA:  ADD.W           R0, R0, R0,LSR#31
139AEE:  MOV.W           R5, R0,ASR#1
139AF2:  ADD.W           R10, R9, R5,LSL#2
139AF6:  BEQ             loc_139B08
139AF8:  SUB.W           R10, R10, R2
139AFC:  MOV             R1, R11; src
139AFE:  MOV             R0, R10; dest
139B00:  BLX             j_memmove
139B04:  LDR.W           R9, [R4,#8]
139B08:  ADD.W           R0, R9, R5,LSL#2
139B0C:  STRD.W          R10, R0, [R4,#4]
139B10:  B               loc_139B72
139B12:  SUBS.W          R0, R0, R11
139B16:  MOV.W           R5, R0,ASR#1
139B1A:  IT EQ
139B1C:  MOVEQ           R5, #1
139B1E:  CMP.W           R5, #0x40000000
139B22:  BCS             loc_139B88
139B24:  ADDS            R0, R5, #3
139B26:  BIC.W           R6, R0, #3
139B2A:  LSLS            R0, R5, #2; unsigned int
139B2C:  BLX             j__Znwj; operator new(uint)
139B30:  ADD.W           R10, R0, R6
139B34:  SUBS.W          R3, R9, R11
139B38:  ADD.W           R12, R0, R5,LSL#2
139B3C:  MOV             R2, R10
139B3E:  BEQ             loc_139B5A
139B40:  BIC.W           R2, R3, #3
139B44:  ASRS            R3, R3, #2
139B46:  ADD             R2, R10
139B48:  LSLS            R3, R3, #2
139B4A:  MOV             R5, R10
139B4C:  MOV             R6, R11
139B4E:  LDR.W           R1, [R6],#4
139B52:  SUBS            R3, #4
139B54:  STR.W           R1, [R5],#4
139B58:  BNE             loc_139B4E
139B5A:  CMP.W           R11, #0
139B5E:  STRD.W          R0, R10, [R4]
139B62:  STRD.W          R2, R12, [R4,#8]
139B66:  BEQ             loc_139B72
139B68:  MOV             R0, R11; void *
139B6A:  BLX             j__ZdlPv; operator delete(void *)
139B6E:  LDR.W           R10, [R4,#4]
139B72:  LDR.W           R0, [R8]
139B76:  STR.W           R0, [R10,#-4]
139B7A:  LDR             R0, [R4,#4]
139B7C:  SUBS            R0, #4
139B7E:  STR             R0, [R4,#4]
139B80:  ADD             SP, SP, #4
139B82:  POP.W           {R8-R11}
139B86:  POP             {R4-R7,PC}
139B88:  LDR             R0, =(aAllocatorTAllo - 0x139B8E); "allocator<T>::allocate(size_t n) 'n' ex"... ...
139B8A:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
139B8C:  BL              sub_DC8D4
