; =========================================================
; Game Engine Function: _ZN51CTaskComplexGoToPointAndStandStillAndAchieveHeading9SerializeEv
; Address            : 0x527A60 - 0x527B54
; =========================================================

527A60:  PUSH            {R4-R7,LR}
527A62:  ADD             R7, SP, #0xC
527A64:  PUSH.W          {R11}
527A68:  MOV             R4, R0
527A6A:  LDR             R0, [R4]
527A6C:  LDR             R1, [R0,#0x14]
527A6E:  MOV             R0, R4
527A70:  BLX             R1
527A72:  MOV             R5, R0
527A74:  LDR             R0, =(UseDataFence_ptr - 0x527A7A)
527A76:  ADD             R0, PC; UseDataFence_ptr
527A78:  LDR             R0, [R0]; UseDataFence
527A7A:  LDRB            R0, [R0]
527A7C:  CMP             R0, #0
527A7E:  IT NE
527A80:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527A84:  MOVS            R0, #4; byte_count
527A86:  BLX             malloc
527A8A:  MOV             R6, R0
527A8C:  MOVS            R1, #byte_4; void *
527A8E:  STR             R5, [R6]
527A90:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527A94:  MOV             R0, R6; p
527A96:  BLX             free
527A9A:  LDR             R0, [R4]
527A9C:  LDR             R1, [R0,#0x14]
527A9E:  MOV             R0, R4
527AA0:  BLX             R1
527AA2:  CMP.W           R0, #0x388
527AA6:  BNE             loc_527B3A
527AA8:  LDR             R0, =(UseDataFence_ptr - 0x527AAE)
527AAA:  ADD             R0, PC; UseDataFence_ptr
527AAC:  LDR             R0, [R0]; UseDataFence
527AAE:  LDRB            R0, [R0]
527AB0:  CMP             R0, #0
527AB2:  IT NE
527AB4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527AB8:  MOVS            R0, #4; byte_count
527ABA:  BLX             malloc
527ABE:  MOV             R5, R0
527AC0:  LDR             R0, [R4,#0xC]
527AC2:  STR             R0, [R5]
527AC4:  MOV             R0, R5; this
527AC6:  MOVS            R1, #byte_4; void *
527AC8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527ACC:  MOV             R0, R5; p
527ACE:  BLX             free
527AD2:  LDR             R0, =(UseDataFence_ptr - 0x527AD8)
527AD4:  ADD             R0, PC; UseDataFence_ptr
527AD6:  LDR             R0, [R0]; UseDataFence
527AD8:  LDRB            R0, [R0]
527ADA:  CMP             R0, #0
527ADC:  IT NE
527ADE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527AE2:  MOVS            R0, #0xC; byte_count
527AE4:  BLX             malloc
527AE8:  ADD.W           R1, R4, #0x10
527AEC:  MOV             R5, R0
527AEE:  LDR             R0, [R4,#0x18]
527AF0:  VLD1.8          {D16}, [R1]
527AF4:  MOVS            R1, #(byte_9+3); void *
527AF6:  STR             R0, [R5,#8]
527AF8:  MOV             R0, R5; this
527AFA:  VST1.8          {D16}, [R5]
527AFE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527B02:  MOV             R0, R5; p
527B04:  BLX             free
527B08:  LDR             R0, =(UseDataFence_ptr - 0x527B0E)
527B0A:  ADD             R0, PC; UseDataFence_ptr
527B0C:  LDR             R0, [R0]; UseDataFence
527B0E:  LDRB            R0, [R0]
527B10:  CMP             R0, #0
527B12:  IT NE
527B14:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
527B18:  MOVS            R0, #4; byte_count
527B1A:  BLX             malloc
527B1E:  MOV             R5, R0
527B20:  LDR             R0, [R4,#0x20]
527B22:  STR             R0, [R5]
527B24:  MOV             R0, R5; this
527B26:  MOVS            R1, #byte_4; void *
527B28:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
527B2C:  MOV             R0, R5; p
527B2E:  POP.W           {R11}
527B32:  POP.W           {R4-R7,LR}
527B36:  B.W             j_free
527B3A:  LDR             R0, [R4]
527B3C:  LDR             R1, [R0,#0x14]
527B3E:  MOV             R0, R4
527B40:  BLX             R1
527B42:  MOV             R1, R0; int
527B44:  MOV.W           R0, #0x388; int
527B48:  POP.W           {R11}
527B4C:  POP.W           {R4-R7,LR}
527B50:  B.W             sub_1941D4
