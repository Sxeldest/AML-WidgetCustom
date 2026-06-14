; =========================================================
; Game Engine Function: _ZN29CTaskComplexFollowPatrolRoute8SetRouteERK12CPatrolRouteffb
; Address            : 0x5250F8 - 0x525252
; =========================================================

5250F8:  PUSH            {R4-R7,LR}
5250FA:  ADD             R7, SP, #0xC
5250FC:  PUSH.W          {R8-R11}
525100:  SUB             SP, SP, #4
525102:  VPUSH           {D8-D9}
525106:  SUB             SP, SP, #8
525108:  STR             R0, [SP,#0x38+var_34]
52510A:  MOV             R8, R1
52510C:  LDR             R1, [R7,#arg_0]
52510E:  VMOV            S16, R3
525112:  LDR.W           R9, [R0,#0x1C]
525116:  VMOV            S18, R2
52511A:  CMP             R1, #1
52511C:  BNE             loc_525124
52511E:  LDR.W           R0, [R8]
525122:  B               loc_5251D6
525124:  LDR.W           R0, [R8]
525128:  LDR.W           R2, [R9]
52512C:  CMP             R2, R0
52512E:  BNE             loc_5251D6
525130:  CMP             R2, #1
525132:  BLT             loc_5251AE
525134:  MOV.W           R10, #0
525138:  MOVS            R4, #0
52513A:  MOV.W           R11, #0
52513E:  STR             R2, [SP,#0x38+var_38]
525140:  ADD.W           R0, R8, R10
525144:  ADD.W           R1, R9, R10
525148:  VLDR            S0, [R0,#0x144]
52514C:  VLDR            S2, [R1,#0x144]
525150:  VCMP.F32        S2, S0
525154:  VMRS            APSR_nzcv, FPSCR
525158:  BNE             loc_5251BE
52515A:  VLDR            S0, [R0,#0x148]
52515E:  VLDR            S2, [R1,#0x148]
525162:  VCMP.F32        S2, S0
525166:  VMRS            APSR_nzcv, FPSCR
52516A:  BNE             loc_5251BE
52516C:  VLDR            S0, [R0,#0x14C]
525170:  VLDR            S2, [R1,#0x14C]
525174:  VCMP.F32        S2, S0
525178:  VMRS            APSR_nzcv, FPSCR
52517C:  BNE             loc_5251BE
52517E:  ADD.W           R6, R9, R4
525182:  ADD.W           R5, R8, R4
525186:  ADDS            R0, R6, #4; char *
525188:  ADDS            R1, R5, #4; char *
52518A:  BLX             strcmp
52518E:  CBNZ            R0, loc_5251C2
525190:  ADD.W           R0, R6, #0x1C; char *
525194:  ADD.W           R1, R5, #0x1C; char *
525198:  BLX             strcmp
52519C:  CBNZ            R0, loc_5251C2
52519E:  LDR             R2, [SP,#0x38+var_38]
5251A0:  ADD.W           R11, R11, #1
5251A4:  ADD.W           R10, R10, #0xC
5251A8:  ADDS            R4, #0x28 ; '('
5251AA:  CMP             R11, R2
5251AC:  BLT             loc_525140
5251AE:  LDR             R0, [SP,#0x38+var_34]
5251B0:  VLDR            S0, [R0,#0x14]
5251B4:  VCMP.F32        S0, S18
5251B8:  VMRS            APSR_nzcv, FPSCR
5251BC:  BEQ             loc_5251C6
5251BE:  MOV             R0, R2
5251C0:  B               loc_5251D6
5251C2:  LDR             R0, [SP,#0x38+var_38]
5251C4:  B               loc_5251D6
5251C6:  VLDR            S0, [R0,#0x18]
5251CA:  MOV             R0, R2
5251CC:  VCMP.F32        S0, S16
5251D0:  VMRS            APSR_nzcv, FPSCR
5251D4:  BEQ             loc_525244
5251D6:  CMP             R0, #1
5251D8:  STR.W           R0, [R9]
5251DC:  BLT             loc_525228
5251DE:  MOVS            R4, #0
5251E0:  MOV.W           R5, #0x144
5251E4:  MOVS            R6, #0
5251E6:  ADD.W           R0, R8, R5
5251EA:  ADD.W           R1, R9, R5
5251EE:  ADD.W           R10, R9, R4
5251F2:  ADD.W           R11, R8, R4
5251F6:  VLDR            D16, [R0]
5251FA:  LDR             R0, [R0,#8]
5251FC:  STR             R0, [R1,#8]
5251FE:  ADD.W           R0, R10, #4; char *
525202:  VSTR            D16, [R1]
525206:  ADD.W           R1, R11, #4; char *
52520A:  BLX             strcpy
52520E:  ADD.W           R0, R10, #0x1C; char *
525212:  ADD.W           R1, R11, #0x1C; char *
525216:  BLX             strcpy
52521A:  LDR.W           R0, [R9]
52521E:  ADDS            R6, #1
525220:  ADDS            R5, #0xC
525222:  ADDS            R4, #0x28 ; '('
525224:  CMP             R6, R0
525226:  BLT             loc_5251E6
525228:  LDR             R2, [SP,#0x38+var_34]
52522A:  MOVS            R1, #0
52522C:  VSTR            S18, [R2,#0x14]
525230:  VSTR            S16, [R2,#0x18]
525234:  LDRB.W          R0, [R2,#0x20]
525238:  STRH            R1, [R2,#0x12]
52523A:  STRH            R1, [R2,#0xE]
52523C:  ORR.W           R0, R0, #1
525240:  STRB.W          R0, [R2,#0x20]
525244:  ADD             SP, SP, #8
525246:  VPOP            {D8-D9}
52524A:  ADD             SP, SP, #4
52524C:  POP.W           {R8-R11}
525250:  POP             {R4-R7,PC}
