; =========================================================
; Game Engine Function: sub_78142
; Address            : 0x78142 - 0x78174
; =========================================================

78142:  CMP             R1, #0
78144:  IT EQ
78146:  BXEQ            LR
78148:  PUSH            {R4,R5,R7,LR}
7814A:  ADD             R7, SP, #0x10+var_8
7814C:  MOV             R4, R1
7814E:  LDR             R1, [R1]
78150:  MOV             R5, R0
78152:  BL              sub_78142
78156:  LDR             R1, [R4,#4]
78158:  MOV             R0, R5
7815A:  BL              sub_78142
7815E:  LDRB            R0, [R4,#0x10]
78160:  LSLS            R0, R0, #0x1F
78162:  ITT NE
78164:  LDRNE           R0, [R4,#0x18]; void *
78166:  BLXNE           j__ZdlPv; operator delete(void *)
7816A:  MOV             R0, R4; void *
7816C:  POP.W           {R4,R5,R7,LR}
78170:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
