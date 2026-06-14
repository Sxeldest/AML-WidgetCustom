; =========================================================
; Game Engine Function: sub_214F4C
; Address            : 0x214F4C - 0x214F60
; =========================================================

214F4C:  PUSH            {R4,R6,R7,LR}
214F4E:  ADD             R7, SP, #8
214F50:  MOV             R4, R0
214F52:  LDR             R0, [R0]; void *
214F54:  CBZ             R0, loc_214F5C
214F56:  STR             R0, [R4,#4]
214F58:  BLX             j__ZdlPv; operator delete(void *)
214F5C:  MOV             R0, R4
214F5E:  POP             {R4,R6,R7,PC}
