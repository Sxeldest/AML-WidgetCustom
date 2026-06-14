; =========================================================
; Game Engine Function: _ZN4CPed4SaveEv
; Address            : 0x484F64 - 0x4850C2
; =========================================================

484F64:  PUSH            {R4-R7,LR}
484F66:  ADD             R7, SP, #0xC
484F68:  PUSH.W          {R8-R11}
484F6C:  SUB             SP, SP, #4
484F6E:  VPUSH           {D8}
484F72:  SUB             SP, SP, #0x1A8
484F74:  MOV             R4, R0
484F76:  LDR             R0, [R4,#0x14]
484F78:  ADD.W           R1, R0, #0x30 ; '0'
484F7C:  CMP             R0, #0
484F7E:  IT EQ
484F80:  ADDEQ           R1, R4, #4
484F82:  CMP             R0, #0
484F84:  VLDR            D16, [R1]
484F88:  LDR             R1, [R1,#8]
484F8A:  STR             R1, [SP,#0x1D0+var_30]
484F8C:  VSTR            D16, [SP,#0x1D0+var_38]
484F90:  BEQ             loc_484FA4
484F92:  LDRD.W          R2, R1, [R0,#0x10]; x
484F96:  EOR.W           R0, R2, #0x80000000; y
484F9A:  BLX             atan2f
484F9E:  VMOV            S16, R0
484FA2:  B               loc_484FA8
484FA4:  VLDR            S16, [R4,#0x10]
484FA8:  ADDW            R0, R4, #0x484
484FAC:  ADD             R6, SP, #0x1D0+var_1C0
484FAE:  VLD1.16         {D16-D17}, [R0]
484FB2:  ORR.W           R0, R6, #2
484FB6:  LDRB.W          R8, [R4,#0x736]
484FBA:  LDRB.W          R1, [R4,#0x735]
484FBE:  LDRB.W          R2, [R4,#0x33]
484FC2:  LDRB.W          R3, [R4,#0x71C]
484FC6:  LDRB.W          R9, [R4,#0x448]
484FCA:  LDR.W           R10, [R4,#0x54C]
484FCE:  LDR.W           R5, [R4,#0x544]
484FD2:  VST1.16         {D16-D17}, [R0]
484FD6:  LDR.W           R0, [R4,#0x794]
484FDA:  STRD.W          R2, R1, [SP,#0x1D0+var_1C8]
484FDE:  CMP             R0, #0
484FE0:  STRD.W          R5, R3, [SP,#0x1D0+var_1D0]
484FE4:  BEQ             loc_485010
484FE6:  LDR             R1, [R0,#0x38]
484FE8:  CMP             R1, #0
484FEA:  IT EQ
484FEC:  MOVEQ           R1, R0
484FEE:  LDRB.W          R1, [R1,#0x32]
484FF2:  CBZ             R1, loc_485010
484FF4:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x484FFA)
484FF6:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
484FF8:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits ...
484FFA:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits
484FFC:  LDR             R1, [R1]
484FFE:  SUBS            R0, R0, R1
485000:  MOV             R1, #0xEEEEEEEF
485008:  ASRS            R0, R0, #2
48500A:  MUL.W           R11, R0, R1
48500E:  B               loc_485014
485010:  MOV.W           R11, #0xFFFFFFFF
485014:  ADDW            R1, R4, #0x5A4; void *
485018:  ADD             R4, SP, #0x1D0+var_1A8
48501A:  MOV.W           R2, #0x16C; size_t
48501E:  MOV             R0, R4; void *
485020:  BLX             memcpy_0
485024:  MOVS            R0, #4; byte_count
485026:  BLX             malloc
48502A:  MOV             R5, R0
48502C:  MOV.W           R0, #0x1A4
485030:  STR             R0, [R5]
485032:  MOV             R0, R5; this
485034:  MOVS            R1, #byte_4; void *
485036:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48503A:  MOV             R0, R5; p
48503C:  BLX             free
485040:  MOV.W           R0, #0x1A4; byte_count
485044:  BLX             malloc
485048:  MOV             R5, R0
48504A:  VMOV            R0, S16
48504E:  VLDR            D16, [SP,#0x1D0+var_38]
485052:  LDR             R2, [SP,#0x1D0+var_1D0]
485054:  LDR             R1, [SP,#0x1D0+var_30]
485056:  STR             R2, [R5,#0x10]
485058:  MOV.W           R2, #0x16C; size_t
48505C:  STR.W           R10, [R5,#0x14]
485060:  STR             R1, [R5,#8]
485062:  MOV             R1, R4; void *
485064:  VST1.8          {D16}, [R5]
485068:  STR             R0, [R5,#0xC]
48506A:  ADD.W           R0, R5, #0x18; void *
48506E:  BLX             memcpy_1
485072:  LDR             R0, [SP,#0x1D0+var_1CC]
485074:  ADD.W           R1, R5, #0x18E
485078:  STRB.W          R9, [R5,#0x184]
48507C:  STRB.W          R0, [R5,#0x185]
485080:  LDR             R0, [SP,#0x1D0+var_1C8]
485082:  VLD1.64         {D16-D17}, [R6]!
485086:  STRB.W          R0, [R5,#0x186]
48508A:  LDR             R0, [SP,#0x1D0+var_1C4]
48508C:  STR.W           R11, [R5,#0x188]
485090:  STRB.W          R0, [R5,#0x18C]
485094:  LDRH            R0, [R6]
485096:  STRB.W          R8, [R5,#0x18D]
48509A:  VST1.8          {D16-D17}, [R1]
48509E:  MOV.W           R1, #(elf_hash_bucket+0xA8); void *
4850A2:  STRH.W          R0, [R5,#0x19E]
4850A6:  MOV             R0, R5; this
4850A8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4850AC:  MOV             R0, R5; p
4850AE:  BLX             free
4850B2:  MOVS            R0, #1
4850B4:  ADD             SP, SP, #0x1A8
4850B6:  VPOP            {D8}
4850BA:  ADD             SP, SP, #4
4850BC:  POP.W           {R8-R11}
4850C0:  POP             {R4-R7,PC}
