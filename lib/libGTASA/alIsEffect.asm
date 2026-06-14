; =========================================================
; Game Engine Function: alIsEffect
; Address            : 0x25321C - 0x253254
; =========================================================

25321C:  PUSH            {R4,R5,R7,LR}
25321E:  ADD             R7, SP, #8
253220:  MOV             R5, R0
253222:  BLX             j_GetContextRef
253226:  MOV             R4, R0
253228:  CBZ             R4, loc_253242
25322A:  CBZ             R5, loc_253248
25322C:  LDR.W           R0, [R4,#0x88]
253230:  MOV             R1, R5
253232:  ADDS            R0, #0x64 ; 'd'
253234:  BLX             j_LookupUIntMapKey
253238:  MOV             R5, R0
25323A:  CMP             R5, #0
25323C:  IT NE
25323E:  MOVNE           R5, #1
253240:  B               loc_25324A
253242:  MOVS            R5, #0
253244:  MOV             R0, R5
253246:  POP             {R4,R5,R7,PC}
253248:  MOVS            R5, #1
25324A:  MOV             R0, R4
25324C:  BLX             j_ALCcontext_DecRef
253250:  MOV             R0, R5
253252:  POP             {R4,R5,R7,PC}
