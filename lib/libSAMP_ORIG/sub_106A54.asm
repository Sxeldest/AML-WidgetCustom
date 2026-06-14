; =========================================================
; Game Engine Function: sub_106A54
; Address            : 0x106A54 - 0x106A7A
; =========================================================

106A54:  PUSH            {R4,R6,R7,LR}
106A56:  ADD             R7, SP, #8
106A58:  MOV             R4, R1
106A5A:  CMP             R0, #1
106A5C:  BNE             loc_106A72
106A5E:  LDR.W           R0, [R4,#-0x24]
106A62:  BLX             j___cxa_decrement_exception_refcount
106A66:  SUB.W           R0, R4, #0x28 ; '('
106A6A:  POP.W           {R4,R6,R7,LR}
106A6E:  B.W             __cxa_free_dependent_exception_0
106A72:  LDR.W           R0, [R4,#-0x14]
106A76:  BL              sub_106E00
