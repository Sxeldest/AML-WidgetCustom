; =========================================================
; Game Engine Function: _ZN36CTaskComplexEnterCarAsPassengerTimed9SerializeEv
; Address            : 0x4FDD60 - 0x4FDDF8
; =========================================================

4FDD60:  PUSH            {R4-R7,LR}
4FDD62:  ADD             R7, SP, #0xC
4FDD64:  PUSH.W          {R11}
4FDD68:  MOV             R4, R0
4FDD6A:  LDR             R0, [R4]
4FDD6C:  LDR             R1, [R0,#0x14]
4FDD6E:  MOV             R0, R4
4FDD70:  BLX             R1
4FDD72:  MOV             R5, R0
4FDD74:  LDR             R0, =(UseDataFence_ptr - 0x4FDD7A)
4FDD76:  ADD             R0, PC; UseDataFence_ptr
4FDD78:  LDR             R0, [R0]; UseDataFence
4FDD7A:  LDRB            R0, [R0]
4FDD7C:  CMP             R0, #0
4FDD7E:  IT NE
4FDD80:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDD84:  MOVS            R0, #4; byte_count
4FDD86:  BLX             malloc
4FDD8A:  MOV             R6, R0
4FDD8C:  MOVS            R1, #byte_4; void *
4FDD8E:  STR             R5, [R6]
4FDD90:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDD94:  MOV             R0, R6; p
4FDD96:  BLX             free
4FDD9A:  LDR             R0, [R4]
4FDD9C:  LDR             R1, [R0,#0x14]
4FDD9E:  MOV             R0, R4
4FDDA0:  BLX             R1
4FDDA2:  CMP.W           R0, #0x2C8
4FDDA6:  BNE             loc_4FDDDE
4FDDA8:  LDR             R0, [R4,#0xC]; CVehicle *
4FDDAA:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FDDAE:  MOV             R4, R0
4FDDB0:  LDR             R0, =(UseDataFence_ptr - 0x4FDDB6)
4FDDB2:  ADD             R0, PC; UseDataFence_ptr
4FDDB4:  LDR             R0, [R0]; UseDataFence
4FDDB6:  LDRB            R0, [R0]
4FDDB8:  CMP             R0, #0
4FDDBA:  IT NE
4FDDBC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDDC0:  MOVS            R0, #4; byte_count
4FDDC2:  BLX             malloc
4FDDC6:  MOV             R5, R0
4FDDC8:  MOVS            R1, #byte_4; void *
4FDDCA:  STR             R4, [R5]
4FDDCC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDDD0:  MOV             R0, R5; p
4FDDD2:  POP.W           {R11}
4FDDD6:  POP.W           {R4-R7,LR}
4FDDDA:  B.W             j_free
4FDDDE:  LDR             R0, [R4]
4FDDE0:  LDR             R1, [R0,#0x14]
4FDDE2:  MOV             R0, R4
4FDDE4:  BLX             R1
4FDDE6:  MOV             R1, R0; int
4FDDE8:  MOV.W           R0, #0x2C8; int
4FDDEC:  POP.W           {R11}
4FDDF0:  POP.W           {R4-R7,LR}
4FDDF4:  B.W             sub_1941D4
