; =========================================================
; Game Engine Function: sub_DD062
; Address            : 0xDD062 - 0xDD080
; =========================================================

DD062:  PUSH            {R4,R5,R7,LR}
DD064:  ADD             R7, SP, #8
DD066:  MOV             R4, R1
DD068:  MOV             R5, R0
DD06A:  BLX             j__ZNSt6__ndk18ios_base4swapERS0_; std::ios_base::swap(std::ios_base&)
DD06E:  LDRD.W          R0, R1, [R5,#0x48]
DD072:  LDRD.W          R2, R3, [R4,#0x48]
DD076:  STRD.W          R2, R3, [R5,#0x48]
DD07A:  STRD.W          R0, R1, [R4,#0x48]
DD07E:  POP             {R4,R5,R7,PC}
