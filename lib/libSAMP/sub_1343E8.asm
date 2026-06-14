; =========================================================
; Game Engine Function: sub_1343E8
; Address            : 0x1343E8 - 0x134402
; =========================================================

1343E8:  PUSH            {R7,LR}
1343EA:  MOV             R7, SP
1343EC:  MOV             R2, R0
1343EE:  LDR             R0, [R0]
1343F0:  STR             R1, [R2]
1343F2:  CBZ             R0, locret_134400
1343F4:  BL              sub_133E94
1343F8:  POP.W           {R7,LR}
1343FC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
134400:  POP             {R7,PC}
