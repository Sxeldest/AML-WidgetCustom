; =========================================================
; Game Engine Function: _ZNK25CTaskComplexGoToAttractor5CloneEv
; Address            : 0x528134 - 0x528178
; =========================================================

528134:  PUSH            {R4,R5,R7,LR}
528136:  ADD             R7, SP, #8
528138:  VPUSH           {D8-D9}
52813C:  MOV             R4, R0
52813E:  MOVS            R0, #word_2C; this
528140:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
528144:  ADD.W           R1, R4, #0x1C
528148:  LDR             R5, [R4,#0xC]
52814A:  VLD1.32         {D8-D9}, [R1]
52814E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
528152:  LDR             R1, =(_ZTV25CTaskComplexGoToAttractor_ptr - 0x52815E)
528154:  ADD.W           R2, R0, #0x1C
528158:  STR             R5, [R0,#0xC]
52815A:  ADD             R1, PC; _ZTV25CTaskComplexGoToAttractor_ptr
52815C:  LDR             R1, [R1]; `vtable for'CTaskComplexGoToAttractor ...
52815E:  ADDS            R1, #8
528160:  STR             R1, [R0]
528162:  VLDR            D16, [R4,#0x10]
528166:  LDR             R1, [R4,#0x18]
528168:  VST1.32         {D8-D9}, [R2]
52816C:  STR             R1, [R0,#0x18]
52816E:  VSTR            D16, [R0,#0x10]
528172:  VPOP            {D8-D9}
528176:  POP             {R4,R5,R7,PC}
