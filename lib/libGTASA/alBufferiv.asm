; =========================================================
; Game Engine Function: alBufferiv
; Address            : 0x246FFC - 0x247316
; =========================================================

246FFC:  PUSH            {R4-R7,LR}
246FFE:  ADD             R7, SP, #0xC
247000:  PUSH.W          {R8-R10}
247004:  MOV             R10, R2
247006:  MOV             R5, R1
247008:  MOV             R4, R0
24700A:  BLX             j_GetContextRef
24700E:  MOV             R9, R0
247010:  CMP.W           R9, #0
247014:  BEQ.W           loc_247166
247018:  LDR.W           R0, [R9,#0x88]
24701C:  MOV             R1, R4
24701E:  ADDS            R0, #0x40 ; '@'
247020:  BLX             j_LookupUIntMapKey
247024:  MOV             R8, R0
247026:  CMP.W           R8, #0
24702A:  BEQ.W           loc_24716C
24702E:  CMP.W           R10, #0
247032:  BEQ.W           loc_2471A8
247036:  MOVW            R0, #0x2015
24703A:  CMP             R5, R0
24703C:  BNE.W           loc_2471E0
247040:  ADD.W           R4, R8, #0x34 ; '4'
247044:  DMB.W           ISH
247048:  LDREX.W         R0, [R4]
24704C:  ADDS            R1, R0, #1
24704E:  STREX.W         R2, R1, [R4]
247052:  CMP             R2, #0
247054:  BNE             loc_247048
247056:  CMP             R0, #0
247058:  DMB.W           ISH
24705C:  BNE             loc_24709A
24705E:  ADD.W           R5, R8, #0x38 ; '8'
247062:  MOVS            R1, #1
247064:  DMB.W           ISH
247068:  LDREX.W         R0, [R5]
24706C:  STREX.W         R2, R1, [R5]
247070:  CMP             R2, #0
247072:  BNE             loc_247068
247074:  CMP             R0, #1
247076:  DMB.W           ISH
24707A:  BNE             loc_24709A
24707C:  MOVS            R6, #1
24707E:  BLX             sched_yield
247082:  DMB.W           ISH
247086:  LDREX.W         R0, [R5]
24708A:  STREX.W         R1, R6, [R5]
24708E:  CMP             R1, #0
247090:  BNE             loc_247086
247092:  CMP             R0, #1
247094:  DMB.W           ISH
247098:  BEQ             loc_24707E
24709A:  ADD.W           R5, R8, #0x40 ; '@'
24709E:  MOVS            R1, #1
2470A0:  DMB.W           ISH
2470A4:  LDREX.W         R0, [R5]
2470A8:  STREX.W         R2, R1, [R5]
2470AC:  CMP             R2, #0
2470AE:  BNE             loc_2470A4
2470B0:  CMP             R0, #1
2470B2:  DMB.W           ISH
2470B6:  BNE             loc_2470D6
2470B8:  MOVS            R6, #1
2470BA:  BLX             sched_yield
2470BE:  DMB.W           ISH
2470C2:  LDREX.W         R0, [R5]
2470C6:  STREX.W         R1, R6, [R5]
2470CA:  CMP             R1, #0
2470CC:  BNE             loc_2470C2
2470CE:  CMP             R0, #1
2470D0:  DMB.W           ISH
2470D4:  BEQ             loc_2470BA
2470D6:  LDR.W           R0, [R8,#0x2C]
2470DA:  CMP             R0, #0
2470DC:  BEQ.W           loc_247218
2470E0:  MOVS            R0, #0
2470E2:  DMB.W           ISH
2470E6:  LDREX.W         R1, [R5]
2470EA:  STREX.W         R1, R0, [R5]
2470EE:  CMP             R1, #0
2470F0:  BNE             loc_2470E6
2470F2:  DMB.W           ISH
2470F6:  DMB.W           ISH
2470FA:  LDREX.W         R0, [R4]
2470FE:  SUBS            R1, R0, #1
247100:  STREX.W         R2, R1, [R4]
247104:  CMP             R2, #0
247106:  BNE             loc_2470FA
247108:  CMP             R0, #1
24710A:  DMB.W           ISH
24710E:  BNE             loc_24712A
247110:  ADD.W           R0, R8, #0x38 ; '8'
247114:  MOVS            R1, #0
247116:  DMB.W           ISH
24711A:  LDREX.W         R2, [R0]
24711E:  STREX.W         R2, R1, [R0]
247122:  CMP             R2, #0
247124:  BNE             loc_24711A
247126:  DMB.W           ISH
24712A:  LDR             R0, =(TrapALError_ptr - 0x247130)
24712C:  ADD             R0, PC; TrapALError_ptr
24712E:  LDR             R0, [R0]; TrapALError
247130:  LDRB            R0, [R0]
247132:  CMP             R0, #0
247134:  ITT NE
247136:  MOVNE           R0, #5; sig
247138:  BLXNE           raise
24713C:  LDREX.W         R0, [R9,#0x50]
247140:  CMP             R0, #0
247142:  BNE.W           loc_2472AC
247146:  ADD.W           R0, R9, #0x50 ; 'P'
24714A:  MOVW            R1, #0xA004
24714E:  DMB.W           ISH
247152:  STREX.W         R2, R1, [R0]
247156:  CMP             R2, #0
247158:  BEQ.W           loc_2472B0
24715C:  LDREX.W         R2, [R0]
247160:  CMP             R2, #0
247162:  BEQ             loc_247152
247164:  B               loc_2472AC
247166:  POP.W           {R8-R10}
24716A:  POP             {R4-R7,PC}
24716C:  LDR             R0, =(TrapALError_ptr - 0x247172)
24716E:  ADD             R0, PC; TrapALError_ptr
247170:  LDR             R0, [R0]; TrapALError
247172:  LDRB            R0, [R0]
247174:  CMP             R0, #0
247176:  ITT NE
247178:  MOVNE           R0, #5; sig
24717A:  BLXNE           raise
24717E:  LDREX.W         R0, [R9,#0x50]
247182:  CMP             R0, #0
247184:  BNE.W           loc_2472AC
247188:  ADD.W           R0, R9, #0x50 ; 'P'
24718C:  MOVW            R1, #0xA001
247190:  DMB.W           ISH
247194:  STREX.W         R2, R1, [R0]
247198:  CMP             R2, #0
24719A:  BEQ.W           loc_2472B0
24719E:  LDREX.W         R2, [R0]
2471A2:  CMP             R2, #0
2471A4:  BEQ             loc_247194
2471A6:  B               loc_2472AC
2471A8:  LDR             R0, =(TrapALError_ptr - 0x2471AE)
2471AA:  ADD             R0, PC; TrapALError_ptr
2471AC:  LDR             R0, [R0]; TrapALError
2471AE:  LDRB            R0, [R0]
2471B0:  CMP             R0, #0
2471B2:  ITT NE
2471B4:  MOVNE           R0, #5; sig
2471B6:  BLXNE           raise
2471BA:  LDREX.W         R0, [R9,#0x50]
2471BE:  CMP             R0, #0
2471C0:  BNE             loc_2472AC
2471C2:  ADD.W           R0, R9, #0x50 ; 'P'
2471C6:  MOVW            R1, #0xA003
2471CA:  DMB.W           ISH
2471CE:  STREX.W         R2, R1, [R0]
2471D2:  CMP             R2, #0
2471D4:  BEQ             loc_2472B0
2471D6:  LDREX.W         R2, [R0]
2471DA:  CMP             R2, #0
2471DC:  BEQ             loc_2471CE
2471DE:  B               loc_2472AC
2471E0:  LDR             R0, =(TrapALError_ptr - 0x2471E6)
2471E2:  ADD             R0, PC; TrapALError_ptr
2471E4:  LDR             R0, [R0]; TrapALError
2471E6:  LDRB            R0, [R0]
2471E8:  CMP             R0, #0
2471EA:  ITT NE
2471EC:  MOVNE           R0, #5; sig
2471EE:  BLXNE           raise
2471F2:  LDREX.W         R0, [R9,#0x50]
2471F6:  CMP             R0, #0
2471F8:  BNE             loc_2472AC
2471FA:  ADD.W           R0, R9, #0x50 ; 'P'
2471FE:  MOVW            R1, #0xA002
247202:  DMB.W           ISH
247206:  STREX.W         R2, R1, [R0]
24720A:  CMP             R2, #0
24720C:  BEQ             loc_2472B0
24720E:  LDREX.W         R2, [R0]
247212:  CMP             R2, #0
247214:  BEQ             loc_247206
247216:  B               loc_2472AC
247218:  LDR.W           R0, [R10]
24721C:  CMP             R0, #0
24721E:  BLT             loc_247230
247220:  LDR.W           R1, [R10,#4]
247224:  CMP             R0, R1
247226:  BGE             loc_247230
247228:  LDR.W           R2, [R8,#0xC]
24722C:  CMP             R1, R2
24722E:  BLE             loc_2472C2
247230:  MOVS            R0, #0
247232:  DMB.W           ISH
247236:  LDREX.W         R1, [R5]
24723A:  STREX.W         R1, R0, [R5]
24723E:  CMP             R1, #0
247240:  BNE             loc_247236
247242:  DMB.W           ISH
247246:  DMB.W           ISH
24724A:  LDREX.W         R0, [R4]
24724E:  SUBS            R1, R0, #1
247250:  STREX.W         R2, R1, [R4]
247254:  CMP             R2, #0
247256:  BNE             loc_24724A
247258:  CMP             R0, #1
24725A:  DMB.W           ISH
24725E:  BNE             loc_24727A
247260:  ADD.W           R0, R8, #0x38 ; '8'
247264:  MOVS            R1, #0
247266:  DMB.W           ISH
24726A:  LDREX.W         R2, [R0]
24726E:  STREX.W         R2, R1, [R0]
247272:  CMP             R2, #0
247274:  BNE             loc_24726A
247276:  DMB.W           ISH
24727A:  LDR             R0, =(TrapALError_ptr - 0x247280)
24727C:  ADD             R0, PC; TrapALError_ptr
24727E:  LDR             R0, [R0]; TrapALError
247280:  LDRB            R0, [R0]
247282:  CMP             R0, #0
247284:  ITT NE
247286:  MOVNE           R0, #5; sig
247288:  BLXNE           raise
24728C:  LDREX.W         R0, [R9,#0x50]
247290:  CBNZ            R0, loc_2472AC
247292:  ADD.W           R0, R9, #0x50 ; 'P'
247296:  MOVW            R1, #0xA003
24729A:  DMB.W           ISH
24729E:  STREX.W         R2, R1, [R0]
2472A2:  CBZ             R2, loc_2472B0
2472A4:  LDREX.W         R2, [R0]
2472A8:  CMP             R2, #0
2472AA:  BEQ             loc_24729E
2472AC:  CLREX.W
2472B0:  DMB.W           ISH
2472B4:  MOV             R0, R9
2472B6:  POP.W           {R8-R10}
2472BA:  POP.W           {R4-R7,LR}
2472BE:  B.W             ALCcontext_DecRef
2472C2:  STR.W           R0, [R8,#0x24]
2472C6:  LDR.W           R0, [R10,#4]
2472CA:  STR.W           R0, [R8,#0x28]
2472CE:  MOVS            R0, #0
2472D0:  DMB.W           ISH
2472D4:  LDREX.W         R1, [R5]
2472D8:  STREX.W         R1, R0, [R5]
2472DC:  CMP             R1, #0
2472DE:  BNE             loc_2472D4
2472E0:  DMB.W           ISH
2472E4:  DMB.W           ISH
2472E8:  LDREX.W         R0, [R4]
2472EC:  SUBS            R1, R0, #1
2472EE:  STREX.W         R2, R1, [R4]
2472F2:  CMP             R2, #0
2472F4:  BNE             loc_2472E8
2472F6:  CMP             R0, #1
2472F8:  DMB.W           ISH
2472FC:  BNE             loc_2472B4
2472FE:  ADD.W           R0, R8, #0x38 ; '8'
247302:  MOVS            R1, #0
247304:  DMB.W           ISH
247308:  LDREX.W         R2, [R0]
24730C:  STREX.W         R2, R1, [R0]
247310:  CMP             R2, #0
247312:  BNE             loc_247308
247314:  B               loc_2472B0
