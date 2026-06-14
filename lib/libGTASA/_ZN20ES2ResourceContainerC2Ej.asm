; =========================================================
; Game Engine Function: _ZN20ES2ResourceContainerC2Ej
; Address            : 0x1CFF78 - 0x1CFF92
; =========================================================

1CFF78:  LDR             R2, =(_ZTV20ES2ResourceContainer_ptr - 0x1CFF82)
1CFF7A:  MOVS            R3, #0
1CFF7C:  STR             R3, [R0,#0xC]
1CFF7E:  ADD             R2, PC; _ZTV20ES2ResourceContainer_ptr
1CFF80:  STRD.W          R3, R3, [R0,#4]
1CFF84:  STR             R3, [R0,#0x14]
1CFF86:  LDR             R2, [R2]; `vtable for'ES2ResourceContainer ...
1CFF88:  STR             R1, [R0,#0x10]
1CFF8A:  ADD.W           R1, R2, #8
1CFF8E:  STR             R1, [R0]
1CFF90:  BX              LR
