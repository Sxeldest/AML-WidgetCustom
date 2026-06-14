; =========================================================
; Game Engine Function: DedicatedCreate
; Address            : 0x1E0160 - 0x1E01C8
; =========================================================

1E0160:  PUSH            {R4,R10,R11,LR}
1E0164:  ADD             R11, SP, #8
1E0168:  MOV             R0, #0x34 ; '4'; size
1E016C:  BL              malloc
1E0170:  MOV             R4, R0
1E0174:  CMP             R4, #0
1E0178:  BEQ             loc_1E01BC
1E017C:  LDR             R0, =(sub_1E01DC - 0x1E0190)
1E0180:  LDR             R2, =(sub_1E01E4 - 0x1E0198)
1E0184:  LDR             R1, =(sub_1E0308 - 0x1E019C)
1E0188:  ADD             R0, PC, R0; sub_1E01DC
1E018C:  LDR             R3, =(j_free_0 - 0x1E01A0)
1E0190:  ADD             R2, PC, R2; sub_1E01E4
1E0194:  ADD             R1, PC, R1; sub_1E0308
1E0198:  ADD             R3, PC, R3; j_free_0
1E019C:  STR             R3, [R4]
1E01A0:  STMIB           R4, {R0,R2}
1E01A4:  ADD             R0, R4, #0x10; int
1E01A8:  STR             R1, [R4,#0xC]
1E01AC:  MOV             R1, #0x24 ; '$'; n
1E01B0:  BL              sub_22178C
1E01B4:  MOV             R0, R4
1E01B8:  POP             {R4,R10,R11,PC}
1E01BC:  MOV             R4, #0
1E01C0:  MOV             R0, R4
1E01C4:  POP             {R4,R10,R11,PC}
