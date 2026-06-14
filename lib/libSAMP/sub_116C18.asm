; =========================================================
; Game Engine Function: sub_116C18
; Address            : 0x116C18 - 0x116C7E
; =========================================================

116C18:  PUSH            {R4,R5,R7,LR}
116C1A:  ADD             R7, SP, #8
116C1C:  MOV             R4, R0
116C1E:  LDR             R0, =(_ZTV15CTransparentHud - 0x116C24); `vtable for'CTransparentHud ...
116C20:  ADD             R0, PC; `vtable for'CTransparentHud
116C22:  ADDS            R0, #8
116C24:  STR             R0, [R4]
116C26:  MOV             R0, R4
116C28:  BL              sub_116CFC
116C2C:  ADD.W           R0, R4, #0x44 ; 'D'
116C30:  BL              sub_1630A8
116C34:  ADD.W           R0, R4, #0x40 ; '@'
116C38:  BL              sub_1630A8
116C3C:  ADD.W           R0, R4, #0x3C ; '<'
116C40:  BL              sub_1630A8
116C44:  ADD.W           R0, R4, #0x38 ; '8'
116C48:  BL              sub_1630A8
116C4C:  ADD.W           R0, R4, #0x34 ; '4'
116C50:  BL              sub_1630A8
116C54:  ADD.W           R0, R4, #0x30 ; '0'
116C58:  BL              sub_1630A8
116C5C:  ADD.W           R0, R4, #0x2C ; ','
116C60:  BL              sub_1630A8
116C64:  ADD.W           R0, R4, #0x28 ; '('
116C68:  BL              sub_1630A8
116C6C:  ADD.W           R0, R4, #0x24 ; '$'
116C70:  BL              sub_1630A8
116C74:  MOV             R0, R4
116C76:  POP.W           {R4,R5,R7,LR}
116C7A:  B.W             sub_117584
