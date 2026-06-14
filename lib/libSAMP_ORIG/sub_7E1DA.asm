; =========================================================
; Game Engine Function: sub_7E1DA
; Address            : 0x7E1DA - 0x7E210
; =========================================================

7E1DA:  CMP             R1, #0
7E1DC:  IT EQ
7E1DE:  BXEQ            LR
7E1E0:  PUSH            {R4,R5,R7,LR}
7E1E2:  ADD             R7, SP, #0x10+var_8
7E1E4:  MOV             R4, R1
7E1E6:  LDR             R1, [R1]
7E1E8:  MOV             R5, R0
7E1EA:  BL              sub_7E1DA
7E1EE:  LDR             R1, [R4,#4]
7E1F0:  MOV             R0, R5
7E1F2:  BL              sub_7E1DA
7E1F6:  LDR             R0, [R4,#0x14]
7E1F8:  MOVS            R1, #0
7E1FA:  STR             R1, [R4,#0x14]
7E1FC:  CMP             R0, #0
7E1FE:  ITTT NE
7E200:  LDRNE           R1, [R0]
7E202:  LDRNE           R1, [R1,#4]
7E204:  BLXNE           R1
7E206:  MOV             R0, R4; void *
7E208:  POP.W           {R4,R5,R7,LR}
7E20C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
