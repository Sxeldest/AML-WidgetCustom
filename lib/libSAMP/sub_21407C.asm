; =========================================================
; Game Engine Function: sub_21407C
; Address            : 0x21407C - 0x2140A2
; =========================================================

21407C:  PUSH            {R4,R6,R7,LR}
21407E:  ADD             R7, SP, #8
214080:  LDR             R4, [R1,#4]
214082:  CMP             R4, R2
214084:  BCC             loc_21409A
214086:  SUBS            R4, R4, R2
214088:  CMP             R4, R3
21408A:  IT CC
21408C:  MOVCC           R3, R4
21408E:  LDR             R1, [R1]
214090:  ADD.W           R1, R1, R2,LSL#2
214094:  STRD.W          R1, R3, [R0]
214098:  POP             {R4,R6,R7,PC}
21409A:  LDR             R0, =(aStringViewSubs - 0x2140A0); "string_view::substr" ...
21409C:  ADD             R0, PC; "string_view::substr"
21409E:  BL              sub_EE13C
