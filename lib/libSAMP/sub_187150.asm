; =========================================================
; Game Engine Function: sub_187150
; Address            : 0x187150 - 0x187194
; =========================================================

187150:  LDR             R0, =(dword_2390B4 - 0x187156)
187152:  ADD             R0, PC; dword_2390B4
187154:  LDR             R1, [R0]
187156:  CMP             R1, #0
187158:  SUB.W           R2, R1, #1
18715C:  STR             R2, [R0]
18715E:  BLE             loc_187190
187160:  LDR             R0, =(dword_38274C - 0x187166)
187162:  ADD             R0, PC; dword_38274C
187164:  LDR             R1, [R0]
187166:  LDR.W           R2, [R1],#4
18716A:  STR             R1, [R0]
18716C:  MOV             R1, #0x9D2C5680
187174:  EOR.W           R0, R2, R2,LSR#11
187178:  AND.W           R1, R1, R0,LSL#7
18717C:  EORS            R0, R1
18717E:  MOVS            R1, #0xEFC60000
187184:  AND.W           R1, R1, R0,LSL#15
187188:  EORS            R0, R1
18718A:  EOR.W           R0, R0, R0,LSR#18
18718E:  BX              LR
187190:  B.W             sub_18702C
