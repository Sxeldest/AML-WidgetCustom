; =========================================================
; Game Engine Function: _ZN10TouchSense10threadFuncEPv
; Address            : 0x2704B0 - 0x2704BC
; =========================================================

2704B0:  PUSH            {R7,LR}
2704B2:  MOV             R7, SP
2704B4:  BLX             j__ZN10TouchSense3runEv; TouchSense::run(void)
2704B8:  MOVS            R0, #0
2704BA:  POP             {R7,PC}
