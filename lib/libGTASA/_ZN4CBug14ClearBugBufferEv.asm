; =========================================================
; Game Engine Function: _ZN4CBug14ClearBugBufferEv
; Address            : 0x3BDF38 - 0x3BDF52
; =========================================================

3BDF38:  PUSH            {R4,R6,R7,LR}
3BDF3A:  ADD             R7, SP, #8
3BDF3C:  MOV             R4, R0
3BDF3E:  LDR             R0, [R4]; void *
3BDF40:  CMP             R0, #0
3BDF42:  IT EQ
3BDF44:  POPEQ           {R4,R6,R7,PC}
3BDF46:  BLX             _ZdaPv; operator delete[](void *)
3BDF4A:  MOVS            R0, #0
3BDF4C:  STRD.W          R0, R0, [R4]
3BDF50:  POP             {R4,R6,R7,PC}
