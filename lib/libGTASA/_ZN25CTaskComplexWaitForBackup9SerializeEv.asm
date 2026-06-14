; =========================================================
; Game Engine Function: _ZN25CTaskComplexWaitForBackup9SerializeEv
; Address            : 0x547FDC - 0x548124
; =========================================================

547FDC:  PUSH            {R4-R7,LR}
547FDE:  ADD             R7, SP, #0xC
547FE0:  PUSH.W          {R11}
547FE4:  MOV             R4, R0
547FE6:  LDR             R0, [R4]
547FE8:  LDR             R1, [R0,#0x14]
547FEA:  MOV             R0, R4
547FEC:  BLX             R1
547FEE:  MOV             R5, R0
547FF0:  LDR             R0, =(UseDataFence_ptr - 0x547FF6)
547FF2:  ADD             R0, PC; UseDataFence_ptr
547FF4:  LDR             R0, [R0]; UseDataFence
547FF6:  LDRB            R0, [R0]
547FF8:  CMP             R0, #0
547FFA:  IT NE
547FFC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
548000:  MOVS            R0, #4; byte_count
548002:  BLX             malloc
548006:  MOV             R6, R0
548008:  MOVS            R1, #byte_4; void *
54800A:  STR             R5, [R6]
54800C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
548010:  MOV             R0, R6; p
548012:  BLX             free
548016:  LDR             R0, [R4]
548018:  LDR             R1, [R0,#0x14]
54801A:  MOV             R0, R4
54801C:  BLX             R1
54801E:  MOVW            R1, #0x25A
548022:  CMP             R0, R1
548024:  BNE             loc_548054
548026:  LDR             R0, [R4,#0x10]; CPed *
548028:  CBZ             R0, loc_54806E
54802A:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
54802E:  MOV             R5, R0
548030:  LDR             R0, =(UseDataFence_ptr - 0x548036)
548032:  ADD             R0, PC; UseDataFence_ptr
548034:  LDR             R0, [R0]; UseDataFence
548036:  LDRB            R0, [R0]
548038:  CMP             R0, #0
54803A:  IT NE
54803C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
548040:  MOVS            R0, #4; byte_count
548042:  BLX             malloc
548046:  MOV             R6, R0
548048:  MOVS            R1, #byte_4; void *
54804A:  STR             R5, [R6]
54804C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
548050:  MOV             R0, R6
548052:  B               loc_548096
548054:  LDR             R0, [R4]
548056:  LDR             R1, [R0,#0x14]
548058:  MOV             R0, R4
54805A:  BLX             R1
54805C:  MOV             R1, R0; int
54805E:  MOVW            R0, #0x25A; int
548062:  POP.W           {R11}
548066:  POP.W           {R4-R7,LR}
54806A:  B.W             sub_1941D4
54806E:  LDR             R0, =(UseDataFence_ptr - 0x548074)
548070:  ADD             R0, PC; UseDataFence_ptr
548072:  LDR             R0, [R0]; UseDataFence
548074:  LDRB            R0, [R0]
548076:  CMP             R0, #0
548078:  IT NE
54807A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
54807E:  MOVS            R0, #4; byte_count
548080:  BLX             malloc
548084:  MOV             R5, R0
548086:  MOV.W           R0, #0xFFFFFFFF
54808A:  STR             R0, [R5]
54808C:  MOV             R0, R5; this
54808E:  MOVS            R1, #byte_4; void *
548090:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
548094:  MOV             R0, R5; p
548096:  BLX             free
54809A:  LDR             R0, [R4,#0x14]; CPed *
54809C:  CBZ             R0, loc_5480C8
54809E:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
5480A2:  MOV             R5, R0
5480A4:  LDR             R0, =(UseDataFence_ptr - 0x5480AA)
5480A6:  ADD             R0, PC; UseDataFence_ptr
5480A8:  LDR             R0, [R0]; UseDataFence
5480AA:  LDRB            R0, [R0]
5480AC:  CMP             R0, #0
5480AE:  IT NE
5480B0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5480B4:  MOVS            R0, #4; byte_count
5480B6:  BLX             malloc
5480BA:  MOV             R6, R0
5480BC:  MOVS            R1, #byte_4; void *
5480BE:  STR             R5, [R6]
5480C0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5480C4:  MOV             R0, R6
5480C6:  B               loc_5480F0
5480C8:  LDR             R0, =(UseDataFence_ptr - 0x5480CE)
5480CA:  ADD             R0, PC; UseDataFence_ptr
5480CC:  LDR             R0, [R0]; UseDataFence
5480CE:  LDRB            R0, [R0]
5480D0:  CMP             R0, #0
5480D2:  IT NE
5480D4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5480D8:  MOVS            R0, #4; byte_count
5480DA:  BLX             malloc
5480DE:  MOV             R5, R0
5480E0:  MOV.W           R0, #0xFFFFFFFF
5480E4:  STR             R0, [R5]
5480E6:  MOV             R0, R5; this
5480E8:  MOVS            R1, #byte_4; void *
5480EA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5480EE:  MOV             R0, R5; p
5480F0:  BLX             free
5480F4:  LDR             R0, =(UseDataFence_ptr - 0x5480FC)
5480F6:  LDR             R5, [R4,#0xC]
5480F8:  ADD             R0, PC; UseDataFence_ptr
5480FA:  LDR             R0, [R0]; UseDataFence
5480FC:  LDRB            R0, [R0]
5480FE:  CMP             R0, #0
548100:  IT NE
548102:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
548106:  MOVS            R0, #4; byte_count
548108:  BLX             malloc
54810C:  MOV             R4, R0
54810E:  MOVS            R1, #byte_4; void *
548110:  STR             R5, [R4]
548112:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
548116:  MOV             R0, R4; p
548118:  POP.W           {R11}
54811C:  POP.W           {R4-R7,LR}
548120:  B.W             j_free
