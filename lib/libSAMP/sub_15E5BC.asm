; =========================================================
; Game Engine Function: sub_15E5BC
; Address            : 0x15E5BC - 0x15E5CE
; =========================================================

15E5BC:  LDR             R0, =(off_234970 - 0x15E5C2)
15E5BE:  ADD             R0, PC; off_234970
15E5C0:  LDR             R0, [R0]; dword_23DEF0
15E5C2:  LDR             R0, [R0]
15E5C4:  CBZ             R0, loc_15E5CA
15E5C6:  B.W             sub_E35A0
15E5CA:  MOVS            R0, #0
15E5CC:  BX              LR
