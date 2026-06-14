; =========================================================
; Game Engine Function: _ZNK23CTaskSimpleRunNamedAnim5CloneEv
; Address            : 0x4D7E78 - 0x4D7EC0
; =========================================================

4D7E78:  PUSH            {R4,R6,R7,LR}
4D7E7A:  ADD             R7, SP, #8
4D7E7C:  SUB             SP, SP, #0x18; float
4D7E7E:  MOV             R4, R0
4D7E80:  MOVS            R0, #dword_64; this
4D7E82:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D7E86:  LDRB            R1, [R4,#0xC]
4D7E88:  LDR             R3, [R4,#0x5C]; int
4D7E8A:  VLDR            S0, [R4,#0x38]
4D7E8E:  LDR.W           R12, [R4,#0x40]
4D7E92:  UBFX.W          R2, R1, #2, #1
4D7E96:  STR             R2, [SP,#0x20+var_C]; bool
4D7E98:  UBFX.W          R2, R1, #5, #1
4D7E9C:  STR             R2, [SP,#0x20+var_10]; bool
4D7E9E:  UBFX.W          R2, R1, #4, #1
4D7EA2:  STR             R2, [SP,#0x20+var_14]; bool
4D7EA4:  UBFX.W          R1, R1, #1, #1
4D7EA8:  ADD.W           R2, R4, #0x25 ; '%'; char *
4D7EAC:  STRD.W          R12, R1, [SP,#0x20+var_1C]; int
4D7EB0:  ADD.W           R1, R4, #0xD; char *
4D7EB4:  VSTR            S0, [SP,#0x20+var_20]
4D7EB8:  BLX             j__ZN23CTaskSimpleRunNamedAnimC2EPKcS1_ifibbbb_0; CTaskSimpleRunNamedAnim::CTaskSimpleRunNamedAnim(char const*,char const*,int,float,int,bool,bool,bool,bool)
4D7EBC:  ADD             SP, SP, #0x18
4D7EBE:  POP             {R4,R6,R7,PC}
