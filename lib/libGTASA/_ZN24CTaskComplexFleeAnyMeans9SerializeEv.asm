; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeAnyMeans9SerializeEv
; Address            : 0x514FDC - 0x51523C
; =========================================================

514FDC:  PUSH            {R4-R7,LR}
514FDE:  ADD             R7, SP, #0xC
514FE0:  PUSH.W          {R11}
514FE4:  MOV             R4, R0
514FE6:  LDR             R0, [R4]
514FE8:  LDR             R1, [R0,#0x14]
514FEA:  MOV             R0, R4
514FEC:  BLX             R1
514FEE:  MOV             R5, R0
514FF0:  LDR             R0, =(UseDataFence_ptr - 0x514FF6)
514FF2:  ADD             R0, PC; UseDataFence_ptr
514FF4:  LDR             R0, [R0]; UseDataFence
514FF6:  LDRB            R0, [R0]
514FF8:  CMP             R0, #0
514FFA:  IT NE
514FFC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
515000:  MOVS            R0, #4; byte_count
515002:  BLX             malloc
515006:  MOV             R6, R0
515008:  MOVS            R1, #byte_4; void *
51500A:  STR             R5, [R6]
51500C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
515010:  MOV             R0, R6; p
515012:  BLX             free
515016:  LDR             R0, [R4]
515018:  LDR             R1, [R0,#0x14]
51501A:  MOV             R0, R4
51501C:  BLX             R1
51501E:  MOVW            R1, #0x39F
515022:  CMP             R0, R1
515024:  BNE             loc_51507A
515026:  LDR             R0, [R4,#0xC]
515028:  CBZ             R0, loc_515094
51502A:  LDR             R1, =(UseDataFence_ptr - 0x515034)
51502C:  LDRB.W          R0, [R0,#0x3A]
515030:  ADD             R1, PC; UseDataFence_ptr
515032:  AND.W           R6, R0, #7
515036:  LDR             R1, [R1]; UseDataFence
515038:  LDRB            R1, [R1]
51503A:  CMP             R1, #0
51503C:  IT NE
51503E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
515042:  MOVS            R0, #4; byte_count
515044:  BLX             malloc
515048:  MOV             R5, R0
51504A:  MOVS            R1, #byte_4; void *
51504C:  STR             R6, [R5]
51504E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
515052:  MOV             R0, R5; p
515054:  BLX             free
515058:  LDR             R0, [R4,#0xC]; CObject *
51505A:  LDRB.W          R1, [R0,#0x3A]
51505E:  AND.W           R1, R1, #7
515062:  CMP             R1, #2
515064:  BEQ             loc_5150BC
515066:  CMP             R1, #4
515068:  BEQ             loc_5150C8
51506A:  CMP             R1, #3
51506C:  BNE             loc_5150F4
51506E:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
515072:  MOV             R5, R0
515074:  LDR             R0, =(UseDataFence_ptr - 0x51507A)
515076:  ADD             R0, PC; UseDataFence_ptr
515078:  B               loc_5150D2
51507A:  LDR             R0, [R4]
51507C:  LDR             R1, [R0,#0x14]
51507E:  MOV             R0, R4
515080:  BLX             R1
515082:  MOV             R1, R0; int
515084:  MOVW            R0, #0x39F; int
515088:  POP.W           {R11}
51508C:  POP.W           {R4-R7,LR}
515090:  B.W             sub_1941D4
515094:  LDR             R0, =(UseDataFence_ptr - 0x51509A)
515096:  ADD             R0, PC; UseDataFence_ptr
515098:  LDR             R0, [R0]; UseDataFence
51509A:  LDRB            R0, [R0]
51509C:  CMP             R0, #0
51509E:  IT NE
5150A0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5150A4:  MOVS            R0, #4; byte_count
5150A6:  BLX             malloc
5150AA:  MOV             R5, R0
5150AC:  MOVS            R0, #0
5150AE:  STR             R0, [R5]
5150B0:  MOV             R0, R5; this
5150B2:  MOVS            R1, #byte_4; void *
5150B4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5150B8:  MOV             R0, R5
5150BA:  B               loc_5150F0
5150BC:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
5150C0:  MOV             R5, R0
5150C2:  LDR             R0, =(UseDataFence_ptr - 0x5150C8)
5150C4:  ADD             R0, PC; UseDataFence_ptr
5150C6:  B               loc_5150D2
5150C8:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
5150CC:  MOV             R5, R0
5150CE:  LDR             R0, =(UseDataFence_ptr - 0x5150D4)
5150D0:  ADD             R0, PC; UseDataFence_ptr
5150D2:  LDR             R0, [R0]; UseDataFence
5150D4:  LDRB            R0, [R0]
5150D6:  CMP             R0, #0
5150D8:  IT NE
5150DA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5150DE:  MOVS            R0, #4; byte_count
5150E0:  BLX             malloc
5150E4:  MOV             R6, R0
5150E6:  MOVS            R1, #byte_4; void *
5150E8:  STR             R5, [R6]
5150EA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5150EE:  MOV             R0, R6; p
5150F0:  BLX             free
5150F4:  LDR             R0, =(UseDataFence_ptr - 0x5150FA)
5150F6:  ADD             R0, PC; UseDataFence_ptr
5150F8:  LDR             R0, [R0]; UseDataFence
5150FA:  LDRB            R0, [R0]
5150FC:  CMP             R0, #0
5150FE:  IT NE
515100:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
515104:  ADD.W           R0, R4, #0x40 ; '@'; this
515108:  MOVS            R1, #(stderr+1); void *
51510A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
51510E:  LDR             R0, =(UseDataFence_ptr - 0x515114)
515110:  ADD             R0, PC; UseDataFence_ptr
515112:  LDR             R0, [R0]; UseDataFence
515114:  LDRB            R0, [R0]
515116:  CMP             R0, #0
515118:  IT NE
51511A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
51511E:  MOVS            R0, #4; byte_count
515120:  BLX             malloc
515124:  MOV             R5, R0
515126:  LDR             R0, [R4,#0x20]
515128:  STR             R0, [R5]
51512A:  MOV             R0, R5; this
51512C:  MOVS            R1, #byte_4; void *
51512E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
515132:  MOV             R0, R5; p
515134:  BLX             free
515138:  LDR             R0, =(UseDataFence_ptr - 0x51513E)
51513A:  ADD             R0, PC; UseDataFence_ptr
51513C:  LDR             R0, [R0]; UseDataFence
51513E:  LDRB            R0, [R0]
515140:  CMP             R0, #0
515142:  IT NE
515144:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
515148:  MOVS            R0, #4; byte_count
51514A:  BLX             malloc
51514E:  MOV             R5, R0
515150:  LDR             R0, [R4,#0x1C]
515152:  STR             R0, [R5]
515154:  MOV             R0, R5; this
515156:  MOVS            R1, #byte_4; void *
515158:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
51515C:  MOV             R0, R5; p
51515E:  BLX             free
515162:  LDR             R0, =(UseDataFence_ptr - 0x515168)
515164:  ADD             R0, PC; UseDataFence_ptr
515166:  LDR             R0, [R0]; UseDataFence
515168:  LDRB            R0, [R0]
51516A:  CMP             R0, #0
51516C:  IT NE
51516E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
515172:  MOVS            R0, #4; byte_count
515174:  BLX             malloc
515178:  MOV             R5, R0
51517A:  LDR             R0, [R4,#0x44]
51517C:  STR             R0, [R5]
51517E:  MOV             R0, R5; this
515180:  MOVS            R1, #byte_4; void *
515182:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
515186:  MOV             R0, R5; p
515188:  BLX             free
51518C:  LDR             R0, =(UseDataFence_ptr - 0x515192)
51518E:  ADD             R0, PC; UseDataFence_ptr
515190:  LDR             R0, [R0]; UseDataFence
515192:  LDRB            R0, [R0]
515194:  CMP             R0, #0
515196:  IT NE
515198:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
51519C:  MOVS            R0, #4; byte_count
51519E:  BLX             malloc
5151A2:  MOV             R5, R0
5151A4:  LDR             R0, [R4,#0x48]
5151A6:  STR             R0, [R5]
5151A8:  MOV             R0, R5; this
5151AA:  MOVS            R1, #byte_4; void *
5151AC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5151B0:  MOV             R0, R5; p
5151B2:  BLX             free
5151B6:  LDR             R0, =(UseDataFence_ptr - 0x5151BC)
5151B8:  ADD             R0, PC; UseDataFence_ptr
5151BA:  LDR             R0, [R0]; UseDataFence
5151BC:  LDRB            R0, [R0]
5151BE:  CMP             R0, #0
5151C0:  IT NE
5151C2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5151C6:  MOVS            R0, #4; byte_count
5151C8:  BLX             malloc
5151CC:  MOV             R5, R0
5151CE:  LDR             R0, [R4,#0x4C]
5151D0:  STR             R0, [R5]
5151D2:  MOV             R0, R5; this
5151D4:  MOVS            R1, #byte_4; void *
5151D6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5151DA:  MOV             R0, R5; p
5151DC:  BLX             free
5151E0:  LDR             R0, =(UseDataFence_ptr - 0x5151E6)
5151E2:  ADD             R0, PC; UseDataFence_ptr
5151E4:  LDR             R0, [R0]; UseDataFence
5151E6:  LDRB            R0, [R0]
5151E8:  CMP             R0, #0
5151EA:  IT NE
5151EC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5151F0:  MOVS            R0, #4; byte_count
5151F2:  BLX             malloc
5151F6:  MOV             R5, R0
5151F8:  LDR             R0, [R4,#0x28]
5151FA:  STR             R0, [R5]
5151FC:  MOV             R0, R5; this
5151FE:  MOVS            R1, #byte_4; void *
515200:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
515204:  MOV             R0, R5; p
515206:  BLX             free
51520A:  LDR             R0, =(UseDataFence_ptr - 0x515210)
51520C:  ADD             R0, PC; UseDataFence_ptr
51520E:  LDR             R0, [R0]; UseDataFence
515210:  LDRB            R0, [R0]
515212:  CMP             R0, #0
515214:  IT NE
515216:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
51521A:  MOVS            R0, #4; byte_count
51521C:  BLX             malloc
515220:  MOV             R5, R0
515222:  LDR             R0, [R4,#0x2C]
515224:  STR             R0, [R5]
515226:  MOV             R0, R5; this
515228:  MOVS            R1, #byte_4; void *
51522A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
51522E:  MOV             R0, R5; p
515230:  POP.W           {R11}
515234:  POP.W           {R4-R7,LR}
515238:  B.W             j_free
