; =========================================================
; Game Engine Function: _Z21nv_set_attrib_by_namejPKcijhiPv
; Address            : 0x279D44 - 0x279D7C
; =========================================================

279D44:  PUSH            {R4-R7,LR}
279D46:  ADD             R7, SP, #0xC
279D48:  PUSH.W          {R11}
279D4C:  SUB             SP, SP, #8
279D4E:  MOV             R4, R3
279D50:  MOV             R5, R2
279D52:  BLX             glGetAttribLocation
279D56:  MOV             R6, R0
279D58:  LDRD.W          R3, R0, [R7,#arg_0]
279D5C:  LDR             R1, [R7,#arg_8]
279D5E:  MOV             R2, R4
279D60:  STRD.W          R0, R1, [SP,#0x18+var_18]
279D64:  MOV             R0, R6
279D66:  MOV             R1, R5
279D68:  BLX             glVertexAttribPointer
279D6C:  MOV             R0, R6
279D6E:  ADD             SP, SP, #8
279D70:  POP.W           {R11}
279D74:  POP.W           {R4-R7,LR}
279D78:  B.W             j_glEnableVertexAttribArray
