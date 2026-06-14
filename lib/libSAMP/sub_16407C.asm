; =========================================================
; Game Engine Function: sub_16407C
; Address            : 0x16407C - 0x1640A6
; =========================================================

16407C:  SUB             SP, SP, #4
16407E:  PUSH            {R4,R6,R7,LR}
164080:  ADD             R7, SP, #8
164082:  SUB             SP, SP, #0xC
164084:  LDR             R4, =(aProcDMaps - 0x164092); "/proc/%d/maps" ...
164086:  ADD.W           R1, R7, #8
16408A:  STR             R3, [R7,#var_s8]
16408C:  MOVS            R2, #0xFF
16408E:  ADD             R4, PC; "/proc/%d/maps"
164090:  STR             R1, [SP,#0x14+var_C]
164092:  STR             R1, [SP,#0x14+var_14]
164094:  MOVS            R1, #0
164096:  MOV             R3, R4
164098:  BLX             __vsprintf_chk
16409C:  ADD             SP, SP, #0xC
16409E:  POP.W           {R4,R6,R7,LR}
1640A2:  ADD             SP, SP, #4
1640A4:  BX              LR
