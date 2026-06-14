; =========================================================
; Game Engine Function: sub_13441C
; Address            : 0x13441C - 0x134436
; =========================================================

13441C:  PUSH            {R7,LR}
13441E:  MOV             R7, SP
134420:  MOV             R2, R0
134422:  LDR             R0, [R0]
134424:  STR             R1, [R2]
134426:  CBZ             R0, locret_134434
134428:  BL              sub_1341B8
13442C:  POP.W           {R7,LR}
134430:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
134434:  POP             {R7,PC}
