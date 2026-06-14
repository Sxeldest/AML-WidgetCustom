; =========================================================
; Game Engine Function: sub_EE64C
; Address            : 0xEE64C - 0xEE674
; =========================================================

EE64C:  PUSH            {R4,R6,R7,LR}
EE64E:  ADD             R7, SP, #8
EE650:  LDRD.W          R2, R3, [R0]
EE654:  SUBS            R4, R3, R2
EE656:  ASRS            R3, R4, #2
EE658:  CMP.W           R1, R4,ASR#2
EE65C:  BLS             loc_EE668
EE65E:  SUBS            R1, R1, R3
EE660:  POP.W           {R4,R6,R7,LR}
EE664:  B.W             sub_F65A4
EE668:  CMP             R3, R1
EE66A:  ITT HI
EE66C:  ADDHI.W         R1, R2, R1,LSL#2
EE670:  STRHI           R1, [R0,#4]
EE672:  POP             {R4,R6,R7,PC}
