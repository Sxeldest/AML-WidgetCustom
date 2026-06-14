; =========================================================
; Game Engine Function: _Z14GettPoolPedRefP4CPed
; Address            : 0x483D3A - 0x483D48
; =========================================================

483D3A:  CMP             R0, #0
483D3C:  IT NE
483D3E:  BNE.W           j_j__ZN6CPools9GetPedRefEP4CPed; j_CPools::GetPedRef(CPed *)
483D42:  MOV.W           R0, #0xFFFFFFFF
483D46:  BX              LR
