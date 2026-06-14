; =========================================================
; Game Engine Function: sub_81B9C
; Address            : 0x81B9C - 0x81BC0
; =========================================================

81B9C:  PUSH            {R4,R5,R7,LR}
81B9E:  ADD             R7, SP, #8
81BA0:  LDR             R5, [R0]
81BA2:  MOV             R4, R0
81BA4:  MOVS            R0, #0
81BA6:  STR             R0, [R4]
81BA8:  CBZ             R5, loc_81BBC
81BAA:  LDR             R0, [R5]; void *
81BAC:  CMP             R0, #0
81BAE:  ITT NE
81BB0:  STRNE           R0, [R5,#4]
81BB2:  BLXNE           j__ZdlPv; operator delete(void *)
81BB6:  MOV             R0, R5; void *
81BB8:  BLX             j__ZdlPv; operator delete(void *)
81BBC:  MOV             R0, R4
81BBE:  POP             {R4,R5,R7,PC}
