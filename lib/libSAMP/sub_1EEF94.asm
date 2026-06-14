; =========================================================
; Game Engine Function: sub_1EEF94
; Address            : 0x1EEF94 - 0x1EEFA2
; =========================================================

1EEF94:  MOV             R2, R0
1EEF96:  LDR             R0, [R0]; void *
1EEF98:  STR             R1, [R2]
1EEF9A:  CBZ             R0, locret_1EEFA0
1EEF9C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
1EEFA0:  BX              LR
