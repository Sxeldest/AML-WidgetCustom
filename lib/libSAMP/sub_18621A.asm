; =========================================================
; Game Engine Function: sub_18621A
; Address            : 0x18621A - 0x186258
; =========================================================

18621A:  PUSH            {R4,R6,R7,LR}
18621C:  ADD             R7, SP, #8
18621E:  MOV.W           R12, #0
186222:  MOVS            R2, #0
186224:  LDR.W           LR, [R0,R2,LSL#2]
186228:  LDR.W           R3, [R1,R2,LSL#2]
18622C:  ADD.W           R4, LR, R12
186230:  ADD             R4, R3
186232:  STR.W           R4, [R0,R2,LSL#2]
186236:  BIC.W           R4, LR, #0x80000000
18623A:  ADD             R12, R4
18623C:  BIC.W           R4, R3, #0x80000000
186240:  LSRS            R3, R3, #0x1F
186242:  ADD             R4, R12
186244:  ADD.W           R3, R3, LR,LSR#31
186248:  ADDS            R2, #1
18624A:  ADD.W           R3, R3, R4,LSR#31
18624E:  CMP             R2, #4
186250:  MOV.W           R12, R3,LSR#1
186254:  BNE             loc_186224
186256:  POP             {R4,R6,R7,PC}
