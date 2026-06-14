; =========================================================
; Game Engine Function: _ZN20CTaskComplexCarDrive9SerializeEv
; Address            : 0x4FECCC - 0x4FEE10
; =========================================================

4FECCC:  PUSH            {R4-R7,LR}
4FECCE:  ADD             R7, SP, #0xC
4FECD0:  PUSH.W          {R11}
4FECD4:  MOV             R4, R0
4FECD6:  LDR             R0, [R4]
4FECD8:  LDR             R1, [R0,#0x14]
4FECDA:  MOV             R0, R4
4FECDC:  BLX             R1
4FECDE:  MOV             R5, R0
4FECE0:  LDR             R0, =(UseDataFence_ptr - 0x4FECE6)
4FECE2:  ADD             R0, PC; UseDataFence_ptr
4FECE4:  LDR             R0, [R0]; UseDataFence
4FECE6:  LDRB            R0, [R0]
4FECE8:  CMP             R0, #0
4FECEA:  IT NE
4FECEC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FECF0:  MOVS            R0, #4; byte_count
4FECF2:  BLX             malloc
4FECF6:  MOV             R6, R0
4FECF8:  MOVS            R1, #byte_4; void *
4FECFA:  STR             R5, [R6]
4FECFC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FED00:  MOV             R0, R6; p
4FED02:  BLX             free
4FED06:  LDR             R0, [R4]
4FED08:  LDR             R1, [R0,#0x14]
4FED0A:  MOV             R0, R4
4FED0C:  BLX             R1
4FED0E:  MOVW            R1, #0x2D5
4FED12:  CMP             R0, R1
4FED14:  BNE             loc_4FED44
4FED16:  LDR             R0, [R4,#0xC]; CVehicle *
4FED18:  CBZ             R0, loc_4FED5E
4FED1A:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FED1E:  MOV             R5, R0
4FED20:  LDR             R0, =(UseDataFence_ptr - 0x4FED26)
4FED22:  ADD             R0, PC; UseDataFence_ptr
4FED24:  LDR             R0, [R0]; UseDataFence
4FED26:  LDRB            R0, [R0]
4FED28:  CMP             R0, #0
4FED2A:  IT NE
4FED2C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FED30:  MOVS            R0, #4; byte_count
4FED32:  BLX             malloc
4FED36:  MOV             R6, R0
4FED38:  MOVS            R1, #byte_4; void *
4FED3A:  STR             R5, [R6]
4FED3C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FED40:  MOV             R0, R6
4FED42:  B               loc_4FED86
4FED44:  LDR             R0, [R4]
4FED46:  LDR             R1, [R0,#0x14]
4FED48:  MOV             R0, R4
4FED4A:  BLX             R1
4FED4C:  MOV             R1, R0; int
4FED4E:  MOVW            R0, #0x2D5; int
4FED52:  POP.W           {R11}
4FED56:  POP.W           {R4-R7,LR}
4FED5A:  B.W             sub_1941D4
4FED5E:  LDR             R0, =(UseDataFence_ptr - 0x4FED64)
4FED60:  ADD             R0, PC; UseDataFence_ptr
4FED62:  LDR             R0, [R0]; UseDataFence
4FED64:  LDRB            R0, [R0]
4FED66:  CMP             R0, #0
4FED68:  IT NE
4FED6A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FED6E:  MOVS            R0, #4; byte_count
4FED70:  BLX             malloc
4FED74:  MOV             R5, R0
4FED76:  MOV.W           R0, #0xFFFFFFFF
4FED7A:  STR             R0, [R5]
4FED7C:  MOV             R0, R5; this
4FED7E:  MOVS            R1, #byte_4; void *
4FED80:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FED84:  MOV             R0, R5; p
4FED86:  BLX             free
4FED8A:  LDR             R0, =(UseDataFence_ptr - 0x4FED90)
4FED8C:  ADD             R0, PC; UseDataFence_ptr
4FED8E:  LDR             R0, [R0]; UseDataFence
4FED90:  LDRB            R0, [R0]
4FED92:  CMP             R0, #0
4FED94:  IT NE
4FED96:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FED9A:  MOVS            R0, #4; byte_count
4FED9C:  BLX             malloc
4FEDA0:  MOV             R5, R0
4FEDA2:  LDR             R0, [R4,#0x10]
4FEDA4:  STR             R0, [R5]
4FEDA6:  MOV             R0, R5; this
4FEDA8:  MOVS            R1, #byte_4; void *
4FEDAA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEDAE:  MOV             R0, R5; p
4FEDB0:  BLX             free
4FEDB4:  LDR             R0, =(UseDataFence_ptr - 0x4FEDBA)
4FEDB6:  ADD             R0, PC; UseDataFence_ptr
4FEDB8:  LDR             R0, [R0]; UseDataFence
4FEDBA:  LDRB            R0, [R0]
4FEDBC:  CMP             R0, #0
4FEDBE:  IT NE
4FEDC0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FEDC4:  MOVS            R0, #4; byte_count
4FEDC6:  BLX             malloc
4FEDCA:  MOV             R5, R0
4FEDCC:  LDR             R0, [R4,#0x14]
4FEDCE:  STR             R0, [R5]
4FEDD0:  MOV             R0, R5; this
4FEDD2:  MOVS            R1, #byte_4; void *
4FEDD4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEDD8:  MOV             R0, R5; p
4FEDDA:  BLX             free
4FEDDE:  LDR             R0, =(UseDataFence_ptr - 0x4FEDE4)
4FEDE0:  ADD             R0, PC; UseDataFence_ptr
4FEDE2:  LDR             R0, [R0]; UseDataFence
4FEDE4:  LDRB            R0, [R0]
4FEDE6:  CMP             R0, #0
4FEDE8:  IT NE
4FEDEA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FEDEE:  MOVS            R0, #4; byte_count
4FEDF0:  BLX             malloc
4FEDF4:  MOV             R5, R0
4FEDF6:  LDR             R0, [R4,#0x18]
4FEDF8:  STR             R0, [R5]
4FEDFA:  MOV             R0, R5; this
4FEDFC:  MOVS            R1, #byte_4; void *
4FEDFE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEE02:  MOV             R0, R5; p
4FEE04:  POP.W           {R11}
4FEE08:  POP.W           {R4-R7,LR}
4FEE0C:  B.W             j_free
