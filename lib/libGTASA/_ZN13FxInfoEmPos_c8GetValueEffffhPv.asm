; =========================================================
; Game Engine Function: _ZN13FxInfoEmPos_c8GetValueEffffhPv
; Address            : 0x36A69E - 0x36A6BC
; =========================================================

36A69E:  PUSH            {R7,LR}
36A6A0:  MOV             R7, SP
36A6A2:  SUB             SP, SP, #0x40
36A6A4:  ADDS            R0, #8; this
36A6A6:  MOV             R2, R1; float
36A6A8:  MOV             R1, SP; float *
36A6AA:  BLX             j__ZN19FxInterpInfoFloat_c6GetValEPff; FxInterpInfoFloat_c::GetVal(float *,float)
36A6AE:  LDR             R0, [R7,#0x10]
36A6B0:  LDMFD.W         SP, {R1-R3}
36A6B4:  ADDS            R0, #0x44 ; 'D'
36A6B6:  STM             R0!, {R1-R3}
36A6B8:  ADD             SP, SP, #0x40 ; '@'
36A6BA:  POP             {R7,PC}
