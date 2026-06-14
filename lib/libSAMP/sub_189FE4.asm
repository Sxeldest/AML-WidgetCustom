; =========================================================
; Game Engine Function: sub_189FE4
; Address            : 0x189FE4 - 0x18A02E
; =========================================================

189FE4:  PUSH            {R4-R7,LR}
189FE6:  ADD             R7, SP, #0xC
189FE8:  PUSH.W          {R11}
189FEC:  SUB             SP, SP, #8
189FEE:  MOV             R6, R2
189FF0:  SUB.W           R2, R7, #-var_11
189FF4:  MOV             R5, R0
189FF6:  BL              sub_18B8AE
189FFA:  MOV             R4, R0
189FFC:  LDRB.W          R0, [R7,#var_11]
18A000:  CBZ             R0, loc_18A008
18A002:  MOV.W           R4, #0xFFFFFFFF
18A006:  B               loc_18A024
18A008:  LDR             R0, [R5,#4]
18A00A:  LDR             R1, [R6]
18A00C:  CMP             R4, R0
18A00E:  BCS             loc_18A01A
18A010:  MOV             R0, R5
18A012:  MOV             R2, R4
18A014:  BL              sub_18B968
18A018:  B               loc_18A024
18A01A:  MOV             R0, R5
18A01C:  BL              sub_18B8FA
18A020:  LDR             R0, [R5,#4]
18A022:  SUBS            R4, R0, #1
18A024:  MOV             R0, R4
18A026:  ADD             SP, SP, #8
18A028:  POP.W           {R11}
18A02C:  POP             {R4-R7,PC}
