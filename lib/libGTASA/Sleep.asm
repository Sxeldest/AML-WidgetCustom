; =========================================================
; Game Engine Function: Sleep
; Address            : 0x261444 - 0x2614BE
; =========================================================

261444:  PUSH            {R4-R7,LR}
261446:  ADD             R7, SP, #0xC
261448:  PUSH.W          {R11}
26144C:  SUB             SP, SP, #0x10
26144E:  MOVW            R1, #:lower16:(aZn6cworld51fin+0x26); "ledCollisionBoxSectorListER8CPtrListRK4"...
261452:  MOVW            R3, #:lower16:(stru_44B78.st_size+3)
261456:  MOVT            R1, #:upper16:(aZn6cworld51fin+0x26); "ledCollisionBoxSectorListER8CPtrListRK4"...
26145A:  MOVT            R3, #:upper16:(stru_44B78.st_size+3)
26145E:  MULS            R1, R0
261460:  LSRS            R2, R1, #9
261462:  UMULL.W         R2, R3, R2, R3
261466:  MOV             R2, #0x10624DD3
26146E:  UMULL.W         R0, R2, R0, R2
261472:  LSRS            R0, R3, #7
261474:  MOV             R3, #0x3B9ACA00
26147C:  MLS.W           R0, R0, R3, R1
261480:  LSRS            R1, R2, #6
261482:  STRD.W          R1, R0, [SP,#0x20+var_18]
261486:  ADD             R0, SP, #0x20+var_18; requested_time
261488:  MOV             R1, SP; remaining
26148A:  BLX             nanosleep
26148E:  ADDS            R0, #1
261490:  BNE             loc_2614B6
261492:  BLX             __errno
261496:  ADD             R5, SP, #0x20+var_18
261498:  MOV             R4, R0
26149A:  MOV             R6, SP
26149C:  LDR             R0, [R4]
26149E:  CMP             R0, #4
2614A0:  BNE             loc_2614B6
2614A2:  LDRD.W          R0, R1, [SP,#0x20+var_20]
2614A6:  STRD.W          R0, R1, [SP,#0x20+var_18]
2614AA:  MOV             R0, R5; requested_time
2614AC:  MOV             R1, R6; remaining
2614AE:  BLX             nanosleep
2614B2:  ADDS            R0, #1
2614B4:  BEQ             loc_26149C
2614B6:  ADD             SP, SP, #0x10
2614B8:  POP.W           {R11}
2614BC:  POP             {R4-R7,PC}
