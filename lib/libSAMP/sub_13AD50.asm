; =========================================================
; Game Engine Function: sub_13AD50
; Address            : 0x13AD50 - 0x13AD7A
; =========================================================

13AD50:  PUSH            {R4,R5,R7,LR}
13AD52:  ADD             R7, SP, #8
13AD54:  MOV             R4, R0
13AD56:  LDR             R0, =(_ZTV6Dialog - 0x13AD5E); `vtable for'Dialog ...
13AD58:  MOV             R5, R4
13AD5A:  ADD             R0, PC; `vtable for'Dialog
13AD5C:  ADDS            R0, #8
13AD5E:  STR.W           R0, [R5],#0x54
13AD62:  ADD.W           R0, R4, #0x7C ; '|'
13AD66:  BL              sub_F4D2E
13AD6A:  MOV             R0, R5
13AD6C:  BL              sub_13AE4C
13AD70:  MOV             R0, R4
13AD72:  POP.W           {R4,R5,R7,LR}
13AD76:  B.W             sub_12BCE4
