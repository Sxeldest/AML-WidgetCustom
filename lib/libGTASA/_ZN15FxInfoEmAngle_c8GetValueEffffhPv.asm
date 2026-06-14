; =========================================================
; Game Engine Function: _ZN15FxInfoEmAngle_c8GetValueEffffhPv
; Address            : 0x36A5D6 - 0x36A5F4
; =========================================================

36A5D6:  PUSH            {R7,LR}
36A5D8:  MOV             R7, SP
36A5DA:  SUB             SP, SP, #0x40
36A5DC:  ADDS            R0, #8; this
36A5DE:  MOV             R2, R1; float
36A5E0:  MOV             R1, SP; float *
36A5E2:  BLX             j__ZN19FxInterpInfoFloat_c6GetValEPff; FxInterpInfoFloat_c::GetVal(float *,float)
36A5E6:  LDR             R0, [R7,#0x10]
36A5E8:  LDRD.W          R1, R2, [SP,#0x48+var_48]
36A5EC:  STRD.W          R1, R2, [R0,#0x34]
36A5F0:  ADD             SP, SP, #0x40 ; '@'
36A5F2:  POP             {R7,PC}
