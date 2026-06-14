; =========================================================
; Game Engine Function: sub_181C34
; Address            : 0x181C34 - 0x181C76
; =========================================================

181C34:  PUSH            {R4-R7,LR}
181C36:  ADD             R7, SP, #0xC
181C38:  PUSH.W          {R8}
181C3C:  ADD.W           R4, R0, #0x350
181C40:  MOV             R5, R0
181C42:  MOV             R8, R2
181C44:  MOV             R6, R1
181C46:  MOV             R0, R4
181C48:  BL              sub_18CB76
181C4C:  ADD.W           R5, R5, #0x120
181C50:  MOV             R0, R5
181C52:  BL              sub_17D55E
181C56:  CBZ             R6, loc_181C68
181C58:  CMP.W           R8, #0
181C5C:  BEQ             loc_181C68
181C5E:  MOV             R0, R5
181C60:  MOV             R1, R6
181C62:  MOV             R2, R8
181C64:  BL              sub_17D566
181C68:  MOV             R0, R4
181C6A:  POP.W           {R8}
181C6E:  POP.W           {R4-R7,LR}
181C72:  B.W             sub_18CB7A
