; =========================================================
; Game Engine Function: _ZN12CTaskManager11ManageTasksEv
; Address            : 0x533DB2 - 0x533F58
; =========================================================

533DB2:  PUSH            {R4-R7,LR}
533DB4:  ADD             R7, SP, #0xC
533DB6:  PUSH.W          {R8-R10}
533DBA:  MOV             R9, R0
533DBC:  LDR.W           R0, [R9]
533DC0:  CBZ             R0, loc_533DC8
533DC2:  MOV.W           R8, #0
533DC6:  B               loc_533DF8
533DC8:  LDR.W           R0, [R9,#4]
533DCC:  CBZ             R0, loc_533DD4
533DCE:  MOV.W           R8, #1
533DD2:  B               loc_533DF8
533DD4:  LDR.W           R0, [R9,#8]
533DD8:  CBZ             R0, loc_533DE0
533DDA:  MOV.W           R8, #2
533DDE:  B               loc_533DF8
533DE0:  LDR.W           R0, [R9,#0xC]
533DE4:  CBZ             R0, loc_533DEC
533DE6:  MOV.W           R8, #3
533DEA:  B               loc_533DF8
533DEC:  LDR.W           R0, [R9,#0x10]
533DF0:  CMP             R0, #0
533DF2:  BEQ             loc_533ED8
533DF4:  MOV.W           R8, #4
533DF8:  MOV             R5, R0
533DFA:  LDR             R0, [R5]
533DFC:  LDR             R1, [R0,#0xC]
533DFE:  MOV             R0, R5
533E00:  BLX             R1
533E02:  CMP             R0, #0
533E04:  BNE             loc_533DF8
533E06:  LDR             R0, [R5]
533E08:  LDR             R1, [R0,#0x10]
533E0A:  MOV             R0, R5
533E0C:  BLX             R1
533E0E:  CMP             R0, #1
533E10:  BNE             loc_533EAA
533E12:  MOVS            R6, #0
533E14:  LDR.W           R1, [R9,R8,LSL#2]; CTask *
533E18:  MOV             R0, R9; this
533E1A:  BLX             j__ZN12CTaskManager22ParentsControlChildrenEP5CTask; CTaskManager::ParentsControlChildren(CTask *)
533E1E:  LDR.W           R0, [R9,R8,LSL#2]
533E22:  CBZ             R0, loc_533E34
533E24:  MOV             R5, R0
533E26:  LDR             R0, [R5]
533E28:  LDR             R1, [R0,#0xC]
533E2A:  MOV             R0, R5
533E2C:  BLX             R1
533E2E:  CMP             R0, #0
533E30:  BNE             loc_533E24
533E32:  B               loc_533E36
533E34:  MOVS            R5, #0
533E36:  LDR             R0, [R5]
533E38:  LDR             R1, [R0,#0x10]
533E3A:  MOV             R0, R5
533E3C:  BLX             R1
533E3E:  CBNZ            R0, loc_533E64
533E40:  LDR             R1, [R5,#4]; CTask *
533E42:  MOV             R0, R9; this
533E44:  BLX             j__ZN12CTaskManager14SetNextSubTaskEP5CTask; CTaskManager::SetNextSubTask(CTask *)
533E48:  LDR.W           R0, [R9,R8,LSL#2]
533E4C:  MOV             R5, R0
533E4E:  LDR             R0, [R5]
533E50:  LDR             R1, [R0,#0xC]
533E52:  MOV             R0, R5
533E54:  BLX             R1
533E56:  CMP             R0, #0
533E58:  BNE             loc_533E4C
533E5A:  LDR             R0, [R5]
533E5C:  LDR             R1, [R0,#0x10]
533E5E:  MOV             R0, R5
533E60:  BLX             R1
533E62:  CBZ             R0, loc_533EC4
533E64:  LDR.W           R0, [R9,R8,LSL#2]
533E68:  CBZ             R0, loc_533E7A
533E6A:  MOV             R5, R0
533E6C:  LDR             R0, [R5]
533E6E:  LDR             R1, [R0,#0xC]
533E70:  MOV             R0, R5
533E72:  BLX             R1
533E74:  CMP             R0, #0
533E76:  BNE             loc_533E6A
533E78:  B               loc_533E7C
533E7A:  MOVS            R5, #0
533E7C:  LDR             R0, [R5]
533E7E:  LDR.W           R1, [R9,#0x2C]
533E82:  LDR             R2, [R0,#0x24]
533E84:  MOV             R0, R5
533E86:  BLX             R2
533E88:  CMP             R0, #1
533E8A:  BNE             loc_533ED8
533E8C:  LDR             R1, [R5,#4]; CTask *
533E8E:  MOV             R0, R9; this
533E90:  BLX             j__ZN12CTaskManager14SetNextSubTaskEP5CTask; CTaskManager::SetNextSubTask(CTask *)
533E94:  LDR.W           R0, [R9,R8,LSL#2]
533E98:  LDR             R1, [R0]
533E9A:  LDR             R1, [R1,#0xC]
533E9C:  BLX             R1
533E9E:  CBZ             R0, loc_533EC4
533EA0:  ADDS            R0, R6, #1
533EA2:  CMP             R6, #9
533EA4:  MOV             R6, R0
533EA6:  BLE             loc_533E14
533EA8:  B               loc_533ED8
533EAA:  LDR.W           R0, [R9,R8,LSL#2]
533EAE:  CMP             R0, #0
533EB0:  ITTT NE
533EB2:  LDRNE           R1, [R0]
533EB4:  LDRNE           R1, [R1,#4]
533EB6:  BLXNE           R1
533EB8:  MOVS            R0, #0
533EBA:  STR.W           R0, [R9,R8,LSL#2]
533EBE:  POP.W           {R8-R10}
533EC2:  POP             {R4-R7,PC}
533EC4:  LDR.W           R0, [R9,R8,LSL#2]
533EC8:  CMP             R0, #0
533ECA:  ITTT NE
533ECC:  LDRNE           R1, [R0]
533ECE:  LDRNE           R1, [R1,#4]
533ED0:  BLXNE           R1
533ED2:  MOVS            R0, #0
533ED4:  STR.W           R0, [R9,R8,LSL#2]
533ED8:  MOV.W           R8, #0
533EDC:  MOVS            R4, #0
533EDE:  ADD.W           R10, R9, R4,LSL#2
533EE2:  LDR.W           R5, [R10,#0x14]!
533EE6:  CBZ             R5, loc_533F4C
533EE8:  MOV             R0, R9; this
533EEA:  MOV             R1, R5; CTask *
533EEC:  BLX             j__ZN12CTaskManager22ParentsControlChildrenEP5CTask; CTaskManager::ParentsControlChildren(CTask *)
533EF0:  MOV             R0, R5
533EF2:  MOV             R6, R0
533EF4:  LDR             R0, [R6]
533EF6:  LDR             R1, [R0,#0xC]
533EF8:  MOV             R0, R6
533EFA:  BLX             R1
533EFC:  CMP             R0, #0
533EFE:  BNE             loc_533EF2
533F00:  LDR             R0, [R6]
533F02:  LDR             R1, [R0,#0x10]
533F04:  MOV             R0, R6
533F06:  BLX             R1
533F08:  CMP             R0, #1
533F0A:  MOV             R0, R5
533F0C:  BNE             loc_533F40
533F0E:  MOV             R6, R0
533F10:  LDR             R0, [R6]
533F12:  LDR             R1, [R0,#0xC]
533F14:  MOV             R0, R6
533F16:  BLX             R1
533F18:  CMP             R0, #0
533F1A:  BNE             loc_533F0E
533F1C:  LDR             R0, [R6]
533F1E:  LDR.W           R1, [R9,#0x2C]
533F22:  LDR             R2, [R0,#0x24]
533F24:  MOV             R0, R6
533F26:  BLX             R2
533F28:  CMP             R0, #1
533F2A:  BNE             loc_533F4C
533F2C:  LDR             R1, [R6,#4]; CTask *
533F2E:  MOV             R0, R9; this
533F30:  BLX             j__ZN12CTaskManager14SetNextSubTaskEP5CTask; CTaskManager::SetNextSubTask(CTask *)
533F34:  LDR             R0, [R5]
533F36:  LDR             R1, [R0,#0xC]
533F38:  MOV             R0, R5
533F3A:  BLX             R1
533F3C:  CMP             R0, #0
533F3E:  BNE             loc_533EE8
533F40:  LDR             R0, [R5]
533F42:  LDR             R1, [R0,#4]
533F44:  MOV             R0, R5
533F46:  BLX             R1
533F48:  STR.W           R8, [R10]
533F4C:  ADDS            R4, #1
533F4E:  CMP             R4, #6
533F50:  BNE             loc_533EDE
533F52:  POP.W           {R8-R10}
533F56:  POP             {R4-R7,PC}
