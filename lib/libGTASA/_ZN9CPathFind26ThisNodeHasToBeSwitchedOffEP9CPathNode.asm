; =========================================================
; Game Engine Function: _ZN9CPathFind26ThisNodeHasToBeSwitchedOffEP9CPathNode
; Address            : 0x3186CE - 0x3186E8
; =========================================================

3186CE:  LDRB            R0, [R1,#0x1A]
3186D0:  MOV.W           R1, #0xFFFFFFFF
3186D4:  LSLS            R0, R0, #0x10
3186D6:  ADD.W           R0, R1, R0,LSR#20
3186DA:  BIC.W           R1, R0, #0xFF000000
3186DE:  MOVS            R0, #0
3186E0:  CMP             R1, #1
3186E2:  IT HI
3186E4:  MOVHI           R0, #1
3186E6:  BX              LR
