; =========================================================
; Game Engine Function: sub_EE610
; Address            : 0xEE610 - 0xEE668
; =========================================================

EE610:  PUSH            {R4-R7,LR}
EE612:  ADD             R7, SP, #0xC
EE614:  PUSH.W          {R8}
EE618:  SUB             SP, SP, #0x10
EE61A:  MOV             R6, R1
EE61C:  LDR             R1, =(aFTn3fmt2v86det - 0xEE626); "%F %TN3fmt2v86detail9formatbufINSt6__nd"... ...
EE61E:  ADD             R5, SP, #0x20+var_1C
EE620:  MOV             R8, R0
EE622:  ADD             R1, PC; "%F %TN3fmt2v86detail9formatbufINSt6__nd"...
EE624:  MOVS            R0, #0
EE626:  MOV             R4, R2
EE628:  ADDS            R2, R1, #5
EE62A:  STR             R0, [SP,#0x20+var_14]
EE62C:  MOVS            R3, #0
EE62E:  STRD.W          R0, R0, [SP,#0x20+var_1C]
EE632:  MOV             R0, R5
EE634:  BL              sub_EE6F0
EE638:  LDRD.W          R1, R0, [R6]
EE63C:  MOVS            R3, #1
EE63E:  ADDS            R2, R1, R0
EE640:  MOV             R0, R5
EE642:  BL              sub_EE6F0
EE646:  LDRD.W          R1, R2, [R6]
EE64A:  SUBS            R1, R1, R0
EE64C:  ADD             R1, R2
EE64E:  STRD.W          R0, R1, [R6]
EE652:  MOV             R0, R5
EE654:  LDRD.W          R2, R3, [R8]
EE658:  STR             R4, [SP,#0x20+var_20]
EE65A:  BL              sub_EE66C
EE65E:  STR             R0, [R4]
EE660:  ADD             SP, SP, #0x10
EE662:  POP.W           {R8}
EE666:  POP             {R4-R7,PC}
