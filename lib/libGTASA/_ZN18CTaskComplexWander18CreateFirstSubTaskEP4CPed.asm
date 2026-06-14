; =========================================================
; Game Engine Function: _ZN18CTaskComplexWander18CreateFirstSubTaskEP4CPed
; Address            : 0x520CB4 - 0x520D0E
; =========================================================

520CB4:  PUSH            {R4-R7,LR}
520CB6:  ADD             R7, SP, #0xC
520CB8:  PUSH.W          {R11}
520CBC:  SUB             SP, SP, #8
520CBE:  MOV             R4, R1
520CC0:  MOV             R5, R0
520CC2:  LDRB.W          R0, [R4,#0x485]
520CC6:  LSLS            R0, R0, #0x1F
520CC8:  BNE             loc_520CFA
520CCA:  MOV             R6, R5
520CCC:  MOV             R1, R4
520CCE:  LDR.W           R0, [R6],#0x18
520CD2:  LDR             R2, [R0,#0x3C]
520CD4:  MOV             R0, R5
520CD6:  BLX             R2
520CD8:  MOV             R0, R5
520CDA:  MOV             R3, R5
520CDC:  LDR.W           R1, [R0],#0x1C
520CE0:  LDRB.W          R2, [R3,#0x10]!
520CE4:  LDR.W           R12, [R1,#0x40]
520CE8:  MOV             R1, R4
520CEA:  STRD.W          R0, R3, [SP,#0x18+var_18]
520CEE:  MOV             R0, R5
520CF0:  MOV             R3, R6
520CF2:  BLX             R12
520CF4:  MOV.W           R2, #0x384
520CF8:  B               loc_520CFE
520CFA:  MOV.W           R2, #0x2C0; int
520CFE:  MOV             R0, R5; this
520D00:  MOV             R1, R4; CPed *
520D02:  ADD             SP, SP, #8
520D04:  POP.W           {R11}
520D08:  POP.W           {R4-R7,LR}
520D0C:  B               _ZN18CTaskComplexWander13CreateSubTaskEPK4CPedi; CTaskComplexWander::CreateSubTask(CPed const*,int)
