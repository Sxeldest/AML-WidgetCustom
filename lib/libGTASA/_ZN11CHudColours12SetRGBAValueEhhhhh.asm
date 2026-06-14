; =========================================================
; Game Engine Function: _ZN11CHudColours12SetRGBAValueEhhhhh
; Address            : 0x43AAB0 - 0x43AACC
; =========================================================

43AAB0:  PUSH            {R7,LR}
43AAB2:  MOV             R7, SP
43AAB4:  LDRD.W          LR, R12, [R7,#8+arg_0]
43AAB8:  STRB.W          R2, [R0,R1,LSL#2]
43AABC:  ADD.W           R0, R0, R1,LSL#2
43AAC0:  STRB            R3, [R0,#1]
43AAC2:  STRB.W          LR, [R0,#2]
43AAC6:  STRB.W          R12, [R0,#3]
43AACA:  POP             {R7,PC}
