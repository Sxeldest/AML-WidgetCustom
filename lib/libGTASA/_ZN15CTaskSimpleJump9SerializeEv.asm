; =========================================================
; Game Engine Function: _ZN15CTaskSimpleJump9SerializeEv
; Address            : 0x533144 - 0x5331C4
; =========================================================

533144:  PUSH            {R4-R7,LR}
533146:  ADD             R7, SP, #0xC
533148:  PUSH.W          {R11}
53314C:  MOV             R4, R0
53314E:  LDR             R0, [R4]
533150:  LDR             R1, [R0,#0x14]
533152:  MOV             R0, R4
533154:  BLX             R1
533156:  MOV             R5, R0
533158:  LDR             R0, =(UseDataFence_ptr - 0x53315E)
53315A:  ADD             R0, PC; UseDataFence_ptr
53315C:  LDR             R0, [R0]; UseDataFence
53315E:  LDRB            R0, [R0]
533160:  CMP             R0, #0
533162:  IT NE
533164:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
533168:  MOVS            R0, #4; byte_count
53316A:  BLX             malloc
53316E:  MOV             R6, R0
533170:  MOVS            R1, #byte_4; void *
533172:  STR             R5, [R6]
533174:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
533178:  MOV             R0, R6; p
53317A:  BLX             free
53317E:  LDR             R0, [R4]
533180:  LDR             R1, [R0,#0x14]
533182:  MOV             R0, R4
533184:  BLX             R1
533186:  CMP             R0, #0xD2
533188:  BNE             loc_5331AC
53318A:  LDR             R0, =(UseDataFence_ptr - 0x533190)
53318C:  ADD             R0, PC; UseDataFence_ptr
53318E:  LDR             R0, [R0]; UseDataFence
533190:  LDRB            R0, [R0]
533192:  CMP             R0, #0
533194:  IT NE
533196:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53319A:  ADD.W           R0, R4, #0x24 ; '$'; this
53319E:  MOVS            R1, #(stderr+1); void *
5331A0:  POP.W           {R11}
5331A4:  POP.W           {R4-R7,LR}
5331A8:  B.W             sub_19EA3C
5331AC:  LDR             R0, [R4]
5331AE:  LDR             R1, [R0,#0x14]
5331B0:  MOV             R0, R4
5331B2:  BLX             R1
5331B4:  MOV             R1, R0; int
5331B6:  MOVS            R0, #0xD2; int
5331B8:  POP.W           {R11}
5331BC:  POP.W           {R4-R7,LR}
5331C0:  B.W             sub_1941D4
