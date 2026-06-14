; =========================================================
; Game Engine Function: ec_tell_frac
; Address            : 0xBCA54 - 0xBCA92
; =========================================================

BCA54:  PUSH            {R7,LR}
BCA56:  MOV             R7, SP
BCA58:  LDR.W           R12, [R0,#0x14]
BCA5C:  ADR             R1, dword_BCA94
BCA5E:  LDR             R0, [R0,#0x1C]
BCA60:  MOV.W           LR, #1
BCA64:  CLZ.W           R2, R0
BCA68:  RSB.W           R3, R2, #0x10
BCA6C:  LSRS            R0, R3
BCA6E:  LSRS            R3, R0, #0xC
BCA70:  ADD.W           R1, R1, R3,LSL#2
BCA74:  LDR.W           R1, [R1,#-0x20]
BCA78:  CMP             R0, R1
BCA7A:  MOV.W           R1, R12,LSL#3
BCA7E:  IT HI
BCA80:  ADDHI.W         R3, LR, R0,LSR#12
BCA84:  RSB.W           R0, R2, #0x20 ; ' '
BCA88:  SUB.W           R0, R1, R0,LSL#3
BCA8C:  ADDS            R0, #8
BCA8E:  SUBS            R0, R0, R3
BCA90:  POP             {R7,PC}
