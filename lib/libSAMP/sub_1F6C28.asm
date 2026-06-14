; =========================================================
; Game Engine Function: sub_1F6C28
; Address            : 0x1F6C28 - 0x1F6C3E
; =========================================================

1F6C28:  PUSH            {R4,R6,R7,LR}
1F6C2A:  ADD             R7, SP, #8
1F6C2C:  MOV             R4, R0
1F6C2E:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
1F6C32:  MOV.W           R0, #0xFFFFFFFF
1F6C36:  MOVS            R1, #0
1F6C38:  STRD.W          R1, R0, [R4,#0x48]
1F6C3C:  POP             {R4,R6,R7,PC}
