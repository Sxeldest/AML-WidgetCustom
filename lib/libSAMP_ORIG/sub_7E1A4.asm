; =========================================================
; Game Engine Function: sub_7E1A4
; Address            : 0x7E1A4 - 0x7E1DA
; =========================================================

7E1A4:  CMP             R1, #0
7E1A6:  IT EQ
7E1A8:  BXEQ            LR
7E1AA:  PUSH            {R4,R5,R7,LR}
7E1AC:  ADD             R7, SP, #0x10+var_8
7E1AE:  MOV             R4, R1
7E1B0:  LDR             R1, [R1]
7E1B2:  MOV             R5, R0
7E1B4:  BL              sub_7E1A4
7E1B8:  LDR             R1, [R4,#4]
7E1BA:  MOV             R0, R5
7E1BC:  BL              sub_7E1A4
7E1C0:  LDR             R0, [R4,#0x14]
7E1C2:  MOVS            R1, #0
7E1C4:  STR             R1, [R4,#0x14]
7E1C6:  CBZ             R0, loc_7E1D0
7E1C8:  BL              sub_7DE3C
7E1CC:  BLX             j__ZdlPv; operator delete(void *)
7E1D0:  MOV             R0, R4; void *
7E1D2:  POP.W           {R4,R5,R7,LR}
7E1D6:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
