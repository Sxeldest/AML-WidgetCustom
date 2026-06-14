; =========================================================
; Game Engine Function: sub_FF084
; Address            : 0xFF084 - 0xFF154
; =========================================================

FF084:  PUSH            {R4-R7,LR}
FF086:  ADD             R7, SP, #0xC
FF088:  PUSH.W          {R8,R9,R11}
FF08C:  CMP             R0, #0
FF08E:  BEQ             loc_FF14E
FF090:  MOV             R8, R2
FF092:  MOV             R5, R1
FF094:  MOV             R6, R0
FF096:  BL              sub_163768
FF09A:  LDRH            R1, [R6,#0x26]
FF09C:  LDR.W           R4, [R0,R1,LSL#2]
FF0A0:  CMP             R4, #0
FF0A2:  BEQ             loc_FF14E
FF0A4:  LDR             R0, [R4]
FF0A6:  LDR             R1, [R0,#0x14]
FF0A8:  MOV             R0, R4
FF0AA:  BLX             R1
FF0AC:  CMP             R0, #6
FF0AE:  BNE             loc_FF14E
FF0B0:  MOV             R0, R4
FF0B2:  BL              sub_163836
FF0B6:  CMP             R0, #9
FF0B8:  BEQ             loc_FF0D6
FF0BA:  MOV             R0, R4
FF0BC:  BL              sub_163836
FF0C0:  CMP             R0, #2
FF0C2:  BEQ             loc_FF0D6
FF0C4:  MOV             R0, R4
FF0C6:  BL              sub_163836
FF0CA:  CMP             R0, #1
FF0CC:  BEQ             loc_FF0D6
FF0CE:  MOV             R0, R4
FF0D0:  BL              sub_163836
FF0D4:  CBNZ            R0, loc_FF14E
FF0D6:  LDR             R0, =(off_23496C - 0xFF0DC)
FF0D8:  ADD             R0, PC; off_23496C
FF0DA:  LDR             R0, [R0]; dword_23DEF4
FF0DC:  LDR             R0, [R0]
FF0DE:  CBZ             R0, loc_FF126
FF0E0:  LDR.W           R1, [R0,#0x20C]
FF0E4:  LDRB.W          R1, [R1,#0x24]
FF0E8:  CBZ             R1, loc_FF126
FF0EA:  LDR.W           R0, [R0,#0x3B0]
FF0EE:  MOVW            R1, #0xEA60
FF0F2:  LDR             R4, [R0,#4]
FF0F4:  LDR             R0, [R4,R1]
FF0F6:  ADD             R1, R4
FF0F8:  LDR             R1, [R1,#4]
FF0FA:  CMP             R0, R1
FF0FC:  BEQ             loc_FF116
FF0FE:  MOV.W           R2, #0x1F40
FF102:  LDR             R3, [R0]
FF104:  ADD.W           R3, R4, R3,LSL#2
FF108:  LDR             R3, [R3,R2]
FF10A:  CMP             R3, R6
FF10C:  BEQ             loc_FF116
FF10E:  ADDS            R0, #4
FF110:  CMP             R0, R1
FF112:  BNE             loc_FF102
FF114:  B               loc_FF126
FF116:  CMP             R0, R1
FF118:  ITTT NE
FF11A:  LDRHNE.W        R9, [R0]
FF11E:  MOVWNE          R0, #0xFFFF
FF122:  CMPNE           R9, R0
FF124:  BNE             loc_FF13C
FF126:  LDR             R0, =(off_25B14C - 0xFF130)
FF128:  MOV             R1, R5
FF12A:  MOV             R2, R8
FF12C:  ADD             R0, PC; off_25B14C
FF12E:  LDR             R3, [R0]
FF130:  MOV             R0, R6
FF132:  POP.W           {R8,R9,R11}
FF136:  POP.W           {R4-R7,LR}
FF13A:  BX              R3
FF13C:  MOV             R0, R4
FF13E:  MOV             R1, R9
FF140:  BL              sub_F2396
FF144:  LDR.W           R0, [R4,R9,LSL#2]
FF148:  LDR             R0, [R0,#0x1C]
FF14A:  CMP             R0, #0
FF14C:  BNE             loc_FF126
FF14E:  POP.W           {R8,R9,R11}
FF152:  POP             {R4-R7,PC}
