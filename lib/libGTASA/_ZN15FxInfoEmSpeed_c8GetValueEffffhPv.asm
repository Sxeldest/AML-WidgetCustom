; =========================================================
; Game Engine Function: _ZN15FxInfoEmSpeed_c8GetValueEffffhPv
; Address            : 0x36A50E - 0x36A52C
; =========================================================

36A50E:  PUSH            {R7,LR}
36A510:  MOV             R7, SP
36A512:  SUB             SP, SP, #0x40
36A514:  ADDS            R0, #8; this
36A516:  MOV             R2, R1; float
36A518:  MOV             R1, SP; float *
36A51A:  BLX             j__ZN16FxInterpInfo32_c6GetValEPff; FxInterpInfo32_c::GetVal(float *,float)
36A51E:  LDR             R0, [R7,#0x10]
36A520:  LDRD.W          R1, R2, [SP,#0x48+var_48]
36A524:  STRD.W          R1, R2, [R0,#0x20]
36A528:  ADD             SP, SP, #0x40 ; '@'
36A52A:  POP             {R7,PC}
