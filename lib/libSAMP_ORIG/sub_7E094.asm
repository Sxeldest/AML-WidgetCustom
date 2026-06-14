; =========================================================
; Game Engine Function: sub_7E094
; Address            : 0x7E094 - 0x7E190
; =========================================================

7E094:  PUSH            {R4-R7,LR}
7E096:  ADD             R7, SP, #0xC
7E098:  PUSH.W          {R8}
7E09C:  MOV             R8, R0
7E09E:  LDR             R0, =(off_114CE0 - 0x7E0A8)
7E0A0:  LDR.W           R1, [R8,#0x50]
7E0A4:  ADD             R0, PC; off_114CE0
7E0A6:  LDR             R0, [R0]; `vtable for'Stream ...
7E0A8:  ADDS            R0, #8
7E0AA:  STR.W           R0, [R8]
7E0AE:  ADD.W           R0, R8, #0x4C ; 'L'
7E0B2:  BL              sub_7E1A4
7E0B6:  LDR.W           R1, [R8,#0x44]
7E0BA:  ADD.W           R0, R8, #0x40 ; '@'
7E0BE:  BL              sub_7E1DA
7E0C2:  LDR.W           R5, [R8,#0x34]
7E0C6:  CBZ             R5, loc_7E100
7E0C8:  LDR.W           R6, [R8,#0x38]
7E0CC:  MOV             R0, R5
7E0CE:  CMP             R6, R5
7E0D0:  BNE             loc_7E0E2
7E0D2:  B               loc_7E0F8
7E0D4:  MOVS            R1, #4
7E0D6:  LDR             R2, [R0]
7E0D8:  LDR.W           R1, [R2,R1,LSL#2]
7E0DC:  BLX             R1
7E0DE:  CMP             R6, R5
7E0E0:  BEQ             loc_7E0F4
7E0E2:  LDR.W           R0, [R6,#-8]
7E0E6:  SUBS            R6, #0x18
7E0E8:  CMP             R6, R0
7E0EA:  BEQ             loc_7E0D4
7E0EC:  CMP             R0, #0
7E0EE:  BEQ             loc_7E0DE
7E0F0:  MOVS            R1, #5
7E0F2:  B               loc_7E0D6
7E0F4:  LDR.W           R0, [R8,#0x34]; void *
7E0F8:  STR.W           R5, [R8,#0x38]
7E0FC:  BLX             j__ZdlPv; operator delete(void *)
7E100:  LDR.W           R5, [R8,#0x28]
7E104:  CBZ             R5, loc_7E13E
7E106:  LDR.W           R6, [R8,#0x2C]
7E10A:  MOV             R0, R5
7E10C:  CMP             R6, R5
7E10E:  BNE             loc_7E120
7E110:  B               loc_7E136
7E112:  MOVS            R1, #4
7E114:  LDR             R2, [R0]
7E116:  LDR.W           R1, [R2,R1,LSL#2]
7E11A:  BLX             R1
7E11C:  CMP             R6, R5
7E11E:  BEQ             loc_7E132
7E120:  LDR.W           R0, [R6,#-8]
7E124:  SUBS            R6, #0x18
7E126:  CMP             R6, R0
7E128:  BEQ             loc_7E112
7E12A:  CMP             R0, #0
7E12C:  BEQ             loc_7E11C
7E12E:  MOVS            R1, #5
7E130:  B               loc_7E114
7E132:  LDR.W           R0, [R8,#0x28]; void *
7E136:  STR.W           R5, [R8,#0x2C]
7E13A:  BLX             j__ZdlPv; operator delete(void *)
7E13E:  LDR.W           R5, [R8,#0x1C]
7E142:  CBZ             R5, loc_7E178
7E144:  LDR.W           R6, [R8,#0x20]
7E148:  CMP             R6, R5
7E14A:  BEQ             loc_7E16E
7E14C:  MOVS            R4, #0
7E14E:  B               loc_7E154
7E150:  CMP             R6, R5
7E152:  BEQ             loc_7E168
7E154:  LDR.W           R0, [R6,#-4]!
7E158:  CMP             R0, #0
7E15A:  STR             R4, [R6]
7E15C:  BEQ             loc_7E150
7E15E:  BL              sub_7DACC
7E162:  BLX             j__ZdlPv; operator delete(void *)
7E166:  B               loc_7E150
7E168:  LDR.W           R0, [R8,#0x1C]
7E16C:  B               loc_7E170
7E16E:  MOV             R0, R5; void *
7E170:  STR.W           R5, [R8,#0x20]
7E174:  BLX             j__ZdlPv; operator delete(void *)
7E178:  LDRB.W          R0, [R8,#0x10]
7E17C:  LSLS            R0, R0, #0x1F
7E17E:  ITT NE
7E180:  LDRNE.W         R0, [R8,#0x18]; void *
7E184:  BLXNE           j__ZdlPv; operator delete(void *)
7E188:  MOV             R0, R8
7E18A:  POP.W           {R8}
7E18E:  POP             {R4-R7,PC}
