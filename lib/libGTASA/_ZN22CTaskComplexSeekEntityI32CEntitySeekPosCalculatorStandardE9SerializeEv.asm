; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE9SerializeEv
; Address            : 0x333FB0 - 0x334100
; =========================================================

333FB0:  PUSH            {R4-R7,LR}
333FB2:  ADD             R7, SP, #0xC
333FB4:  PUSH.W          {R11}
333FB8:  MOV             R4, R0
333FBA:  LDR             R0, =(UseDataFence_ptr - 0x333FC0)
333FBC:  ADD             R0, PC; UseDataFence_ptr
333FBE:  LDR             R0, [R0]; UseDataFence
333FC0:  LDRB            R0, [R0]
333FC2:  CMP             R0, #0
333FC4:  IT NE
333FC6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
333FCA:  MOVS            R0, #4; byte_count
333FCC:  BLX             malloc
333FD0:  MOV             R5, R0
333FD2:  MOVS            R0, #1
333FD4:  STR             R0, [R5]
333FD6:  MOV             R0, R5; this
333FD8:  MOVS            R1, #byte_4; void *
333FDA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
333FDE:  MOV             R0, R5; p
333FE0:  BLX             free
333FE4:  LDR             R0, [R4]
333FE6:  LDR             R1, [R0,#0x14]
333FE8:  MOV             R0, R4
333FEA:  BLX             R1
333FEC:  MOV             R5, R0
333FEE:  LDR             R0, =(UseDataFence_ptr - 0x333FF4)
333FF0:  ADD             R0, PC; UseDataFence_ptr
333FF2:  LDR             R0, [R0]; UseDataFence
333FF4:  LDRB            R0, [R0]
333FF6:  CMP             R0, #0
333FF8:  IT NE
333FFA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
333FFE:  MOVS            R0, #4; byte_count
334000:  BLX             malloc
334004:  MOV             R6, R0
334006:  MOVS            R1, #byte_4; void *
334008:  STR             R5, [R6]
33400A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
33400E:  MOV             R0, R6; p
334010:  BLX             free
334014:  LDR             R0, [R4]
334016:  LDR             R1, [R0,#0x14]
334018:  MOV             R0, R4
33401A:  BLX             R1
33401C:  MOVW            R1, #0x38B
334020:  CMP             R0, R1
334022:  BNE             loc_33407E
334024:  LDR             R0, [R4,#0xC]
334026:  CBZ             R0, loc_334098
334028:  LDR             R1, =(UseDataFence_ptr - 0x334032)
33402A:  LDRB.W          R0, [R0,#0x3A]
33402E:  ADD             R1, PC; UseDataFence_ptr
334030:  AND.W           R6, R0, #7
334034:  LDR             R1, [R1]; UseDataFence
334036:  LDRB            R1, [R1]
334038:  CMP             R1, #0
33403A:  IT NE
33403C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
334040:  MOVS            R0, #4; byte_count
334042:  BLX             malloc
334046:  MOV             R5, R0
334048:  MOVS            R1, #byte_4; void *
33404A:  STR             R6, [R5]
33404C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
334050:  MOV             R0, R5; p
334052:  BLX             free
334056:  LDR             R0, [R4,#0xC]; CObject *
334058:  LDRB.W          R1, [R0,#0x3A]
33405C:  AND.W           R1, R1, #7
334060:  CMP             R1, #2
334062:  BEQ             loc_3340C0
334064:  CMP             R1, #4
334066:  BEQ             loc_3340CC
334068:  CMP             R1, #3
33406A:  ITT NE
33406C:  POPNE.W         {R11}
334070:  POPNE           {R4-R7,PC}
334072:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
334076:  MOV             R4, R0
334078:  LDR             R0, =(UseDataFence_ptr - 0x33407E)
33407A:  ADD             R0, PC; UseDataFence_ptr
33407C:  B               loc_3340D6
33407E:  LDR             R0, [R4]
334080:  LDR             R1, [R0,#0x14]
334082:  MOV             R0, R4
334084:  BLX             R1
334086:  MOV             R1, R0; int
334088:  MOVW            R0, #0x38B; int
33408C:  POP.W           {R11}
334090:  POP.W           {R4-R7,LR}
334094:  B.W             sub_1941D4
334098:  LDR             R0, =(UseDataFence_ptr - 0x33409E)
33409A:  ADD             R0, PC; UseDataFence_ptr
33409C:  LDR             R0, [R0]; UseDataFence
33409E:  LDRB            R0, [R0]
3340A0:  CMP             R0, #0
3340A2:  IT NE
3340A4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
3340A8:  MOVS            R0, #4; byte_count
3340AA:  BLX             malloc
3340AE:  MOV             R4, R0
3340B0:  MOVS            R0, #0
3340B2:  STR             R0, [R4]
3340B4:  MOV             R0, R4; this
3340B6:  MOVS            R1, #byte_4; void *
3340B8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
3340BC:  MOV             R0, R4
3340BE:  B               loc_3340F4
3340C0:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
3340C4:  MOV             R4, R0
3340C6:  LDR             R0, =(UseDataFence_ptr - 0x3340CC)
3340C8:  ADD             R0, PC; UseDataFence_ptr
3340CA:  B               loc_3340D6
3340CC:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
3340D0:  MOV             R4, R0
3340D2:  LDR             R0, =(UseDataFence_ptr - 0x3340D8)
3340D4:  ADD             R0, PC; UseDataFence_ptr
3340D6:  LDR             R0, [R0]; UseDataFence
3340D8:  LDRB            R0, [R0]
3340DA:  CMP             R0, #0
3340DC:  IT NE
3340DE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
3340E2:  MOVS            R0, #4; byte_count
3340E4:  BLX             malloc
3340E8:  MOV             R5, R0
3340EA:  MOVS            R1, #byte_4; void *
3340EC:  STR             R4, [R5]
3340EE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
3340F2:  MOV             R0, R5; p
3340F4:  POP.W           {R11}
3340F8:  POP.W           {R4-R7,LR}
3340FC:  B.W             j_free
