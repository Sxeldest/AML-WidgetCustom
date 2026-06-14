; =========================================================
; Game Engine Function: sub_DEB44
; Address            : 0xDEB44 - 0xDEB5A
; =========================================================

DEB44:  PUSH            {R4,R6,R7,LR}
DEB46:  ADD             R7, SP, #8
DEB48:  MOV             R4, R0
DEB4A:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
DEB4E:  MOV.W           R0, #0xFFFFFFFF
DEB52:  MOVS            R1, #0
DEB54:  STRD.W          R1, R0, [R4,#0x48]
DEB58:  POP             {R4,R6,R7,PC}
