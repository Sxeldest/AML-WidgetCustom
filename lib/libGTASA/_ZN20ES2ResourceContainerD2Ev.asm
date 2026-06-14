; =========================================================
; Game Engine Function: _ZN20ES2ResourceContainerD2Ev
; Address            : 0x1D11E0 - 0x1D1204
; =========================================================

1D11E0:  PUSH            {R4,R5,R7,LR}
1D11E2:  ADD             R7, SP, #8
1D11E4:  MOV             R4, R0
1D11E6:  LDR             R0, =(_ZTV20ES2ResourceContainer_ptr - 0x1D11EE)
1D11E8:  MOVS            R5, #0
1D11EA:  ADD             R0, PC; _ZTV20ES2ResourceContainer_ptr
1D11EC:  STR             R5, [R4,#8]
1D11EE:  LDR             R1, [R0]; `vtable for'ES2ResourceContainer ...
1D11F0:  LDR             R0, [R4,#0xC]; p
1D11F2:  ADDS            R1, #8
1D11F4:  STR             R1, [R4]
1D11F6:  CBZ             R0, loc_1D11FE
1D11F8:  BLX             free
1D11FC:  STR             R5, [R4,#0xC]
1D11FE:  MOV             R0, R4
1D1200:  STR             R5, [R4,#4]
1D1202:  POP             {R4,R5,R7,PC}
