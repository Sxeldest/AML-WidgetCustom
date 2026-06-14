; =========================================================
; Game Engine Function: _ZN12CHIDJoystick18InternalIsReleasedE10HIDMapping
; Address            : 0x28D200 - 0x28D29C
; =========================================================

28D200:  PUSH            {R4-R7,LR}
28D202:  ADD             R7, SP, #0xC
28D204:  PUSH.W          {R8,R9,R11}
28D208:  MOV             R4, R0
28D20A:  MOV             R9, R1
28D20C:  LDR             R0, [R4,#8]
28D20E:  CBZ             R0, loc_28D240
28D210:  LDR             R1, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x28D21A)
28D212:  MOVS            R6, #0
28D214:  MOVS            R5, #0
28D216:  ADD             R1, PC; _ZN4CHID20currentInstanceIndexE_ptr
28D218:  LDR.W           R8, [R1]; CHID::currentInstanceIndex ...
28D21C:  LDR             R1, [R4,#0xC]
28D21E:  ADDS            R2, R1, R6
28D220:  LDR             R3, [R2,#4]
28D222:  CMP             R3, R9
28D224:  BNE             loc_28D238
28D226:  LDR             R1, [R1,R6]; int
28D228:  CMP             R1, #0xF
28D22A:  BGT             loc_28D26C
28D22C:  LDR.W           R0, [R8]; int
28D230:  BLX             j__Z16LIB_GamepadStateii; LIB_GamepadState(int,int)
28D234:  CBZ             R0, loc_28D294
28D236:  LDR             R0, [R4,#8]
28D238:  ADDS            R5, #1
28D23A:  ADDS            R6, #0x14
28D23C:  CMP             R5, R0
28D23E:  BCC             loc_28D21C
28D240:  MOVS            R0, #1; int
28D242:  BLX             j__Z16OS_GetDeviceInfoi; OS_GetDeviceInfo(int)
28D246:  CBZ             R0, loc_28D250
28D248:  MOVS            R0, #0
28D24A:  POP.W           {R8,R9,R11}
28D24E:  POP             {R4-R7,PC}
28D250:  LDR             R0, [R4,#8]
28D252:  CMP             R0, #0
28D254:  BEQ             loc_28D248
28D256:  LDR             R1, [R4,#0xC]
28D258:  MOVS            R2, #0
28D25A:  ADDS            R1, #4
28D25C:  LDR             R3, [R1]
28D25E:  CMP             R3, R9
28D260:  BEQ             loc_28D27A
28D262:  ADDS            R2, #1
28D264:  ADDS            R1, #0x14
28D266:  CMP             R2, R0
28D268:  BCC             loc_28D25C
28D26A:  B               loc_28D248
28D26C:  LDRB            R0, [R2,#9]
28D26E:  CMP             R0, #0
28D270:  IT NE
28D272:  MOVNE           R0, #1
28D274:  POP.W           {R8,R9,R11}
28D278:  POP             {R4-R7,PC}
28D27A:  LDR.W           R0, [R1,#-4]
28D27E:  CMP             R0, #4
28D280:  BNE             loc_28D248
28D282:  MOVS            R0, #1
28D284:  BLX             j__Z18LIB_KeyboardIsDown13OSKeyboardKey; LIB_KeyboardIsDown(OSKeyboardKey)
28D288:  CMP             R0, #0
28D28A:  BNE             loc_28D248
28D28C:  LDRB            R1, [R4,#0x14]
28D28E:  MOVS            R0, #0
28D290:  CBZ             R1, loc_28D296
28D292:  STRB            R0, [R4,#0x14]
28D294:  MOVS            R0, #1
28D296:  POP.W           {R8,R9,R11}
28D29A:  POP             {R4-R7,PC}
