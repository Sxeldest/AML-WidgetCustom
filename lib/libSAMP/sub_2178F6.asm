; =========================================================
; Game Engine Function: sub_2178F6
; Address            : 0x2178F6 - 0x21794A
; =========================================================

2178F6:  PUSH            {R4-R7,LR}
2178F8:  ADD             R7, SP, #0xC
2178FA:  PUSH.W          {R11}
2178FE:  MOVS            R2, #0
217900:  STR             R2, [R1]
217902:  LDRD.W          R3, R2, [R0]
217906:  CMP             R2, R3
217908:  BEQ             loc_217914
21790A:  LDRB            R4, [R3]
21790C:  CMP             R4, #0x30 ; '0'
21790E:  BCC             loc_217914
217910:  CMP             R4, #0x39 ; '9'
217912:  BLS             loc_21791C
217914:  MOVS            R0, #1
217916:  POP.W           {R11}
21791A:  POP             {R4-R7,PC}
21791C:  MOVS            R4, #0
21791E:  CMP             R3, R2
217920:  BEQ             loc_217946
217922:  LDRB            R5, [R3]
217924:  SUBS            R5, #0x30 ; '0'
217926:  CMP             R5, #9
217928:  BHI             loc_217946
21792A:  ADD.W           R4, R4, R4,LSL#2
21792E:  ADDS            R5, R3, #1
217930:  LSLS            R6, R4, #1
217932:  STR             R5, [R0]
217934:  STR             R6, [R1]
217936:  LDRB            R3, [R3]
217938:  ADD.W           R3, R3, R4,LSL#1
21793C:  SUB.W           R4, R3, #0x30 ; '0'
217940:  STR             R4, [R1]
217942:  MOV             R3, R5
217944:  B               loc_21791E
217946:  MOVS            R0, #0
217948:  B               loc_217916
