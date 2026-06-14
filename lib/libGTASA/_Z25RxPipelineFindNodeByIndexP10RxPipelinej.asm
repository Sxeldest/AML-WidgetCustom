; =========================================================
; Game Engine Function: _Z25RxPipelineFindNodeByIndexP10RxPipelinej
; Address            : 0x1DFA30 - 0x1DFA4A
; =========================================================

1DFA30:  CMP             R0, #0
1DFA32:  ITT NE
1DFA34:  LDRNE           R2, [R0,#4]
1DFA36:  CMPNE           R2, R1
1DFA38:  BHI             loc_1DFA3E
1DFA3A:  MOVS            R0, #0
1DFA3C:  BX              LR
1DFA3E:  LDR             R0, [R0,#8]
1DFA40:  ADD.W           R1, R1, R1,LSL#2
1DFA44:  ADD.W           R0, R0, R1,LSL#3
1DFA48:  BX              LR
