; =========================================================
; Game Engine Function: sub_FC394
; Address            : 0xFC394 - 0xFC3BA
; =========================================================

FC394:  PUSH            {R4,R6,R7,LR}
FC396:  ADD             R7, SP, #8
FC398:  LDR             R4, [R1,#4]
FC39A:  CMP             R4, R2
FC39C:  BCC             loc_FC3B2
FC39E:  SUBS            R4, R4, R2
FC3A0:  CMP             R4, R3
FC3A2:  IT CC
FC3A4:  MOVCC           R3, R4
FC3A6:  LDR             R1, [R1]
FC3A8:  ADD.W           R1, R1, R2,LSL#2
FC3AC:  STRD.W          R1, R3, [R0]
FC3B0:  POP             {R4,R6,R7,PC}
FC3B2:  LDR             R0, =(aStringViewSubs - 0xFC3B8); "string_view::substr" ...
FC3B4:  ADD             R0, PC; "string_view::substr"
FC3B6:  BL              sub_F8454
