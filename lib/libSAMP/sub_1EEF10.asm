; =========================================================
; Game Engine Function: sub_1EEF10
; Address            : 0x1EEF10 - 0x1EEF50
; =========================================================

1EEF10:  PUSH            {R4-R7,LR}
1EEF12:  ADD             R7, SP, #0xC
1EEF14:  PUSH.W          {R8}
1EEF18:  LDR             R5, [R1,#0x10]
1EEF1A:  MOV             R8, R0
1EEF1C:  LDRD.W          R6, R4, [R1,#4]
1EEF20:  MOVS            R1, #0x38 ; '8'
1EEF22:  MOV             R0, R5
1EEF24:  BLX             sub_220A6C
1EEF28:  ADD.W           R1, R6, R0,LSL#2
1EEF2C:  CMP             R4, R6
1EEF2E:  BEQ             loc_1EEF44
1EEF30:  RSB.W           R0, R0, R0,LSL#3
1EEF34:  LDR             R2, [R1]
1EEF36:  SUB.W           R0, R5, R0,LSL#3
1EEF3A:  ADD.W           R0, R0, R0,LSL#3
1EEF3E:  ADD.W           R0, R2, R0,LSL#3
1EEF42:  B               loc_1EEF46
1EEF44:  MOVS            R0, #0
1EEF46:  STRD.W          R1, R0, [R8]
1EEF4A:  POP.W           {R8}
1EEF4E:  POP             {R4-R7,PC}
