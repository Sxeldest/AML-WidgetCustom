; =========================================================
; Game Engine Function: _Z22nv_set_attrib_by_indexiijhiPv
; Address            : 0x279D7C - 0x279D9E
; =========================================================

279D7C:  PUSH            {R4,R6,R7,LR}
279D7E:  ADD             R7, SP, #8
279D80:  SUB             SP, SP, #8
279D82:  MOV             R4, R0
279D84:  LDRD.W          R0, R12, [R7,#arg_0]
279D88:  STRD.W          R0, R12, [SP,#0x10+var_10]
279D8C:  MOV             R0, R4
279D8E:  BLX             glVertexAttribPointer
279D92:  MOV             R0, R4
279D94:  ADD             SP, SP, #8
279D96:  POP.W           {R4,R6,R7,LR}
279D9A:  B.W             j_glEnableVertexAttribArray
