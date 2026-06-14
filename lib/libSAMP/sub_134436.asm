; =========================================================
; Game Engine Function: sub_134436
; Address            : 0x134436 - 0x134450
; =========================================================

134436:  PUSH            {R7,LR}
134438:  MOV             R7, SP
13443A:  MOV             R2, R0
13443C:  LDR             R0, [R0]
13443E:  STR             R1, [R2]
134440:  CBZ             R0, locret_13444E
134442:  BL              sub_13430C
134446:  POP.W           {R7,LR}
13444A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
13444E:  POP             {R7,PC}
