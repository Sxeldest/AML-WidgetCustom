; =========================================================
; Game Engine Function: sub_147050
; Address            : 0x147050 - 0x1470F8
; =========================================================

147050:  PUSH            {R4,R5,R7,LR}
147052:  ADD             R7, SP, #8
147054:  SUB             SP, SP, #0x128
147056:  LDRD.W          R1, R0, [R0]; src
14705A:  MOVS            R3, #0
14705C:  ASRS            R2, R0, #0x1F
14705E:  ADD.W           R0, R0, R2,LSR#29
147062:  MOVS            R2, #1
147064:  ADD.W           R2, R2, R0,ASR#3; size
147068:  ADD             R0, SP, #0x130+var_12C; int
14706A:  BL              sub_17D4F2
14706E:  SUB.W           R1, R7, #-var_A; int
147072:  MOVS            R2, #0x10
147074:  MOVS            R3, #1
147076:  BL              sub_17D786
14707A:  ADD             R0, SP, #0x130+var_12C; int
14707C:  ADD             R1, SP, #0x130+var_10; int
14707E:  MOVS            R2, #0x20 ; ' '
147080:  MOVS            R3, #1
147082:  BL              sub_17D786
147086:  ADD             R0, SP, #0x130+var_12C; int
147088:  ADD             R1, SP, #0x130+var_14; int
14708A:  MOVS            R2, #0x20 ; ' '
14708C:  MOVS            R3, #1
14708E:  BL              sub_17D786
147092:  ADD             R0, SP, #0x130+var_12C; int
147094:  SUB.W           R1, R7, #-var_15; int
147098:  MOVS            R2, #8
14709A:  MOVS            R3, #1
14709C:  BL              sub_17D786
1470A0:  ADD             R0, SP, #0x130+var_12C; int
1470A2:  SUB.W           R1, R7, #-var_16; int
1470A6:  MOVS            R2, #8
1470A8:  MOVS            R3, #1
1470AA:  BL              sub_17D786
1470AE:  LDRH.W          R4, [R7,#var_A]
1470B2:  LSRS            R0, R4, #4
1470B4:  CMP             R0, #0x7C ; '|'
1470B6:  BHI             loc_1470EE
1470B8:  LDR             R0, =(off_23496C - 0x1470BE)
1470BA:  ADD             R0, PC; off_23496C
1470BC:  LDR             R0, [R0]; dword_23DEF4
1470BE:  LDR             R0, [R0]
1470C0:  LDR.W           R0, [R0,#0x3B0]
1470C4:  LDR             R5, [R0,#4]
1470C6:  MOV             R0, R5
1470C8:  MOV             R1, R4
1470CA:  BL              sub_F2396
1470CE:  CBZ             R0, loc_1470EE
1470D0:  LDR.W           R4, [R5,R4,LSL#2]
1470D4:  CBZ             R4, loc_1470EE
1470D6:  LDRD.W          R2, R1, [SP,#0x130+var_14]
1470DA:  LDRB.W          R3, [R7,#var_15]
1470DE:  MOV             R0, R4
1470E0:  BL              sub_109C28
1470E4:  LDRB.W          R1, [R7,#var_16]
1470E8:  MOV             R0, R4
1470EA:  BL              sub_109CC0
1470EE:  ADD             R0, SP, #0x130+var_12C
1470F0:  BL              sub_17D542
1470F4:  ADD             SP, SP, #0x128
1470F6:  POP             {R4,R5,R7,PC}
