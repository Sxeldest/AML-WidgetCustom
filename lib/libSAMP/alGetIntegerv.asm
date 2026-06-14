; =========================================================
; Game Engine Function: alGetIntegerv
; Address            : 0x1E0FD4 - 0x1E10CC
; =========================================================

1E0FD4:  PUSH            {R4-R7,R11,LR}
1E0FD8:  ADD             R11, SP, #0x10
1E0FDC:  MOV             R4, R1
1E0FE0:  MOV             R6, R0
1E0FE4:  CMP             R4, #0
1E0FE8:  BEQ             loc_1E1040
1E0FEC:  SUB             R7, R6, #0xC000
1E0FF0:  CMP             R7, #4
1E0FF4:  BCS             loc_1E1038
1E0FF8:  BL              j_GetContextRef
1E0FFC:  MOV             R5, R0
1E1000:  CMP             R5, #0
1E1004:  BEQ             loc_1E1070
1E1008:  CMP             R7, #3; switch 4 cases
1E100C:  BHI             def_1E101C; jumptable 001E101C default case
1E1010:  ADR             R1, jpt_1E101C
1E1014:  MOV             R0, R7,LSL#2
1E1018:  LDR             R0, [R0,R1]
1E101C:  ADD             PC, R0, R1; switch jump
1E1020:  DCD loc_1E1030 - 0x1E1020; jump table for switch statement
1E1024:  DCD loc_1E108C - 0x1E1020; jumptable 001E101C case 1
1E1028:  DCD loc_1E1094 - 0x1E1020; jumptable 001E101C case 2
1E102C:  DCD loc_1E109C - 0x1E1020; jumptable 001E101C case 3
1E1030:  VLDR            S0, [R5,#0xD4]; jumptable 001E101C case 0
1E1034:  B               loc_1E10A0
1E1038:  CMP             R6, #0xD000
1E103C:  BEQ             loc_1E0FF8
1E1040:  BL              j_GetContextRef
1E1044:  MOV             R5, R0
1E1048:  CMP             R5, #0
1E104C:  POPEQ           {R4-R7,R11,PC}
1E1050:  CMP             R4, #0
1E1054:  MOV             R0, R5
1E1058:  MOVWEQ          R1, #0xA003
1E105C:  MOVWNE          R1, #0xA002
1E1060:  BL              j_alSetError
1E1064:  MOV             R0, R5
1E1068:  POP             {R4-R7,R11,LR}
1E106C:  B               j_ALCcontext_DecRef
1E1070:  MOV             R6, #0
1E1074:  STR             R6, [R4]
1E1078:  POP             {R4-R7,R11,PC}
1E107C:  CMP             R6, #0xD000; jumptable 001E101C default case
1E1080:  BNE             loc_1E10AC
1E1084:  LDR             R6, [R5,#0xCC]
1E1088:  B               loc_1E10BC
1E108C:  VLDR            S0, [R5,#0xD8]; jumptable 001E101C case 1
1E1090:  B               loc_1E10A0
1E1094:  LDR             R6, [R5,#0xE0]; jumptable 001E101C case 2
1E1098:  B               loc_1E10BC
1E109C:  VLDR            S0, [R5,#0xDC]; jumptable 001E101C case 3
1E10A0:  VCVT.S32.F32    S0, S0
1E10A4:  VMOV            R6, S0
1E10A8:  B               loc_1E10BC
1E10AC:  MOV             R0, R5
1E10B0:  MOVW            R1, #0xA002
1E10B4:  BL              j_alSetError
1E10B8:  MOV             R6, #0
1E10BC:  MOV             R0, R5
1E10C0:  BL              j_ALCcontext_DecRef
1E10C4:  STR             R6, [R4]
1E10C8:  POP             {R4-R7,R11,PC}
