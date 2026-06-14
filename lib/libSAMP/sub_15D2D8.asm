; =========================================================
; Game Engine Function: sub_15D2D8
; Address            : 0x15D2D8 - 0x15D2FE
; =========================================================

15D2D8:  PUSH            {R4,R6,R7,LR}
15D2DA:  ADD             R7, SP, #8
15D2DC:  LDRB            R0, [R0,#4]
15D2DE:  MOV             R4, R1
15D2E0:  CBZ             R0, loc_15D2F0
15D2E2:  LDRB            R0, [R4,#0xC]
15D2E4:  LSLS            R0, R0, #0x1F
15D2E6:  ITT NE
15D2E8:  LDRNE           R0, [R4,#0x14]; void *
15D2EA:  BLXNE           j__ZdlPv; operator delete(void *)
15D2EE:  B               loc_15D2F2
15D2F0:  CBZ             R4, locret_15D2FC
15D2F2:  MOV             R0, R4; void *
15D2F4:  POP.W           {R4,R6,R7,LR}
15D2F8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
15D2FC:  POP             {R4,R6,R7,PC}
