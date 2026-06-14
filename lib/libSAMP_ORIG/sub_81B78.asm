; =========================================================
; Game Engine Function: sub_81B78
; Address            : 0x81B78 - 0x81B9C
; =========================================================

81B78:  PUSH            {R4,R5,R7,LR}
81B7A:  ADD             R7, SP, #8
81B7C:  LDR             R5, [R0]
81B7E:  MOV             R4, R0
81B80:  MOVS            R0, #0
81B82:  STR             R0, [R4]
81B84:  CBZ             R5, loc_81B98
81B86:  LDR             R0, [R5]; void *
81B88:  CMP             R0, #0
81B8A:  ITT NE
81B8C:  STRNE           R0, [R5,#4]
81B8E:  BLXNE           j__ZdlPv; operator delete(void *)
81B92:  MOV             R0, R5; void *
81B94:  BLX             j__ZdlPv; operator delete(void *)
81B98:  MOV             R0, R4
81B9A:  POP             {R4,R5,R7,PC}
