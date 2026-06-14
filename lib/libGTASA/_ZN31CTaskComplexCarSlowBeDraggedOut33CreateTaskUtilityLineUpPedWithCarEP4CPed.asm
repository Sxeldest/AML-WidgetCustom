; =========================================================
; Game Engine Function: _ZN31CTaskComplexCarSlowBeDraggedOut33CreateTaskUtilityLineUpPedWithCarEP4CPed
; Address            : 0x505222 - 0x50524C
; =========================================================

505222:  PUSH            {R4,R6,R7,LR}
505224:  ADD             R7, SP, #8
505226:  SUB             SP, SP, #0x10
505228:  MOV             R4, R0
50522A:  MOVS            R0, #0
50522C:  STRD.W          R0, R0, [SP,#0x18+var_14]
505230:  STR             R0, [SP,#0x18+var_C]
505232:  MOVS            R0, #0x1C; unsigned int
505234:  BLX             _Znwj; operator new(uint)
505238:  LDR             R1, [R4,#0x10]
50523A:  MOVS            R2, #0; int
50523C:  STR             R1, [SP,#0x18+var_18]; int
50523E:  ADD             R1, SP, #0x18+var_14; CVector *
505240:  MOVS            R3, #0; int
505242:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarC2ERK7CVectoriii; CTaskUtilityLineUpPedWithCar::CTaskUtilityLineUpPedWithCar(CVector const&,int,int,int)
505246:  STR             R0, [R4,#0x18]
505248:  ADD             SP, SP, #0x10
50524A:  POP             {R4,R6,R7,PC}
