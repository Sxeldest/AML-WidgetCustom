; =========================================================
; Game Engine Function: sub_F1EC8
; Address            : 0xF1EC8 - 0xF1EF8
; =========================================================

F1EC8:  CBZ             R1, locret_F1EF6
F1ECA:  PUSH            {R4,R5,R7,LR}
F1ECC:  ADD             R7, SP, #8
F1ECE:  MOV             R4, R1
F1ED0:  LDR             R1, [R1]
F1ED2:  MOV             R5, R0
F1ED4:  BL              sub_F1EC8
F1ED8:  LDR             R1, [R4,#4]
F1EDA:  MOV             R0, R5
F1EDC:  BL              sub_F1EC8
F1EE0:  LDRB            R0, [R4,#0x14]
F1EE2:  LSLS            R0, R0, #0x1F
F1EE4:  ITT NE
F1EE6:  LDRNE           R0, [R4,#0x1C]; void *
F1EE8:  BLXNE           j__ZdlPv; operator delete(void *)
F1EEC:  MOV             R0, R4; void *
F1EEE:  POP.W           {R4,R5,R7,LR}
F1EF2:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
F1EF6:  BX              LR
