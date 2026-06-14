; =========================================================
; Game Engine Function: sub_166E8C
; Address            : 0x166E8C - 0x166EAC
; =========================================================

166E8C:  MOV             R3, R2
166E8E:  LDR.W           R2, [R0,#0x1C4]
166E92:  LDR.W           R0, [R0,#0x1CC]
166E96:  CMP             R3, #0
166E98:  ADD.W           R0, R0, R2,LSL#2
166E9C:  LDR.W           R2, [R0,#-4]
166EA0:  IT NE
166EA2:  SUBNE           R3, R3, R1
166EA4:  MOV             R0, R1
166EA6:  MOV             R1, R3
166EA8:  B.W             sub_16560C
