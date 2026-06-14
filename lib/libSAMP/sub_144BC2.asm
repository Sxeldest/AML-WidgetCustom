; =========================================================
; Game Engine Function: sub_144BC2
; Address            : 0x144BC2 - 0x144BF2
; =========================================================

144BC2:  SUB             SP, SP, #4
144BC4:  MOVW            R1, #0xED0A
144BC8:  MOVS            R2, #0
144BCA:  MOVT            R1, #0x548D
144BCE:  LDR.W           R3, [R0,R2,LSL#2]
144BD2:  EORS            R3, R1
144BD4:  STR.W           R3, [R0,R2,LSL#2]
144BD8:  ADDS            R2, #1
144BDA:  CMP             R2, #0xA
144BDC:  BNE             loc_144BCE
144BDE:  LDR             R2, [R0,#0x28]
144BE0:  EORS            R1, R2
144BE2:  STR             R1, [SP,#4+var_4]
144BE4:  LDRB.W          R2, [SP,#4+var_4+2]
144BE8:  STRH            R1, [R0,#0x28]
144BEA:  STRB.W          R2, [R0,#0x2A]
144BEE:  ADD             SP, SP, #4
144BF0:  BX              LR
