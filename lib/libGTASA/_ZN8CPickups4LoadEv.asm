; =========================================================
; Game Engine Function: _ZN8CPickups4LoadEv
; Address            : 0x48D044 - 0x48D18E
; =========================================================

48D044:  PUSH            {R4-R7,LR}
48D046:  ADD             R7, SP, #0xC
48D048:  PUSH.W          {R8-R10}
48D04C:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x48D058)
48D04E:  MOV.W           R8, #0
48D052:  MOVS            R5, #0
48D054:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
48D056:  LDR             R6, [R0]; CPickups::aPickUps ...
48D058:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x48D05E)
48D05A:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
48D05C:  LDR.W           R10, [R0]; CPickups::aPickUps ...
48D060:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x48D066)
48D062:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
48D064:  LDR.W           R9, [R0]; CPickups::aPickUps ...
48D068:  ADDS            R4, R6, R5
48D06A:  MOVS            R1, #dword_20; void *
48D06C:  MOV             R0, R4; this
48D06E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D072:  LDRB            R0, [R4,#0x1C]
48D074:  CBZ             R0, loc_48D092
48D076:  ADD.W           R0, R10, R5
48D07A:  LDR             R1, [R0,#4]
48D07C:  CMP             R1, #0
48D07E:  ITTTT NE
48D080:  STRNE.W         R8, [R0,#4]
48D084:  ADDNE.W         R0, R9, R5
48D088:  LDRBNE          R1, [R0,#0x1D]
48D08A:  ANDNE.W         R1, R1, #0xF7
48D08E:  IT NE
48D090:  STRBNE          R1, [R0,#0x1D]
48D092:  ADDS            R5, #0x20 ; ' '
48D094:  CMP.W           R5, #0x4D80
48D098:  BNE             loc_48D068
48D09A:  LDR             R0, =(_ZN8CPickups11NumMessagesE_ptr - 0x48D0A2)
48D09C:  LDR             R1, =(_ZN8CPickups20CollectedPickUpIndexE_ptr - 0x48D0A4)
48D09E:  ADD             R0, PC; _ZN8CPickups11NumMessagesE_ptr
48D0A0:  ADD             R1, PC; _ZN8CPickups20CollectedPickUpIndexE_ptr
48D0A2:  LDR             R2, [R0]; int
48D0A4:  LDR             R0, [R1]; this
48D0A6:  MOVS            R1, #0
48D0A8:  STRH            R1, [R2]; CPickups::NumMessages
48D0AA:  MOVS            R1, #(stderr+2); void *
48D0AC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D0B0:  LDR             R0, =(_ZN8CPickups18DisplayHelpMessageE_ptr - 0x48D0B8)
48D0B2:  MOVS            R1, #(stderr+1); void *
48D0B4:  ADD             R0, PC; _ZN8CPickups18DisplayHelpMessageE_ptr
48D0B6:  LDR             R0, [R0]; this
48D0B8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D0BC:  LDR             R0, =(_ZN8CPickups17aPickUpsCollectedE_ptr - 0x48D0C4)
48D0BE:  MOVS            R1, #byte_4; void *
48D0C0:  ADD             R0, PC; _ZN8CPickups17aPickUpsCollectedE_ptr
48D0C2:  LDR             R4, [R0]; CPickups::aPickUpsCollected ...
48D0C4:  MOV             R0, R4; this
48D0C6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D0CA:  ADDS            R0, R4, #4; this
48D0CC:  MOVS            R1, #byte_4; void *
48D0CE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D0D2:  ADD.W           R0, R4, #8; this
48D0D6:  MOVS            R1, #byte_4; void *
48D0D8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D0DC:  ADD.W           R0, R4, #0xC; this
48D0E0:  MOVS            R1, #byte_4; void *
48D0E2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D0E6:  ADD.W           R0, R4, #0x10; this
48D0EA:  MOVS            R1, #byte_4; void *
48D0EC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D0F0:  ADD.W           R0, R4, #0x14; this
48D0F4:  MOVS            R1, #byte_4; void *
48D0F6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D0FA:  ADD.W           R0, R4, #0x18; this
48D0FE:  MOVS            R1, #byte_4; void *
48D100:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D104:  ADD.W           R0, R4, #0x1C; this
48D108:  MOVS            R1, #byte_4; void *
48D10A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D10E:  ADD.W           R0, R4, #0x20 ; ' '; this
48D112:  MOVS            R1, #byte_4; void *
48D114:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D118:  ADD.W           R0, R4, #0x24 ; '$'; this
48D11C:  MOVS            R1, #byte_4; void *
48D11E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D122:  ADD.W           R0, R4, #0x28 ; '('; this
48D126:  MOVS            R1, #byte_4; void *
48D128:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D12C:  ADD.W           R0, R4, #0x2C ; ','; this
48D130:  MOVS            R1, #byte_4; void *
48D132:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D136:  ADD.W           R0, R4, #0x30 ; '0'; this
48D13A:  MOVS            R1, #byte_4; void *
48D13C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D140:  ADD.W           R0, R4, #0x34 ; '4'; this
48D144:  MOVS            R1, #byte_4; void *
48D146:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D14A:  ADD.W           R0, R4, #0x38 ; '8'; this
48D14E:  MOVS            R1, #byte_4; void *
48D150:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D154:  ADD.W           R0, R4, #0x3C ; '<'; this
48D158:  MOVS            R1, #byte_4; void *
48D15A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D15E:  ADD.W           R0, R4, #0x40 ; '@'; this
48D162:  MOVS            R1, #byte_4; void *
48D164:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D168:  ADD.W           R0, R4, #0x44 ; 'D'; this
48D16C:  MOVS            R1, #byte_4; void *
48D16E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D172:  ADD.W           R0, R4, #0x48 ; 'H'; this
48D176:  MOVS            R1, #byte_4; void *
48D178:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D17C:  ADD.W           R0, R4, #0x4C ; 'L'; this
48D180:  MOVS            R1, #byte_4; void *
48D182:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48D186:  MOVS            R0, #1
48D188:  POP.W           {R8-R10}
48D18C:  POP             {R4-R7,PC}
