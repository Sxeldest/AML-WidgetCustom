; =========================================================
; Game Engine Function: sub_F7950
; Address            : 0xF7950 - 0xF7976
; =========================================================

F7950:  PUSH            {R4,R6,R7,LR}
F7952:  ADD             R7, SP, #8
F7954:  LDRB            R0, [R0,#4]
F7956:  MOV             R4, R1
F7958:  CBZ             R0, loc_F7968
F795A:  LDRB            R0, [R4,#0x10]
F795C:  LSLS            R0, R0, #0x1F
F795E:  ITT NE
F7960:  LDRNE           R0, [R4,#0x18]; void *
F7962:  BLXNE           j__ZdlPv; operator delete(void *)
F7966:  B               loc_F796A
F7968:  CBZ             R4, locret_F7974
F796A:  MOV             R0, R4; void *
F796C:  POP.W           {R4,R6,R7,LR}
F7970:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
F7974:  POP             {R4,R6,R7,PC}
