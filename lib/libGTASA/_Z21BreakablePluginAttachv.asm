; =========================================================
; Game Engine Function: _Z21BreakablePluginAttachv
; Address            : 0x451090 - 0x451104
; =========================================================

451090:  PUSH            {R4,R5,R7,LR}
451092:  ADD             R7, SP, #8
451094:  SUB             SP, SP, #8
451096:  LDR             R0, =(_Z20BreakableConstructorPvii_ptr - 0x4510A6)
451098:  MOVW            R5, #0xF2FD
45109C:  LDR             R1, =(_Z19BreakableDestructorPvii_ptr - 0x4510AA)
45109E:  MOVT            R5, #0x253
4510A2:  ADD             R0, PC; _Z20BreakableConstructorPvii_ptr
4510A4:  MOVS            R4, #0
4510A6:  ADD             R1, PC; _Z19BreakableDestructorPvii_ptr
4510A8:  STR             R4, [SP,#0x10+var_10]; void *(*)(void *, const void *, int, int)
4510AA:  LDR             R2, [R0]; BreakableConstructor(void *,int,int) ; void *(*)(void *, int, int)
4510AC:  MOVS            R0, #4; int
4510AE:  LDR             R3, [R1]; BreakableDestructor(void *,int,int) ; void *(*)(void *, int, int)
4510B0:  MOV             R1, R5; unsigned int
4510B2:  BLX             j__Z24RpGeometryRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpGeometryRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
4510B6:  LDR             R1, =(g_BreakablePlugin_ptr - 0x4510BC)
4510B8:  ADD             R1, PC; g_BreakablePlugin_ptr
4510BA:  LDR             R1, [R1]; g_BreakablePlugin
4510BC:  STR             R0, [R1]
4510BE:  ADDS            R0, #1
4510C0:  BEQ             loc_4510FE
4510C2:  LDR             R0, =(_Z19BreakableStreamReadP8RwStreamiPvii_ptr - 0x4510CC)
4510C4:  LDR             R2, =(_Z20BreakableStreamWriteP8RwStreamiPKvii_ptr - 0x4510CE)
4510C6:  LDR             R3, =(_Z22BreakableStreamGetSizePKvii_ptr - 0x4510D0)
4510C8:  ADD             R0, PC; _Z19BreakableStreamReadP8RwStreamiPvii_ptr
4510CA:  ADD             R2, PC; _Z20BreakableStreamWriteP8RwStreamiPKvii_ptr
4510CC:  ADD             R3, PC; _Z22BreakableStreamGetSizePKvii_ptr
4510CE:  LDR             R1, [R0]; BreakableStreamRead(RwStream *,int,void *,int,int)
4510D0:  LDR             R2, [R2]; BreakableStreamWrite(RwStream *,int,void const*,int,int)
4510D2:  MOV             R0, R5
4510D4:  LDR             R3, [R3]; BreakableStreamGetSize(void const*,int,int)
4510D6:  BLX             j__Z30RpGeometryRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpGeometryRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
4510DA:  CMP             R0, #0
4510DC:  BLT             loc_4510F0
4510DE:  LDR             R0, =(g_BreakablePlugin_ptr - 0x4510E6)
4510E0:  MOVS            R4, #0
4510E2:  ADD             R0, PC; g_BreakablePlugin_ptr
4510E4:  LDR             R0, [R0]; g_BreakablePlugin
4510E6:  LDR             R0, [R0]
4510E8:  ADDS            R0, #1
4510EA:  IT NE
4510EC:  MOVNE           R4, #1
4510EE:  B               loc_4510FE
4510F0:  LDR             R0, =(g_BreakablePlugin_ptr - 0x4510FC)
4510F2:  MOVS            R4, #0
4510F4:  MOV.W           R1, #0xFFFFFFFF
4510F8:  ADD             R0, PC; g_BreakablePlugin_ptr
4510FA:  LDR             R0, [R0]; g_BreakablePlugin
4510FC:  STR             R1, [R0]
4510FE:  MOV             R0, R4
451100:  ADD             SP, SP, #8
451102:  POP             {R4,R5,R7,PC}
