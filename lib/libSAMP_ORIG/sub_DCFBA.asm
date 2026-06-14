; =========================================================
; Game Engine Function: sub_DCFBA
; Address            : 0xDCFBA - 0xDCFD0
; =========================================================

DCFBA:  PUSH            {R4,R6,R7,LR}
DCFBC:  ADD             R7, SP, #8
DCFBE:  MOV             R4, R0
DCFC0:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
DCFC4:  MOV.W           R0, #0xFFFFFFFF
DCFC8:  MOVS            R1, #0
DCFCA:  STRD.W          R1, R0, [R4,#0x48]
DCFCE:  POP             {R4,R6,R7,PC}
