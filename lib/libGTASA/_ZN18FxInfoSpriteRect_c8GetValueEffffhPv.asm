; =========================================================
; Game Engine Function: _ZN18FxInfoSpriteRect_c8GetValueEffffhPv
; Address            : 0x36B54E - 0x36B58C
; =========================================================

36B54E:  PUSH            {R4,R6,R7,LR}
36B550:  ADD             R7, SP, #8
36B552:  SUB             SP, SP, #0x40
36B554:  VMOV            S2, R1
36B558:  VLDR            S0, [R7,#arg_0]
36B55C:  LDRB            R1, [R0,#6]
36B55E:  ADDS            R0, #8; this
36B560:  VDIV.F32        S0, S2, S0
36B564:  MOV             R4, SP
36B566:  CMP             R1, #0
36B568:  MOV             R1, R4; float *
36B56A:  VMOV            S2, R2
36B56E:  IT EQ
36B570:  VMOVEQ.F32      S2, S0
36B574:  VMOV            R2, S2; float
36B578:  BLX             j__ZN17FxInterpInfo255_c6GetValEPff; FxInterpInfo255_c::GetVal(float *,float)
36B57C:  LDR             R0, [R7,#arg_8]
36B57E:  VLD1.32         {D16-D17}, [R4,#0x48+var_48]
36B582:  ADDS            R0, #0x1C
36B584:  VST1.32         {D16-D17}, [R0]
36B588:  ADD             SP, SP, #0x40 ; '@'
36B58A:  POP             {R4,R6,R7,PC}
