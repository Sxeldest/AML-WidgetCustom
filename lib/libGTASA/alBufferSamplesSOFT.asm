; =========================================================
; Game Engine Function: alBufferSamplesSOFT
; Address            : 0x2461C8 - 0x246320
; =========================================================

2461C8:  PUSH            {R4-R7,LR}
2461CA:  ADD             R7, SP, #0xC
2461CC:  PUSH.W          {R8-R11}
2461D0:  SUB             SP, SP, #0x14
2461D2:  STR             R2, [SP,#0x30+var_20]
2461D4:  MOV             R9, R3
2461D6:  LDR.W           R10, [R7,#arg_8]
2461DA:  MOV             R6, R1
2461DC:  MOV             R5, R0
2461DE:  LDRD.W          R8, R4, [R7,#arg_0]
2461E2:  BLX             j_GetContextRef
2461E6:  MOV             R11, R0
2461E8:  CMP.W           R11, #0
2461EC:  BEQ             loc_24624E
2461EE:  LDR.W           R0, [R11,#0x88]
2461F2:  MOV             R1, R5
2461F4:  ADDS            R0, #0x40 ; '@'
2461F6:  BLX             j_LookupUIntMapKey
2461FA:  CBZ             R0, loc_246256
2461FC:  CMP             R6, #0
2461FE:  BEQ             loc_24628E
246200:  CMP.W           R9, #0xFFFFFFFF
246204:  BLE             loc_24628E
246206:  SUB.W           R1, R8, #0x1500
24620A:  CMP             R1, #6
24620C:  ITT LS
24620E:  SUBLS.W         R1, R4, #0x1400
246212:  CMPLS           R1, #0xA
246214:  BCC             loc_2462C2
246216:  LDR             R0, =(TrapALError_ptr - 0x24621C)
246218:  ADD             R0, PC; TrapALError_ptr
24621A:  LDR             R0, [R0]; TrapALError
24621C:  LDRB            R0, [R0]
24621E:  CMP             R0, #0
246220:  ITT NE
246222:  MOVNE           R0, #5; sig
246224:  BLXNE           raise
246228:  LDREX.W         R0, [R11,#0x50]
24622C:  CMP             R0, #0
24622E:  BNE             loc_246308
246230:  ADD.W           R0, R11, #0x50 ; 'P'
246234:  MOVW            R1, #0xA002
246238:  DMB.W           ISH
24623C:  STREX.W         R2, R1, [R0]
246240:  CMP             R2, #0
246242:  BEQ             loc_24630C
246244:  LDREX.W         R2, [R0]
246248:  CMP             R2, #0
24624A:  BEQ             loc_24623C
24624C:  B               loc_246308
24624E:  ADD             SP, SP, #0x14
246250:  POP.W           {R8-R11}
246254:  POP             {R4-R7,PC}
246256:  LDR             R0, =(TrapALError_ptr - 0x24625C)
246258:  ADD             R0, PC; TrapALError_ptr
24625A:  LDR             R0, [R0]; TrapALError
24625C:  LDRB            R0, [R0]
24625E:  CMP             R0, #0
246260:  ITT NE
246262:  MOVNE           R0, #5; sig
246264:  BLXNE           raise
246268:  LDREX.W         R0, [R11,#0x50]
24626C:  CMP             R0, #0
24626E:  BNE             loc_246308
246270:  ADD.W           R0, R11, #0x50 ; 'P'
246274:  MOVW            R1, #0xA001
246278:  DMB.W           ISH
24627C:  STREX.W         R2, R1, [R0]
246280:  CMP             R2, #0
246282:  BEQ             loc_24630C
246284:  LDREX.W         R2, [R0]
246288:  CMP             R2, #0
24628A:  BEQ             loc_24627C
24628C:  B               loc_246308
24628E:  LDR             R0, =(TrapALError_ptr - 0x246294)
246290:  ADD             R0, PC; TrapALError_ptr
246292:  LDR             R0, [R0]; TrapALError
246294:  LDRB            R0, [R0]
246296:  CMP             R0, #0
246298:  ITT NE
24629A:  MOVNE           R0, #5; sig
24629C:  BLXNE           raise
2462A0:  LDREX.W         R0, [R11,#0x50]
2462A4:  CBNZ            R0, loc_246308
2462A6:  ADD.W           R0, R11, #0x50 ; 'P'
2462AA:  MOVW            R1, #0xA003
2462AE:  DMB.W           ISH
2462B2:  STREX.W         R2, R1, [R0]
2462B6:  CBZ             R2, loc_24630C
2462B8:  LDREX.W         R2, [R0]
2462BC:  CMP             R2, #0
2462BE:  BEQ             loc_2462B2
2462C0:  B               loc_246308
2462C2:  MOVS            R1, #0
2462C4:  STRD.W          R8, R4, [SP,#0x30+var_30]
2462C8:  STRD.W          R10, R1, [SP,#0x30+var_28]
2462CC:  MOV             R1, R6
2462CE:  LDR             R2, [SP,#0x30+var_20]
2462D0:  MOV             R3, R9
2462D2:  BL              sub_23FB24
2462D6:  MOV             R5, R0
2462D8:  CBZ             R5, loc_246310
2462DA:  LDR             R0, =(TrapALError_ptr - 0x2462E0)
2462DC:  ADD             R0, PC; TrapALError_ptr
2462DE:  LDR             R0, [R0]; TrapALError
2462E0:  LDRB            R0, [R0]
2462E2:  CMP             R0, #0
2462E4:  ITT NE
2462E6:  MOVNE           R0, #5; sig
2462E8:  BLXNE           raise
2462EC:  LDREX.W         R0, [R11,#0x50]
2462F0:  CBNZ            R0, loc_246308
2462F2:  ADD.W           R0, R11, #0x50 ; 'P'
2462F6:  DMB.W           ISH
2462FA:  STREX.W         R1, R5, [R0]
2462FE:  CBZ             R1, loc_24630C
246300:  LDREX.W         R1, [R0]
246304:  CMP             R1, #0
246306:  BEQ             loc_2462FA
246308:  CLREX.W
24630C:  DMB.W           ISH
246310:  MOV             R0, R11
246312:  ADD             SP, SP, #0x14
246314:  POP.W           {R8-R11}
246318:  POP.W           {R4-R7,LR}
24631C:  B.W             ALCcontext_DecRef
