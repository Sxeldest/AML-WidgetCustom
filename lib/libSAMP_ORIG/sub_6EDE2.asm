; =========================================================
; Game Engine Function: sub_6EDE2
; Address            : 0x6EDE2 - 0x6EE32
; =========================================================

6EDE2:  PUSH            {R4,R5,R7,LR}
6EDE4:  ADD             R7, SP, #8
6EDE6:  LDR             R4, [R0,#0x14]
6EDE8:  CBZ             R4, locret_6EE0C
6EDEA:  LDR             R0, [R4,#8]; ptr
6EDEC:  CBZ             R0, loc_6EE28
6EDEE:  LDR             R1, [R0,#8]
6EDF0:  CMP             R1, #2
6EDF2:  BCC             loc_6EDFA
6EDF4:  SUBS            R1, #1
6EDF6:  STR             R1, [R0,#8]
6EDF8:  B               loc_6EE28
6EDFA:  LDR             R1, [R0]
6EDFC:  LDR             R2, [R1,#8]
6EDFE:  CBZ             R2, loc_6EE0E
6EE00:  STR             R2, [R0]
6EE02:  MOV             R0, R1; ptr
6EE04:  BLX             free
6EE08:  LDR             R0, [R4,#8]
6EE0A:  B               loc_6EDFA
6EE0C:  POP             {R4,R5,R7,PC}
6EE0E:  LDRB            R3, [R0,#0xC]
6EE10:  MOVS            R2, #0
6EE12:  LDR             R5, [R0,#4]
6EE14:  CMP             R3, #0
6EE16:  STR             R2, [R1,#4]
6EE18:  IT NE
6EE1A:  BLXNE           free
6EE1E:  CMP             R5, #0
6EE20:  ITT NE
6EE22:  MOVNE           R0, R5; void *
6EE24:  BLXNE           j__ZdlPv; operator delete(void *)
6EE28:  MOV             R0, R4; void *
6EE2A:  POP.W           {R4,R5,R7,LR}
6EE2E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
