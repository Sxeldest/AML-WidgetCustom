; =========================================================
; Game Engine Function: sub_5E8226
; Address            : 0x5E8226 - 0x5E8248
; =========================================================

5E8226:  LDR             R2, [R1]
5E8228:  CBZ             R2, loc_5E8230
5E822A:  MOV             R1, R2; stream
5E822C:  B.W             sub_191B10
5E8230:  LDRD.W          R12, R2, [R1,#8]
5E8234:  ADDS            R3, R2, #3
5E8236:  CMP             R3, R12
5E8238:  IT CS
5E823A:  BXCS            LR
5E823C:  LDR             R3, [R1,#4]
5E823E:  STR             R0, [R3,R2]
5E8240:  LDR             R0, [R1,#0xC]
5E8242:  ADDS            R0, #4
5E8244:  STR             R0, [R1,#0xC]
5E8246:  BX              LR
