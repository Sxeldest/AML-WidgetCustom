; =========================================================
; Game Engine Function: _ZN26CTaskComplexCarDriveWander9SerializeEv
; Address            : 0x4FEE98 - 0x4FEF86
; =========================================================

4FEE98:  PUSH            {R4-R7,LR}
4FEE9A:  ADD             R7, SP, #0xC
4FEE9C:  PUSH.W          {R11}
4FEEA0:  MOV             R4, R0
4FEEA2:  LDR             R0, [R4]
4FEEA4:  LDR             R1, [R0,#0x14]
4FEEA6:  MOV             R0, R4
4FEEA8:  BLX             R1
4FEEAA:  MOV             R5, R0
4FEEAC:  LDR             R0, =(UseDataFence_ptr - 0x4FEEB2)
4FEEAE:  ADD             R0, PC; UseDataFence_ptr
4FEEB0:  LDR             R0, [R0]; UseDataFence
4FEEB2:  LDRB            R0, [R0]
4FEEB4:  CMP             R0, #0
4FEEB6:  IT NE
4FEEB8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FEEBC:  MOVS            R0, #4; byte_count
4FEEBE:  BLX             malloc
4FEEC2:  MOV             R6, R0
4FEEC4:  MOVS            R1, #byte_4; void *
4FEEC6:  STR             R5, [R6]
4FEEC8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEECC:  MOV             R0, R6; p
4FEECE:  BLX             free
4FEED2:  LDR             R0, [R4]
4FEED4:  LDR             R1, [R0,#0x14]
4FEED6:  MOV             R0, R4
4FEED8:  BLX             R1
4FEEDA:  MOVW            R1, #0x2C7
4FEEDE:  CMP             R0, R1
4FEEE0:  BNE             loc_4FEF6C
4FEEE2:  LDR             R0, [R4,#0xC]; CVehicle *
4FEEE4:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FEEE8:  MOV             R5, R0
4FEEEA:  LDR             R0, =(UseDataFence_ptr - 0x4FEEF0)
4FEEEC:  ADD             R0, PC; UseDataFence_ptr
4FEEEE:  LDR             R0, [R0]; UseDataFence
4FEEF0:  LDRB            R0, [R0]
4FEEF2:  CMP             R0, #0
4FEEF4:  IT NE
4FEEF6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FEEFA:  MOVS            R0, #4; byte_count
4FEEFC:  BLX             malloc
4FEF00:  MOV             R6, R0
4FEF02:  MOVS            R1, #byte_4; void *
4FEF04:  STR             R5, [R6]
4FEF06:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEF0A:  MOV             R0, R6; p
4FEF0C:  BLX             free
4FEF10:  LDR             R0, =(UseDataFence_ptr - 0x4FEF16)
4FEF12:  ADD             R0, PC; UseDataFence_ptr
4FEF14:  LDR             R0, [R0]; UseDataFence
4FEF16:  LDRB            R0, [R0]
4FEF18:  CMP             R0, #0
4FEF1A:  IT NE
4FEF1C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FEF20:  MOVS            R0, #4; byte_count
4FEF22:  BLX             malloc
4FEF26:  MOV             R5, R0
4FEF28:  LDR             R0, [R4,#0x18]
4FEF2A:  STR             R0, [R5]
4FEF2C:  MOV             R0, R5; this
4FEF2E:  MOVS            R1, #byte_4; void *
4FEF30:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEF34:  MOV             R0, R5; p
4FEF36:  BLX             free
4FEF3A:  LDR             R0, =(UseDataFence_ptr - 0x4FEF40)
4FEF3C:  ADD             R0, PC; UseDataFence_ptr
4FEF3E:  LDR             R0, [R0]; UseDataFence
4FEF40:  LDRB            R0, [R0]
4FEF42:  CMP             R0, #0
4FEF44:  IT NE
4FEF46:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FEF4A:  MOVS            R0, #4; byte_count
4FEF4C:  BLX             malloc
4FEF50:  MOV             R5, R0
4FEF52:  LDR             R0, [R4,#0x10]
4FEF54:  STR             R0, [R5]
4FEF56:  MOV             R0, R5; this
4FEF58:  MOVS            R1, #byte_4; void *
4FEF5A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEF5E:  MOV             R0, R5; p
4FEF60:  POP.W           {R11}
4FEF64:  POP.W           {R4-R7,LR}
4FEF68:  B.W             j_free
4FEF6C:  LDR             R0, [R4]
4FEF6E:  LDR             R1, [R0,#0x14]
4FEF70:  MOV             R0, R4
4FEF72:  BLX             R1
4FEF74:  MOV             R1, R0; int
4FEF76:  MOVW            R0, #0x2C7; int
4FEF7A:  POP.W           {R11}
4FEF7E:  POP.W           {R4-R7,LR}
4FEF82:  B.W             sub_1941D4
