; =========================================================
; Game Engine Function: sub_1EE6F0
; Address            : 0x1EE6F0 - 0x1EE6FE
; =========================================================

1EE6F0:  MOV             R2, R0
1EE6F2:  LDR             R0, [R0]; void *
1EE6F4:  STR             R1, [R2]
1EE6F6:  CBZ             R0, locret_1EE6FC
1EE6F8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
1EE6FC:  BX              LR
