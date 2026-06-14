; =========================================================
; Game Engine Function: sub_15BE48
; Address            : 0x15BE48 - 0x15BE76
; =========================================================

15BE48:  PUSH            {R4,R5,R7,LR}
15BE4A:  ADD             R7, SP, #8
15BE4C:  MOV             R4, R0
15BE4E:  BL              sub_15BE94
15BE52:  LDRB.W          R0, [R4,#0x40]
15BE56:  CBZ             R0, loc_15BE5C
15BE58:  BL              sub_15A1EE
15BE5C:  ADD.W           R0, R4, #0x2C ; ','
15BE60:  BL              sub_15C902
15BE64:  ADD.W           R0, R4, #0x18
15BE68:  BL              sub_15C8C6
15BE6C:  ADDS            R0, R4, #4
15BE6E:  BL              sub_15C8A0
15BE72:  MOV             R0, R4
15BE74:  POP             {R4,R5,R7,PC}
