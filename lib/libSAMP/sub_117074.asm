; =========================================================
; Game Engine Function: sub_117074
; Address            : 0x117074 - 0x117150
; =========================================================

117074:  PUSH            {R4-R7,LR}
117076:  ADD             R7, SP, #0xC
117078:  PUSH.W          {R11}
11707C:  VPUSH           {D8-D12}
117080:  SUB             SP, SP, #0x18
117082:  MOV             R5, R0
117084:  LDR             R0, [R0]
117086:  MOV             R4, R1
117088:  MOV             R1, R5
11708A:  LDR             R2, [R0,#0x58]
11708C:  ADD             R0, SP, #0x50+var_40
11708E:  BLX             R2
117090:  LDR             R0, [R5]
117092:  MOV             R1, R5
117094:  VLDR            S16, [SP,#0x50+var_40]
117098:  LDR             R2, [R0,#0x58]
11709A:  ADD             R0, SP, #0x50+var_48
11709C:  BLX             R2
11709E:  LDR             R0, [R5]
1170A0:  ADD             R6, SP, #0x50+var_40
1170A2:  MOV             R1, R5
1170A4:  VLDR            S18, [SP,#0x50+var_44]
1170A8:  LDR             R2, [R0,#0x5C]
1170AA:  MOV             R0, R6
1170AC:  BLX             R2
1170AE:  LDR             R0, [R5]
1170B0:  MOV             R1, R5
1170B2:  VLDR            S20, [SP,#0x50+var_40]
1170B6:  LDR             R2, [R0,#0x58]
1170B8:  ADD             R0, SP, #0x50+var_48
1170BA:  BLX             R2
1170BC:  VMOV.F32        S0, #0.75
1170C0:  VLDR            S2, [SP,#0x50+var_48]
1170C4:  VMOV.F32        S22, #0.25
1170C8:  VLDR            S24, [R5,#0x4C]
1170CC:  MOV             R0, #0xE0FFFFFF
1170D0:  STR             R6, [SP,#0x50+var_4C]
1170D2:  VMOV            R2, S24
1170D6:  STR             R0, [SP,#0x50+var_40]
1170D8:  ADD.W           R0, R5, #0x28 ; '('
1170DC:  VMUL.F32        S16, S16, S0
1170E0:  VMLA.F32        S20, S2, S22
1170E4:  VMUL.F32        S18, S18, S0
1170E8:  VMOV            R3, S16
1170EC:  VMOV            R1, S20
1170F0:  VSTR            S18, [SP,#0x50+var_50]
1170F4:  BL              sub_163176
1170F8:  VADD.F32        S0, S18, S24
1170FC:  LDR             R0, [R5]
1170FE:  MOV             R1, #0x3FACCCCD
117106:  VSTR            S0, [R5,#0x58]
11710A:  LDR             R2, [R0,#0x60]
11710C:  MOV             R0, R5
11710E:  BLX             R2
117110:  MOV             R6, R0
117112:  LDR             R0, [R5]
117114:  MOV             R1, #0x40333333
11711C:  LDR             R2, [R0,#0x60]
11711E:  MOV             R0, R5
117120:  BLX             R2
117122:  MOV             R1, R0
117124:  MOV             R0, R6
117126:  BL              sub_163C58
11712A:  VLDR            S0, =0.6
11712E:  VMLA.F32        S24, S18, S22
117132:  MOV             R2, R4
117134:  VMLA.F32        S20, S16, S0
117138:  VMOV            R1, S24
11713C:  VMOV            R0, S20
117140:  BL              sub_163D64
117144:  ADD             SP, SP, #0x18
117146:  VPOP            {D8-D12}
11714A:  POP.W           {R11}
11714E:  POP             {R4-R7,PC}
