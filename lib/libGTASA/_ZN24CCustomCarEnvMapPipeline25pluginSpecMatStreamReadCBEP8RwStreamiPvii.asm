; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline25pluginSpecMatStreamReadCBEP8RwStreamiPvii
; Address            : 0x2CCCDC - 0x2CCDAA
; =========================================================

2CCCDC:  PUSH            {R4-R7,LR}
2CCCDE:  ADD             R7, SP, #0xC
2CCCE0:  PUSH.W          {R8-R10}
2CCCE4:  SUB             SP, SP, #0x20
2CCCE6:  MOV             R10, R0
2CCCE8:  LDR             R0, =(__stack_chk_guard_ptr - 0x2CCCF4)
2CCCEA:  MOV             R8, R2
2CCCEC:  MOV             R2, R1; size_t
2CCCEE:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr - 0x2CCCF8)
2CCCF0:  ADD             R0, PC; __stack_chk_guard_ptr
2CCCF2:  MOV             R6, SP
2CCCF4:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr
2CCCF6:  LDR             R0, [R0]; __stack_chk_guard
2CCCF8:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset ...
2CCCFA:  LDR             R0, [R0]
2CCCFC:  LDR.W           R9, [R1]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset
2CCD00:  MOV             R1, R6; void *
2CCD02:  STR             R0, [SP,#0x38+var_1C]
2CCD04:  MOV             R0, R10; int
2CCD06:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2CCD0A:  ADR             R0, off_2CCDB4; this
2CCD0C:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
2CCD10:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
2CCD14:  VLDR            S0, [SP,#0x38+var_38]
2CCD18:  VCMP.F32        S0, #0.0
2CCD1C:  VMRS            APSR_nzcv, FPSCR
2CCD20:  BEQ             loc_2CCD8E
2CCD22:  ADDS            R0, R6, #4; char *
2CCD24:  MOVS            R1, #0; char *
2CCD26:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
2CCD2A:  CBZ             R0, loc_2CCD8E
2CCD2C:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline25m_gSpecMapPipeMatDataPoolE_ptr - 0x2CCD34)
2CCD2E:  MOVS            R6, #0
2CCD30:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline25m_gSpecMapPipeMatDataPoolE_ptr
2CCD32:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::m_gSpecMapPipeMatDataPool ...
2CCD34:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::m_gSpecMapPipeMatDataPool
2CCD36:  LDRD.W          R3, R2, [R1,#8]
2CCD3A:  ADDS            R2, #1
2CCD3C:  STR             R2, [R1,#0xC]
2CCD3E:  CMP             R2, R3
2CCD40:  BNE             loc_2CCD4C
2CCD42:  MOVS            R2, #0
2CCD44:  LSLS            R6, R6, #0x1F
2CCD46:  STR             R2, [R1,#0xC]
2CCD48:  BNE             loc_2CCD8A
2CCD4A:  MOVS            R6, #1
2CCD4C:  LDR             R5, [R1,#4]
2CCD4E:  LDRSB           R4, [R5,R2]
2CCD50:  CMP.W           R4, #0xFFFFFFFF
2CCD54:  BGT             loc_2CCD3A
2CCD56:  AND.W           R3, R4, #0x7F
2CCD5A:  STRB            R3, [R5,R2]
2CCD5C:  LDR             R2, [R1,#4]
2CCD5E:  LDR             R3, [R1,#0xC]
2CCD60:  LDRB            R6, [R2,R3]
2CCD62:  AND.W           R5, R6, #0x80
2CCD66:  ADDS            R6, #1
2CCD68:  AND.W           R6, R6, #0x7F
2CCD6C:  ORRS            R6, R5
2CCD6E:  STRB            R6, [R2,R3]
2CCD70:  LDR             R2, [R1]
2CCD72:  LDR             R1, [R1,#0xC]
2CCD74:  ADD.W           R3, R2, R1,LSL#3
2CCD78:  STR.W           R3, [R8,R9]
2CCD7C:  CMP             R3, #0
2CCD7E:  ITTT NE
2CCD80:  STRNE           R0, [R3,#4]
2CCD82:  LDRNE           R0, [SP,#0x38+var_38]
2CCD84:  STRNE.W         R0, [R2,R1,LSL#3]
2CCD88:  B               loc_2CCD8E
2CCD8A:  STR.W           R2, [R8,R9]
2CCD8E:  LDR             R0, =(__stack_chk_guard_ptr - 0x2CCD96)
2CCD90:  LDR             R1, [SP,#0x38+var_1C]
2CCD92:  ADD             R0, PC; __stack_chk_guard_ptr
2CCD94:  LDR             R0, [R0]; __stack_chk_guard
2CCD96:  LDR             R0, [R0]
2CCD98:  SUBS            R0, R0, R1
2CCD9A:  ITTTT EQ
2CCD9C:  MOVEQ           R0, R10
2CCD9E:  ADDEQ           SP, SP, #0x20 ; ' '
2CCDA0:  POPEQ.W         {R8-R10}
2CCDA4:  POPEQ           {R4-R7,PC}
2CCDA6:  BLX             __stack_chk_fail
