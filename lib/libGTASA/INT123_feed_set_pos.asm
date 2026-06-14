; =========================================================
; Game Engine Function: INT123_feed_set_pos
; Address            : 0x231C40 - 0x231CA8
; =========================================================

231C40:  PUSH            {R4-R7,LR}
231C42:  ADD             R7, SP, #0xC
231C44:  PUSH.W          {R8,R9,R11}
231C48:  MOVW            R2, #0xB334
231C4C:  MOV             R9, R1
231C4E:  LDR             R1, [R0,R2]
231C50:  CMP             R1, R9
231C52:  BGT             loc_231C6E
231C54:  MOVW            R3, #0xB328
231C58:  SUB.W           R6, R9, R1
231C5C:  LDR             R3, [R0,R3]
231C5E:  CMP             R6, R3
231C60:  BGE             loc_231C6E
231C62:  MOVW            R2, #0xB32C
231C66:  ADD.W           R9, R3, R1
231C6A:  STR             R6, [R0,R2]
231C6C:  B               loc_231CA0
231C6E:  MOVW            R1, #0xB320
231C72:  ADDS            R6, R0, R1
231C74:  ADD.W           R8, R0, R2
231C78:  LDR             R5, [R6]
231C7A:  CBZ             R5, loc_231C90
231C7C:  LDR             R0, [R5]; p
231C7E:  LDR             R4, [R5,#0xC]
231C80:  BLX             free
231C84:  MOV             R0, R5; p
231C86:  BLX             free
231C8A:  CMP             R4, #0
231C8C:  MOV             R5, R4
231C8E:  BNE             loc_231C7C
231C90:  VMOV.I32        Q8, #0
231C94:  MOVS            R0, #0
231C96:  VST1.32         {D16-D17}, [R6]!
231C9A:  STR             R0, [R6]
231C9C:  STR.W           R9, [R8]
231CA0:  MOV             R0, R9
231CA2:  POP.W           {R8,R9,R11}
231CA6:  POP             {R4-R7,PC}
