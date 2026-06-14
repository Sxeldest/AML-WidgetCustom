; =========================================================
; Game Engine Function: _ZN18FxInfoEmRotation_c8GetValueEffffhPv
; Address            : 0x36A76A - 0x36A788
; =========================================================

36A76A:  PUSH            {R7,LR}
36A76C:  MOV             R7, SP
36A76E:  SUB             SP, SP, #0x40
36A770:  ADDS            R0, #8; this
36A772:  MOV             R2, R1; float
36A774:  MOV             R1, SP; float *
36A776:  BLX             j__ZN19FxInterpInfoFloat_c6GetValEPff; FxInterpInfoFloat_c::GetVal(float *,float)
36A77A:  LDR             R0, [R7,#0x10]
36A77C:  LDRD.W          R1, R2, [SP,#0x48+var_48]
36A780:  STRD.W          R1, R2, [R0,#0x50]
36A784:  ADD             SP, SP, #0x40 ; '@'
36A786:  POP             {R7,PC}
