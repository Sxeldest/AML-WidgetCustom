; =========================================================
; Game Engine Function: sub_1EF644
; Address            : 0x1EF644 - 0x1EF652
; =========================================================

1EF644:  MOV             R2, R0
1EF646:  LDR             R0, [R0]; void *
1EF648:  STR             R1, [R2]
1EF64A:  CBZ             R0, locret_1EF650
1EF64C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
1EF650:  BX              LR
