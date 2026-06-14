; =========================================================
; Game Engine Function: __gxx_personality_v0
; Address            : 0x106FC4 - 0x1070D4
; =========================================================

106FC4:  PUSH            {R4-R7,LR}
106FC6:  ADD             R7, SP, #0xC
106FC8:  PUSH.W          {R8}
106FCC:  SUB             SP, SP, #0x30
106FCE:  MOV             R6, R0
106FD0:  LDR             R0, =(__stack_chk_guard_ptr - 0x106FD6)
106FD2:  ADD             R0, PC; __stack_chk_guard_ptr
106FD4:  LDR             R0, [R0]; __stack_chk_guard
106FD6:  LDR             R0, [R0]
106FD8:  STR             R0, [SP,#0x40+var_14]
106FDA:  CBZ             R1, loc_107038
106FDC:  MOV             R5, R2
106FDE:  CBZ             R2, loc_107038
106FE0:  MOV             R0, R1
106FE2:  MOV             R4, R1
106FE4:  BL              sub_1065DC
106FE8:  MOV             R8, R0
106FEA:  BIC.W           R0, R6, #8
106FEE:  CMP             R0, #2
106FF0:  BEQ             loc_107088
106FF2:  CMP             R0, #1
106FF4:  BEQ             loc_10703C
106FF6:  CBNZ            R0, loc_107038
106FF8:  LSLS            R0, R6, #0x1C
106FFA:  BMI             loc_107088
106FFC:  STR             R5, [SP,#0x40+var_40]
106FFE:  ADD             R0, SP, #0x40+var_38
107000:  MOVS            R1, #1
107002:  MOV             R2, R8
107004:  MOV             R3, R4
107006:  BL              sub_1070F0
10700A:  LDR             R0, [SP,#0x40+var_20]
10700C:  CMP             R0, #8
10700E:  BEQ             loc_107088
107010:  CMP             R0, #6
107012:  BNE             loc_1070B2
107014:  MOV             R0, R5
107016:  MOVS            R1, #0xD
107018:  BL              sub_1073C0
10701C:  CMP.W           R8, #0
107020:  STR             R0, [R4,#0x20]
107022:  BEQ             loc_107034
107024:  LDR             R0, [SP,#0x40+var_24]
107026:  ADD.W           R6, R4, #0x24 ; '$'
10702A:  LDR             R1, [SP,#0x40+var_38]
10702C:  ADD             R5, SP, #0x40+var_30
10702E:  STR             R1, [R4,#0x34]
107030:  LDM             R5, {R2,R3,R5}
107032:  STM             R6!, {R0,R2,R3,R5}
107034:  MOVS            R0, #6
107036:  B               loc_1070B2
107038:  MOVS            R0, #3
10703A:  B               loc_1070B2
10703C:  MOV             R0, R5
10703E:  MOVS            R1, #0xD
107040:  LDR             R6, [R4,#0x20]
107042:  BL              sub_1073C0
107046:  CMP             R6, R0
107048:  BNE             loc_107068
10704A:  CMP.W           R8, #0
10704E:  BEQ             loc_107092
107050:  ADD.W           R6, R4, #0x24 ; '$'
107054:  MOVS            R0, #6
107056:  STR             R0, [SP,#0x40+var_20]
107058:  LDM             R6, {R0-R3,R6}
10705A:  STR             R6, [SP,#0x40+var_38]
10705C:  STR             R0, [SP,#0x40+var_24]
10705E:  ADD             R0, SP, #0x40+var_30
107060:  STM             R0!, {R1-R3}
107062:  ASRS            R0, R6, #0x1F
107064:  STR             R0, [SP,#0x40+var_34]
107066:  B               loc_1070A6
107068:  STR             R5, [SP,#0x40+var_40]
10706A:  ADD             R0, SP, #0x40+var_38
10706C:  MOVS            R1, #2
10706E:  MOV             R2, R8
107070:  MOV             R3, R4
107072:  BL              sub_1070F0
107076:  LDR             R0, [SP,#0x40+var_20]
107078:  CMP             R0, #8
10707A:  BEQ             loc_107088
10707C:  CMP             R0, #6
10707E:  BNE             loc_1070B2
107080:  MOV             R0, R4
107082:  BLX             j___cxa_begin_cleanup
107086:  B               loc_1070A6
107088:  MOV             R0, R4
10708A:  MOV             R1, R5
10708C:  BL              sub_1070DC
107090:  B               loc_1070B2
107092:  STR             R5, [SP,#0x40+var_40]
107094:  ADD             R0, SP, #0x40+var_38
107096:  MOVS            R1, #6
107098:  MOVS            R2, #0
10709A:  MOV             R3, R4
10709C:  BL              sub_1070F0
1070A0:  LDR             R0, [SP,#0x40+var_20]
1070A2:  CMP             R0, #6
1070A4:  BNE             loc_1070CC
1070A6:  ADD             R2, SP, #0x40+var_38
1070A8:  MOV             R0, R4
1070AA:  MOV             R1, R5
1070AC:  BL              sub_107418
1070B0:  MOVS            R0, #7
1070B2:  LDR             R1, [SP,#0x40+var_14]
1070B4:  LDR             R2, =(__stack_chk_guard_ptr - 0x1070BA)
1070B6:  ADD             R2, PC; __stack_chk_guard_ptr
1070B8:  LDR             R2, [R2]; __stack_chk_guard
1070BA:  LDR             R2, [R2]
1070BC:  CMP             R2, R1
1070BE:  ITTT EQ
1070C0:  ADDEQ           SP, SP, #0x30 ; '0'
1070C2:  POPEQ.W         {R8}
1070C6:  POPEQ           {R4-R7,PC}
1070C8:  BLX             __stack_chk_fail
1070CC:  MOVS            R0, #0; int
1070CE:  MOV             R1, R4; void *
1070D0:  BL              sub_1073FC
