; =========================================================
; Game Engine Function: sub_1EEF50
; Address            : 0x1EEF50 - 0x1EEF94
; =========================================================

1EEF50:  PUSH            {R4-R7,LR}
1EEF52:  ADD             R7, SP, #0xC
1EEF54:  PUSH.W          {R8}
1EEF58:  MOV             R8, R0
1EEF5A:  LDRD.W          R6, R4, [R1,#4]
1EEF5E:  LDRD.W          R0, R1, [R1,#0x10]
1EEF62:  ADDS            R5, R0, R1
1EEF64:  MOVS            R1, #0x38 ; '8'
1EEF66:  MOV             R0, R5
1EEF68:  BLX             sub_220A6C
1EEF6C:  ADD.W           R1, R6, R0,LSL#2
1EEF70:  CMP             R4, R6
1EEF72:  BEQ             loc_1EEF88
1EEF74:  RSB.W           R0, R0, R0,LSL#3
1EEF78:  LDR             R2, [R1]
1EEF7A:  SUB.W           R0, R5, R0,LSL#3
1EEF7E:  ADD.W           R0, R0, R0,LSL#3
1EEF82:  ADD.W           R0, R2, R0,LSL#3
1EEF86:  B               loc_1EEF8A
1EEF88:  MOVS            R0, #0
1EEF8A:  STRD.W          R1, R0, [R8]
1EEF8E:  POP.W           {R8}
1EEF92:  POP             {R4-R7,PC}
