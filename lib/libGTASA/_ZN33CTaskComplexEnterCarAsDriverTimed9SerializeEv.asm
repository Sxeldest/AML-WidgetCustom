; =========================================================
; Game Engine Function: _ZN33CTaskComplexEnterCarAsDriverTimed9SerializeEv
; Address            : 0x4FDC50 - 0x4FDCEA
; =========================================================

4FDC50:  PUSH            {R4-R7,LR}
4FDC52:  ADD             R7, SP, #0xC
4FDC54:  PUSH.W          {R11}
4FDC58:  MOV             R4, R0
4FDC5A:  LDR             R0, [R4]
4FDC5C:  LDR             R1, [R0,#0x14]
4FDC5E:  MOV             R0, R4
4FDC60:  BLX             R1
4FDC62:  MOV             R5, R0
4FDC64:  LDR             R0, =(UseDataFence_ptr - 0x4FDC6A)
4FDC66:  ADD             R0, PC; UseDataFence_ptr
4FDC68:  LDR             R0, [R0]; UseDataFence
4FDC6A:  LDRB            R0, [R0]
4FDC6C:  CMP             R0, #0
4FDC6E:  IT NE
4FDC70:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDC74:  MOVS            R0, #4; byte_count
4FDC76:  BLX             malloc
4FDC7A:  MOV             R6, R0
4FDC7C:  MOVS            R1, #byte_4; void *
4FDC7E:  STR             R5, [R6]
4FDC80:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDC84:  MOV             R0, R6; p
4FDC86:  BLX             free
4FDC8A:  LDR             R0, [R4]
4FDC8C:  LDR             R1, [R0,#0x14]
4FDC8E:  MOV             R0, R4
4FDC90:  BLX             R1
4FDC92:  MOVW            R1, #0x2C9
4FDC96:  CMP             R0, R1
4FDC98:  BNE             loc_4FDCD0
4FDC9A:  LDR             R0, [R4,#0xC]; CVehicle *
4FDC9C:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FDCA0:  MOV             R4, R0
4FDCA2:  LDR             R0, =(UseDataFence_ptr - 0x4FDCA8)
4FDCA4:  ADD             R0, PC; UseDataFence_ptr
4FDCA6:  LDR             R0, [R0]; UseDataFence
4FDCA8:  LDRB            R0, [R0]
4FDCAA:  CMP             R0, #0
4FDCAC:  IT NE
4FDCAE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDCB2:  MOVS            R0, #4; byte_count
4FDCB4:  BLX             malloc
4FDCB8:  MOV             R5, R0
4FDCBA:  MOVS            R1, #byte_4; void *
4FDCBC:  STR             R4, [R5]
4FDCBE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDCC2:  MOV             R0, R5; p
4FDCC4:  POP.W           {R11}
4FDCC8:  POP.W           {R4-R7,LR}
4FDCCC:  B.W             j_free
4FDCD0:  LDR             R0, [R4]
4FDCD2:  LDR             R1, [R0,#0x14]
4FDCD4:  MOV             R0, R4
4FDCD6:  BLX             R1
4FDCD8:  MOV             R1, R0; int
4FDCDA:  MOVW            R0, #0x2C9; int
4FDCDE:  POP.W           {R11}
4FDCE2:  POP.W           {R4-R7,LR}
4FDCE6:  B.W             sub_1941D4
