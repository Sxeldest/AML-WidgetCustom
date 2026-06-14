; =========================================================
; Game Engine Function: sub_138F68
; Address            : 0x138F68 - 0x138F8C
; =========================================================

138F68:  PUSH            {R4,R6,R7,LR}
138F6A:  ADD             R7, SP, #8
138F6C:  LDRB            R0, [R1,#0x10]
138F6E:  MOV             R4, R1
138F70:  LSLS            R0, R0, #0x1F
138F72:  ITT NE
138F74:  LDRNE           R0, [R4,#0x18]; void *
138F76:  BLXNE           j__ZdlPv; operator delete(void *)
138F7A:  LDRB            R0, [R4,#4]
138F7C:  LSLS            R0, R0, #0x1F
138F7E:  IT EQ
138F80:  POPEQ           {R4,R6,R7,PC}
138F82:  LDR             R0, [R4,#0xC]; void *
138F84:  POP.W           {R4,R6,R7,LR}
138F88:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
