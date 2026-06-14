; =========================================================
; Game Engine Function: sub_1350F4
; Address            : 0x1350F4 - 0x1352A4
; =========================================================

1350F4:  PUSH            {R4-R7,LR}
1350F6:  ADD             R7, SP, #0xC
1350F8:  PUSH.W          {R8,R9,R11}
1350FC:  VPUSH           {D8}
135100:  SUB             SP, SP, #0x18
135102:  MOVS            R1, #1
135104:  MOV             R4, R0
135106:  BL              sub_13D71C
13510A:  LDR             R0, =(_ZTV14SelectorLayout - 0x135110); `vtable for'SelectorLayout ...
13510C:  ADD             R0, PC; `vtable for'SelectorLayout
13510E:  ADDS            R0, #8
135110:  STR             R0, [R4]
135112:  MOVS            R0, #0x90; unsigned int
135114:  BLX             j__Znwj; operator new(uint)
135118:  LDR             R1, =(aPosition - 0x135120); "Position" ...
13511A:  MOV             R5, R0
13511C:  ADD             R1, PC; "Position"
13511E:  MOV             R0, SP; int
135120:  BL              sub_DC6DC
135124:  LDR             R0, =(off_234980 - 0x13512E)
135126:  VMOV.F32        S16, #0.5
13512A:  ADD             R0, PC; off_234980
13512C:  LDR.W           R8, [R0]; dword_238EC0
135130:  VLDR            S0, [R8]
135134:  VMUL.F32        S0, S0, S16
135138:  VMOV            R2, S0
13513C:  MOV             R1, SP
13513E:  MOV             R0, R5
135140:  BL              sub_13CE34
135144:  LDR             R0, =(_ZTV13CheckedButton - 0x135150); `vtable for'CheckedButton ...
135146:  MOVS            R2, #0
135148:  LDRB.W          R1, [SP,#0x38+var_38]
13514C:  ADD             R0, PC; `vtable for'CheckedButton
13514E:  STR.W           R2, [R5,#0x88]
135152:  ADD.W           R9, R0, #8
135156:  STRB.W          R2, [R5,#0x70]
13515A:  LSLS            R0, R1, #0x1F
13515C:  STR             R5, [R4,#0x6C]
13515E:  STR.W           R9, [R5]
135162:  BEQ             loc_13516C
135164:  LDR             R0, [SP,#0x38+var_30]; void *
135166:  BLX             j__ZdlPv; operator delete(void *)
13516A:  LDR             R5, [R4,#0x6C]
13516C:  MOV             R0, R4
13516E:  MOV             R1, R5
135170:  BL              sub_12BDF6
135174:  MOVS            R0, #0x90; unsigned int
135176:  BLX             j__Znwj; operator new(uint)
13517A:  LDR             R1, =(aRotation - 0x135182); "Rotation" ...
13517C:  MOV             R5, R0
13517E:  ADD             R1, PC; "Rotation"
135180:  MOV             R0, SP; int
135182:  BL              sub_DC6DC
135186:  VLDR            S0, [R8]
13518A:  VMUL.F32        S0, S0, S16
13518E:  VMOV            R2, S0
135192:  MOV             R1, SP
135194:  MOV             R0, R5
135196:  BL              sub_13CE34
13519A:  LDRB.W          R0, [SP,#0x38+var_38]
13519E:  MOVS            R1, #0
1351A0:  STR.W           R1, [R5,#0x88]
1351A4:  STRB.W          R1, [R5,#0x70]
1351A8:  LSLS            R0, R0, #0x1F
1351AA:  STR             R5, [R4,#0x70]
1351AC:  STR.W           R9, [R5]
1351B0:  BEQ             loc_1351BA
1351B2:  LDR             R0, [SP,#0x38+var_30]; void *
1351B4:  BLX             j__ZdlPv; operator delete(void *)
1351B8:  LDR             R5, [R4,#0x70]
1351BA:  MOV             R0, R4
1351BC:  MOV             R1, R5
1351BE:  BL              sub_12BDF6
1351C2:  MOVS            R0, #0x90; unsigned int
1351C4:  BLX             j__Znwj; operator new(uint)
1351C8:  LDR             R1, =(aScale - 0x1351D0); "Scale" ...
1351CA:  MOV             R6, R0
1351CC:  ADD             R1, PC; "Scale"
1351CE:  MOV             R0, SP; int
1351D0:  BL              sub_DC6DC
1351D4:  VLDR            S0, [R8]
1351D8:  VMUL.F32        S0, S0, S16
1351DC:  VMOV            R2, S0
1351E0:  MOV             R5, SP
1351E2:  MOV             R0, R6
1351E4:  MOV             R1, R5
1351E6:  BL              sub_13CE34
1351EA:  LDRB.W          R0, [SP,#0x38+var_38]
1351EE:  MOVS            R1, #0
1351F0:  STR.W           R1, [R6,#0x88]
1351F4:  STRB.W          R1, [R6,#0x70]
1351F8:  LSLS            R0, R0, #0x1F
1351FA:  STR             R6, [R4,#0x74]
1351FC:  STR.W           R9, [R6]
135200:  BEQ             loc_13520A
135202:  LDR             R0, [SP,#0x38+var_30]; void *
135204:  BLX             j__ZdlPv; operator delete(void *)
135208:  LDR             R6, [R4,#0x74]
13520A:  MOV             R0, R4
13520C:  MOV             R1, R6
13520E:  BL              sub_12BDF6
135212:  LDR             R0, [R4,#0x6C]
135214:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14SelectorLayoutC1EvE3$_3NS_9allocatorIS3_EEFvbEEE - 0x13521C); `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_3,std::allocator<SelectorLayout::SelectorLayout(void)::$_3>,void ()(bool)> ...
135216:  STR             R5, [SP,#0x38+var_28]
135218:  ADD             R1, PC; `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_3,std::allocator<SelectorLayout::SelectorLayout(void)::$_3>,void ()(bool)>
13521A:  STR             R4, [SP,#0x38+var_34]
13521C:  ADDS            R1, #8
13521E:  STR             R1, [SP,#0x38+var_38]
135220:  ADDS            R0, #0x78 ; 'x'
135222:  MOV             R1, R5
135224:  BL              sub_1359B8
135228:  LDR             R0, [SP,#0x38+var_28]
13522A:  CMP             R5, R0
13522C:  BEQ             loc_135234
13522E:  CBZ             R0, loc_13523E
135230:  MOVS            R1, #5
135232:  B               loc_135236
135234:  MOVS            R1, #4
135236:  LDR             R2, [R0]
135238:  LDR.W           R1, [R2,R1,LSL#2]
13523C:  BLX             R1
13523E:  LDR             R0, [R4,#0x70]
135240:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14SelectorLayoutC1EvE3$_4NS_9allocatorIS3_EEFvbEEE - 0x135248); `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_4,std::allocator<SelectorLayout::SelectorLayout(void)::$_4>,void ()(bool)> ...
135242:  STR             R5, [SP,#0x38+var_28]
135244:  ADD             R1, PC; `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_4,std::allocator<SelectorLayout::SelectorLayout(void)::$_4>,void ()(bool)>
135246:  STR             R4, [SP,#0x38+var_34]
135248:  ADDS            R1, #8
13524A:  STR             R1, [SP,#0x38+var_38]
13524C:  ADDS            R0, #0x78 ; 'x'
13524E:  MOV             R1, R5
135250:  BL              sub_1359B8
135254:  LDR             R0, [SP,#0x38+var_28]
135256:  CMP             R5, R0
135258:  BEQ             loc_135260
13525A:  CBZ             R0, loc_13526A
13525C:  MOVS            R1, #5
13525E:  B               loc_135262
135260:  MOVS            R1, #4
135262:  LDR             R2, [R0]
135264:  LDR.W           R1, [R2,R1,LSL#2]
135268:  BLX             R1
13526A:  LDR             R0, [R4,#0x74]
13526C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN14SelectorLayoutC1EvE3$_5NS_9allocatorIS3_EEFvbEEE - 0x135274); `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_5,std::allocator<SelectorLayout::SelectorLayout(void)::$_5>,void ()(bool)> ...
13526E:  STR             R5, [SP,#0x38+var_28]
135270:  ADD             R1, PC; `vtable for'std::__function::__func<SelectorLayout::SelectorLayout(void)::$_5,std::allocator<SelectorLayout::SelectorLayout(void)::$_5>,void ()(bool)>
135272:  STR             R4, [SP,#0x38+var_34]
135274:  ADDS            R1, #8
135276:  STR             R1, [SP,#0x38+var_38]
135278:  ADDS            R0, #0x78 ; 'x'
13527A:  MOV             R1, R5
13527C:  BL              sub_1359B8
135280:  LDR             R0, [SP,#0x38+var_28]
135282:  CMP             R5, R0
135284:  BEQ             loc_13528C
135286:  CBZ             R0, loc_135296
135288:  MOVS            R1, #5
13528A:  B               loc_13528E
13528C:  MOVS            R1, #4
13528E:  LDR             R2, [R0]
135290:  LDR.W           R1, [R2,R1,LSL#2]
135294:  BLX             R1
135296:  MOV             R0, R4
135298:  ADD             SP, SP, #0x18
13529A:  VPOP            {D8}
13529E:  POP.W           {R8,R9,R11}
1352A2:  POP             {R4-R7,PC}
