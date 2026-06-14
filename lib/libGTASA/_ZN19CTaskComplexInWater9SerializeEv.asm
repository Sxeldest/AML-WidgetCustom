; =========================================================
; Game Engine Function: _ZN19CTaskComplexInWater9SerializeEv
; Address            : 0x4F4140 - 0x4F41A8
; =========================================================

4F4140:  PUSH            {R4-R7,LR}
4F4142:  ADD             R7, SP, #0xC
4F4144:  PUSH.W          {R11}
4F4148:  MOV             R4, R0
4F414A:  LDR             R0, [R4]
4F414C:  LDR             R1, [R0,#0x14]
4F414E:  MOV             R0, R4
4F4150:  BLX             R1
4F4152:  MOV             R5, R0
4F4154:  LDR             R0, =(UseDataFence_ptr - 0x4F415A)
4F4156:  ADD             R0, PC; UseDataFence_ptr
4F4158:  LDR             R0, [R0]; UseDataFence
4F415A:  LDRB            R0, [R0]
4F415C:  CMP             R0, #0
4F415E:  IT NE
4F4160:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F4164:  MOVS            R0, #4; byte_count
4F4166:  BLX             malloc
4F416A:  MOV             R6, R0
4F416C:  MOVS            R1, #byte_4; void *
4F416E:  STR             R5, [R6]
4F4170:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F4174:  MOV             R0, R6; p
4F4176:  BLX             free
4F417A:  LDR             R0, [R4]
4F417C:  LDR             R1, [R0,#0x14]
4F417E:  MOV             R0, R4
4F4180:  BLX             R1
4F4182:  CMP.W           R0, #0x10C
4F4186:  ITT EQ
4F4188:  POPEQ.W         {R11}
4F418C:  POPEQ           {R4-R7,PC}
4F418E:  LDR             R0, [R4]
4F4190:  LDR             R1, [R0,#0x14]
4F4192:  MOV             R0, R4
4F4194:  BLX             R1
4F4196:  MOV             R1, R0; int
4F4198:  MOV.W           R0, #0x10C; int
4F419C:  POP.W           {R11}
4F41A0:  POP.W           {R4-R7,LR}
4F41A4:  B.W             sub_1941D4
