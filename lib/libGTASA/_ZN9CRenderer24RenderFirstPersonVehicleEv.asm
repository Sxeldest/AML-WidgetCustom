; =========================================================
; Game Engine Function: _ZN9CRenderer24RenderFirstPersonVehicleEv
; Address            : 0x4103B4 - 0x41047A
; =========================================================

4103B4:  PUSH            {R7,LR}
4103B6:  MOV             R7, SP
4103B8:  LDR             R0, =(_ZN9CRenderer21m_pFirstPersonVehicleE_ptr - 0x4103BE)
4103BA:  ADD             R0, PC; _ZN9CRenderer21m_pFirstPersonVehicleE_ptr
4103BC:  LDR             R0, [R0]; CRenderer::m_pFirstPersonVehicle ...
4103BE:  LDR             R0, [R0]; CRenderer::m_pFirstPersonVehicle
4103C0:  CMP             R0, #0
4103C2:  IT EQ
4103C4:  POPEQ           {R7,PC}
4103C6:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x4103CC)
4103C8:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4103CA:  LDR             R0, [R0]; CWorld::Players ...
4103CC:  LDR             R0, [R0]; CWorld::Players
4103CE:  LDRSB.W         R1, [R0,#0x71C]
4103D2:  RSB.W           R1, R1, R1,LSL#3
4103D6:  ADD.W           R0, R0, R1,LSL#2
4103DA:  LDR.W           R0, [R0,#0x5A4]
4103DE:  CMP             R0, #0x1C
4103E0:  BNE             loc_410432
4103E2:  MOVS            R0, #0x1E
4103E4:  MOVS            R1, #0x50 ; 'P'
4103E6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4103EA:  MOVS            R0, #0xE
4103EC:  MOVS            R1, #1
4103EE:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4103F2:  MOVS            R0, #8
4103F4:  MOVS            R1, #1
4103F6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4103FA:  MOVS            R0, #6
4103FC:  MOVS            R1, #1
4103FE:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
410402:  MOVS            R0, #0xC
410404:  MOVS            R1, #1
410406:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
41040A:  MOVS            R0, #0xA
41040C:  MOVS            R1, #5
41040E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
410412:  MOVS            R0, #0xB
410414:  MOVS            R1, #6
410416:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
41041A:  LDR             R0, =(_ZN9CRenderer21m_pFirstPersonVehicleE_ptr - 0x410420)
41041C:  ADD             R0, PC; _ZN9CRenderer21m_pFirstPersonVehicleE_ptr
41041E:  LDR             R0, [R0]; CRenderer::m_pFirstPersonVehicle ...
410420:  LDR             R0, [R0]; this
410422:  BLX             j__ZN9CRenderer16RenderOneNonRoadEP7CEntity; CRenderer::RenderOneNonRoad(CEntity *)
410426:  MOVS            R0, #0xE
410428:  MOVS            R1, #0
41042A:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
41042E:  MOVS            R0, #0x1E
410430:  B               loc_410470
410432:  MOVS            R0, #0xE
410434:  MOVS            R1, #1
410436:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
41043A:  MOVS            R0, #8
41043C:  MOVS            R1, #1
41043E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
410442:  MOVS            R0, #6
410444:  MOVS            R1, #1
410446:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
41044A:  MOVS            R0, #0xC
41044C:  MOVS            R1, #1
41044E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
410452:  MOVS            R0, #0xA
410454:  MOVS            R1, #5
410456:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
41045A:  MOVS            R0, #0xB
41045C:  MOVS            R1, #6
41045E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
410462:  LDR             R0, =(_ZN9CRenderer21m_pFirstPersonVehicleE_ptr - 0x410468)
410464:  ADD             R0, PC; _ZN9CRenderer21m_pFirstPersonVehicleE_ptr
410466:  LDR             R0, [R0]; CRenderer::m_pFirstPersonVehicle ...
410468:  LDR             R0, [R0]; this
41046A:  BLX             j__ZN9CRenderer16RenderOneNonRoadEP7CEntity; CRenderer::RenderOneNonRoad(CEntity *)
41046E:  MOVS            R0, #0xE
410470:  MOVS            R1, #0
410472:  POP.W           {R7,LR}
410476:  B.W             sub_192888
