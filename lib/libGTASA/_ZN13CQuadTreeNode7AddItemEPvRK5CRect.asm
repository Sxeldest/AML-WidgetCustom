; =========================================================
; Game Engine Function: _ZN13CQuadTreeNode7AddItemEPvRK5CRect
; Address            : 0x40E24C - 0x40E424
; =========================================================

40E24C:  PUSH            {R4-R7,LR}
40E24E:  ADD             R7, SP, #0xC
40E250:  PUSH.W          {R8-R11}
40E254:  SUB             SP, SP, #4
40E256:  VPUSH           {D8-D10}
40E25A:  SUB             SP, SP, #8
40E25C:  MOV             R4, R0
40E25E:  MOV             R11, R2
40E260:  LDR             R0, [R4,#0x24]
40E262:  MOV             R10, R1
40E264:  CMP             R0, #0
40E266:  BEQ.W           loc_40E406
40E26A:  LDR             R1, =(_ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr - 0x40E27C)
40E26C:  VMOV.F32        S20, #0.5
40E270:  VMOV.I32        Q4, #0
40E274:  MOV.W           R8, #0
40E278:  ADD             R1, PC; _ZN13CQuadTreeNode20ms_pQuadTreeNodePoolE_ptr
40E27A:  MOVS            R5, #0
40E27C:  LDR.W           R9, [R1]; CQuadTreeNode::ms_pQuadTreeNodePool ...
40E280:  B               loc_40E2DE
40E282:  AND.W           R1, R3, #0x7F
40E286:  STRB            R1, [R6,R0]
40E288:  LDR             R0, [R2,#4]
40E28A:  LDR             R1, [R2,#0xC]
40E28C:  LDRB            R3, [R0,R1]
40E28E:  AND.W           R6, R3, #0x80
40E292:  ADDS            R3, #1
40E294:  AND.W           R3, R3, #0x7F
40E298:  ORRS            R3, R6
40E29A:  STRB            R3, [R0,R1]
40E29C:  LDR             R1, [R2,#0xC]
40E29E:  LDR             R0, [R2]
40E2A0:  ADD.W           R1, R1, R1,LSL#2
40E2A4:  ADD.W           R0, R0, R1,LSL#3
40E2A8:  LDR             R1, [R4,#0x24]
40E2AA:  ADD.W           R3, R0, #0x14
40E2AE:  VSTR            S0, [R0]
40E2B2:  LDR             R2, [SP,#0x40+var_3C]
40E2B4:  SUBS            R1, #1
40E2B6:  VSTR            S2, [R0,#8]
40E2BA:  STR             R2, [R0,#4]
40E2BC:  LDR             R2, [SP,#0x40+var_40]
40E2BE:  VST1.32         {D8-D9}, [R3]
40E2C2:  STRD.W          R2, R8, [R0,#0xC]
40E2C6:  STR             R1, [R0,#0x24]
40E2C8:  STR.W           R0, [R12]
40E2CC:  MOV             R1, R10
40E2CE:  MOV             R2, R11
40E2D0:  BLX             j__ZN13CQuadTreeNode7AddItemEPvRK5CRect; CQuadTreeNode::AddItem(void *,CRect const&)
40E2D4:  ADDS            R5, #1
40E2D6:  CMP             R5, #4
40E2D8:  BEQ.W           loc_40E416
40E2DC:  LDR             R0, [R4,#0x24]
40E2DE:  LDR             R2, [R4,#4]
40E2E0:  CMP             R0, #0
40E2E2:  VLDR            S0, [R4]
40E2E6:  STR             R2, [SP,#0x40+var_3C]
40E2E8:  LDR             R3, [R4,#0xC]
40E2EA:  VLDR            S2, [R4,#8]
40E2EE:  STR             R3, [SP,#0x40+var_40]
40E2F0:  BEQ             loc_40E2D4
40E2F2:  VMOV.F32        S8, S2
40E2F6:  CMP             R5, #3; switch 4 cases
40E2F8:  VMOV.F32        S10, S0
40E2FC:  VMOV            S4, R2
40E300:  VMOV            S6, R3
40E304:  BHI             def_40E306; jumptable 0040E306 default case
40E306:  TBB.W           [PC,R5]; switch jump
40E30A:  DCB 2; jump table for switch statement
40E30B:  DCB 6
40E30C:  DCB 0xA
40E30D:  DCB 0x12
40E30E:  VADD.F32        S8, S0, S2; jumptable 0040E306 case 0
40E312:  MOV             R0, SP
40E314:  B               loc_40E324
40E316:  VADD.F32        S8, S0, S2; jumptable 0040E306 case 1
40E31A:  MOV             R0, SP
40E31C:  B               loc_40E334
40E31E:  VADD.F32        S8, S0, S2; jumptable 0040E306 case 2
40E322:  ADD             R0, SP, #0x40+var_3C
40E324:  VMOV.F32        S10, S0
40E328:  VMUL.F32        S8, S8, S20
40E32C:  B               loc_40E33C
40E32E:  VADD.F32        S8, S0, S2; jumptable 0040E306 case 3
40E332:  ADD             R0, SP, #0x40+var_3C
40E334:  VMUL.F32        S10, S8, S20
40E338:  VMOV.F32        S8, S2
40E33C:  VADD.F32        S12, S4, S6
40E340:  VMUL.F32        S12, S12, S20
40E344:  VSTR            S12, [R0]
40E348:  VLDR            S12, [R11,#8]; jumptable 0040E306 default case
40E34C:  VCMPE.F32       S10, S12
40E350:  VMRS            APSR_nzcv, FPSCR
40E354:  BGT             loc_40E2D4
40E356:  VLDR            S10, [R11]
40E35A:  VCMPE.F32       S8, S10
40E35E:  VMRS            APSR_nzcv, FPSCR
40E362:  BLT             loc_40E2D4
40E364:  VLDR            S8, [SP,#0x40+var_40]
40E368:  VLDR            S10, [R11,#4]
40E36C:  VCMPE.F32       S8, S10
40E370:  VMRS            APSR_nzcv, FPSCR
40E374:  BGT             loc_40E2D4
40E376:  VLDR            S8, [SP,#0x40+var_3C]
40E37A:  VLDR            S10, [R11,#0xC]
40E37E:  VCMPE.F32       S8, S10
40E382:  VMRS            APSR_nzcv, FPSCR
40E386:  BLT             loc_40E2D4
40E388:  ADD.W           R12, R4, R5,LSL#2
40E38C:  LDR.W           R0, [R12,#0x14]!
40E390:  CMP             R0, #0
40E392:  BNE             loc_40E2CC
40E394:  CMP             R5, #3; switch 4 cases
40E396:  STRD.W          R3, R2, [SP,#0x40+var_40]
40E39A:  BHI             def_40E39C; jumptable 0040E39C default case
40E39C:  TBB.W           [PC,R5]; switch jump
40E3A0:  DCB 2; jump table for switch statement
40E3A1:  DCB 8
40E3A2:  DCB 0xE
40E3A3:  DCB 0x13
40E3A4:  VADD.F32        S2, S0, S2; jumptable 0040E39C case 0
40E3A8:  MOV             R0, SP
40E3AA:  VMUL.F32        S2, S2, S20
40E3AE:  B               loc_40E3D0
40E3B0:  VADD.F32        S0, S0, S2; jumptable 0040E39C case 1
40E3B4:  MOV             R0, SP
40E3B6:  VMUL.F32        S0, S0, S20
40E3BA:  B               loc_40E3D0
40E3BC:  VADD.F32        S2, S0, S2; jumptable 0040E39C case 2
40E3C0:  VMUL.F32        S2, S2, S20
40E3C4:  B               loc_40E3CE
40E3C6:  VADD.F32        S0, S0, S2; jumptable 0040E39C case 3
40E3CA:  VMUL.F32        S0, S0, S20
40E3CE:  ADD             R0, SP, #0x40+var_3C
40E3D0:  VADD.F32        S4, S4, S6
40E3D4:  VMUL.F32        S4, S4, S20
40E3D8:  VSTR            S4, [R0]
40E3DC:  LDR.W           R2, [R9]; jumptable 0040E39C default case
40E3E0:  MOVS            R1, #0
40E3E2:  LDRD.W          LR, R0, [R2,#8]
40E3E6:  ADDS            R0, #1
40E3E8:  STR             R0, [R2,#0xC]
40E3EA:  CMP             R0, LR
40E3EC:  BNE             loc_40E3FA
40E3EE:  MOVS            R0, #0
40E3F0:  LSLS            R1, R1, #0x1F
40E3F2:  STR             R0, [R2,#0xC]
40E3F4:  BNE.W           loc_40E2A8
40E3F8:  MOVS            R1, #1; unsigned int
40E3FA:  LDR             R6, [R2,#4]
40E3FC:  LDRSB           R3, [R6,R0]
40E3FE:  CMP.W           R3, #0xFFFFFFFF
40E402:  BGT             loc_40E3E6
40E404:  B               loc_40E282
40E406:  MOVS            R0, #byte_8; this
40E408:  BLX             j__ZN18CPtrNodeSingleLinknwEj; CPtrNodeSingleLink::operator new(uint)
40E40C:  STR.W           R10, [R0]
40E410:  LDR             R1, [R4,#0x10]
40E412:  STR             R1, [R0,#4]
40E414:  STR             R0, [R4,#0x10]
40E416:  ADD             SP, SP, #8
40E418:  VPOP            {D8-D10}
40E41C:  ADD             SP, SP, #4
40E41E:  POP.W           {R8-R11}
40E422:  POP             {R4-R7,PC}
