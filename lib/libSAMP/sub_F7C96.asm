; =========================================================
; Game Engine Function: sub_F7C96
; Address            : 0xF7C96 - 0xF7CC6
; =========================================================

F7C96:  CBZ             R1, locret_F7CC4
F7C98:  PUSH            {R4,R5,R7,LR}
F7C9A:  ADD             R7, SP, #8
F7C9C:  MOV             R4, R1
F7C9E:  LDR             R1, [R1]
F7CA0:  MOV             R5, R0
F7CA2:  BL              sub_F7C96
F7CA6:  LDR             R1, [R4,#4]
F7CA8:  MOV             R0, R5
F7CAA:  BL              sub_F7C96
F7CAE:  LDRB            R0, [R4,#0x10]
F7CB0:  LSLS            R0, R0, #0x1F
F7CB2:  ITT NE
F7CB4:  LDRNE           R0, [R4,#0x18]; void *
F7CB6:  BLXNE           j__ZdlPv; operator delete(void *)
F7CBA:  MOV             R0, R4; void *
F7CBC:  POP.W           {R4,R5,R7,LR}
F7CC0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
F7CC4:  BX              LR
