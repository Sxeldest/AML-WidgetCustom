; =========================================================
; Game Engine Function: sub_10E292
; Address            : 0x10E292 - 0x10E2B8
; =========================================================

10E292:  PUSH            {R4,R6,R7,LR}
10E294:  ADD             R7, SP, #8
10E296:  LDRB            R0, [R0,#4]
10E298:  MOV             R4, R1
10E29A:  CBZ             R0, loc_10E2AA
10E29C:  LDRB            R0, [R4,#0x14]
10E29E:  LSLS            R0, R0, #0x1F
10E2A0:  ITT NE
10E2A2:  LDRNE           R0, [R4,#0x1C]; void *
10E2A4:  BLXNE           j__ZdlPv; operator delete(void *)
10E2A8:  B               loc_10E2AC
10E2AA:  CBZ             R4, locret_10E2B6
10E2AC:  MOV             R0, R4; void *
10E2AE:  POP.W           {R4,R6,R7,LR}
10E2B2:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
10E2B6:  POP             {R4,R6,R7,PC}
