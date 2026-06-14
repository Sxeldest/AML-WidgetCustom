; =========================================================
; Game Engine Function: sub_1F6CD2
; Address            : 0x1F6CD2 - 0x1F6CF0
; =========================================================

1F6CD2:  PUSH            {R4,R5,R7,LR}
1F6CD4:  ADD             R7, SP, #8
1F6CD6:  MOV             R4, R1
1F6CD8:  MOV             R5, R0
1F6CDA:  BLX             j__ZNSt6__ndk18ios_base4swapERS0_; std::ios_base::swap(std::ios_base&)
1F6CDE:  LDRD.W          R0, R1, [R5,#0x48]
1F6CE2:  LDRD.W          R2, R3, [R4,#0x48]
1F6CE6:  STRD.W          R2, R3, [R5,#0x48]
1F6CEA:  STRD.W          R0, R1, [R4,#0x48]
1F6CEE:  POP             {R4,R5,R7,PC}
