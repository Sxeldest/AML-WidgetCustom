; =========================================================
; Game Engine Function: _ZN9CIplStore20LoadAllRemainingIplsEv
; Address            : 0x281E9C - 0x281FA8
; =========================================================

281E9C:  PUSH            {R4-R7,LR}
281E9E:  ADD             R7, SP, #0xC
281EA0:  PUSH.W          {R8-R11}
281EA4:  SUB             SP, SP, #0x44
281EA6:  LDR             R0, =(__stack_chk_guard_ptr - 0x281EB2)
281EA8:  MOVS            R4, #0x61 ; 'a'
281EAA:  MOV.W           R9, #0
281EAE:  ADD             R0, PC; __stack_chk_guard_ptr
281EB0:  LDR             R0, [R0]; __stack_chk_guard
281EB2:  LDR             R0, [R0]
281EB4:  STR             R0, [SP,#0x60+var_20]
281EB6:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x281EBC)
281EB8:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
281EBA:  LDR.W           R10, [R0]; CIplStore::ms_pPool ...
281EBE:  LDR             R0, =(_ZN9CIplStore12ms_pQuadTreeE_ptr - 0x281EC4)
281EC0:  ADD             R0, PC; _ZN9CIplStore12ms_pQuadTreeE_ptr
281EC2:  LDR             R0, [R0]; CIplStore::ms_pQuadTree ...
281EC4:  STR             R0, [SP,#0x60+var_5C]
281EC6:  LDR.W           R0, [R10]; CIplStore::ms_pPool
281ECA:  MOV             R5, R9
281ECC:  ADD.W           R9, R5, #1
281ED0:  LDR             R1, [R0,#4]
281ED2:  ADD             R1, R5
281ED4:  LDRSB.W         R1, [R1,#1]
281ED8:  CMP             R1, #0
281EDA:  BLT             loc_281F86
281EDC:  LDR.W           R8, [R0]
281EE0:  ADD.W           R11, R8, R4
281EE4:  SUB.W           R0, R11, #0x25 ; '%'
281EE8:  SUB.W           R6, R11, #0x2D ; '-'
281EEC:  VLDR            S0, [R0]
281EF0:  VLDR            S2, [R6]
281EF4:  VCMPE.F32       S2, S0
281EF8:  VMRS            APSR_nzcv, FPSCR
281EFC:  BGT             loc_281F18
281EFE:  SUB.W           R0, R11, #0x29 ; ')'
281F02:  VLDR            S0, [R0]
281F06:  SUB.W           R0, R11, #0x21 ; '!'; this
281F0A:  VLDR            S2, [R0]
281F0E:  VCMPE.F32       S2, S0
281F12:  VMRS            APSR_nzcv, FPSCR
281F16:  BLE             loc_281F86
281F18:  BLX             j__ZN9CColAccel14isCacheLoadingEv; CColAccel::isCacheLoading(void)
281F1C:  CMP             R0, #1
281F1E:  BNE             loc_281F6C
281F20:  ADD             R5, SP, #0x60+var_58
281F22:  MOV             R1, R9; int
281F24:  MOV             R0, R5; this
281F26:  BLX             j__ZN9CColAccel9getIplDefEi; CColAccel::getIplDef(int)
281F2A:  MOV             R0, R5
281F2C:  ADD.W           R1, R5, #0x20 ; ' '
281F30:  VLD1.64         {D16-D17}, [R0]!
281F34:  MOV             R2, R6
281F36:  VLD1.64         {D20-D21}, [R0]
281F3A:  LDRH.W          R0, [SP,#0x60+var_28]
281F3E:  VLD1.64         {D18-D19}, [R1]
281F42:  MOV             R1, R6
281F44:  STRH.W          R0, [R11,#3]
281F48:  SUB.W           R0, R11, #0xD
281F4C:  VST1.32         {D18-D19}, [R0]
281F50:  SUB.W           R0, R11, #0x1D
281F54:  VST1.32         {D16-D17}, [R6]
281F58:  VST1.32         {D20-D21}, [R0]
281F5C:  MOVS            R0, #0
281F5E:  STRB.W          R0, [R8,R4]
281F62:  LDR             R0, [SP,#0x60+var_5C]
281F64:  LDR             R0, [R0]
281F66:  BLX             j__ZN13CQuadTreeNode7AddItemEPvRK5CRect; CQuadTreeNode::AddItem(void *,CRect const&)
281F6A:  B               loc_281F86
281F6C:  MOVW            R0, #0x62A8
281F70:  ADDS            R6, R5, R0
281F72:  MOVS            R1, #0x18; int
281F74:  MOV             R0, R6; this
281F76:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
281F7A:  MOVS            R0, #(stderr+1); this
281F7C:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
281F80:  MOV             R0, R6; this
281F82:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
281F86:  ADDS            R4, #0x34 ; '4'
281F88:  BL              sub_4C6D18
281F8C:  BNE             loc_281EC6
281F8E:  LDR             R0, =(__stack_chk_guard_ptr - 0x281F96)
281F90:  LDR             R1, [SP,#0x60+var_20]
281F92:  ADD             R0, PC; __stack_chk_guard_ptr
281F94:  LDR             R0, [R0]; __stack_chk_guard
281F96:  LDR             R0, [R0]
281F98:  SUBS            R0, R0, R1
281F9A:  ITTT EQ
281F9C:  ADDEQ           SP, SP, #0x44 ; 'D'
281F9E:  POPEQ.W         {R8-R11}
281FA2:  POPEQ           {R4-R7,PC}
281FA4:  BLX             __stack_chk_fail
