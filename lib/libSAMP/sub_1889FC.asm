; =========================================================
; Game Engine Function: sub_1889FC
; Address            : 0x1889FC - 0x188A3A
; =========================================================

1889FC:  ADD.W           R12, R0, #4
188A00:  MOVS            R1, #0
188A02:  LDM.W           R12, {R2,R3,R12}
188A06:  CMP             R3, R2
188A08:  SUB.W           R3, R3, R2
188A0C:  IT CC
188A0E:  RSBCC.W         R1, R12, #0
188A12:  CMP             R3, R1
188A14:  ITT EQ
188A16:  MOVEQ           R0, #0x40 ; '@'; unsigned int
188A18:  BEQ.W           _Znaj_0; operator new[](uint)
188A1C:  ADDS            R2, #1
188A1E:  LDR             R1, [R0]
188A20:  SUBS.W          R3, R2, R12
188A24:  IT NE
188A26:  MOVNE           R3, R2
188A28:  STR             R3, [R0,#4]
188A2A:  CMP             R3, #0
188A2C:  IT EQ
188A2E:  MOVEQ           R3, R12
188A30:  ADD.W           R0, R1, R3,LSL#2
188A34:  LDR.W           R0, [R0,#-4]
188A38:  BX              LR
