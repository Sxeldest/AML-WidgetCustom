; =========================================================
; Game Engine Function: sub_154D48
; Address            : 0x154D48 - 0x154D7C
; =========================================================

154D48:  PUSH            {R4,R5,R7,LR}
154D4A:  ADD             R7, SP, #8
154D4C:  SUB             SP, SP, #0x118
154D4E:  MOV             R4, R0
154D50:  ADD             R0, SP, #0x120+var_11C
154D52:  MOV             R5, R1
154D54:  BL              sub_17D4A8
154D58:  CBZ             R5, loc_154D62
154D5A:  ADD             R0, SP, #0x120+var_11C
154D5C:  BL              sub_17D84A
154D60:  B               loc_154D68
154D62:  ADD             R0, SP, #0x120+var_11C
154D64:  BL              sub_17D828
154D68:  ADD             R2, SP, #0x120+var_11C
154D6A:  MOV             R0, R4
154D6C:  MOVS            R1, #4
154D6E:  BL              sub_15535A
154D72:  ADD             R0, SP, #0x120+var_11C
154D74:  BL              sub_17D542
154D78:  ADD             SP, SP, #0x118
154D7A:  POP             {R4,R5,R7,PC}
