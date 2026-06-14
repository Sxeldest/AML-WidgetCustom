; =========================================================
; Game Engine Function: _ZN24CTaskComplexUseEntryExit12UseEntryExitEP4CPed
; Address            : 0x52605C - 0x5260CC
; =========================================================

52605C:  PUSH            {R4,R5,R7,LR}
52605E:  ADD             R7, SP, #8
526060:  SUB             SP, SP, #8
526062:  MOV             R5, R0
526064:  MOV             R4, R1
526066:  LDR             R0, [R5,#0x10]
526068:  ADD.W           R3, R0, #0x20 ; ' '
52606C:  LDM             R3, {R1-R3}
52606E:  LDRB.W          R0, [R0,#0x32]
526072:  LDR.W           R12, [R4]
526076:  STRB.W          R0, [R4,#0x33]
52607A:  LDR             R0, [R5,#0xC]
52607C:  STR.W           R0, [R4,#0x794]
526080:  MOVS            R0, #0
526082:  LDR.W           R12, [R12,#0x3C]
526086:  STR             R0, [SP,#0x10+var_10]
526088:  MOV             R0, R4
52608A:  BLX             R12
52608C:  LDR             R0, [R5,#0x10]
52608E:  VLDR            S0, =3.1416
526092:  VLDR            S2, [R0,#0x2C]
526096:  ADD.W           R0, R4, #0x560
52609A:  VMUL.F32        S0, S2, S0
52609E:  VLDR            S2, =180.0
5260A2:  VDIV.F32        S0, S0, S2
5260A6:  VSTR            S0, [R0]
5260AA:  ADDW            R0, R4, #0x55C
5260AE:  VSTR            S0, [R0]
5260B2:  MOV             R0, R4; this
5260B4:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
5260B8:  LDR             R0, [R4,#0x1C]
5260BA:  ORR.W           R0, R0, #0x40000
5260BE:  STR             R0, [R4,#0x1C]
5260C0:  MOV             R0, R4; this
5260C2:  ADD             SP, SP, #8
5260C4:  POP.W           {R4,R5,R7,LR}
5260C8:  B.W             sub_19B3B8
