; =========================================================
; Game Engine Function: sub_B0798
; Address            : 0xB0798 - 0xB07BE
; =========================================================

B0798:  CMP             R1, #0
B079A:  IT EQ
B079C:  BXEQ            LR
B079E:  PUSH            {R4,R5,R7,LR}
B07A0:  ADD             R7, SP, #0x10+var_8
B07A2:  MOV             R4, R1
B07A4:  LDR             R1, [R1]
B07A6:  MOV             R5, R0
B07A8:  BL              sub_B0798
B07AC:  LDR             R1, [R4,#4]
B07AE:  MOV             R0, R5
B07B0:  BL              sub_B0798
B07B4:  MOV             R0, R4; void *
B07B6:  POP.W           {R4,R5,R7,LR}
B07BA:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
