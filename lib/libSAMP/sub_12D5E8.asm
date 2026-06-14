; =========================================================
; Game Engine Function: sub_12D5E8
; Address            : 0x12D5E8 - 0x12D652
; =========================================================

12D5E8:  SUB             SP, SP, #8
12D5EA:  PUSH            {R4-R7,LR}
12D5EC:  ADD             R7, SP, #0xC
12D5EE:  PUSH.W          {R11}
12D5F2:  SUB.W           SP, SP, #0x228
12D5F6:  ADD             R6, SP, #0x238+var_210
12D5F8:  MOV             R4, R1
12D5FA:  MOV             R5, R0
12D5FC:  ADD.W           R0, R7, #8
12D600:  STRD.W          R2, R3, [R7,#var_s8]
12D604:  MOVS            R1, #0
12D606:  STR             R0, [SP,#0x238+var_214]
12D608:  MOV.W           R2, #0x200
12D60C:  STR             R0, [SP,#0x238+var_238]
12D60E:  MOV             R0, R6
12D610:  MOV             R3, R4
12D612:  BLX             __vsprintf_chk
12D616:  ADD             R4, SP, #0x238+var_220
12D618:  MOV             R1, R6; s
12D61A:  MOV             R0, R4; int
12D61C:  BL              sub_DC6DC
12D620:  ADR             R0, dword_12D668
12D622:  ADD             R2, SP, #0x238+var_230
12D624:  VLD1.64         {D16-D17}, [R0]
12D628:  VST1.64         {D16-D17}, [R2]
12D62C:  MOV             R0, R5
12D62E:  MOV             R1, R4
12D630:  BL              sub_12D3E0
12D634:  LDRB.W          R0, [SP,#0x238+var_220]
12D638:  LSLS            R0, R0, #0x1F
12D63A:  ITT NE
12D63C:  LDRNE           R0, [SP,#0x238+var_218]; void *
12D63E:  BLXNE           j__ZdlPv; operator delete(void *)
12D642:  ADD.W           SP, SP, #0x228
12D646:  POP.W           {R11}
12D64A:  POP.W           {R4-R7,LR}
12D64E:  ADD             SP, SP, #8
12D650:  BX              LR
