; =========================================================
; Game Engine Function: _ZN9EmuShader16RecompileShadersEv
; Address            : 0x1C14F0 - 0x1C1564
; =========================================================

1C14F0:  PUSH            {R4-R7,LR}
1C14F2:  ADD             R7, SP, #0xC
1C14F4:  PUSH.W          {R8-R11}
1C14F8:  SUB             SP, SP, #0xC
1C14FA:  LDR             R0, =(_ZN9EmuShader12ShaderClosetE_ptr - 0x1C150C)
1C14FC:  ADD.W           R10, SP, #0x28+var_20
1C1500:  ADD.W           R11, SP, #0x28+var_24
1C1504:  MOV.W           R8, #0
1C1508:  ADD             R0, PC; _ZN9EmuShader12ShaderClosetE_ptr
1C150A:  MOVS            R4, #1
1C150C:  LDR.W           R9, [R0]; EmuShader::ShaderCloset ...
1C1510:  LDR.W           R5, [R9,R8,LSL#2]
1C1514:  CBZ             R5, loc_1C1552
1C1516:  LDR             R0, [R5,#8]; this
1C1518:  MOV             R1, R10; unsigned int
1C151A:  MOV             R2, R11; char **
1C151C:  BLX             j__ZN8RQShader11BuildSourceEjPPKcS2_; RQShader::BuildSource(uint,char const**,char const**)
1C1520:  LDR             R0, [SP,#0x28+var_20]; char *
1C1522:  BLX             j__Z10HashStringPKc; HashString(char const*)
1C1526:  STR             R0, [R5,#0xC]
1C1528:  LDR             R0, [SP,#0x28+var_24]; char *
1C152A:  BLX             j__Z10HashStringPKc; HashString(char const*)
1C152E:  STR             R0, [R5,#0x10]
1C1530:  LDR             R0, [SP,#0x28+var_20]; char *
1C1532:  BLX             j_strdup
1C1536:  MOV             R6, R0
1C1538:  LDR             R0, [SP,#0x28+var_24]; char *
1C153A:  BLX             j_strdup
1C153E:  LDR             R2, [R5,#8]; unsigned int
1C1540:  MOV             R1, R0; char *
1C1542:  MOV             R0, R6; char *
1C1544:  BLX             j__Z14RQCreateShaderPKcS0_j; RQCreateShader(char const*,char const*,uint)
1C1548:  STR             R0, [R5]
1C154A:  STRB            R4, [R5,#4]
1C154C:  LDR             R5, [R5,#0x14]
1C154E:  CMP             R5, #0
1C1550:  BNE             loc_1C1516
1C1552:  ADD.W           R8, R8, #1
1C1556:  CMP.W           R8, #0x100
1C155A:  BNE             loc_1C1510
1C155C:  ADD             SP, SP, #0xC
1C155E:  POP.W           {R8-R11}
1C1562:  POP             {R4-R7,PC}
