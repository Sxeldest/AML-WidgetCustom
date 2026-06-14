; =========================================================
; Game Engine Function: _ZN7CCamera13SetFadeColourEhhh
; Address            : 0x3E14BC - 0x3E150A
; =========================================================

3E14BC:  PUSH            {R4-R7,LR}
3E14BE:  ADD             R7, SP, #0xC
3E14C0:  PUSH.W          {R8}
3E14C4:  LDR.W           R12, =(_ZN5CDraw9FadeGreenE_ptr - 0x3E14DA)
3E14C8:  EOR.W           R5, R2, #2
3E14CC:  LDR.W           LR, =(_ZN5CDraw7FadeRedE_ptr - 0x3E14DC)
3E14D0:  EOR.W           R6, R1, #2
3E14D4:  LDR             R4, =(_ZN5CDraw8FadeBlueE_ptr - 0x3E14E0)
3E14D6:  ADD             R12, PC; _ZN5CDraw9FadeGreenE_ptr
3E14D8:  ADD             LR, PC; _ZN5CDraw7FadeRedE_ptr
3E14DA:  ORRS            R5, R6
3E14DC:  ADD             R4, PC; _ZN5CDraw8FadeBlueE_ptr
3E14DE:  EOR.W           R6, R3, #2
3E14E2:  ORRS            R5, R6
3E14E4:  LDR.W           R6, [R12]; CDraw::FadeGreen ...
3E14E8:  LDR.W           R8, [R4]; CDraw::FadeBlue ...
3E14EC:  MOV.W           R5, #0
3E14F0:  LDR.W           R4, [LR]; CDraw::FadeRed ...
3E14F4:  IT EQ
3E14F6:  MOVEQ           R5, #1
3E14F8:  STRB.W          R5, [R0,#0x53]
3E14FC:  STRB            R2, [R6]; CDraw::FadeGreen
3E14FE:  STRB            R1, [R4]; CDraw::FadeRed
3E1500:  STRB.W          R3, [R8]; CDraw::FadeBlue
3E1504:  POP.W           {R8}
3E1508:  POP             {R4-R7,PC}
