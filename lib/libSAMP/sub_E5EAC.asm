; =========================================================
; Game Engine Function: sub_E5EAC
; Address            : 0xE5EAC - 0xE5ECC
; =========================================================

E5EAC:  PUSH            {R4,R6,R7,LR}
E5EAE:  ADD             R7, SP, #8
E5EB0:  ADD.W           R0, R1, #0x10
E5EB4:  MOV             R4, R1
E5EB6:  BL              sub_E3F7A
E5EBA:  LDRB            R0, [R4]
E5EBC:  LSLS            R0, R0, #0x1F
E5EBE:  IT EQ
E5EC0:  POPEQ           {R4,R6,R7,PC}
E5EC2:  LDR             R0, [R4,#8]; void *
E5EC4:  POP.W           {R4,R6,R7,LR}
E5EC8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
