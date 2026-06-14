; =========================================================
; Game Engine Function: _ZN14FxInfoEmLife_c8GetValueEffffhPv
; Address            : 0x36A63A - 0x36A658
; =========================================================

36A63A:  PUSH            {R7,LR}
36A63C:  MOV             R7, SP
36A63E:  SUB             SP, SP, #0x40
36A640:  ADDS            R0, #8; this
36A642:  MOV             R2, R1; float
36A644:  MOV             R1, SP; float *
36A646:  BLX             j__ZN18FxInterpInfoU255_c6GetValEPff; FxInterpInfoU255_c::GetVal(float *,float)
36A64A:  LDR             R0, [R7,#0x10]
36A64C:  LDRD.W          R1, R2, [SP,#0x48+var_48]
36A650:  STRD.W          R1, R2, [R0,#0x3C]
36A654:  ADD             SP, SP, #0x40 ; '@'
36A656:  POP             {R7,PC}
