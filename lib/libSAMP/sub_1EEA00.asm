; =========================================================
; Game Engine Function: sub_1EEA00
; Address            : 0x1EEA00 - 0x1EEA0E
; =========================================================

1EEA00:  MOV             R2, R0
1EEA02:  LDR             R0, [R0]; void *
1EEA04:  STR             R1, [R2]
1EEA06:  CBZ             R0, locret_1EEA0C
1EEA08:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
1EEA0C:  BX              LR
