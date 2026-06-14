; =========================================================
; Game Engine Function: _ZN24CTaskComplexEvasiveCower9SerializeEv
; Address            : 0x50FF30 - 0x510084
; =========================================================

50FF30:  PUSH            {R4-R7,LR}
50FF32:  ADD             R7, SP, #0xC
50FF34:  PUSH.W          {R11}
50FF38:  MOV             R4, R0
50FF3A:  LDR             R0, [R4]
50FF3C:  LDR             R1, [R0,#0x14]
50FF3E:  MOV             R0, R4
50FF40:  BLX             R1
50FF42:  MOV             R5, R0
50FF44:  LDR             R0, =(UseDataFence_ptr - 0x50FF4A)
50FF46:  ADD             R0, PC; UseDataFence_ptr
50FF48:  LDR             R0, [R0]; UseDataFence
50FF4A:  LDRB            R0, [R0]
50FF4C:  CMP             R0, #0
50FF4E:  IT NE
50FF50:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FF54:  MOVS            R0, #4; byte_count
50FF56:  BLX             malloc
50FF5A:  MOV             R6, R0
50FF5C:  MOVS            R1, #byte_4; void *
50FF5E:  STR             R5, [R6]
50FF60:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FF64:  MOV             R0, R6; p
50FF66:  BLX             free
50FF6A:  LDR             R0, [R4]
50FF6C:  LDR             R1, [R0,#0x14]
50FF6E:  MOV             R0, R4
50FF70:  BLX             R1
50FF72:  CMP.W           R0, #0x200
50FF76:  BNE             loc_50FFCC
50FF78:  LDR             R0, [R4,#0x18]
50FF7A:  CBZ             R0, loc_50FFE6
50FF7C:  LDR             R1, =(UseDataFence_ptr - 0x50FF86)
50FF7E:  LDRB.W          R0, [R0,#0x3A]
50FF82:  ADD             R1, PC; UseDataFence_ptr
50FF84:  AND.W           R6, R0, #7
50FF88:  LDR             R1, [R1]; UseDataFence
50FF8A:  LDRB            R1, [R1]
50FF8C:  CMP             R1, #0
50FF8E:  IT NE
50FF90:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FF94:  MOVS            R0, #4; byte_count
50FF96:  BLX             malloc
50FF9A:  MOV             R5, R0
50FF9C:  MOVS            R1, #byte_4; void *
50FF9E:  STR             R6, [R5]
50FFA0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FFA4:  MOV             R0, R5; p
50FFA6:  BLX             free
50FFAA:  LDR             R0, [R4,#0x18]; CObject *
50FFAC:  LDRB.W          R1, [R0,#0x3A]
50FFB0:  AND.W           R1, R1, #7
50FFB4:  CMP             R1, #2
50FFB6:  BEQ             loc_51000E
50FFB8:  CMP             R1, #4
50FFBA:  BEQ             loc_51001A
50FFBC:  CMP             R1, #3
50FFBE:  BNE             loc_510046
50FFC0:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
50FFC4:  MOV             R5, R0
50FFC6:  LDR             R0, =(UseDataFence_ptr - 0x50FFCC)
50FFC8:  ADD             R0, PC; UseDataFence_ptr
50FFCA:  B               loc_510024
50FFCC:  LDR             R0, [R4]
50FFCE:  LDR             R1, [R0,#0x14]
50FFD0:  MOV             R0, R4
50FFD2:  BLX             R1
50FFD4:  MOV             R1, R0; int
50FFD6:  MOV.W           R0, #0x200; int
50FFDA:  POP.W           {R11}
50FFDE:  POP.W           {R4-R7,LR}
50FFE2:  B.W             sub_1941D4
50FFE6:  LDR             R0, =(UseDataFence_ptr - 0x50FFEC)
50FFE8:  ADD             R0, PC; UseDataFence_ptr
50FFEA:  LDR             R0, [R0]; UseDataFence
50FFEC:  LDRB            R0, [R0]
50FFEE:  CMP             R0, #0
50FFF0:  IT NE
50FFF2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FFF6:  MOVS            R0, #4; byte_count
50FFF8:  BLX             malloc
50FFFC:  MOV             R5, R0
50FFFE:  MOVS            R0, #0
510000:  STR             R0, [R5]
510002:  MOV             R0, R5; this
510004:  MOVS            R1, #byte_4; void *
510006:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
51000A:  MOV             R0, R5
51000C:  B               loc_510042
51000E:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
510012:  MOV             R5, R0
510014:  LDR             R0, =(UseDataFence_ptr - 0x51001A)
510016:  ADD             R0, PC; UseDataFence_ptr
510018:  B               loc_510024
51001A:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
51001E:  MOV             R5, R0
510020:  LDR             R0, =(UseDataFence_ptr - 0x510026)
510022:  ADD             R0, PC; UseDataFence_ptr
510024:  LDR             R0, [R0]; UseDataFence
510026:  LDRB            R0, [R0]
510028:  CMP             R0, #0
51002A:  IT NE
51002C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
510030:  MOVS            R0, #4; byte_count
510032:  BLX             malloc
510036:  MOV             R6, R0
510038:  MOVS            R1, #byte_4; void *
51003A:  STR             R5, [R6]
51003C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
510040:  MOV             R0, R6; p
510042:  BLX             free
510046:  LDR             R0, =(UseDataFence_ptr - 0x51004C)
510048:  ADD             R0, PC; UseDataFence_ptr
51004A:  LDR             R0, [R0]; UseDataFence
51004C:  LDRB            R0, [R0]
51004E:  CMP             R0, #0
510050:  IT NE
510052:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
510056:  MOVS            R0, #0xC; byte_count
510058:  BLX             malloc
51005C:  ADD.W           R1, R4, #0xC
510060:  MOV             R5, R0
510062:  LDR             R0, [R4,#0x14]
510064:  VLD1.8          {D16}, [R1]
510068:  MOVS            R1, #(byte_9+3); void *
51006A:  STR             R0, [R5,#8]
51006C:  MOV             R0, R5; this
51006E:  VST1.8          {D16}, [R5]
510072:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
510076:  MOV             R0, R5; p
510078:  POP.W           {R11}
51007C:  POP.W           {R4-R7,LR}
510080:  B.W             j_free
