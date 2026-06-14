; =========================================================
; Game Engine Function: _ZN17SharedGPUResourceC2Ev
; Address            : 0x1BD4F0 - 0x1BD596
; =========================================================

1BD4F0:  PUSH            {R4-R7,LR}
1BD4F2:  ADD             R7, SP, #0xC
1BD4F4:  PUSH.W          {R8}
1BD4F8:  MOV             R8, R0
1BD4FA:  LDR             R0, =(curPreallocSource_ptr - 0x1BD500)
1BD4FC:  ADD             R0, PC; curPreallocSource_ptr
1BD4FE:  LDR             R0, [R0]; curPreallocSource
1BD500:  LDR             R5, [R0]
1BD502:  CBNZ            R5, loc_1BD542
1BD504:  MOVS            R0, #0x8C; unsigned int
1BD506:  BLX             _Znwj; operator new(uint)
1BD50A:  MOV             R5, R0
1BD50C:  MOVS            R6, #0
1BD50E:  MOVS            R0, #0
1BD510:  MOVS            R1, #0
1BD512:  MOVS            R2, #0
1BD514:  BLX             j__ZN13RQIndexBuffer6CreateE19RQIndexBufferFormatPKvj; RQIndexBuffer::Create(RQIndexBufferFormat,void const*,uint)
1BD518:  STR.W           R0, [R5,R6,LSL#2]
1BD51C:  MOVS            R0, #0; this
1BD51E:  MOVS            R1, #0; void *
1BD520:  ADD.W           R4, R5, R6,LSL#2
1BD524:  BLX             j__ZN14RQVertexBuffer6CreateEPKvj; RQVertexBuffer::Create(void const*,uint)
1BD528:  ADDS            R6, #1
1BD52A:  STR             R0, [R4,#0x40]
1BD52C:  CMP             R6, #0x10
1BD52E:  BNE             loc_1BD50E
1BD530:  LDR             R0, =(curPreallocSource_ptr - 0x1BD53C)
1BD532:  MOVS            R1, #0
1BD534:  STRD.W          R1, R1, [R5,#0x80]
1BD538:  ADD             R0, PC; curPreallocSource_ptr
1BD53A:  STR.W           R1, [R5,#0x88]
1BD53E:  LDR             R0, [R0]; curPreallocSource
1BD540:  STR             R5, [R0]
1BD542:  STR.W           R5, [R8,#4]
1BD546:  LDR.W           R0, [R5,#0x80]
1BD54A:  ADDS            R1, R0, #1
1BD54C:  STR.W           R1, [R5,#0x80]
1BD550:  ADD.W           R0, R5, R0,LSL#2
1BD554:  LDR.W           R1, [R8,#4]
1BD558:  LDR             R0, [R0,#0x40]
1BD55A:  STR.W           R0, [R8,#8]
1BD55E:  LDR.W           R2, [R1,#0x84]
1BD562:  ADDS            R0, R2, #1
1BD564:  STR.W           R0, [R1,#0x84]
1BD568:  LDR.W           R0, [R8,#4]
1BD56C:  LDR.W           R1, [R1,R2,LSL#2]
1BD570:  STR.W           R1, [R8,#0xC]
1BD574:  LDR.W           R1, [R0,#0x80]
1BD578:  CMP             R1, #0x10
1BD57A:  ITT NE
1BD57C:  LDRNE.W         R0, [R0,#0x84]
1BD580:  CMPNE           R0, #0x10
1BD582:  BNE             loc_1BD58E
1BD584:  LDR             R0, =(curPreallocSource_ptr - 0x1BD58C)
1BD586:  MOVS            R1, #0
1BD588:  ADD             R0, PC; curPreallocSource_ptr
1BD58A:  LDR             R0, [R0]; curPreallocSource
1BD58C:  STR             R1, [R0]
1BD58E:  MOV             R0, R8
1BD590:  POP.W           {R8}
1BD594:  POP             {R4-R7,PC}
