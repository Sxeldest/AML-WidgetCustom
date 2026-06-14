; =========================================================
; Game Engine Function: _Z26RQ_Command_rqTargetScissorRPc
; Address            : 0x1D104C - 0x1D10BE
; =========================================================

1D104C:  PUSH            {R4-R7,LR}
1D104E:  ADD             R7, SP, #0xC
1D1050:  PUSH.W          {R8}
1D1054:  LDR             R1, [R0]
1D1056:  ADDS            R3, R1, #4
1D1058:  MOV             R2, R1
1D105A:  LDR.W           R8, [R2],#0x10
1D105E:  STR             R3, [R0]
1D1060:  ADD.W           R3, R1, #8
1D1064:  LDR             R4, [R1,#4]
1D1066:  STR             R3, [R0]
1D1068:  ADD.W           R3, R1, #0xC
1D106C:  LDR             R5, [R1,#8]
1D106E:  STR             R3, [R0]
1D1070:  LDR             R6, [R1,#0xC]
1D1072:  STR             R2, [R0]
1D1074:  ADD.W           R0, R4, R8
1D1078:  ADD             R0, R5
1D107A:  CMN             R0, R6
1D107C:  BNE             loc_1D108E
1D107E:  MOVW            R0, #0xC11; cap
1D1082:  POP.W           {R8}
1D1086:  POP.W           {R4-R7,LR}
1D108A:  B.W             j_glDisable
1D108E:  LDR             R0, =(dword_6BCC24 - 0x1D1094)
1D1090:  ADD             R0, PC; dword_6BCC24
1D1092:  LDR             R0, [R0]
1D1094:  CBZ             R0, loc_1D109C
1D1096:  LDR             R0, [R0]
1D1098:  LDR             R0, [R0,#8]
1D109A:  B               loc_1D10A0
1D109C:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
1D10A0:  ADDS            R1, R6, R4
1D10A2:  MOV             R2, R5; width
1D10A4:  SUBS            R1, R0, R1; y
1D10A6:  MOV             R0, R8; x
1D10A8:  MOV             R3, R6; height
1D10AA:  BLX             glScissor
1D10AE:  MOVW            R0, #0xC11; cap
1D10B2:  POP.W           {R8}
1D10B6:  POP.W           {R4-R7,LR}
1D10BA:  B.W             j_glEnable
