; =========================================================
; Game Engine Function: _ZN20CTaskComplexSequence7AddTaskEP5CTask
; Address            : 0x4EE8A8 - 0x4EE916
; =========================================================

4EE8A8:  MOV             R2, R0
4EE8AA:  LDR.W           R3, [R2,#0x10]!
4EE8AE:  CMP             R3, #0
4EE8B0:  ITTTT NE
4EE8B2:  MOVNE           R2, R0
4EE8B4:  LDRNE.W         R3, [R2,#0x14]!
4EE8B8:  CMPNE           R3, #0
4EE8BA:  MOVNE           R2, R0
4EE8BC:  ITT NE
4EE8BE:  LDRNE.W         R3, [R2,#0x18]!
4EE8C2:  CMPNE           R3, #0
4EE8C4:  BNE             loc_4EE8CC
4EE8C6:  MOVS            R0, #1
4EE8C8:  STR             R1, [R2]
4EE8CA:  BX              LR
4EE8CC:  MOV             R2, R0
4EE8CE:  LDR.W           R3, [R2,#0x1C]!
4EE8D2:  CMP             R3, #0
4EE8D4:  ITTT NE
4EE8D6:  MOVNE           R2, R0
4EE8D8:  LDRNE.W         R3, [R2,#0x20]!
4EE8DC:  CMPNE           R3, #0
4EE8DE:  BEQ             loc_4EE8C6
4EE8E0:  MOV             R2, R0
4EE8E2:  LDR.W           R3, [R2,#0x24]!
4EE8E6:  CMP             R3, #0
4EE8E8:  ITTT NE
4EE8EA:  MOVNE           R2, R0
4EE8EC:  LDRNE.W         R3, [R2,#0x28]!
4EE8F0:  CMPNE           R3, #0
4EE8F2:  BEQ             loc_4EE8C6
4EE8F4:  LDR.W           R2, [R0,#0x2C]!
4EE8F8:  CMP             R2, #0
4EE8FA:  MOV             R2, R0
4EE8FC:  BEQ             loc_4EE8C6
4EE8FE:  CMP             R1, #0
4EE900:  ITT EQ
4EE902:  MOVEQ           R0, #0
4EE904:  BXEQ            LR
4EE906:  PUSH            {R7,LR}
4EE908:  MOV             R7, SP
4EE90A:  LDR             R0, [R1]
4EE90C:  LDR             R2, [R0,#4]
4EE90E:  MOV             R0, R1
4EE910:  BLX             R2
4EE912:  MOVS            R0, #0
4EE914:  POP             {R7,PC}
