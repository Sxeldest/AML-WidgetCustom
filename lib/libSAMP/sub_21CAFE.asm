; =========================================================
; Game Engine Function: sub_21CAFE
; Address            : 0x21CAFE - 0x21CB24
; =========================================================

21CAFE:  LDR             R2, [R1,#0x10]
21CB00:  ADDS            R2, #1
21CB02:  BEQ             loc_21CB0A
21CB04:  LDR             R3, [R0,#0xC]
21CB06:  LDR             R2, [R1,#0xC]
21CB08:  B               loc_21CB12
21CB0A:  LDR             R3, [R0,#0xC]
21CB0C:  MOVS            R2, #0
21CB0E:  STR             R2, [R1,#0xC]
21CB10:  STR             R3, [R1,#0x10]
21CB12:  CMP             R2, R3
21CB14:  IT CS
21CB16:  BXCS            LR
21CB18:  LDR             R0, [R0,#8]
21CB1A:  LDR.W           R0, [R0,R2,LSL#2]
21CB1E:  LDR             R2, [R0]
21CB20:  LDR             R2, [R2,#0x14]
21CB22:  BX              R2
