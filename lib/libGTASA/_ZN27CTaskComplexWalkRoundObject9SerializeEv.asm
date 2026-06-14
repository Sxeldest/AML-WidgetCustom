; =========================================================
; Game Engine Function: _ZN27CTaskComplexWalkRoundObject9SerializeEv
; Address            : 0x50FCA0 - 0x50FE24
; =========================================================

50FCA0:  PUSH            {R4-R7,LR}
50FCA2:  ADD             R7, SP, #0xC
50FCA4:  PUSH.W          {R11}
50FCA8:  MOV             R4, R0
50FCAA:  LDR             R0, [R4]
50FCAC:  LDR             R1, [R0,#0x14]
50FCAE:  MOV             R0, R4
50FCB0:  BLX             R1
50FCB2:  MOV             R5, R0
50FCB4:  LDR             R0, =(UseDataFence_ptr - 0x50FCBA)
50FCB6:  ADD             R0, PC; UseDataFence_ptr
50FCB8:  LDR             R0, [R0]; UseDataFence
50FCBA:  LDRB            R0, [R0]
50FCBC:  CMP             R0, #0
50FCBE:  IT NE
50FCC0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FCC4:  MOVS            R0, #4; byte_count
50FCC6:  BLX             malloc
50FCCA:  MOV             R6, R0
50FCCC:  MOVS            R1, #byte_4; void *
50FCCE:  STR             R5, [R6]
50FCD0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FCD4:  MOV             R0, R6; p
50FCD6:  BLX             free
50FCDA:  LDR             R0, [R4]
50FCDC:  LDR             R1, [R0,#0x14]
50FCDE:  MOV             R0, R4
50FCE0:  BLX             R1
50FCE2:  CMP.W           R0, #0x1FE
50FCE6:  BNE             loc_50FDA2
50FCE8:  LDR             R0, =(UseDataFence_ptr - 0x50FCEE)
50FCEA:  ADD             R0, PC; UseDataFence_ptr
50FCEC:  LDR             R0, [R0]; UseDataFence
50FCEE:  LDRB            R0, [R0]
50FCF0:  CMP             R0, #0
50FCF2:  IT NE
50FCF4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FCF8:  MOVS            R0, #4; byte_count
50FCFA:  BLX             malloc
50FCFE:  MOV             R5, R0
50FD00:  LDR             R0, [R4,#0xC]
50FD02:  STR             R0, [R5]
50FD04:  MOV             R0, R5; this
50FD06:  MOVS            R1, #byte_4; void *
50FD08:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FD0C:  MOV             R0, R5; p
50FD0E:  BLX             free
50FD12:  LDR             R0, =(UseDataFence_ptr - 0x50FD18)
50FD14:  ADD             R0, PC; UseDataFence_ptr
50FD16:  LDR             R0, [R0]; UseDataFence
50FD18:  LDRB            R0, [R0]
50FD1A:  CMP             R0, #0
50FD1C:  IT NE
50FD1E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FD22:  MOVS            R0, #0xC; byte_count
50FD24:  BLX             malloc
50FD28:  ADD.W           R1, R4, #0x10
50FD2C:  MOV             R5, R0
50FD2E:  LDR             R0, [R4,#0x18]
50FD30:  VLD1.8          {D16}, [R1]
50FD34:  MOVS            R1, #(byte_9+3); void *
50FD36:  STR             R0, [R5,#8]
50FD38:  MOV             R0, R5; this
50FD3A:  VST1.8          {D16}, [R5]
50FD3E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FD42:  MOV             R0, R5; p
50FD44:  BLX             free
50FD48:  LDR             R0, [R4,#0x1C]
50FD4A:  CBZ             R0, loc_50FDBC
50FD4C:  LDR             R1, =(UseDataFence_ptr - 0x50FD56)
50FD4E:  LDRB.W          R0, [R0,#0x3A]
50FD52:  ADD             R1, PC; UseDataFence_ptr
50FD54:  AND.W           R6, R0, #7
50FD58:  LDR             R1, [R1]; UseDataFence
50FD5A:  LDRB            R1, [R1]
50FD5C:  CMP             R1, #0
50FD5E:  IT NE
50FD60:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FD64:  MOVS            R0, #4; byte_count
50FD66:  BLX             malloc
50FD6A:  MOV             R5, R0
50FD6C:  MOVS            R1, #byte_4; void *
50FD6E:  STR             R6, [R5]
50FD70:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FD74:  MOV             R0, R5; p
50FD76:  BLX             free
50FD7A:  LDR             R0, [R4,#0x1C]; CObject *
50FD7C:  LDRB.W          R1, [R0,#0x3A]
50FD80:  AND.W           R1, R1, #7
50FD84:  CMP             R1, #2
50FD86:  BEQ             loc_50FDE4
50FD88:  CMP             R1, #4
50FD8A:  BEQ             loc_50FDF0
50FD8C:  CMP             R1, #3
50FD8E:  ITT NE
50FD90:  POPNE.W         {R11}
50FD94:  POPNE           {R4-R7,PC}
50FD96:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
50FD9A:  MOV             R4, R0
50FD9C:  LDR             R0, =(UseDataFence_ptr - 0x50FDA2)
50FD9E:  ADD             R0, PC; UseDataFence_ptr
50FDA0:  B               loc_50FDFA
50FDA2:  LDR             R0, [R4]
50FDA4:  LDR             R1, [R0,#0x14]
50FDA6:  MOV             R0, R4
50FDA8:  BLX             R1
50FDAA:  MOV             R1, R0; int
50FDAC:  MOV.W           R0, #0x1FE; int
50FDB0:  POP.W           {R11}
50FDB4:  POP.W           {R4-R7,LR}
50FDB8:  B.W             sub_1941D4
50FDBC:  LDR             R0, =(UseDataFence_ptr - 0x50FDC2)
50FDBE:  ADD             R0, PC; UseDataFence_ptr
50FDC0:  LDR             R0, [R0]; UseDataFence
50FDC2:  LDRB            R0, [R0]
50FDC4:  CMP             R0, #0
50FDC6:  IT NE
50FDC8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FDCC:  MOVS            R0, #4; byte_count
50FDCE:  BLX             malloc
50FDD2:  MOV             R4, R0
50FDD4:  MOVS            R0, #0
50FDD6:  STR             R0, [R4]
50FDD8:  MOV             R0, R4; this
50FDDA:  MOVS            R1, #byte_4; void *
50FDDC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FDE0:  MOV             R0, R4
50FDE2:  B               loc_50FE18
50FDE4:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
50FDE8:  MOV             R4, R0
50FDEA:  LDR             R0, =(UseDataFence_ptr - 0x50FDF0)
50FDEC:  ADD             R0, PC; UseDataFence_ptr
50FDEE:  B               loc_50FDFA
50FDF0:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
50FDF4:  MOV             R4, R0
50FDF6:  LDR             R0, =(UseDataFence_ptr - 0x50FDFC)
50FDF8:  ADD             R0, PC; UseDataFence_ptr
50FDFA:  LDR             R0, [R0]; UseDataFence
50FDFC:  LDRB            R0, [R0]
50FDFE:  CMP             R0, #0
50FE00:  IT NE
50FE02:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FE06:  MOVS            R0, #4; byte_count
50FE08:  BLX             malloc
50FE0C:  MOV             R5, R0
50FE0E:  MOVS            R1, #byte_4; void *
50FE10:  STR             R4, [R5]
50FE12:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FE16:  MOV             R0, R5; p
50FE18:  POP.W           {R11}
50FE1C:  POP.W           {R4-R7,LR}
50FE20:  B.W             j_free
