; =========================================================
; Game Engine Function: _ZN10CPlayerPed19DeactivatePlayerPedEi
; Address            : 0x4C3A64 - 0x4C3A76
; =========================================================

4C3A64:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x4C3A70)
4C3A66:  MOV.W           R2, #0x194
4C3A6A:  MULS            R0, R2
4C3A6C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4C3A6E:  LDR             R1, [R1]; CEntity *
4C3A70:  LDR             R0, [R1,R0]; this
4C3A72:  B.W             sub_19E678
