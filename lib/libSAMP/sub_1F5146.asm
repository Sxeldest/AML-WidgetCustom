; =========================================================
; Game Engine Function: sub_1F5146
; Address            : 0x1F5146 - 0x1F5164
; =========================================================

1F5146:  PUSH            {R4,R5,R7,LR}
1F5148:  ADD             R7, SP, #8
1F514A:  MOV             R4, R1
1F514C:  MOV             R5, R0
1F514E:  BLX             j__ZNSt6__ndk18ios_base4swapERS0_; std::ios_base::swap(std::ios_base&)
1F5152:  LDRD.W          R0, R1, [R5,#0x48]
1F5156:  LDRD.W          R2, R3, [R4,#0x48]
1F515A:  STRD.W          R2, R3, [R5,#0x48]
1F515E:  STRD.W          R0, R1, [R4,#0x48]
1F5162:  POP             {R4,R5,R7,PC}
