; =========================================================
; Game Engine Function: _ZN35CTaskComplexEnterCarAsPassengerWait9SerializeEv
; Address            : 0x4FDE74 - 0x4FDFD8
; =========================================================

4FDE74:  PUSH            {R4-R7,LR}
4FDE76:  ADD             R7, SP, #0xC
4FDE78:  PUSH.W          {R11}
4FDE7C:  MOV             R4, R0
4FDE7E:  LDR             R0, [R4]
4FDE80:  LDR             R1, [R0,#0x14]
4FDE82:  MOV             R0, R4
4FDE84:  BLX             R1
4FDE86:  MOV             R5, R0
4FDE88:  LDR             R0, =(UseDataFence_ptr - 0x4FDE8E)
4FDE8A:  ADD             R0, PC; UseDataFence_ptr
4FDE8C:  LDR             R0, [R0]; UseDataFence
4FDE8E:  LDRB            R0, [R0]
4FDE90:  CMP             R0, #0
4FDE92:  IT NE
4FDE94:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDE98:  MOVS            R0, #4; byte_count
4FDE9A:  BLX             malloc
4FDE9E:  MOV             R6, R0
4FDEA0:  MOVS            R1, #byte_4; void *
4FDEA2:  STR             R5, [R6]
4FDEA4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDEA8:  MOV             R0, R6; p
4FDEAA:  BLX             free
4FDEAE:  LDR             R0, [R4]
4FDEB0:  LDR             R1, [R0,#0x14]
4FDEB2:  MOV             R0, R4
4FDEB4:  BLX             R1
4FDEB6:  MOVW            R1, #0x2CE
4FDEBA:  CMP             R0, R1
4FDEBC:  BNE             loc_4FDEEC
4FDEBE:  LDR             R0, [R4,#0xC]; CVehicle *
4FDEC0:  CBZ             R0, loc_4FDF06
4FDEC2:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FDEC6:  MOV             R5, R0
4FDEC8:  LDR             R0, =(UseDataFence_ptr - 0x4FDECE)
4FDECA:  ADD             R0, PC; UseDataFence_ptr
4FDECC:  LDR             R0, [R0]; UseDataFence
4FDECE:  LDRB            R0, [R0]
4FDED0:  CMP             R0, #0
4FDED2:  IT NE
4FDED4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDED8:  MOVS            R0, #4; byte_count
4FDEDA:  BLX             malloc
4FDEDE:  MOV             R6, R0
4FDEE0:  MOVS            R1, #byte_4; void *
4FDEE2:  STR             R5, [R6]
4FDEE4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDEE8:  MOV             R0, R6
4FDEEA:  B               loc_4FDF2E
4FDEEC:  LDR             R0, [R4]
4FDEEE:  LDR             R1, [R0,#0x14]
4FDEF0:  MOV             R0, R4
4FDEF2:  BLX             R1
4FDEF4:  MOV             R1, R0; int
4FDEF6:  MOVW            R0, #0x2CE; int
4FDEFA:  POP.W           {R11}
4FDEFE:  POP.W           {R4-R7,LR}
4FDF02:  B.W             sub_1941D4
4FDF06:  LDR             R0, =(UseDataFence_ptr - 0x4FDF0C)
4FDF08:  ADD             R0, PC; UseDataFence_ptr
4FDF0A:  LDR             R0, [R0]; UseDataFence
4FDF0C:  LDRB            R0, [R0]
4FDF0E:  CMP             R0, #0
4FDF10:  IT NE
4FDF12:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDF16:  MOVS            R0, #4; byte_count
4FDF18:  BLX             malloc
4FDF1C:  MOV             R5, R0
4FDF1E:  MOV.W           R0, #0xFFFFFFFF
4FDF22:  STR             R0, [R5]
4FDF24:  MOV             R0, R5; this
4FDF26:  MOVS            R1, #byte_4; void *
4FDF28:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDF2C:  MOV             R0, R5; p
4FDF2E:  BLX             free
4FDF32:  LDR             R0, [R4,#0x10]; CPed *
4FDF34:  CBZ             R0, loc_4FDF60
4FDF36:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
4FDF3A:  MOV             R5, R0
4FDF3C:  LDR             R0, =(UseDataFence_ptr - 0x4FDF42)
4FDF3E:  ADD             R0, PC; UseDataFence_ptr
4FDF40:  LDR             R0, [R0]; UseDataFence
4FDF42:  LDRB            R0, [R0]
4FDF44:  CMP             R0, #0
4FDF46:  IT NE
4FDF48:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDF4C:  MOVS            R0, #4; byte_count
4FDF4E:  BLX             malloc
4FDF52:  MOV             R6, R0
4FDF54:  MOVS            R1, #byte_4; void *
4FDF56:  STR             R5, [R6]
4FDF58:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDF5C:  MOV             R0, R6
4FDF5E:  B               loc_4FDF88
4FDF60:  LDR             R0, =(UseDataFence_ptr - 0x4FDF66)
4FDF62:  ADD             R0, PC; UseDataFence_ptr
4FDF64:  LDR             R0, [R0]; UseDataFence
4FDF66:  LDRB            R0, [R0]
4FDF68:  CMP             R0, #0
4FDF6A:  IT NE
4FDF6C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDF70:  MOVS            R0, #4; byte_count
4FDF72:  BLX             malloc
4FDF76:  MOV             R5, R0
4FDF78:  MOV.W           R0, #0xFFFFFFFF
4FDF7C:  STR             R0, [R5]
4FDF7E:  MOV             R0, R5; this
4FDF80:  MOVS            R1, #byte_4; void *
4FDF82:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDF86:  MOV             R0, R5; p
4FDF88:  BLX             free
4FDF8C:  LDR             R0, =(UseDataFence_ptr - 0x4FDF92)
4FDF8E:  ADD             R0, PC; UseDataFence_ptr
4FDF90:  LDR             R0, [R0]; UseDataFence
4FDF92:  LDRB            R0, [R0]
4FDF94:  CMP             R0, #0
4FDF96:  IT NE
4FDF98:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDF9C:  ADD.W           R0, R4, #0x18; this
4FDFA0:  MOVS            R1, #(stderr+1); void *
4FDFA2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDFA6:  LDR             R0, =(UseDataFence_ptr - 0x4FDFAC)
4FDFA8:  ADD             R0, PC; UseDataFence_ptr
4FDFAA:  LDR             R0, [R0]; UseDataFence
4FDFAC:  LDRB            R0, [R0]
4FDFAE:  CMP             R0, #0
4FDFB0:  IT NE
4FDFB2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDFB6:  MOVS            R0, #4; byte_count
4FDFB8:  BLX             malloc
4FDFBC:  MOV             R5, R0
4FDFBE:  LDR             R0, [R4,#0x1C]
4FDFC0:  STR             R0, [R5]
4FDFC2:  MOV             R0, R5; this
4FDFC4:  MOVS            R1, #byte_4; void *
4FDFC6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDFCA:  MOV             R0, R5; p
4FDFCC:  POP.W           {R11}
4FDFD0:  POP.W           {R4-R7,LR}
4FDFD4:  B.W             j_free
