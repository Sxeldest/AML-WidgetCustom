; =========================================================
; Game Engine Function: _ZN11CTheScripts15StartTestScriptEv
; Address            : 0x32B3D8 - 0x32B488
; =========================================================

32B3D8:  PUSH            {R4,R5,R7,LR}
32B3DA:  ADD             R7, SP, #8
32B3DC:  LDR             R0, =(_ZN11CTheScripts12pIdleScriptsE_ptr - 0x32B3E8)
32B3DE:  MOVS            R5, #0
32B3E0:  VMOV.I32        Q8, #0
32B3E4:  ADD             R0, PC; _ZN11CTheScripts12pIdleScriptsE_ptr
32B3E6:  LDR             R0, [R0]; CTheScripts::pIdleScripts ...
32B3E8:  LDR             R4, [R0]; CTheScripts::pIdleScripts
32B3EA:  LDRD.W          R1, R2, [R4]
32B3EE:  CMP             R2, #0
32B3F0:  IT EQ
32B3F2:  MOVEQ           R2, R0
32B3F4:  STR             R1, [R2]; CTheScripts::pIdleScripts
32B3F6:  LDR             R0, [R4]
32B3F8:  CMP             R0, #0
32B3FA:  ITT NE
32B3FC:  LDRNE           R1, [R4,#4]
32B3FE:  STRNE           R1, [R0,#4]
32B400:  MOVW            R0, #0x656D
32B404:  STRB            R5, [R4,#0xE]
32B406:  MOVS            R1, #0xA8
32B408:  STRH            R0, [R4,#0xC]
32B40A:  MOV             R0, #0x616E6F6E
32B412:  STR             R5, [R4]
32B414:  STR.W           R5, [R4,#0xEC]
32B418:  STR             R0, [R4,#8]
32B41A:  MOVS            R0, #0xFF
32B41C:  STR.W           R5, [R4,#0xE4]
32B420:  STRB.W          R5, [R4,#0xE8]
32B424:  STRB.W          R0, [R4,#0xE9]
32B428:  ADD.W           R0, R4, #0x2A ; '*'
32B42C:  VST1.16         {D16-D17}, [R0]
32B430:  ADD.W           R0, R4, #0x20 ; ' '
32B434:  VST1.32         {D16-D17}, [R0]
32B438:  ADD.W           R0, R4, #0x10
32B43C:  VST1.32         {D16-D17}, [R0]
32B440:  ADD.W           R0, R4, #0x3C ; '<'
32B444:  BLX             j___aeabi_memclr8_0
32B448:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x32B454)
32B44A:  MOV.W           R2, #0x1000000
32B44E:  LDR             R1, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x32B45A)
32B450:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
32B452:  STRB.W          R5, [R4,#0xF4]
32B456:  ADD             R1, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32B458:  STR.W           R2, [R4,#0xF0]
32B45C:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
32B45E:  LDR             R1, [R1]; CTheScripts::ScriptSpace ...
32B460:  STR.W           R5, [R4,#0xF8]
32B464:  STRB.W          R5, [R4,#0xFC]
32B468:  STR             R1, [R4,#0x14]
32B46A:  LDR             R1, [R0]; CTheScripts::pActiveScripts
32B46C:  STRD.W          R1, R5, [R4]
32B470:  LDR             R0, [R0]; CTheScripts::pActiveScripts
32B472:  CMP             R0, #0
32B474:  IT NE
32B476:  STRNE           R4, [R0,#4]
32B478:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x32B47E)
32B47A:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
32B47C:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
32B47E:  STR             R4, [R0]; CTheScripts::pActiveScripts
32B480:  MOVS            R0, #1
32B482:  STRB.W          R0, [R4,#0xE4]
32B486:  POP             {R4,R5,R7,PC}
