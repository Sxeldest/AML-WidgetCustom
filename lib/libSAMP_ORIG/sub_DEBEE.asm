; =========================================================
; Game Engine Function: sub_DEBEE
; Address            : 0xDEBEE - 0xDEC0C
; =========================================================

DEBEE:  PUSH            {R4,R5,R7,LR}
DEBF0:  ADD             R7, SP, #8
DEBF2:  MOV             R4, R1
DEBF4:  MOV             R5, R0
DEBF6:  BLX             j__ZNSt6__ndk18ios_base4swapERS0_; std::ios_base::swap(std::ios_base&)
DEBFA:  LDRD.W          R0, R1, [R5,#0x48]
DEBFE:  LDRD.W          R2, R3, [R4,#0x48]
DEC02:  STRD.W          R2, R3, [R5,#0x48]
DEC06:  STRD.W          R0, R1, [R4,#0x48]
DEC0A:  POP             {R4,R5,R7,PC}
