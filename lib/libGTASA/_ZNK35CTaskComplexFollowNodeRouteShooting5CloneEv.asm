; =========================================================
; Game Engine Function: _ZNK35CTaskComplexFollowNodeRouteShooting5CloneEv
; Address            : 0x5270C4 - 0x5271C6
; =========================================================

5270C4:  PUSH            {R4-R7,LR}
5270C6:  ADD             R7, SP, #0xC
5270C8:  PUSH.W          {R8-R11}
5270CC:  SUB             SP, SP, #4
5270CE:  VPUSH           {D8-D9}
5270D2:  MOV             R10, R0
5270D4:  MOVS            R0, #dword_70; this
5270D6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5270DA:  MOV             R5, R0
5270DC:  ADD.W           R0, R10, #0x18
5270E0:  VLD1.32         {D8-D9}, [R0]
5270E4:  MOV             R0, R5; this
5270E6:  LDR.W           R9, [R10,#0x60]
5270EA:  LDRB.W          R11, [R10,#0x4C]
5270EE:  LDR.W           R4, [R10,#0x3C]
5270F2:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5270F6:  LDR             R0, =(_ZTV27CTaskComplexFollowNodeRoute_ptr - 0x527108)
5270F8:  VMOV.I32        Q8, #0
5270FC:  ADD.W           R8, R5, #0x18
527100:  ADD.W           R2, R5, #0x50 ; 'P'
527104:  ADD             R0, PC; _ZTV27CTaskComplexFollowNodeRoute_ptr
527106:  MOVS            R6, #0
527108:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowNodeRoute ...
52710A:  ADDS            R0, #8
52710C:  STR             R0, [R5]
52710E:  LDRB.W          R1, [R5,#0x4C]
527112:  LDR.W           R0, [R10,#0x14]
527116:  VLDR            D18, [R10,#0xC]
52711A:  AND.W           R1, R1, #0x96; unsigned int
52711E:  VST1.32         {D8-D9}, [R8]
527122:  VST1.32         {D16-D17}, [R2]
527126:  STR             R0, [R5,#0x14]
527128:  AND.W           R0, R11, #1
52712C:  ORRS            R0, R1
52712E:  STRD.W          R6, R4, [R5,#0x38]
527132:  MOVW            R4, #0xFFFF
527136:  ORR.W           R0, R0, #8
52713A:  STRH            R4, [R5,#0x28]
52713C:  STRH            R4, [R5,#0x34]
52713E:  STRH.W          R6, [R5,#0x48]
527142:  STRD.W          R6, R6, [R5,#0x40]
527146:  VSTR            D18, [R5,#0xC]
52714A:  STRB.W          R0, [R5,#0x4C]
52714E:  MOVS            R0, #dword_64; this
527150:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
527154:  STR             R6, [R0]
527156:  STR             R0, [R5,#0x30]
527158:  MOVS            R0, #dword_24; this
52715A:  BLX             j__ZN10CNodeRoutenwEj; CNodeRoute::operator new(uint)
52715E:  LDR             R1, =(_ZTV35CTaskComplexFollowNodeRouteShooting_ptr - 0x52716A)
527160:  CMP.W           R9, #0
527164:  LDR             R2, =(EmptyNodeAddress_ptr - 0x52716E)
527166:  ADD             R1, PC; _ZTV35CTaskComplexFollowNodeRouteShooting_ptr
527168:  STR             R6, [R0]
52716A:  ADD             R2, PC; EmptyNodeAddress_ptr
52716C:  STRH            R4, [R0,#4]
52716E:  LDR             R1, [R1]; `vtable for'CTaskComplexFollowNodeRouteShooting ...
527170:  LDR             R2, [R2]; EmptyNodeAddress
527172:  STRH            R4, [R0,#8]
527174:  ADD.W           R1, R1, #8
527178:  STRH            R4, [R0,#0xC]
52717A:  STRH            R4, [R0,#0x10]
52717C:  STRH            R4, [R0,#0x14]
52717E:  STRH            R4, [R0,#0x18]
527180:  STRH            R4, [R0,#0x1C]
527182:  STRH            R4, [R0,#0x20]
527184:  STRH            R4, [R5,#0x34]
527186:  STR             R0, [R5,#0x2C]
527188:  LDR             R0, [R2]
52718A:  STR             R1, [R5]
52718C:  MOV             R1, R5
52718E:  STR             R0, [R5,#0x28]
527190:  STRH.W          R6, [R5,#0x6C]
527194:  STRD.W          R6, R6, [R5,#0x64]
527198:  STR.W           R9, [R1,#0x60]!; CEntity **
52719C:  ITT NE
52719E:  MOVNE           R0, R9; this
5271A0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5271A4:  LDR.W           R0, [R8]
5271A8:  CMP             R0, #7
5271AA:  ITT GE
5271AC:  MOVGE           R0, #6
5271AE:  STRGE.W         R0, [R8]
5271B2:  LDR.W           R0, [R10,#0x28]
5271B6:  STR             R0, [R5,#0x28]
5271B8:  MOV             R0, R5
5271BA:  VPOP            {D8-D9}
5271BE:  ADD             SP, SP, #4
5271C0:  POP.W           {R8-R11}
5271C4:  POP             {R4-R7,PC}
