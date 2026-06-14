; =========================================================
; Game Engine Function: _Z17RpLightStreamReadP8RwStream
; Address            : 0x216C40 - 0x216DFC
; =========================================================

216C40:  PUSH            {R4-R7,LR}
216C42:  ADD             R7, SP, #0xC
216C44:  PUSH.W          {R8}
216C48:  SUB             SP, SP, #0x20
216C4A:  ADD             R2, SP, #0x30+var_14
216C4C:  ADD             R3, SP, #0x30+var_18
216C4E:  MOVS            R1, #1
216C50:  MOV             R4, R0
216C52:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
216C56:  CMP             R0, #0
216C58:  BEQ.W           loc_216D94
216C5C:  LDR             R0, [SP,#0x30+var_18]
216C5E:  MOVW            R1, #0x2003
216C62:  SUB.W           R0, R0, #0x34000
216C66:  CMP             R0, R1
216C68:  BHI.W           loc_216D98
216C6C:  VMOV.I32        Q8, #0
216C70:  MOV             R1, SP; void *
216C72:  MOV             R0, R1
216C74:  LDR             R2, [SP,#0x30+var_14]; size_t
216C76:  MOVS            R5, #0
216C78:  VST1.64         {D16-D17}, [R0]!
216C7C:  STR             R5, [R0]
216C7E:  MOV             R0, R4; int
216C80:  STR             R5, [SP,#0x30+var_1C]
216C82:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
216C86:  LDR             R1, [SP,#0x30+var_14]
216C88:  CMP             R0, R1
216C8A:  BNE.W           loc_216DF2
216C8E:  MOV             R8, SP
216C90:  MOVS            R1, #0x18; unsigned int
216C92:  MOV             R0, R8; void *
216C94:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
216C98:  LDR             R0, =(RwEngineInstance_ptr - 0x216CA0)
216C9A:  LDR             R1, =(dword_6BD5C8 - 0x216CA4)
216C9C:  ADD             R0, PC; RwEngineInstance_ptr
216C9E:  LDR             R6, [SP,#0x30+var_1C]
216CA0:  ADD             R1, PC; dword_6BD5C8
216CA2:  LDR             R0, [R0]; RwEngineInstance
216CA4:  LDR             R1, [R1]
216CA6:  LDR             R2, [R0]
216CA8:  LDR             R0, [R2,R1]
216CAA:  LDR.W           R1, [R2,#0x13C]
216CAE:  BLX             R1
216CB0:  MOV             R5, R0
216CB2:  MOVS            R0, #0
216CB4:  CMP             R5, #0
216CB6:  BEQ             loc_216D94
216CB8:  ADR             R3, dword_216E00
216CBA:  LDR.W           R12, =(RwEngineInstance_ptr - 0x216CCA)
216CBE:  VLD1.64         {D16-D17}, [R3@128]
216CC2:  MOVS            R3, #3
216CC4:  MOVS            R2, #1
216CC6:  ADD             R12, PC; RwEngineInstance_ptr
216CC8:  STRB            R3, [R5]
216CCA:  MOV.W           R1, #0x3F800000
216CCE:  STRB            R0, [R5,#2]
216CD0:  STR             R0, [R5,#4]
216CD2:  STRB.W          R0, [R5,#0x3E]
216CD6:  STRB            R2, [R5,#3]
216CD8:  ADD.W           R2, R5, #0x2C ; ','
216CDC:  STRD.W          R1, R1, [R5,#0x24]
216CE0:  ADD.W           R1, R5, #0x14
216CE4:  STRD.W          R2, R2, [R5,#0x2C]
216CE8:  MOVW            R2, #0xFFFF
216CEC:  STRD.W          R0, R0, [R5,#0x34]
216CF0:  LSRS            R0, R6, #0x10
216CF2:  LDR.W           LR, =(nullsub_12+1 - 0x216D00)
216CF6:  STRB            R0, [R5,#1]
216CF8:  LDR.W           R0, [R12]; RwEngineInstance
216CFC:  ADD             LR, PC; nullsub_12
216CFE:  STR.W           LR, [R5,#0x10]
216D02:  VST1.32         {D16-D17}, [R1]
216D06:  LDR             R0, [R0]
216D08:  LDRH            R1, [R0,#0xA]
216D0A:  LDR             R0, =(dword_683B90 - 0x216D14)
216D0C:  ADD             R1, R2
216D0E:  STRB            R3, [R5,#2]
216D10:  ADD             R0, PC; dword_683B90
216D12:  STRH            R1, [R5,#0x3C]
216D14:  MOV             R1, R5
216D16:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
216D1A:  MOV             R0, R8; void *
216D1C:  MOVS            R1, #4; unsigned int
216D1E:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
216D22:  ORR.W           R0, R8, #4; void *
216D26:  MOVS            R1, #4; unsigned int
216D28:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
216D2C:  ADD.W           R0, R8, #8; void *
216D30:  MOVS            R1, #4; unsigned int
216D32:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
216D36:  ADD.W           R0, R8, #0xC; void *
216D3A:  MOVS            R1, #4; unsigned int
216D3C:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
216D40:  ADD.W           R0, R8, #0x10; void *
216D44:  MOVS            R1, #4; unsigned int
216D46:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
216D4A:  LDRD.W          R2, R0, [SP,#0x30+var_30]
216D4E:  LDRD.W          R1, R3, [SP,#0x30+var_28]
216D52:  STRD.W          R2, R0, [R5,#0x14]
216D56:  STRD.W          R1, R3, [R5,#0x1C]
216D5A:  MOVW            R3, #:lower16:(stru_302F8.st_value+3)
216D5E:  LDR             R2, [SP,#0x30+var_18]
216D60:  MOVT            R3, #:upper16:(stru_302F8.st_value+3)
216D64:  CMP             R2, R3
216D66:  BHI             loc_216DB0
216D68:  VLDR            S0, [SP,#0x30+var_20]
216D6C:  VMOV.F32        S2, #1.0
216D70:  VMUL.F32        S0, S0, S0
216D74:  VADD.F32        S0, S0, S2
216D78:  VDIV.F32        S0, S2, S0
216D7C:  VMOV            R0, S0; float
216D80:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
216D84:  VLDR            S0, [R5,#0x18]
216D88:  EOR.W           R0, R0, #0x80000000
216D8C:  VLDR            S2, [R5,#0x1C]
216D90:  STR             R0, [R5,#0x28]
216D92:  B               loc_216DBC
216D94:  MOVS            R5, #0
216D96:  B               loc_216DF2
216D98:  MOVS            R0, #4
216D9A:  MOVS            R5, #0
216D9C:  MOVT            R0, #0x8000; int
216DA0:  STR             R5, [SP,#0x30+var_30]
216DA2:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
216DA6:  STR             R0, [SP,#0x30+var_2C]
216DA8:  MOV             R0, SP
216DAA:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
216DAE:  B               loc_216DF2
216DB0:  VMOV            S0, R0
216DB4:  LDR             R2, [SP,#0x30+var_20]
216DB6:  VMOV            S2, R1
216DBA:  STR             R2, [R5,#0x28]
216DBC:  VCMP.F32        S0, S2
216DC0:  VMRS            APSR_nzcv, FPSCR
216DC4:  ITTT EQ
216DC6:  VLDREQ          S2, [R5,#0x20]
216DCA:  VCMPEQ.F32      S0, S2
216DCE:  VMRSEQ          APSR_nzcv, FPSCR
216DD2:  BNE             loc_216DD8
216DD4:  MOVS            R0, #1
216DD6:  B               loc_216DDA
216DD8:  MOVS            R0, #0
216DDA:  STRB            R0, [R5,#3]
216DDC:  MOV             R2, R5
216DDE:  LDR             R0, =(dword_683B90 - 0x216DE6)
216DE0:  LDR             R1, [SP,#0x30+var_1C]
216DE2:  ADD             R0, PC; dword_683B90 ; int
216DE4:  STRB            R1, [R5,#2]
216DE6:  MOV             R1, R4; int
216DE8:  BLX             j__Z31_rwPluginRegistryReadDataChunksPK16RwPluginRegistryP8RwStreamPv; _rwPluginRegistryReadDataChunks(RwPluginRegistry const*,RwStream *,void *)
216DEC:  CMP             R0, #0
216DEE:  IT EQ
216DF0:  MOVEQ           R5, R0
216DF2:  MOV             R0, R5
216DF4:  ADD             SP, SP, #0x20 ; ' '
216DF6:  POP.W           {R8}
216DFA:  POP             {R4-R7,PC}
