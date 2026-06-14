; =========================================================
; Game Engine Function: _ZN8CShadows23StoreShadowToBeRenderedEhP7CVectorffffshhh
; Address            : 0x5B9260 - 0x5B93D0
; =========================================================

5B9260:  PUSH            {R4-R7,LR}
5B9262:  ADD             R7, SP, #0xC
5B9264:  PUSH.W          {R11}
5B9268:  SUBS            R5, R0, #1; switch 6 cases
5B926A:  CMP             R5, #5
5B926C:  BHI.W           def_5B9288; jumptable 005B9288 default case
5B9270:  LDRD.W          LR, R12, [R7,#arg_10]
5B9274:  VMOV            S6, R2
5B9278:  LDRD.W          R4, R0, [R7,#arg_8]
5B927C:  VLDR            S0, [R7,#arg_4]
5B9280:  VLDR            S2, [R7,#arg_0]
5B9284:  VMOV            S4, R3
5B9288:  TBB.W           [PC,R5]; switch jump
5B928C:  DCB 3; jump table for switch statement
5B928D:  DCB 0x16
5B928E:  DCB 0x29
5B928F:  DCB 0x3B
5B9290:  DCB 0x4D
5B9291:  DCB 0x62
5B9292:  LDR             R2, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B9298); jumptable 005B9288 case 1
5B9294:  ADD             R2, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B9296:  LDR             R2, [R2]; CShadows::ShadowsStoredToBeRendered ...
5B9298:  LDRH            R2, [R2]; CShadows::ShadowsStoredToBeRendered
5B929A:  CMP             R2, #0x2F ; '/'
5B929C:  BHI.W           def_5B9288; jumptable 005B9288 default case
5B92A0:  LDR             R3, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5B92AA)
5B92A2:  MOVS            R6, #0x34 ; '4'
5B92A4:  LDR             R5, =(gpShadowCarTex_ptr - 0x5B92AC)
5B92A6:  ADD             R3, PC; _ZN8CShadows15asShadowsStoredE_ptr
5B92A8:  ADD             R5, PC; gpShadowCarTex_ptr
5B92AA:  LDR             R3, [R3]; CShadows::asShadowsStored ...
5B92AC:  MLA.W           R3, R2, R6, R3
5B92B0:  LDR             R6, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B92B8)
5B92B2:  LDR             R5, [R5]; gpShadowCarTex
5B92B4:  ADD             R6, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B92B6:  B               loc_5B9372
5B92B8:  LDR             R2, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B92BE); jumptable 005B9288 case 2
5B92BA:  ADD             R2, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B92BC:  LDR             R2, [R2]; CShadows::ShadowsStoredToBeRendered ...
5B92BE:  LDRH            R2, [R2]; CShadows::ShadowsStoredToBeRendered
5B92C0:  CMP             R2, #0x2F ; '/'
5B92C2:  BHI.W           def_5B9288; jumptable 005B9288 default case
5B92C6:  LDR             R3, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5B92D0)
5B92C8:  MOVS            R6, #0x34 ; '4'
5B92CA:  LDR             R5, =(gpShadowPedTex_ptr - 0x5B92D2)
5B92CC:  ADD             R3, PC; _ZN8CShadows15asShadowsStoredE_ptr
5B92CE:  ADD             R5, PC; gpShadowPedTex_ptr
5B92D0:  LDR             R3, [R3]; CShadows::asShadowsStored ...
5B92D2:  MLA.W           R3, R2, R6, R3
5B92D6:  LDR             R6, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B92DE)
5B92D8:  LDR             R5, [R5]; gpShadowPedTex
5B92DA:  ADD             R6, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B92DC:  B               loc_5B9372
5B92DE:  LDR             R2, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B92E4); jumptable 005B9288 case 3
5B92E0:  ADD             R2, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B92E2:  LDR             R2, [R2]; CShadows::ShadowsStoredToBeRendered ...
5B92E4:  LDRH            R2, [R2]; CShadows::ShadowsStoredToBeRendered
5B92E6:  CMP             R2, #0x2F ; '/'
5B92E8:  BHI             def_5B9288; jumptable 005B9288 default case
5B92EA:  LDR             R3, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5B92F4)
5B92EC:  MOVS            R6, #0x34 ; '4'
5B92EE:  LDR             R5, =(gpShadowExplosionTex_ptr - 0x5B92F6)
5B92F0:  ADD             R3, PC; _ZN8CShadows15asShadowsStoredE_ptr
5B92F2:  ADD             R5, PC; gpShadowExplosionTex_ptr
5B92F4:  LDR             R3, [R3]; CShadows::asShadowsStored ...
5B92F6:  MLA.W           R3, R2, R6, R3
5B92FA:  LDR             R6, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B9302)
5B92FC:  LDR             R5, [R5]; gpShadowExplosionTex
5B92FE:  ADD             R6, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B9300:  B               loc_5B9348
5B9302:  LDR             R2, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B9308); jumptable 005B9288 case 4
5B9304:  ADD             R2, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B9306:  LDR             R2, [R2]; CShadows::ShadowsStoredToBeRendered ...
5B9308:  LDRH            R2, [R2]; CShadows::ShadowsStoredToBeRendered
5B930A:  CMP             R2, #0x2F ; '/'
5B930C:  BHI             def_5B9288; jumptable 005B9288 default case
5B930E:  LDR             R3, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5B9318)
5B9310:  MOVS            R6, #0x34 ; '4'
5B9312:  LDR             R5, =(gpShadowHeliTex_ptr - 0x5B931A)
5B9314:  ADD             R3, PC; _ZN8CShadows15asShadowsStoredE_ptr
5B9316:  ADD             R5, PC; gpShadowHeliTex_ptr
5B9318:  LDR             R3, [R3]; CShadows::asShadowsStored ...
5B931A:  MLA.W           R3, R2, R6, R3
5B931E:  LDR             R6, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B9326)
5B9320:  LDR             R5, [R5]; gpShadowHeliTex
5B9322:  ADD             R6, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B9324:  B               loc_5B9372
5B9326:  LDR             R2, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B932C); jumptable 005B9288 case 5
5B9328:  ADD             R2, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B932A:  LDR             R2, [R2]; CShadows::ShadowsStoredToBeRendered ...
5B932C:  LDRH            R2, [R2]; CShadows::ShadowsStoredToBeRendered
5B932E:  CMP             R2, #0x2F ; '/'
5B9330:  BHI             def_5B9288; jumptable 005B9288 default case
5B9332:  LDR             R3, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5B933C)
5B9334:  MOVS            R6, #0x34 ; '4'
5B9336:  LDR             R5, =(gpShadowHeadLightsTex_ptr - 0x5B933E)
5B9338:  ADD             R3, PC; _ZN8CShadows15asShadowsStoredE_ptr
5B933A:  ADD             R5, PC; gpShadowHeadLightsTex_ptr
5B933C:  LDR             R3, [R3]; CShadows::asShadowsStored ...
5B933E:  MLA.W           R3, R2, R6, R3
5B9342:  LDR             R6, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B934A)
5B9344:  LDR             R5, [R5]; gpShadowHeadLightsTex
5B9346:  ADD             R6, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B9348:  LDR             R5, [R5]
5B934A:  STR             R5, [R3,#0x24]
5B934C:  MOVS            R5, #2
5B934E:  B               loc_5B9378
5B9350:  LDR             R2, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B9356); jumptable 005B9288 case 6
5B9352:  ADD             R2, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B9354:  LDR             R2, [R2]; CShadows::ShadowsStoredToBeRendered ...
5B9356:  LDRH            R2, [R2]; CShadows::ShadowsStoredToBeRendered
5B9358:  CMP             R2, #0x2F ; '/'
5B935A:  BHI             def_5B9288; jumptable 005B9288 default case
5B935C:  LDR             R3, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5B9366)
5B935E:  MOVS            R6, #0x34 ; '4'
5B9360:  LDR             R5, =(gpBloodPoolTex_ptr - 0x5B9368)
5B9362:  ADD             R3, PC; _ZN8CShadows15asShadowsStoredE_ptr
5B9364:  ADD             R5, PC; gpBloodPoolTex_ptr
5B9366:  LDR             R3, [R3]; CShadows::asShadowsStored ...
5B9368:  MLA.W           R3, R2, R6, R3
5B936C:  LDR             R6, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5B9374)
5B936E:  LDR             R5, [R5]; gpBloodPoolTex
5B9370:  ADD             R6, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5B9372:  LDR             R5, [R5]
5B9374:  STR             R5, [R3,#0x24]
5B9376:  MOVS            R5, #1
5B9378:  STRB.W          R5, [R3,#0x2E]
5B937C:  LDR             R5, [R1,#8]
5B937E:  VLDR            D16, [R1]
5B9382:  LDRB.W          R1, [R3,#0x32]
5B9386:  STR             R5, [R3,#8]
5B9388:  VSTR            S6, [R3,#0xC]
5B938C:  VSTR            S4, [R3,#0x10]
5B9390:  VSTR            S2, [R3,#0x14]
5B9394:  VSTR            S0, [R3,#0x18]
5B9398:  STRH            R4, [R3,#0x2C]
5B939A:  STRB.W          R0, [R3,#0x2F]
5B939E:  MOVS            R0, #0x41700000
5B93A4:  STRB.W          LR, [R3,#0x30]
5B93A8:  STRB.W          R12, [R3,#0x31]
5B93AC:  STR             R0, [R3,#0x1C]
5B93AE:  AND.W           R0, R1, #0xFA
5B93B2:  LDR             R6, [R6]; CShadows::ShadowsStoredToBeRendered ...
5B93B4:  STRB.W          R0, [R3,#0x32]
5B93B8:  MOV.W           R0, #0x3F800000
5B93BC:  STR             R0, [R3,#0x20]
5B93BE:  MOVS            R0, #0
5B93C0:  STR             R0, [R3,#0x28]
5B93C2:  ADDS            R0, R2, #1
5B93C4:  VSTR            D16, [R3]
5B93C8:  STRH            R0, [R6]; CShadows::ShadowsStoredToBeRendered
5B93CA:  POP.W           {R11}; jumptable 005B9288 default case
5B93CE:  POP             {R4-R7,PC}
