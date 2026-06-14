; =========================================================
; Game Engine Function: sub_59CA3C
; Address            : 0x59CA3C - 0x59CE66
; =========================================================

59CA3C:  PUSH            {R4-R7,LR}
59CA3E:  ADD             R7, SP, #0xC
59CA40:  PUSH.W          {R8-R11}
59CA44:  SUB             SP, SP, #0x8C
59CA46:  MOV             R4, R0
59CA48:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x59CA56)
59CA4C:  LDR.W           R1, =(dword_6B15D4 - 0x59CA58)
59CA50:  MOV             R6, R2
59CA52:  ADD             R0, PC; __stack_chk_guard_ptr
59CA54:  ADD             R1, PC; dword_6B15D4 ; char *
59CA56:  LDR             R0, [R0]; __stack_chk_guard
59CA58:  LDR             R0, [R0]
59CA5A:  STR             R0, [SP,#0xA8+var_20]
59CA5C:  LDR             R0, [R1]
59CA5E:  ADDS            R0, #1
59CA60:  BNE             loc_59CA72
59CA62:  ADR.W           R0, aParticle_9; "particle"
59CA66:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
59CA6A:  LDR.W           R1, =(dword_6B15D4 - 0x59CA72)
59CA6E:  ADD             R1, PC; dword_6B15D4
59CA70:  STR             R0, [R1]
59CA72:  ADD             R1, SP, #0xA8+var_7C
59CA74:  MOV             R0, R4
59CA76:  MOVS            R2, #4
59CA78:  MOVS            R5, #4
59CA7A:  BLX.W           j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
59CA7E:  LDR             R0, [SP,#0xA8+var_7C]
59CA80:  CMP             R0, #0
59CA82:  BEQ.W           loc_59CE4A
59CA86:  ORR.W           R0, R5, R0,LSL#6; byte_count
59CA8A:  STR             R6, [SP,#0xA8+var_90]
59CA8C:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
59CA90:  LDR             R1, [SP,#0xA8+var_7C]
59CA92:  STR             R0, [SP,#0xA8+var_94]
59CA94:  CMP             R1, #0
59CA96:  BEQ.W           loc_59CE38
59CA9A:  ADD             R5, SP, #0xA8+var_78
59CA9C:  ADD.W           R8, R0, #4
59CAA0:  ADD.W           R0, R5, #0x10
59CAA4:  STR             R0, [SP,#0xA8+var_98]
59CAA6:  ADD.W           R0, R5, #0x28 ; '('
59CAAA:  STR             R0, [SP,#0xA8+var_9C]
59CAAC:  ADD.W           R0, R5, #0x20 ; ' '
59CAB0:  STR             R0, [SP,#0xA8+var_A0]
59CAB2:  ADD.W           R0, R5, #0x16
59CAB6:  ADD.W           R10, SP, #0xA8+var_84
59CABA:  ADD.W           R11, SP, #0xA8+var_80
59CABE:  STR             R0, [SP,#0xA8+var_A4]
59CAC0:  ADD.W           R0, R5, #0x31 ; '1'
59CAC4:  MOVS            R6, #0
59CAC6:  STR             R0, [SP,#0xA8+var_88]
59CAC8:  ADD.W           R0, R5, #0x19
59CACC:  STR             R0, [SP,#0xA8+var_8C]
59CACE:  B               loc_59CB60
59CAD0:  MOV             R0, R4; int
59CAD2:  MOV             R1, R5; void *
59CAD4:  MOVS            R2, #0x4C ; 'L'; size_t
59CAD6:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
59CADA:  MOV             R0, R5
59CADC:  ADD.W           R1, R9, #0x10
59CAE0:  VLD1.32         {D16-D17}, [R0]!
59CAE4:  VST1.8          {D16-D17}, [R1]
59CAE8:  LDR             R0, [R0]
59CAEA:  STR.W           R0, [R9,#0x20]
59CAEE:  LDRB.W          R0, [SP,#0xA8+var_64]
59CAF2:  STRB.W          R0, [R9,#0x26]
59CAF6:  LDRB.W          R0, [SP,#0xA8+var_64+1]
59CAFA:  STRB.W          R0, [R9,#0x27]
59CAFE:  LDRB.W          R0, [SP,#0xA8+var_64+2]
59CB02:  STRB.W          R0, [R9,#0x28]
59CB06:  LDRB.W          R0, [SP,#0xA8+var_64+3]
59CB0A:  STRB.W          R0, [R9,#0x29]
59CB0E:  LDRB.W          R1, [SP,#0xA8+var_2E]
59CB12:  LDRB.W          R0, [SP,#0xA8+var_60]
59CB16:  ORR.W           R0, R0, R1,LSL#8
59CB1A:  STRH.W          R0, [R9,#0x24]
59CB1E:  LDRB.W          R0, [SP,#0xA8+var_2F]
59CB22:  STRB.W          R0, [R9,#0x2A]
59CB26:  MOVS            R0, #0
59CB28:  STRH.W          R0, [R9,#0x2B]
59CB2C:  MOVS            R0, #dword_64; this
59CB2E:  STRB.W          R0, [R9,#0x2D]
59CB32:  BLX.W           j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
59CB36:  LDR             R0, =(dword_6B15D4 - 0x59CB3C)
59CB38:  ADD             R0, PC; dword_6B15D4
59CB3A:  LDR             R0, [R0]; this
59CB3C:  MOVS            R1, #0; int
59CB3E:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
59CB42:  LDR             R0, [SP,#0xA8+var_8C]; char *
59CB44:  MOVS            R1, #0; char *
59CB46:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
59CB4A:  STR.W           R0, [R9,#0x30]
59CB4E:  MOVS            R1, #0; char *
59CB50:  LDR             R0, [SP,#0xA8+var_88]; char *
59CB52:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
59CB56:  STR.W           R0, [R9,#0x34]
59CB5A:  BLX.W           j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
59CB5E:  B               def_59CB92; jumptable 0059CB92 default case, cases 2,4,5
59CB60:  ADD.W           R9, R8, R6,LSL#6
59CB64:  MOV             R0, R4
59CB66:  MOVS            R2, #0xC
59CB68:  MOV             R1, R9
59CB6A:  BLX.W           j__Z16RwStreamReadRealP8RwStreamPfj; RwStreamReadReal(RwStream *,float *,uint)
59CB6E:  MOV             R0, R4
59CB70:  MOV             R1, R10
59CB72:  MOVS            R2, #4
59CB74:  BLX.W           j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
59CB78:  LDR             R0, [SP,#0xA8+var_84]
59CB7A:  MOV             R1, R11
59CB7C:  STRB.W          R0, [R9,#0xC]
59CB80:  MOV             R0, R4
59CB82:  MOVS            R2, #4
59CB84:  BLX.W           j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
59CB88:  LDRB.W          R0, [R9,#0xC]
59CB8C:  CMP             R0, #0xA; switch 11 cases
59CB8E:  BHI.W           def_59CB92; jumptable 0059CB92 default case, cases 2,4,5
59CB92:  TBH.W           [PC,R0,LSL#1]; switch jump
59CB96:  DCW 0xB; jump table for switch statement
59CB98:  DCW 0x4E
59CB9A:  DCW 0x14B
59CB9C:  DCW 0x5D
59CB9E:  DCW 0x14B
59CBA0:  DCW 0x14B
59CBA2:  DCW 0x96
59CBA4:  DCW 0xD0
59CBA6:  DCW 0x109
59CBA8:  DCW 0x115
59CBAA:  DCW 0x126
59CBAC:  LDR             R2, [SP,#0xA8+var_80]; jumptable 0059CB92 case 0
59CBAE:  CMP             R2, #0x4C ; 'L'
59CBB0:  BEQ.W           loc_59CAD0
59CBB4:  CMP             R2, #0x50 ; 'P'
59CBB6:  BNE.W           loc_59CE1C
59CBBA:  MOV             R0, R4; int
59CBBC:  MOV             R1, R5; void *
59CBBE:  MOVS            R2, #0x50 ; 'P'; size_t
59CBC0:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
59CBC4:  MOV             R0, R5
59CBC6:  ADD.W           R1, R9, #0x10
59CBCA:  VLD1.32         {D16-D17}, [R0]!
59CBCE:  VST1.8          {D16-D17}, [R1]
59CBD2:  LDR             R0, [R0]
59CBD4:  STR.W           R0, [R9,#0x20]
59CBD8:  LDRB.W          R0, [SP,#0xA8+var_64]
59CBDC:  STRB.W          R0, [R9,#0x26]
59CBE0:  LDRB.W          R0, [SP,#0xA8+var_64+1]
59CBE4:  STRB.W          R0, [R9,#0x27]
59CBE8:  LDRB.W          R0, [SP,#0xA8+var_64+2]
59CBEC:  STRB.W          R0, [R9,#0x28]
59CBF0:  LDRB.W          R0, [SP,#0xA8+var_64+3]
59CBF4:  STRB.W          R0, [R9,#0x29]
59CBF8:  LDRB.W          R1, [SP,#0xA8+var_2E]
59CBFC:  LDRB.W          R0, [SP,#0xA8+var_60]
59CC00:  ORR.W           R0, R0, R1,LSL#8
59CC04:  STRH.W          R0, [R9,#0x24]
59CC08:  LDRB.W          R0, [SP,#0xA8+var_2F]
59CC0C:  STRB.W          R0, [R9,#0x2A]
59CC10:  LDRB.W          R0, [SP,#0xA8+var_2D]
59CC14:  STRB.W          R0, [R9,#0x2B]
59CC18:  LDRB.W          R0, [SP,#0xA8+var_2C]
59CC1C:  STRB.W          R0, [R9,#0x2C]
59CC20:  LDRB.W          R0, [SP,#0xA8+var_2B]; this
59CC24:  STRB.W          R0, [R9,#0x2D]
59CC28:  BLX.W           j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
59CC2C:  LDR             R0, =(dword_6B15D4 - 0x59CC32)
59CC2E:  ADD             R0, PC; dword_6B15D4
59CC30:  B               loc_59CB3A
59CC32:  LDR             R2, [SP,#0xA8+var_80]; jumptable 0059CB92 case 1
59CC34:  CMP             R2, #0x18
59CC36:  BNE.W           loc_59CE1C
59CC3A:  MOV             R0, R4; int
59CC3C:  MOV             R1, R5; void *
59CC3E:  MOVS            R2, #0x18; size_t
59CC40:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
59CC44:  ADD.W           R0, R9, #0x10; char *
59CC48:  MOV             R1, R5; char *
59CC4A:  BLX.W           strcpy
59CC4E:  B               def_59CB92; jumptable 0059CB92 default case, cases 2,4,5
59CC50:  LDR             R2, [SP,#0xA8+var_80]; jumptable 0059CB92 case 3
59CC52:  CMP             R2, #0x38 ; '8'
59CC54:  BNE.W           loc_59CE1C
59CC58:  MOV             R0, R4; int
59CC5A:  MOV             R1, R5; void *
59CC5C:  MOVS            R2, #0x38 ; '8'; size_t
59CC5E:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
59CC62:  LDR             R0, [SP,#0xA8+var_74]
59CC64:  MOVS            R2, #8; size_t
59CC66:  STR.W           R0, [R9,#0x10]
59CC6A:  LDR             R0, [SP,#0xA8+var_70]
59CC6C:  STR.W           R0, [R9,#0x14]
59CC70:  LDR             R0, [SP,#0xA8+var_6C]
59CC72:  STR.W           R0, [R9,#0x18]
59CC76:  LDR             R0, [SP,#0xA8+var_68]
59CC78:  STR.W           R0, [R9,#0x1C]
59CC7C:  LDR             R0, [SP,#0xA8+var_64]
59CC7E:  STR.W           R0, [R9,#0x20]
59CC82:  LDR             R0, [SP,#0xA8+var_60]
59CC84:  STR.W           R0, [R9,#0x24]
59CC88:  LDR             R0, [SP,#0xA8+var_5C]
59CC8A:  STR.W           R0, [R9,#0x28]
59CC8E:  LDR             R0, [SP,#0xA8+var_58]
59CC90:  STR.W           R0, [R9,#0x2C]
59CC94:  LDR             R0, [SP,#0xA8+var_54]
59CC96:  STR.W           R0, [R9,#0x30]
59CC9A:  LDR             R0, [SP,#0xA8+var_78]
59CC9C:  STRB.W          R0, [R9,#0x34]
59CCA0:  LDR             R0, [SP,#0xA8+var_48]
59CCA2:  STRB.W          R0, [R9,#0x35]
59CCA6:  LDRB.W          R0, [SP,#0xA8+var_44]
59CCAA:  STRB.W          R0, [R9,#0x36]
59CCAE:  LDRB.W          R0, [SP,#0xA8+var_42]
59CCB2:  STRB.W          R0, [R9,#0x37]
59CCB6:  ADD.W           R0, R9, #0x38 ; '8'; char *
59CCBA:  LDR             R1, [SP,#0xA8+var_9C]; char *
59CCBC:  BLX             strncpy
59CCC0:  B               def_59CB92; jumptable 0059CB92 default case, cases 2,4,5
59CCC2:  LDR             R2, [SP,#0xA8+var_80]; jumptable 0059CB92 case 6
59CCC4:  MOV.W           R0, #0x1800
59CCC8:  STRH.W          R0, [SP,#0xA8+var_50]
59CCCC:  ORR.W           R0, R2, #4
59CCD0:  CMP             R0, #0x2C ; ','
59CCD2:  BNE.W           loc_59CE1C
59CCD6:  MOV             R0, R4; int
59CCD8:  MOV             R1, R5; void *
59CCDA:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
59CCDE:  MOV             R0, R5
59CCE0:  ADD.W           R1, R9, #0x10
59CCE4:  VLD1.32         {D16-D17}, [R0]!
59CCE8:  ADD.W           R3, R9, #0x20 ; ' '
59CCEC:  VST1.32         {D16-D17}, [R1]
59CCF0:  LDR             R0, [R0]
59CCF2:  LDRD.W          R1, R2, [SP,#0xA8+var_64]
59CCF6:  STM             R3!, {R0-R2}
59CCF8:  MOVS            R2, #8; size_t
59CCFA:  LDRH.W          R0, [SP,#0xA8+var_5C]
59CCFE:  STRH.W          R0, [R9,#0x2C]
59CD02:  LDRB.W          R0, [SP,#0xA8+var_5C+2]
59CD06:  STRB.W          R0, [R9,#0x2E]
59CD0A:  LDRB.W          R0, [SP,#0xA8+var_5C+3]
59CD0E:  STRB.W          R0, [R9,#0x2F]
59CD12:  ADD.W           R0, R9, #0x30 ; '0'; char *
59CD16:  LDR             R1, [SP,#0xA8+var_A0]; char *
59CD18:  BLX             strncpy
59CD1C:  LDRB.W          R0, [SP,#0xA8+var_50]
59CD20:  STRB.W          R0, [R9,#0x38]
59CD24:  LDRB.W          R0, [SP,#0xA8+var_50+1]
59CD28:  STRB.W          R0, [R9,#0x39]
59CD2C:  LDRB.W          R0, [SP,#0xA8+var_4E]
59CD30:  STRB.W          R0, [R9,#0x3A]
59CD34:  B               def_59CB92; jumptable 0059CB92 default case, cases 2,4,5
59CD36:  LDR             R2, [SP,#0xA8+var_80]; jumptable 0059CB92 case 7
59CD38:  CMP             R2, #0x58 ; 'X'
59CD3A:  BNE             loc_59CE1C
59CD3C:  MOV             R0, R4; int
59CD3E:  MOV             R1, R5; void *
59CD40:  MOVS            R2, #0x58 ; 'X'; size_t
59CD42:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
59CD46:  MOV             R0, R5
59CD48:  ADD.W           R1, R9, #0x10; unsigned int
59CD4C:  VLD1.32         {D16-D17}, [R0]!
59CD50:  VST1.32         {D16-D17}, [R1]
59CD54:  LDR             R0, [R0]
59CD56:  STR.W           R0, [R9,#0x20]
59CD5A:  LDRH.W          R0, [SP,#0xA8+var_64]
59CD5E:  STRH.W          R0, [R9,#0x24]
59CD62:  MOVS            R0, #0
59CD64:  STR.W           R0, [R9,#0x2C]
59CD68:  MOVS            R0, #0x40 ; '@'; byte_count
59CD6A:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
59CD6E:  STR.W           R0, [R9,#0x28]
59CD72:  LDR             R3, [SP,#0xA8+var_A4]
59CD74:  ADD.W           R2, R3, #0x30 ; '0'
59CD78:  MOV             R1, R3
59CD7A:  VLD1.8          {D18-D19}, [R2]
59CD7E:  ADD.W           R2, R3, #0x20 ; ' '
59CD82:  VLD1.8          {D16-D17}, [R1]!
59CD86:  VLD1.8          {D22-D23}, [R1]
59CD8A:  ADD.W           R1, R0, #0x30 ; '0'
59CD8E:  VLD1.8          {D20-D21}, [R2]
59CD92:  VST1.8          {D18-D19}, [R1]
59CD96:  ADD.W           R1, R0, #0x20 ; ' '
59CD9A:  VST1.8          {D20-D21}, [R1]
59CD9E:  VST1.8          {D16-D17}, [R0]!
59CDA2:  VST1.8          {D22-D23}, [R0]
59CDA6:  B               def_59CB92; jumptable 0059CB92 default case, cases 2,4,5
59CDA8:  LDR             R2, [SP,#0xA8+var_80]; jumptable 0059CB92 case 8
59CDAA:  CMP             R2, #4
59CDAC:  BNE             loc_59CE1C
59CDAE:  MOV             R0, R4; int
59CDB0:  MOV             R1, R5; void *
59CDB2:  MOVS            R2, #4; size_t
59CDB4:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
59CDB8:  LDR             R0, [SP,#0xA8+var_78]
59CDBA:  STR.W           R0, [R9,#0x10]
59CDBE:  B               def_59CB92; jumptable 0059CB92 default case, cases 2,4,5
59CDC0:  LDR             R2, [SP,#0xA8+var_80]; jumptable 0059CB92 case 9
59CDC2:  CMP             R2, #0xC
59CDC4:  BNE             loc_59CE1C
59CDC6:  MOV             R0, R4; int
59CDC8:  MOV             R1, R5; void *
59CDCA:  MOVS            R2, #0xC; size_t
59CDCC:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
59CDD0:  LDRD.W          R0, R1, [SP,#0xA8+var_78]
59CDD4:  STRD.W          R0, R1, [R9,#0x10]
59CDD8:  LDRB.W          R0, [SP,#0xA8+var_70]
59CDDC:  STRB.W          R0, [R9,#0x18]
59CDE0:  B               def_59CB92; jumptable 0059CB92 default case, cases 2,4,5
59CDE2:  LDR             R2, [SP,#0xA8+var_80]; jumptable 0059CB92 case 10
59CDE4:  CMP             R2, #0x28 ; '('
59CDE6:  BNE             loc_59CE1C
59CDE8:  MOV             R0, R4; int
59CDEA:  MOV             R1, R5; void *
59CDEC:  MOVS            R2, #0x28 ; '('; size_t
59CDEE:  BLX.W           j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
59CDF2:  LDRB.W          R0, [SP,#0xA8+var_54]
59CDF6:  STRB.W          R0, [R9,#0x34]
59CDFA:  ADD.W           R0, R9, #0x10
59CDFE:  VLD1.32         {D16-D17}, [R5]
59CE02:  VST1.32         {D16-D17}, [R0]
59CE06:  LDR             R0, [SP,#0xA8+var_98]
59CE08:  VLD1.32         {D16-D17}, [R0]
59CE0C:  ADD.W           R0, R9, #0x20 ; ' '
59CE10:  VST1.32         {D16-D17}, [R0]
59CE14:  LDR             R0, [SP,#0xA8+var_58]
59CE16:  STR.W           R0, [R9,#0x30]
59CE1A:  B               def_59CB92; jumptable 0059CB92 default case, cases 2,4,5
59CE1C:  MOV             R0, R4
59CE1E:  MOV             R1, R2
59CE20:  BLX.W           j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
59CE24:  LDR             R0, [SP,#0xA8+var_7C]
59CE26:  SUBS            R6, #1
59CE28:  SUBS            R0, #1
59CE2A:  STR             R0, [SP,#0xA8+var_7C]
59CE2C:  LDR             R0, [SP,#0xA8+var_7C]; jumptable 0059CB92 default case, cases 2,4,5
59CE2E:  ADDS            R6, #1
59CE30:  CMP             R6, R0
59CE32:  BCC.W           loc_59CB60
59CE36:  B               loc_59CE3A
59CE38:  MOVS            R0, #0
59CE3A:  LDR             R1, =(g2dEffectPluginOffset_ptr - 0x59CE42)
59CE3C:  LDR             R2, [SP,#0xA8+var_94]
59CE3E:  ADD             R1, PC; g2dEffectPluginOffset_ptr
59CE40:  LDR             R1, [R1]; g2dEffectPluginOffset
59CE42:  STR             R0, [R2]
59CE44:  LDR             R0, [R1]
59CE46:  LDR             R1, [SP,#0xA8+var_90]
59CE48:  STR             R2, [R1,R0]
59CE4A:  LDR             R0, =(__stack_chk_guard_ptr - 0x59CE52)
59CE4C:  LDR             R1, [SP,#0xA8+var_20]
59CE4E:  ADD             R0, PC; __stack_chk_guard_ptr
59CE50:  LDR             R0, [R0]; __stack_chk_guard
59CE52:  LDR             R0, [R0]
59CE54:  SUBS            R0, R0, R1
59CE56:  ITTTT EQ
59CE58:  MOVEQ           R0, R4
59CE5A:  ADDEQ           SP, SP, #0x8C
59CE5C:  POPEQ.W         {R8-R11}
59CE60:  POPEQ           {R4-R7,PC}
59CE62:  BLX.W           __stack_chk_fail
