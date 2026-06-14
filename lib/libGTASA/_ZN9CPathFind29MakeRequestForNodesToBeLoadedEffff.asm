; =========================================================
; Game Engine Function: _ZN9CPathFind29MakeRequestForNodesToBeLoadedEffff
; Address            : 0x319BE8 - 0x319C18
; =========================================================

319BE8:  MOVW            R12, #0x3CB0
319BEC:  VLDR            S0, [SP,#arg_0]
319BF0:  STR.W           R1, [R0,R12]
319BF4:  MOVW            R12, #0x3CAC
319BF8:  MOVS            R1, #1
319BFA:  STRB.W          R1, [R0,R12]
319BFE:  MOVW            R1, #0x3CB4
319C02:  STR             R2, [R0,R1]
319C04:  MOVW            R1, #0x3CB8
319C08:  STR             R3, [R0,R1]
319C0A:  MOVW            R1, #0x3CBC
319C0E:  ADD             R1, R0
319C10:  VSTR            S0, [R1]
319C14:  MOVS            R1, #1; bool
319C16:  B               _ZN9CPathFind15UpdateStreamingEb; CPathFind::UpdateStreaming(bool)
