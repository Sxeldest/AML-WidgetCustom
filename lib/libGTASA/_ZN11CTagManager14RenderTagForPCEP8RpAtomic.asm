; =========================================================
; Game Engine Function: _ZN11CTagManager14RenderTagForPCEP8RpAtomic
; Address            : 0x362324 - 0x36236A
; =========================================================

362324:  PUSH            {R4-R7,LR}
362326:  ADD             R7, SP, #0xC
362328:  PUSH.W          {R8}
36232C:  MOV             R4, R0
36232E:  LDR             R0, [R4,#0x18]
362330:  LDR             R0, [R0,#0x20]
362332:  LDR             R5, [R0,#4]
362334:  MOV             R0, R4
362336:  LDR.W           R8, [R5,#4]
36233A:  BLX             j__ZN18CVisibilityPlugins12GetUserValueEP8RpAtomic; CVisibilityPlugins::GetUserValue(RpAtomic *)
36233E:  UXTB            R6, R0
362340:  MOV             R0, R4
362342:  BLX             j__ZN18CVisibilityPlugins12GetUserValueEP8RpAtomic; CVisibilityPlugins::GetUserValue(RpAtomic *)
362346:  MULS            R0, R6
362348:  MOV             R1, #0x80808081
362350:  UMULL.W         R0, R1, R0, R1
362354:  LSLS            R0, R1, #0x11
362356:  BFI.W           R0, R8, #0, #0x18
36235A:  STR             R0, [R5,#4]
36235C:  LDR             R1, [R4,#0x48]
36235E:  MOV             R0, R4
362360:  POP.W           {R8}
362364:  POP.W           {R4-R7,LR}
362368:  BX              R1
