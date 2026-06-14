; =========================================================
; Game Engine Function: sub_13D96C
; Address            : 0x13D96C - 0x13D998
; =========================================================

13D96C:  LDR             R0, [R0,#0x60]
13D96E:  B.W             loc_13D972
13D972:  PUSH            {R4,R6,R7,LR}
13D974:  ADD             R7, SP, #8
13D976:  MOV             R4, R0
13D978:  LDRB.W          R0, [R1,#0x58]
13D97C:  CBZ             R0, loc_13D986
13D97E:  LDR             R0, [R4,#0x60]
13D980:  STR             R0, [R1,#0x54]
13D982:  ADDS            R0, #1
13D984:  STR             R0, [R4,#0x60]
13D986:  MOV             R0, R4
13D988:  BL              sub_12BDF6
13D98C:  LDR             R0, [R4]
13D98E:  LDR             R1, [R0,#8]
13D990:  MOV             R0, R4
13D992:  POP.W           {R4,R6,R7,LR}
13D996:  BX              R1
