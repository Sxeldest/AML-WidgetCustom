; =========================================================
; Game Engine Function: _ZN17FxInfoEmWeather_c8GetValueEffffhPv
; Address            : 0x36A702 - 0x36A724
; =========================================================

36A702:  PUSH            {R4,R6,R7,LR}
36A704:  ADD             R7, SP, #8
36A706:  SUB             SP, SP, #0x40
36A708:  ADDS            R0, #8; this
36A70A:  MOV             R4, SP
36A70C:  MOV             R2, R1; float
36A70E:  MOV             R1, R4; float *
36A710:  BLX             j__ZN19FxInterpInfoFloat_c6GetValEPff; FxInterpInfoFloat_c::GetVal(float *,float)
36A714:  LDR             R0, [R7,#arg_8]
36A716:  VLD1.32         {D16-D17}, [R4,#0x48+var_48]
36A71A:  ADDS            R0, #0x58 ; 'X'
36A71C:  VST1.32         {D16-D17}, [R0]
36A720:  ADD             SP, SP, #0x40 ; '@'
36A722:  POP             {R4,R6,R7,PC}
