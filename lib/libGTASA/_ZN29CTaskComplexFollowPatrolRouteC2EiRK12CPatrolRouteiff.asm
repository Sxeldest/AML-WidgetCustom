; =========================================================
; Game Engine Function: _ZN29CTaskComplexFollowPatrolRouteC2EiRK12CPatrolRouteiff
; Address            : 0x524FDC - 0x5250F2
; =========================================================

524FDC:  PUSH            {R4-R7,LR}
524FDE:  ADD             R7, SP, #0xC
524FE0:  PUSH.W          {R8-R11}
524FE4:  SUB             SP, SP, #4
524FE6:  VPUSH           {D8-D9}
524FEA:  SUB             SP, SP, #8
524FEC:  MOV             R6, R3
524FEE:  MOV             R10, R2
524FF0:  MOV             R8, R1
524FF2:  MOV             R4, R0
524FF4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
524FF8:  LDR             R0, =(_ZTV29CTaskComplexFollowPatrolRoute_ptr - 0x525000)
524FFA:  STRH            R6, [R4,#0xC]
524FFC:  ADD             R0, PC; _ZTV29CTaskComplexFollowPatrolRoute_ptr
524FFE:  LDRB.W          R1, [R4,#0x20]
525002:  STRH.W          R8, [R4,#0x10]
525006:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowPatrolRoute ...
525008:  AND.W           R1, R1, #0xFD; unsigned int
52500C:  STRB.W          R1, [R4,#0x20]
525010:  ADDS            R0, #8
525012:  STR             R0, [R4]
525014:  MOV.W           R0, #(elf_hash_bucket+0xA8); this
525018:  BLX             j__ZN12CPatrolRoutenwEj; CPatrolRoute::operator new(uint)
52501C:  MOV             R11, R0
52501E:  MOVS            R0, #0
525020:  STR.W           R0, [R11]
525024:  STRB.W          R0, [R11,#4]
525028:  STRB.W          R0, [R11,#0x1C]
52502C:  STRB.W          R0, [R11,#0x2C]
525030:  STRB.W          R0, [R11,#0x44]
525034:  STRB.W          R0, [R11,#0x54]
525038:  STRB.W          R0, [R11,#0x6C]
52503C:  STRB.W          R0, [R11,#0x7C]
525040:  STRB.W          R0, [R11,#0x94]
525044:  STRB.W          R0, [R11,#0xA4]
525048:  STRB.W          R0, [R11,#0xBC]
52504C:  STRB.W          R0, [R11,#0xCC]
525050:  STRB.W          R0, [R11,#0xE4]
525054:  STRB.W          R0, [R11,#0xF4]
525058:  STRB.W          R0, [R11,#0x10C]
52505C:  STRB.W          R0, [R11,#0x11C]
525060:  STRB.W          R0, [R11,#0x134]
525064:  STR             R4, [SP,#0x38+var_34]
525066:  STR.W           R11, [R4,#0x1C]
52506A:  LDR.W           R0, [R10]
52506E:  VLDR            S16, [R7,#arg_4]
525072:  VLDR            S18, [R7,#arg_0]
525076:  CMP             R0, #1
525078:  STR.W           R0, [R11]
52507C:  BLT             loc_5250C8
52507E:  MOVS            R4, #0
525080:  MOV.W           R5, #0x144
525084:  MOVS            R6, #0
525086:  ADD.W           R0, R10, R5
52508A:  ADD.W           R1, R11, R5
52508E:  ADD.W           R8, R11, R4
525092:  ADD.W           R9, R10, R4
525096:  VLDR            D16, [R0]
52509A:  LDR             R0, [R0,#8]
52509C:  STR             R0, [R1,#8]
52509E:  ADD.W           R0, R8, #4; char *
5250A2:  VSTR            D16, [R1]
5250A6:  ADD.W           R1, R9, #4; char *
5250AA:  BLX             strcpy
5250AE:  ADD.W           R0, R8, #0x1C; char *
5250B2:  ADD.W           R1, R9, #0x1C; char *
5250B6:  BLX             strcpy
5250BA:  LDR.W           R0, [R11]
5250BE:  ADDS            R6, #1
5250C0:  ADDS            R5, #0xC
5250C2:  ADDS            R4, #0x28 ; '('
5250C4:  CMP             R6, R0
5250C6:  BLT             loc_525086
5250C8:  LDR             R0, [SP,#0x38+var_34]
5250CA:  MOVS            R2, #0
5250CC:  VSTR            S18, [R0,#0x14]
5250D0:  VSTR            S16, [R0,#0x18]
5250D4:  LDRB.W          R1, [R0,#0x20]
5250D8:  STRH            R2, [R0,#0x12]
5250DA:  STRH            R2, [R0,#0xE]
5250DC:  ORR.W           R1, R1, #1
5250E0:  STRB.W          R1, [R0,#0x20]
5250E4:  ADD             SP, SP, #8
5250E6:  VPOP            {D8-D9}
5250EA:  ADD             SP, SP, #4
5250EC:  POP.W           {R8-R11}
5250F0:  POP             {R4-R7,PC}
