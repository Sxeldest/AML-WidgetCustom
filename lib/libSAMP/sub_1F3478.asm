; =========================================================
; Game Engine Function: sub_1F3478
; Address            : 0x1F3478 - 0x1F3488
; =========================================================

1F3478:  MOV             R1, R0; std::nothrow_t *
1F347A:  LDR             R0, [R0]; void *
1F347C:  MOVS            R2, #0
1F347E:  STR             R2, [R1]
1F3480:  CBZ             R0, locret_1F3486
1F3482:  B.W             _ZdaPvRKSt9nothrow_t_0; operator delete[](void *,std::nothrow_t const&)
1F3486:  BX              LR
