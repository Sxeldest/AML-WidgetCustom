; =========================================================
; Game Engine Function: sub_DDB1C
; Address            : 0xDDB1C - 0xDDB94
; =========================================================

DDB1C:  PUSH            {R4-R7,LR}
DDB1E:  ADD             R7, SP, #0xC
DDB20:  PUSH.W          {R8}
DDB24:  MOV             R4, R0
DDB26:  LDR             R0, [R0,#0xC]
DDB28:  ADD.W           R6, R0, R0,LSR#1
DDB2C:  CMP             R6, R1
DDB2E:  BCS             loc_DDB3A
DDB30:  CMP.W           R1, #0x40000000
DDB34:  MOV             R6, R1
DDB36:  BCC             loc_DDB4C
DDB38:  B               loc_DDB8C
DDB3A:  CMP.W           R6, #0x40000000
DDB3E:  BCC             loc_DDB4C
DDB40:  MOVS            R0, #0
DDB42:  CMP.W           R0, R1,LSR#30
DDB46:  BNE             loc_DDB8C
DDB48:  MOV             R6, #0x3FFFFFFF
DDB4C:  LSLS            R0, R6, #2; unsigned int
DDB4E:  LDR.W           R8, [R4,#4]
DDB52:  BLX             j__Znwj; operator new(uint)
DDB56:  LDR             R1, [R4,#8]
DDB58:  CBZ             R1, loc_DDB6C
DDB5A:  LSLS            R1, R1, #2
DDB5C:  MOV             R2, R8
DDB5E:  MOV             R3, R0
DDB60:  LDR.W           R5, [R2],#4
DDB64:  SUBS            R1, #4; std::nothrow_t *
DDB66:  STR.W           R5, [R3],#4
DDB6A:  BNE             loc_DDB60
DDB6C:  STR             R0, [R4,#4]
DDB6E:  ADD.W           R0, R4, #0x10
DDB72:  CMP             R8, R0
DDB74:  STR             R6, [R4,#0xC]
DDB76:  BEQ             loc_DDB86
DDB78:  MOV             R0, R8; void *
DDB7A:  POP.W           {R8}
DDB7E:  POP.W           {R4-R7,LR}
DDB82:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
DDB86:  POP.W           {R8}
DDB8A:  POP             {R4-R7,PC}
DDB8C:  LDR             R0, =(aAllocatorTAllo - 0xDDB92); "allocator<T>::allocate(size_t n) 'n' ex"... ...
DDB8E:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
DDB90:  BL              sub_DC8D4
