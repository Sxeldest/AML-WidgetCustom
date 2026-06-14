; =========================================================
; Game Engine Function: _ZN5CTaskC2Ev
; Address            : 0x4D6968 - 0x4D6978
; =========================================================

4D6968:  LDR             R1, =(_ZTV5CTask_ptr - 0x4D6970)
4D696A:  MOVS            R2, #0
4D696C:  ADD             R1, PC; _ZTV5CTask_ptr
4D696E:  LDR             R1, [R1]; `vtable for'CTask ...
4D6970:  ADDS            R1, #8
4D6972:  STRD.W          R1, R2, [R0]
4D6976:  BX              LR
