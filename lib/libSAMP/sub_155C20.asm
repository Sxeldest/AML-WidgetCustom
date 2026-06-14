; =========================================================
; Game Engine Function: sub_155C20
; Address            : 0x155C20 - 0x155C82
; =========================================================

155C20:  PUSH            {R4,R5,R7,LR}
155C22:  ADD             R7, SP, #8
155C24:  SUB             SP, SP, #0x10
155C26:  MOV             R4, R0
155C28:  MOVS            R0, #0x64 ; 'd'
155C2A:  MUL.W           R5, R1, R0
155C2E:  LDRB.W          R0, [R4,#0x7D]
155C32:  STR             R5, [R4,#0x70]
155C34:  CBZ             R0, loc_155C3C
155C36:  MOV             R0, R5
155C38:  BL              sub_154698
155C3C:  MOVS            R0, #0
155C3E:  ASRS            R3, R5, #0x1F
155C40:  STRD.W          R0, R0, [SP,#0x18+var_10]
155C44:  MOV             R2, R5
155C46:  STRB.W          R0, [SP,#0x18+var_18]
155C4A:  MOV             R0, SP
155C4C:  BL              sub_EAC24
155C50:  LDR             R1, =(aGlobalvolume - 0x155C56); "globalVolume" ...
155C52:  ADD             R1, PC; "globalVolume"
155C54:  ADD.W           R0, R4, #0x60 ; '`'
155C58:  BL              sub_E4710
155C5C:  LDRB.W          R1, [SP,#0x18+var_18]
155C60:  LDRB            R2, [R0]
155C62:  STRB            R1, [R0]
155C64:  LDRD.W          R1, R4, [SP,#0x18+var_10]
155C68:  LDRD.W          R3, R5, [R0,#8]
155C6C:  STRD.W          R1, R4, [R0,#8]
155C70:  MOV             R0, SP
155C72:  STRB.W          R2, [SP,#0x18+var_18]
155C76:  STRD.W          R3, R5, [SP,#0x18+var_10]
155C7A:  BL              sub_E3F7A
155C7E:  ADD             SP, SP, #0x10
155C80:  POP             {R4,R5,R7,PC}
