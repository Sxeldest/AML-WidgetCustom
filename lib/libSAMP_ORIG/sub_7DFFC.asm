; =========================================================
; Game Engine Function: sub_7DFFC
; Address            : 0x7DFFC - 0x7E022
; =========================================================

7DFFC:  CMP             R1, #0
7DFFE:  IT EQ
7E000:  BXEQ            LR
7E002:  PUSH            {R4,R5,R7,LR}
7E004:  ADD             R7, SP, #0x10+var_8
7E006:  MOV             R4, R1
7E008:  LDR             R1, [R1]
7E00A:  MOV             R5, R0
7E00C:  BL              sub_7DFFC
7E010:  LDR             R1, [R4,#4]
7E012:  MOV             R0, R5
7E014:  BL              sub_7DFFC
7E018:  MOV             R0, R4; void *
7E01A:  POP.W           {R4,R5,R7,LR}
7E01E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
