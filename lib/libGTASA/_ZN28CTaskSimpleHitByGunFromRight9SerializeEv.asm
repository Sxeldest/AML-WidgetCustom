; =========================================================
; Game Engine Function: _ZN28CTaskSimpleHitByGunFromRight9SerializeEv
; Address            : 0x497B5C - 0x497C20
; =========================================================

497B5C:  PUSH            {R4-R7,LR}
497B5E:  ADD             R7, SP, #0xC
497B60:  PUSH.W          {R8-R10}
497B64:  SUB             SP, SP, #0x88
497B66:  MOV             R4, R0
497B68:  LDR             R0, =(__stack_chk_guard_ptr - 0x497B6E)
497B6A:  ADD             R0, PC; __stack_chk_guard_ptr
497B6C:  LDR             R0, [R0]; __stack_chk_guard
497B6E:  LDR             R0, [R0]
497B70:  STR             R0, [SP,#0xA0+var_1C]
497B72:  LDR             R0, [R4]
497B74:  LDR             R1, [R0,#0x14]
497B76:  MOV             R0, R4
497B78:  BLX             R1
497B7A:  MOV             R8, R0
497B7C:  LDR             R0, =(UseDataFence_ptr - 0x497B82)
497B7E:  ADD             R0, PC; UseDataFence_ptr
497B80:  LDR             R0, [R0]; UseDataFence
497B82:  LDRB            R5, [R0]
497B84:  CBZ             R5, loc_497BC8
497B86:  LDR             R0, =(currentSaveFenceCount_ptr - 0x497B92)
497B88:  MOVS            R3, #0
497B8A:  LDR             R1, =(UseDataFence_ptr - 0x497B94)
497B8C:  LDR             R2, =(DataFence_ptr - 0x497B96)
497B8E:  ADD             R0, PC; currentSaveFenceCount_ptr
497B90:  ADD             R1, PC; UseDataFence_ptr
497B92:  ADD             R2, PC; DataFence_ptr
497B94:  LDR             R0, [R0]; currentSaveFenceCount
497B96:  LDR.W           R9, [R1]; UseDataFence
497B9A:  LDR             R1, [R2]; DataFence
497B9C:  LDR             R2, [R0]
497B9E:  STRB.W          R3, [R9]
497BA2:  LDRH            R1, [R1]
497BA4:  ADDS            R3, R2, #1
497BA6:  STR             R3, [R0]
497BA8:  MOVS            R0, #2; byte_count
497BAA:  ADD.W           R10, R2, R1
497BAE:  BLX             malloc
497BB2:  MOV             R6, R0
497BB4:  MOVS            R1, #(stderr+2); void *
497BB6:  STRH.W          R10, [R6]
497BBA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497BBE:  MOV             R0, R6; p
497BC0:  BLX             free
497BC4:  STRB.W          R5, [R9]
497BC8:  MOVS            R0, #4; byte_count
497BCA:  BLX             malloc
497BCE:  MOV             R6, R0
497BD0:  MOVS            R1, #byte_4; void *
497BD2:  STR.W           R8, [R6]
497BD6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
497BDA:  MOV             R0, R6; p
497BDC:  BLX             free
497BE0:  LDR             R0, [R4]
497BE2:  LDR             R1, [R0,#0x14]
497BE4:  MOV             R0, R4
497BE6:  BLX             R1
497BE8:  CMP.W           R0, #0x19A
497BEC:  BEQ             loc_497C06
497BEE:  LDR             R0, [R4]
497BF0:  LDR             R1, [R0,#0x14]
497BF2:  MOV             R0, R4
497BF4:  BLX             R1
497BF6:  LDR             R1, =(aErrorClassDIsN - 0x497C04); "ERROR - class %d is not type %d seriali"...
497BF8:  MOV             R2, R0
497BFA:  ADD             R0, SP, #0xA0+var_9C
497BFC:  MOV.W           R3, #0x19A
497C00:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
497C02:  BL              sub_5E6BC0
497C06:  LDR             R0, =(__stack_chk_guard_ptr - 0x497C0E)
497C08:  LDR             R1, [SP,#0xA0+var_1C]
497C0A:  ADD             R0, PC; __stack_chk_guard_ptr
497C0C:  LDR             R0, [R0]; __stack_chk_guard
497C0E:  LDR             R0, [R0]
497C10:  SUBS            R0, R0, R1
497C12:  ITTT EQ
497C14:  ADDEQ           SP, SP, #0x88
497C16:  POPEQ.W         {R8-R10}
497C1A:  POPEQ           {R4-R7,PC}
497C1C:  BLX             __stack_chk_fail
