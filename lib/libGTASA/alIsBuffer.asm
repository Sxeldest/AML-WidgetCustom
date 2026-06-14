; =========================================================
; Game Engine Function: alIsBuffer
; Address            : 0x23F5B4 - 0x23F5EC
; =========================================================

23F5B4:  PUSH            {R4,R5,R7,LR}
23F5B6:  ADD             R7, SP, #8
23F5B8:  MOV             R5, R0
23F5BA:  BLX             j_GetContextRef
23F5BE:  MOV             R4, R0
23F5C0:  CBZ             R4, loc_23F5DA
23F5C2:  CBZ             R5, loc_23F5E0
23F5C4:  LDR.W           R0, [R4,#0x88]
23F5C8:  MOV             R1, R5
23F5CA:  ADDS            R0, #0x40 ; '@'
23F5CC:  BLX             j_LookupUIntMapKey
23F5D0:  MOV             R5, R0
23F5D2:  CMP             R5, #0
23F5D4:  IT NE
23F5D6:  MOVNE           R5, #1
23F5D8:  B               loc_23F5E2
23F5DA:  MOVS            R5, #0
23F5DC:  MOV             R0, R5
23F5DE:  POP             {R4,R5,R7,PC}
23F5E0:  MOVS            R5, #1
23F5E2:  MOV             R0, R4
23F5E4:  BLX             j_ALCcontext_DecRef
23F5E8:  MOV             R0, R5
23F5EA:  POP             {R4,R5,R7,PC}
