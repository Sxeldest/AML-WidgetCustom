; =========================================================
; Game Engine Function: _ZN7CWidget16CreateHoldEffectEPKcb5CRGBAb
; Address            : 0x2B3FA0 - 0x2B3FEE
; =========================================================

2B3FA0:  PUSH            {R4-R7,LR}
2B3FA2:  ADD             R7, SP, #0xC
2B3FA4:  PUSH.W          {R8,R9,R11}
2B3FA8:  SUB             SP, SP, #8
2B3FAA:  MOV             R4, R0
2B3FAC:  LDR.W           R9, [R7,#arg_0]
2B3FB0:  LDR.W           R0, [R4,#0x88]; this
2B3FB4:  MOV             R5, R3
2B3FB6:  MOV             R8, R2
2B3FB8:  MOV             R6, R1
2B3FBA:  CBZ             R0, loc_2B3FCA
2B3FBC:  BLX             j__ZN11CHoldEffectD2Ev; CHoldEffect::~CHoldEffect()
2B3FC0:  BLX             _ZdlPv; operator delete(void *)
2B3FC4:  MOVS            R0, #0
2B3FC6:  STR.W           R0, [R4,#0x88]
2B3FCA:  MOV.W           R0, #0x568; unsigned int
2B3FCE:  BLX             _Znwj; operator new(uint)
2B3FD2:  LDR             R1, [R5]
2B3FD4:  ADD             R3, SP, #0x20+var_1C
2B3FD6:  MOV             R2, R8
2B3FD8:  STRD.W          R9, R1, [SP,#0x20+var_20]
2B3FDC:  MOV             R1, R6
2B3FDE:  BLX             j__ZN11CHoldEffectC2EPKcb5CRGBAb; CHoldEffect::CHoldEffect(char const*,bool,CRGBA,bool)
2B3FE2:  STR.W           R0, [R4,#0x88]
2B3FE6:  ADD             SP, SP, #8
2B3FE8:  POP.W           {R8,R9,R11}
2B3FEC:  POP             {R4-R7,PC}
