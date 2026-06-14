; =========================================================
; Game Engine Function: sub_157F84
; Address            : 0x157F84 - 0x157FA8
; =========================================================

157F84:  PUSH            {R4,R6,R7,LR}
157F86:  ADD             R7, SP, #8
157F88:  LDRB            R0, [R1,#0x10]
157F8A:  MOV             R4, R1
157F8C:  LSLS            R0, R0, #0x1F
157F8E:  ITT NE
157F90:  LDRNE           R0, [R4,#0x18]; void *
157F92:  BLXNE           j__ZdlPv; operator delete(void *)
157F96:  LDRB            R0, [R4,#4]
157F98:  LSLS            R0, R0, #0x1F
157F9A:  IT EQ
157F9C:  POPEQ           {R4,R6,R7,PC}
157F9E:  LDR             R0, [R4,#0xC]; void *
157FA0:  POP.W           {R4,R6,R7,LR}
157FA4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
