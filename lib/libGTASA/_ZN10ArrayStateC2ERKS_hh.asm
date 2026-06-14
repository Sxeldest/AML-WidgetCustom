; =========================================================
; Game Engine Function: _ZN10ArrayStateC2ERKS_hh
; Address            : 0x1BD11C - 0x1BD288
; =========================================================

1BD11C:  PUSH            {R4-R7,LR}
1BD11E:  ADD             R7, SP, #0xC
1BD120:  PUSH.W          {R8-R11}
1BD124:  SUB             SP, SP, #4
1BD126:  MOV             R8, R2
1BD128:  MOVS            R2, #0xBC; size_t
1BD12A:  MOV             R4, R0
1BD12C:  MOVS            R5, #0
1BD12E:  STRB.W          R5, [R4,#0x58]
1BD132:  MOV             R10, R3
1BD134:  STRB.W          R5, [R4,#0x44]
1BD138:  STRB.W          R5, [R4,#0x6C]
1BD13C:  STRB.W          R5, [R4,#0x80]
1BD140:  STRB.W          R5, [R4,#0x94]
1BD144:  STRB.W          R5, [R4,#0xA8]
1BD148:  STRB.W          R5, [R4,#0x30]
1BD14C:  BLX             memcpy_0
1BD150:  MOVS            R0, #1
1BD152:  STRB.W          R0, [R4,#0x20]
1BD156:  STRD.W          R5, R5, [R4,#0x24]
1BD15A:  STR.W           R5, [R4,#0xBC]
1BD15E:  LDR.W           R11, [R4]
1BD162:  CMP.W           R11, #0
1BD166:  BEQ             loc_1BD1CC
1BD168:  LDR             R0, [R4,#4]
1BD16A:  MOVW            R1, #0x1405
1BD16E:  CMP             R0, R1
1BD170:  BNE             loc_1BD1B6
1BD172:  LDR             R6, [R4,#8]
1BD174:  MOV.W           R9, R6,LSL#1
1BD178:  MOV             R0, R9; byte_count
1BD17A:  BLX             malloc
1BD17E:  CBZ             R6, loc_1BD1E4
1BD180:  CMP             R6, #3
1BD182:  BLS             loc_1BD1D4
1BD184:  BIC.W           R1, R6, #3
1BD188:  CBZ             R1, loc_1BD1D4
1BD18A:  ADD.W           R2, R11, R6,LSL#2
1BD18E:  CMP             R0, R2
1BD190:  ITT CC
1BD192:  ADDCC.W         R2, R0, R6,LSL#1
1BD196:  CMPCC           R11, R2
1BD198:  BCC             loc_1BD1D4
1BD19A:  MOV             R2, R1
1BD19C:  MOV             R3, R0
1BD19E:  MOV             R5, R11
1BD1A0:  VLD1.32         {D16-D17}, [R5]!
1BD1A4:  SUBS            R2, #4
1BD1A6:  VMOVN.I32       D16, Q8
1BD1AA:  VST1.16         {D16}, [R3]!
1BD1AE:  BNE             loc_1BD1A0
1BD1B0:  CMP             R6, R1
1BD1B2:  BNE             loc_1BD1D6
1BD1B4:  B               loc_1BD1E4
1BD1B6:  LDR.W           R9, [R4,#0xC]
1BD1BA:  MOV             R0, R9; byte_count
1BD1BC:  BLX             malloc
1BD1C0:  MOV             R1, R11; void *
1BD1C2:  MOV             R2, R9; size_t
1BD1C4:  MOV             R6, R0
1BD1C6:  BLX             memcpy_1
1BD1CA:  STR             R6, [R4]
1BD1CC:  CMP.W           R10, #0
1BD1D0:  BNE             loc_1BD20A
1BD1D2:  B               loc_1BD1F0
1BD1D4:  MOVS            R1, #0
1BD1D6:  LDR.W           R2, [R11,R1,LSL#2]
1BD1DA:  STRH.W          R2, [R0,R1,LSL#1]
1BD1DE:  ADDS            R1, #1
1BD1E0:  CMP             R1, R6
1BD1E2:  BCC             loc_1BD1D6
1BD1E4:  STR.W           R9, [R4,#0xC]
1BD1E8:  STR             R0, [R4]
1BD1EA:  CMP.W           R10, #0
1BD1EE:  BNE             loc_1BD20A
1BD1F0:  LDR             R5, [R4,#0x10]
1BD1F2:  CBZ             R5, loc_1BD20A
1BD1F4:  LDR.W           R9, [R4,#0x14]
1BD1F8:  MOV             R0, R9; byte_count
1BD1FA:  BLX             malloc
1BD1FE:  MOV             R1, R5; void *
1BD200:  MOV             R2, R9; size_t
1BD202:  MOV             R6, R0
1BD204:  BLX             memcpy_1
1BD208:  STR             R6, [R4,#0x10]
1BD20A:  CMP.W           R8, #0
1BD20E:  BEQ             loc_1BD21A
1BD210:  MOV             R0, R4
1BD212:  ADD             SP, SP, #4
1BD214:  POP.W           {R8-R11}
1BD218:  POP             {R4-R7,PC}
1BD21A:  LDR             R0, =(curGPUResource_ptr - 0x1BD222)
1BD21C:  LDR             R1, =(sharingGPUResource_ptr - 0x1BD224)
1BD21E:  ADD             R0, PC; curGPUResource_ptr
1BD220:  ADD             R1, PC; sharingGPUResource_ptr
1BD222:  LDR             R0, [R0]; curGPUResource
1BD224:  LDR             R1, [R1]; sharingGPUResource
1BD226:  LDR             R0, [R0]; this
1BD228:  LDRB            R1, [R1]
1BD22A:  CBZ             R1, loc_1BD23C
1BD22C:  CBZ             R0, loc_1BD26E
1BD22E:  LDR             R1, [R0,#0x10]
1BD230:  STR             R1, [R4,#0x28]
1BD232:  LDR             R1, [R0]
1BD234:  STR             R4, [R0,#0x10]
1BD236:  ADDS            R1, #1
1BD238:  STR             R1, [R0]
1BD23A:  B               loc_1BD210
1BD23C:  CBZ             R0, loc_1BD24C
1BD23E:  BLX             j__ZN17SharedGPUResource9ConstructEv; SharedGPUResource::Construct(void)
1BD242:  LDR             R0, =(curGPUResource_ptr - 0x1BD24A)
1BD244:  MOVS            R1, #0
1BD246:  ADD             R0, PC; curGPUResource_ptr
1BD248:  LDR             R0, [R0]; curGPUResource
1BD24A:  STR             R1, [R0]
1BD24C:  MOVS            R0, #0x14; unsigned int
1BD24E:  BLX             _Znwj; operator new(uint)
1BD252:  BLX             j__ZN17SharedGPUResourceC2Ev; SharedGPUResource::SharedGPUResource(void)
1BD256:  LDR             R1, =(curGPUResource_ptr - 0x1BD25C)
1BD258:  ADD             R1, PC; curGPUResource_ptr
1BD25A:  LDR             R5, [R1]; curGPUResource
1BD25C:  MOVS            R1, #1
1BD25E:  STR             R1, [R0]
1BD260:  STR             R4, [R0,#0x10]
1BD262:  STR             R0, [R5]
1BD264:  BLX             j__ZN17SharedGPUResource9ConstructEv; SharedGPUResource::Construct(void)
1BD268:  MOVS            R0, #0
1BD26A:  STR             R0, [R5]
1BD26C:  B               loc_1BD210
1BD26E:  MOVS            R0, #0x14; unsigned int
1BD270:  BLX             _Znwj; operator new(uint)
1BD274:  BLX             j__ZN17SharedGPUResourceC2Ev; SharedGPUResource::SharedGPUResource(void)
1BD278:  LDR             R1, =(curGPUResource_ptr - 0x1BD27E)
1BD27A:  ADD             R1, PC; curGPUResource_ptr
1BD27C:  LDR             R1, [R1]; curGPUResource
1BD27E:  STR             R0, [R1]
1BD280:  MOVS            R1, #1
1BD282:  STR             R1, [R0]
1BD284:  STR             R4, [R0,#0x10]
1BD286:  B               loc_1BD210
