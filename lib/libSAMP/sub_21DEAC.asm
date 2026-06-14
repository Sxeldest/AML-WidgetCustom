; =========================================================
; Game Engine Function: sub_21DEAC
; Address            : 0x21DEAC - 0x21DED2
; =========================================================

21DEAC:  PUSH            {R4,R6,R7,LR}
21DEAE:  ADD             R7, SP, #8
21DEB0:  MOV             R4, R1
21DEB2:  CMP             R0, #1
21DEB4:  BNE             loc_21DECA
21DEB6:  LDR.W           R0, [R4,#-0x24]
21DEBA:  BLX             j___cxa_decrement_exception_refcount
21DEBE:  SUB.W           R0, R4, #0x28 ; '('
21DEC2:  POP.W           {R4,R6,R7,LR}
21DEC6:  B.W             __cxa_free_dependent_exception_0
21DECA:  LDR.W           R0, [R4,#-0x14]
21DECE:  BL              sub_21E258
