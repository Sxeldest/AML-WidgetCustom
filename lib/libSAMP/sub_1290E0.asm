; =========================================================
; Game Engine Function: sub_1290E0
; Address            : 0x1290E0 - 0x12910E
; =========================================================

1290E0:  PUSH            {R4-R7,LR}
1290E2:  ADD             R7, SP, #0xC
1290E4:  PUSH.W          {R11}
1290E8:  LDR             R5, =(word_314134 - 0x1290EE)
1290EA:  ADD             R5, PC; word_314134
1290EC:  LDRH            R1, [R5]
1290EE:  CBZ             R1, loc_129108
1290F0:  MOV             R4, R0
1290F2:  LDR             R0, =(dword_314138 - 0x1290F8)
1290F4:  ADD             R0, PC; dword_314138
1290F6:  LDR             R6, [R0]
1290F8:  CBZ             R6, loc_129106
1290FA:  BL              sub_163768
1290FE:  LDRH            R2, [R4,#0x26]
129100:  LDRH            R1, [R5]
129102:  STR.W           R6, [R0,R2,LSL#2]
129106:  STRH            R1, [R4,#0x26]
129108:  POP.W           {R11}
12910C:  POP             {R4-R7,PC}
