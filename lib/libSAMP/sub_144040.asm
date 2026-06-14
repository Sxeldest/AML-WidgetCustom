; =========================================================
; Game Engine Function: sub_144040
; Address            : 0x144040 - 0x14409C
; =========================================================

144040:  PUSH            {R4,R6,R7,LR}
144042:  ADD             R7, SP, #8
144044:  SUB             SP, SP, #8
144046:  MOV             R4, R1
144048:  MOVS            R0, #0
14404A:  ADD             R1, SP, #0x10+var_C; int
14404C:  STR             R0, [SP,#0x10+var_C]
14404E:  MOV             R0, R4; int
144050:  MOVS            R2, #0x20 ; ' '
144052:  MOVS            R3, #1
144054:  BL              sub_17D786
144058:  LDR             R1, [R4]
14405A:  LDR             R0, [R4,#8]
14405C:  CMP             R0, R1
14405E:  BGE             loc_144088
144060:  LDR             R1, [R4,#0xC]
144062:  ASRS            R2, R0, #3
144064:  LDRB            R1, [R1,R2]
144066:  ADDS            R2, R0, #1
144068:  AND.W           R0, R0, #7
14406C:  STR             R2, [R4,#8]
14406E:  LSL.W           R0, R1, R0
144072:  LSLS            R0, R0, #0x18
144074:  BPL             loc_144088
144076:  LDR             R0, =(off_234A58 - 0x144080)
144078:  LDRH.W          R1, [SP,#0x10+var_C]
14407C:  ADD             R0, PC; off_234A58
14407E:  LDR             R0, [R0]; dword_2631B0
144080:  LDR             R0, [R0]
144082:  BL              sub_10BD64
144086:  B               loc_144098
144088:  LDR             R0, =(off_234A58 - 0x144092)
14408A:  LDRH.W          R1, [SP,#0x10+var_C]
14408E:  ADD             R0, PC; off_234A58
144090:  LDR             R0, [R0]; dword_2631B0
144092:  LDR             R0, [R0]
144094:  BL              sub_10BD3C
144098:  ADD             SP, SP, #8
14409A:  POP             {R4,R6,R7,PC}
