; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline26pluginSpecMatStreamWriteCBEP8RwStreamiPKvii
; Address            : 0x2CCDC0 - 0x2CCE2A
; =========================================================

2CCDC0:  PUSH            {R4,R5,R7,LR}
2CCDC2:  ADD             R7, SP, #8
2CCDC4:  SUB             SP, SP, #0x20
2CCDC6:  MOV             R4, R0
2CCDC8:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr - 0x2CCDD2)
2CCDCA:  MOV             R5, R1
2CCDCC:  LDR             R1, =(__stack_chk_guard_ptr - 0x2CCDD8)
2CCDCE:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline26ms_specularMapPluginOffsetE_ptr
2CCDD0:  VMOV.I32        Q8, #0
2CCDD4:  ADD             R1, PC; __stack_chk_guard_ptr
2CCDD6:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset ...
2CCDD8:  LDR             R1, [R1]; __stack_chk_guard
2CCDDA:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::ms_specularMapPluginOffset
2CCDDC:  LDR             R1, [R1]
2CCDDE:  STR             R1, [SP,#0x28+var_C]
2CCDE0:  LDR             R1, [R2,R0]
2CCDE2:  MOV             R0, SP
2CCDE4:  ADD.W           R2, R0, #0xC
2CCDE8:  CMP             R1, #0
2CCDEA:  VST1.32         {D16-D17}, [R2]
2CCDEE:  VST1.64         {D16-D17}, [R0,#0x28+var_28]
2CCDF2:  BEQ             loc_2CCE08
2CCDF4:  LDR             R2, [R1]
2CCDF6:  STR             R2, [SP,#0x28+var_28]
2CCDF8:  LDR             R1, [R1,#4]
2CCDFA:  CBZ             R1, loc_2CCE08
2CCDFC:  ORR.W           R0, R0, #4; char *
2CCE00:  ADDS            R1, #0x10; char *
2CCE02:  MOVS            R2, #0x18; size_t
2CCE04:  BLX             strncpy
2CCE08:  MOV             R1, SP; void *
2CCE0A:  MOV             R0, R4; int
2CCE0C:  MOV             R2, R5; size_t
2CCE0E:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
2CCE12:  LDR             R0, =(__stack_chk_guard_ptr - 0x2CCE1A)
2CCE14:  LDR             R1, [SP,#0x28+var_C]
2CCE16:  ADD             R0, PC; __stack_chk_guard_ptr
2CCE18:  LDR             R0, [R0]; __stack_chk_guard
2CCE1A:  LDR             R0, [R0]
2CCE1C:  SUBS            R0, R0, R1
2CCE1E:  ITTT EQ
2CCE20:  MOVEQ           R0, R4
2CCE22:  ADDEQ           SP, SP, #0x20 ; ' '
2CCE24:  POPEQ           {R4,R5,R7,PC}
2CCE26:  BLX             __stack_chk_fail
