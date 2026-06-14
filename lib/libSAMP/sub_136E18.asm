; =========================================================
; Game Engine Function: sub_136E18
; Address            : 0x136E18 - 0x136E42
; =========================================================

136E18:  SUB             SP, SP, #4
136E1A:  PUSH            {R4,R6,R7,LR}
136E1C:  ADD             R7, SP, #8
136E1E:  SUB             SP, SP, #0xC
136E20:  LDR             R4, =(a02x - 0x136E2E); "%02X" ...
136E22:  ADD.W           R1, R7, #8
136E26:  STR             R3, [R7,#var_s8]
136E28:  MOVS            R2, #0x14
136E2A:  ADD             R4, PC; "%02X"
136E2C:  STR             R1, [SP,#0x14+var_C]
136E2E:  STR             R1, [SP,#0x14+var_14]
136E30:  MOVS            R1, #0
136E32:  MOV             R3, R4
136E34:  BLX             __vsprintf_chk
136E38:  ADD             SP, SP, #0xC
136E3A:  POP.W           {R4,R6,R7,LR}
136E3E:  ADD             SP, SP, #4
136E40:  BX              LR
