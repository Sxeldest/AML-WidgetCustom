; =========================================================
; Game Engine Function: _ZN20ES2ResourceContainer11GetResourceEj
; Address            : 0x1CFDA0 - 0x1CFE2E
; =========================================================

1CFDA0:  PUSH            {R4,R5,R7,LR}
1CFDA2:  ADD             R7, SP, #8
1CFDA4:  LDR.W           LR, [R0,#8]
1CFDA8:  CMP.W           LR, #0
1CFDAC:  BEQ             loc_1CFDDE
1CFDAE:  LDR             R2, [R0,#0xC]
1CFDB0:  MOVS            R3, #0
1CFDB2:  LDR.W           R4, [R2,R3,LSL#3]
1CFDB6:  CMP             R4, R1
1CFDB8:  BEQ             loc_1CFDE4
1CFDBA:  ADDS            R3, #1
1CFDBC:  CMP             R3, LR
1CFDBE:  BCC             loc_1CFDB2
1CFDC0:  ADD.W           R2, R1, R1,LSL#1
1CFDC4:  LDR.W           R12, [R0,#0xC]
1CFDC8:  LSRS            R3, R2, #1
1CFDCA:  MOVS            R2, #0
1CFDCC:  LDR.W           R4, [R12,R2,LSL#3]
1CFDD0:  CMP             R4, R1
1CFDD2:  BLS             loc_1CFDD8
1CFDD4:  CMP             R4, R3
1CFDD6:  BLS             loc_1CFE0A
1CFDD8:  ADDS            R2, #1
1CFDDA:  CMP             R2, LR
1CFDDC:  BCC             loc_1CFDCC
1CFDDE:  MOVS            R1, #0
1CFDE0:  MOV             R0, R1
1CFDE2:  POP             {R4,R5,R7,PC}
1CFDE4:  LDR             R4, [R0,#0x14]
1CFDE6:  ADD.W           R5, R2, R3,LSL#3
1CFDEA:  SUBS            R1, R4, R1
1CFDEC:  LDR.W           R12, [R5,#4]
1CFDF0:  STR             R1, [R0,#0x14]
1CFDF2:  ADD.W           R1, R2, LR,LSL#3
1CFDF6:  LDRD.W          R4, R1, [R1,#-8]
1CFDFA:  STR.W           R4, [R2,R3,LSL#3]
1CFDFE:  STR             R1, [R5,#4]
1CFE00:  LDR             R1, [R0,#8]
1CFE02:  SUBS            R1, #1
1CFE04:  STR             R1, [R0,#8]
1CFE06:  MOV             R0, R12
1CFE08:  POP             {R4,R5,R7,PC}
1CFE0A:  LDR             R3, [R0,#0x14]
1CFE0C:  ADD.W           R5, R12, R2,LSL#3
1CFE10:  SUBS            R3, R3, R4
1CFE12:  LDR             R1, [R5,#4]
1CFE14:  STR             R3, [R0,#0x14]
1CFE16:  ADD.W           R3, R12, LR,LSL#3
1CFE1A:  LDRD.W          R4, R3, [R3,#-8]
1CFE1E:  STR.W           R4, [R12,R2,LSL#3]
1CFE22:  STR             R3, [R5,#4]
1CFE24:  LDR             R2, [R0,#8]
1CFE26:  SUBS            R2, #1
1CFE28:  STR             R2, [R0,#8]
1CFE2A:  MOV             R0, R1
1CFE2C:  POP             {R4,R5,R7,PC}
