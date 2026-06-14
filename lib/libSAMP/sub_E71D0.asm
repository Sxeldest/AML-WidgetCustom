; =========================================================
; Game Engine Function: sub_E71D0
; Address            : 0xE71D0 - 0xE7238
; =========================================================

E71D0:  PUSH            {R4,R6,R7,LR}
E71D2:  ADD             R7, SP, #8
E71D4:  SUB             SP, SP, #8
E71D6:  MOV             R4, R0
E71D8:  LDR             R0, [R0,#0x14]
E71DA:  LDR             R1, [R4,#0x18]
E71DC:  LDRB            R2, [R4,#0x10]
E71DE:  ADDS            R0, #1
E71E0:  ADDS            R1, #1
E71E2:  STRD.W          R0, R1, [R4,#0x14]
E71E6:  CBZ             R2, loc_E71F0
E71E8:  MOVS            R1, #0
E71EA:  LDR             R0, [R4,#0xC]
E71EC:  STRB            R1, [R4,#0x10]
E71EE:  B               loc_E71F8
E71F0:  MOV             R0, R4
E71F2:  BL              sub_E7264
E71F6:  STR             R0, [R4,#0xC]
E71F8:  ADDS            R1, R0, #1
E71FA:  BEQ             loc_E7232
E71FC:  LDRD.W          R1, R2, [R4,#0x24]
E7200:  STRB.W          R0, [R7,#var_9]
E7204:  CMP             R1, R2
E7206:  BCS             loc_E7210
E7208:  STRB.W          R0, [R1],#1
E720C:  STR             R1, [R4,#0x24]
E720E:  B               loc_E721C
E7210:  ADD.W           R0, R4, #0x20 ; ' '
E7214:  SUB.W           R1, R7, #-var_9
E7218:  BL              sub_E72A2
E721C:  LDR             R0, [R4,#0xC]
E721E:  CMP             R0, #0xA
E7220:  BNE             loc_E722E
E7222:  LDR             R0, [R4,#0x1C]
E7224:  MOVS            R1, #0
E7226:  ADDS            R0, #1
E7228:  STRD.W          R1, R0, [R4,#0x18]
E722C:  MOVS            R0, #0xA
E722E:  ADD             SP, SP, #8
E7230:  POP             {R4,R6,R7,PC}
E7232:  MOV.W           R0, #0xFFFFFFFF
E7236:  B               loc_E722E
