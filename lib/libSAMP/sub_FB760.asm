; =========================================================
; Game Engine Function: sub_FB760
; Address            : 0xFB760 - 0xFB788
; =========================================================

FB760:  SUB             SP, SP, #4
FB762:  PUSH            {R7,LR}
FB764:  MOV             R7, SP
FB766:  SUB             SP, SP, #0xC
FB768:  ADD.W           R1, R7, #8
FB76C:  MOV             R12, R2
FB76E:  STR             R3, [R7,#8]
FB770:  MOVS            R2, #0xFF
FB772:  STR             R1, [SP,#0x18+var_10]
FB774:  MOV             R3, R12
FB776:  STR             R1, [SP,#0x18+var_18]
FB778:  MOVS            R1, #0
FB77A:  BLX             __vsprintf_chk
FB77E:  ADD             SP, SP, #0xC
FB780:  POP.W           {R7,LR}
FB784:  ADD             SP, SP, #4
FB786:  BX              LR
