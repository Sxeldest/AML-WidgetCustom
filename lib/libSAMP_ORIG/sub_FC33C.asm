; =========================================================
; Game Engine Function: sub_FC33C
; Address            : 0xFC33C - 0xFC360
; =========================================================

FC33C:  PUSH            {R4,R6,R7,LR}
FC33E:  ADD             R7, SP, #8
FC340:  LDR             R4, [R1,#4]
FC342:  CMP             R4, R2
FC344:  BCC             loc_FC358
FC346:  SUBS            R4, R4, R2
FC348:  CMP             R4, R3
FC34A:  IT CC
FC34C:  MOVCC           R3, R4
FC34E:  LDR             R1, [R1]
FC350:  ADD             R1, R2
FC352:  STRD.W          R1, R3, [R0]
FC356:  POP             {R4,R6,R7,PC}
FC358:  LDR             R0, =(aStringViewSubs - 0xFC35E); "string_view::substr" ...
FC35A:  ADD             R0, PC; "string_view::substr"
FC35C:  BL              sub_F8454
