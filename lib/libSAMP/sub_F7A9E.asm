; =========================================================
; Game Engine Function: sub_F7A9E
; Address            : 0xF7A9E - 0xF7AC2
; =========================================================

F7A9E:  PUSH            {R4,R6,R7,LR}
F7AA0:  ADD             R7, SP, #8
F7AA2:  LDRB            R0, [R1,#0xC]
F7AA4:  MOV             R4, R1
F7AA6:  LSLS            R0, R0, #0x1F
F7AA8:  ITT NE
F7AAA:  LDRNE           R0, [R4,#0x14]; void *
F7AAC:  BLXNE           j__ZdlPv; operator delete(void *)
F7AB0:  LDRB            R0, [R4]
F7AB2:  LSLS            R0, R0, #0x1F
F7AB4:  IT EQ
F7AB6:  POPEQ           {R4,R6,R7,PC}
F7AB8:  LDR             R0, [R4,#8]; void *
F7ABA:  POP.W           {R4,R6,R7,LR}
F7ABE:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
