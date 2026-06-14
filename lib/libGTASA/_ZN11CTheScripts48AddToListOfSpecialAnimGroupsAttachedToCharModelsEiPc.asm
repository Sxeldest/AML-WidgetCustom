; =========================================================
; Game Engine Function: _ZN11CTheScripts48AddToListOfSpecialAnimGroupsAttachedToCharModelsEiPc
; Address            : 0x3391C8 - 0x33932E
; =========================================================

3391C8:  PUSH            {R4-R7,LR}
3391CA:  ADD             R7, SP, #0xC
3391CC:  PUSH.W          {R11}
3391D0:  MOV             R5, R0
3391D2:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x3391DA)
3391D4:  MOV             R4, R1
3391D6:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
3391D8:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
3391DA:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups
3391DC:  CMP             R0, R5
3391DE:  BNE             loc_3391FA
3391E0:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x3391E8)
3391E2:  MOV             R1, R4; char *
3391E4:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
3391E6:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
3391E8:  ADDS            R0, #4; char *
3391EA:  BLX             strcmp
3391EE:  CMP             R0, #0
3391F0:  BEQ.W           loc_339306
3391F4:  MOV.W           R6, #0xFFFFFFFF
3391F8:  B               loc_339206
3391FA:  ADDS            R0, #1
3391FC:  MOV.W           R6, #0
339200:  IT NE
339202:  MOVNE.W         R6, #0xFFFFFFFF
339206:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x33920C)
339208:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
33920A:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
33920C:  LDR             R0, [R0,#(dword_81995C - 0x819948)]
33920E:  CMP             R0, R5
339210:  BNE             loc_339224
339212:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x33921A)
339214:  MOV             R1, R4; char *
339216:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
339218:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
33921A:  ADDS            R0, #0x18; char *
33921C:  BLX             strcmp
339220:  CBNZ            R0, loc_33922A
339222:  B               loc_339306
339224:  ADDS            R0, #1
339226:  IT EQ
339228:  MOVEQ           R6, #1
33922A:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x339230)
33922C:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
33922E:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
339230:  LDR             R0, [R0,#(dword_819970 - 0x819948)]
339232:  CMP             R0, R5
339234:  BNE             loc_339248
339236:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x33923E)
339238:  MOV             R1, R4; char *
33923A:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
33923C:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
33923E:  ADDS            R0, #0x2C ; ','; char *
339240:  BLX             strcmp
339244:  CBNZ            R0, loc_33924E
339246:  B               loc_339306
339248:  ADDS            R0, #1
33924A:  IT EQ
33924C:  MOVEQ           R6, #2
33924E:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x339254)
339250:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
339252:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
339254:  LDR             R0, [R0,#(dword_819984 - 0x819948)]
339256:  CMP             R0, R5
339258:  BNE             loc_33926C
33925A:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x339262)
33925C:  MOV             R1, R4; char *
33925E:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
339260:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
339262:  ADDS            R0, #0x40 ; '@'; char *
339264:  BLX             strcmp
339268:  CBNZ            R0, loc_339272
33926A:  B               loc_339306
33926C:  ADDS            R0, #1
33926E:  IT EQ
339270:  MOVEQ           R6, #3
339272:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x339278)
339274:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
339276:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
339278:  LDR             R0, [R0,#(dword_819998 - 0x819948)]
33927A:  CMP             R0, R5
33927C:  BNE             loc_339290
33927E:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x339286)
339280:  MOV             R1, R4; char *
339282:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
339284:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
339286:  ADDS            R0, #0x54 ; 'T'; char *
339288:  BLX             strcmp
33928C:  CBNZ            R0, loc_339296
33928E:  B               loc_339306
339290:  ADDS            R0, #1
339292:  IT EQ
339294:  MOVEQ           R6, #4
339296:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x33929C)
339298:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
33929A:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
33929C:  LDR             R0, [R0,#(dword_8199AC - 0x819948)]
33929E:  CMP             R0, R5
3392A0:  BNE             loc_3392B4
3392A2:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x3392AA)
3392A4:  MOV             R1, R4; char *
3392A6:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
3392A8:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
3392AA:  ADDS            R0, #0x68 ; 'h'; char *
3392AC:  BLX             strcmp
3392B0:  CBNZ            R0, loc_3392BA
3392B2:  B               loc_339306
3392B4:  ADDS            R0, #1
3392B6:  IT EQ
3392B8:  MOVEQ           R6, #5
3392BA:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x3392C0)
3392BC:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
3392BE:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
3392C0:  LDR             R0, [R0,#(dword_8199C0 - 0x819948)]
3392C2:  CMP             R0, R5
3392C4:  BNE             loc_3392D8
3392C6:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x3392CE)
3392C8:  MOV             R1, R4; char *
3392CA:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
3392CC:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
3392CE:  ADDS            R0, #0x7C ; '|'; char *
3392D0:  BLX             strcmp
3392D4:  CBNZ            R0, loc_3392DE
3392D6:  B               loc_339306
3392D8:  ADDS            R0, #1
3392DA:  IT EQ
3392DC:  MOVEQ           R6, #6
3392DE:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x3392E4)
3392E0:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
3392E2:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
3392E4:  LDR.W           R0, [R0,#(dword_8199D4 - 0x819948)]
3392E8:  CMP             R0, R5
3392EA:  BNE             loc_3392FE
3392EC:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x3392F4)
3392EE:  MOV             R1, R4; char *
3392F0:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
3392F2:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
3392F4:  ADDS            R0, #0x90; char *
3392F6:  BLX             strcmp
3392FA:  CBNZ            R0, loc_339302
3392FC:  B               loc_339306
3392FE:  ADDS            R0, #1
339300:  BEQ             loc_33930C
339302:  ADDS            R0, R6, #1
339304:  BNE             loc_33930E
339306:  POP.W           {R11}
33930A:  POP             {R4-R7,PC}
33930C:  MOVS            R6, #7
33930E:  LDR             R0, =(_ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr - 0x339318)
339310:  ADD.W           R1, R6, R6,LSL#2
339314:  ADD             R0, PC; _ZN11CTheScripts24ScriptAttachedAnimGroupsE_ptr
339316:  LDR             R0, [R0]; CTheScripts::ScriptAttachedAnimGroups ...
339318:  ADD.W           R0, R0, R1,LSL#2
33931C:  MOV             R1, R4; char *
33931E:  STR.W           R5, [R0],#4; char *
339322:  POP.W           {R11}
339326:  POP.W           {R4-R7,LR}
33932A:  B.W             j_strcpy
