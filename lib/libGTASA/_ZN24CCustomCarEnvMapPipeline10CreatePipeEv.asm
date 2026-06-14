; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline10CreatePipeEv
; Address            : 0x2CBF8C - 0x2CC0E2
; =========================================================

2CBF8C:  PUSH            {R4,R5,R7,LR}
2CBF8E:  ADD             R7, SP, #8
2CBF90:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline11ObjPipelineE_ptr - 0x2CBF96)
2CBF92:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline11ObjPipelineE_ptr ; this
2CBF94:  LDR             R4, [R0]; CCustomCarEnvMapPipeline::ObjPipeline ...
2CBF96:  BLX             j__ZN24CCustomCarEnvMapPipeline25CreateCustomOpenGLObjPipeEv; CCustomCarEnvMapPipeline::CreateCustomOpenGLObjPipe(void)
2CBF9A:  CMP             R0, #0
2CBF9C:  STR             R0, [R4]; CCustomCarEnvMapPipeline::ObjPipeline
2CBF9E:  BEQ.W           loc_2CC0DE
2CBFA2:  MOVS            R0, #0x14; unsigned int
2CBFA4:  BLX             _Znwj; operator new(uint)
2CBFA8:  MOV             R4, R0
2CBFAA:  MOV.W           R0, #0xC000; unsigned int
2CBFAE:  BLX             _Znaj; operator new[](uint)
2CBFB2:  STR             R0, [R4]
2CBFB4:  MOV.W           R0, #0x1000; unsigned int
2CBFB8:  MOV.W           R5, #0x1000
2CBFBC:  BLX             _Znaj; operator new[](uint)
2CBFC0:  MOVS            R1, #1
2CBFC2:  MOVS            R2, #0x80
2CBFC4:  STRB            R1, [R4,#0x10]
2CBFC6:  MOV.W           R1, #0xFFFFFFFF
2CBFCA:  STRD.W          R0, R5, [R4,#4]
2CBFCE:  STR             R1, [R4,#0xC]
2CBFD0:  LDRB            R1, [R0,#1]
2CBFD2:  STRB            R2, [R0]
2CBFD4:  ORR.W           R1, R1, #0x80
2CBFD8:  STRB            R1, [R0,#1]
2CBFDA:  LDR             R0, [R4,#4]
2CBFDC:  LDRB            R1, [R0,#1]
2CBFDE:  AND.W           R1, R1, #0x80
2CBFE2:  STRB            R1, [R0,#1]
2CBFE4:  MOVS            R0, #2
2CBFE6:  LDR             R1, [R4,#4]
2CBFE8:  LDRB            R2, [R1,R0]
2CBFEA:  ORR.W           R2, R2, #0x80
2CBFEE:  STRB            R2, [R1,R0]
2CBFF0:  LDR             R1, [R4,#4]
2CBFF2:  LDRB            R2, [R1,R0]
2CBFF4:  AND.W           R2, R2, #0x80
2CBFF8:  STRB            R2, [R1,R0]
2CBFFA:  ADDS            R0, #1
2CBFFC:  CMP.W           R0, #0x1000
2CC000:  BNE             loc_2CBFE6
2CC002:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr - 0x2CC008)
2CC004:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr
2CC006:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool ...
2CC008:  STR             R4, [R0]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool
2CC00A:  MOVS            R0, #0x14; unsigned int
2CC00C:  BLX             _Znwj; operator new(uint)
2CC010:  MOV             R4, R0
2CC012:  MOV.W           R0, #0x3000; unsigned int
2CC016:  BLX             _Znaj; operator new[](uint)
2CC01A:  STR             R0, [R4]
2CC01C:  MOV.W           R0, #0x400; unsigned int
2CC020:  MOV.W           R5, #0x400
2CC024:  BLX             _Znaj; operator new[](uint)
2CC028:  MOVS            R1, #1
2CC02A:  MOVS            R2, #0x80
2CC02C:  STRB            R1, [R4,#0x10]
2CC02E:  MOV.W           R1, #0xFFFFFFFF
2CC032:  STRD.W          R0, R5, [R4,#4]
2CC036:  STR             R1, [R4,#0xC]
2CC038:  LDRB            R1, [R0,#1]
2CC03A:  STRB            R2, [R0]
2CC03C:  ORR.W           R1, R1, #0x80
2CC040:  STRB            R1, [R0,#1]
2CC042:  LDR             R0, [R4,#4]
2CC044:  LDRB            R1, [R0,#1]
2CC046:  AND.W           R1, R1, #0x80
2CC04A:  STRB            R1, [R0,#1]
2CC04C:  MOVS            R0, #2
2CC04E:  LDR             R1, [R4,#4]
2CC050:  LDRB            R2, [R1,R0]
2CC052:  ORR.W           R2, R2, #0x80
2CC056:  STRB            R2, [R1,R0]
2CC058:  LDR             R1, [R4,#4]
2CC05A:  LDRB            R2, [R1,R0]
2CC05C:  AND.W           R2, R2, #0x80
2CC060:  STRB            R2, [R1,R0]
2CC062:  ADDS            R0, #1
2CC064:  CMP.W           R0, #0x400
2CC068:  BNE             loc_2CC04E
2CC06A:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeAtmDataPoolE_ptr - 0x2CC070)
2CC06C:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeAtmDataPoolE_ptr
2CC06E:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_gEnvMapPipeAtmDataPool ...
2CC070:  STR             R4, [R0]; CCustomCarEnvMapPipeline::m_gEnvMapPipeAtmDataPool
2CC072:  MOVS            R0, #0x14; unsigned int
2CC074:  BLX             _Znwj; operator new(uint)
2CC078:  MOV             R4, R0
2CC07A:  MOV.W           R0, #0x8000; unsigned int
2CC07E:  BLX             _Znaj; operator new[](uint)
2CC082:  STR             R0, [R4]
2CC084:  MOV.W           R0, #0x1000; unsigned int
2CC088:  MOV.W           R5, #0x1000
2CC08C:  BLX             _Znaj; operator new[](uint)
2CC090:  MOVS            R1, #1
2CC092:  MOVS            R2, #0x80
2CC094:  STRB            R1, [R4,#0x10]
2CC096:  MOV.W           R1, #0xFFFFFFFF
2CC09A:  STRD.W          R0, R5, [R4,#4]
2CC09E:  STR             R1, [R4,#0xC]
2CC0A0:  LDRB            R1, [R0,#1]
2CC0A2:  STRB            R2, [R0]
2CC0A4:  ORR.W           R1, R1, #0x80
2CC0A8:  STRB            R1, [R0,#1]
2CC0AA:  LDR             R0, [R4,#4]
2CC0AC:  LDRB            R1, [R0,#1]
2CC0AE:  AND.W           R1, R1, #0x80
2CC0B2:  STRB            R1, [R0,#1]
2CC0B4:  MOVS            R0, #2
2CC0B6:  LDR             R1, [R4,#4]
2CC0B8:  LDRB            R2, [R1,R0]
2CC0BA:  ORR.W           R2, R2, #0x80
2CC0BE:  STRB            R2, [R1,R0]
2CC0C0:  LDR             R1, [R4,#4]
2CC0C2:  LDRB            R2, [R1,R0]
2CC0C4:  AND.W           R2, R2, #0x80
2CC0C8:  STRB            R2, [R1,R0]
2CC0CA:  ADDS            R0, #1
2CC0CC:  CMP.W           R0, #0x1000
2CC0D0:  BNE             loc_2CC0B6
2CC0D2:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline25m_gSpecMapPipeMatDataPoolE_ptr - 0x2CC0D8)
2CC0D4:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline25m_gSpecMapPipeMatDataPoolE_ptr
2CC0D6:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_gSpecMapPipeMatDataPool ...
2CC0D8:  STR             R4, [R0]; CCustomCarEnvMapPipeline::m_gSpecMapPipeMatDataPool
2CC0DA:  MOVS            R0, #1
2CC0DC:  POP             {R4,R5,R7,PC}
2CC0DE:  MOVS            R0, #0
2CC0E0:  POP             {R4,R5,R7,PC}
