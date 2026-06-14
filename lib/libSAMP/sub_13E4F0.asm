; =========================================================
; Game Engine Function: sub_13E4F0
; Address            : 0x13E4F0 - 0x13E50A
; =========================================================

13E4F0:  PUSH            {R7,LR}
13E4F2:  MOV             R7, SP
13E4F4:  MOV             R2, R0
13E4F6:  LDR             R0, [R0]
13E4F8:  STR             R1, [R2]
13E4FA:  CBZ             R0, locret_13E508
13E4FC:  BL              sub_163020
13E500:  POP.W           {R7,LR}
13E504:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
13E508:  POP             {R7,PC}
