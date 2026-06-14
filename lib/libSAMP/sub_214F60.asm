; =========================================================
; Game Engine Function: sub_214F60
; Address            : 0x214F60 - 0x214F74
; =========================================================

214F60:  PUSH            {R4,R6,R7,LR}
214F62:  ADD             R7, SP, #8
214F64:  MOV             R4, R0
214F66:  LDR             R0, [R0]; void *
214F68:  CBZ             R0, loc_214F70
214F6A:  STR             R0, [R4,#4]
214F6C:  BLX             j__ZdlPv; operator delete(void *)
214F70:  MOV             R0, R4
214F72:  POP             {R4,R6,R7,PC}
