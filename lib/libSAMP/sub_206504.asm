; =========================================================
; Game Engine Function: sub_206504
; Address            : 0x206504 - 0x20652C
; =========================================================

206504:  PUSH            {R4,R6,R7,LR}
206506:  ADD             R7, SP, #8
206508:  LDRD.W          R2, R3, [R0]
20650C:  SUBS            R4, R3, R2
20650E:  ASRS            R3, R4, #2
206510:  CMP.W           R1, R4,ASR#2
206514:  BLS             loc_206520
206516:  SUBS            R1, R1, R3
206518:  POP.W           {R4,R6,R7,LR}
20651C:  B.W             sub_20E494
206520:  CMP             R3, R1
206522:  ITT HI
206524:  ADDHI.W         R1, R2, R1,LSL#2
206528:  STRHI           R1, [R0,#4]
20652A:  POP             {R4,R6,R7,PC}
