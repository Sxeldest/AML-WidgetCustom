; =========================================================
; Game Engine Function: _ZN10CBugstarPCD0Ev
; Address            : 0x3BEE2C - 0x3BEE3C
; =========================================================

3BEE2C:  PUSH            {R7,LR}
3BEE2E:  MOV             R7, SP
3BEE30:  BLX             j__ZN17CBugstarInterfaceD2Ev; CBugstarInterface::~CBugstarInterface()
3BEE34:  POP.W           {R7,LR}
3BEE38:  B.W             j__ZdlPv; operator delete(void *)
