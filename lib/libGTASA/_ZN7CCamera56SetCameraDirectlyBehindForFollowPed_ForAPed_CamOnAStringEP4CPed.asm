; =========================================================
; Game Engine Function: _ZN7CCamera56SetCameraDirectlyBehindForFollowPed_ForAPed_CamOnAStringEP4CPed
; Address            : 0x3E13BC - 0x3E142E
; =========================================================

3E13BC:  PUSH            {R4,R5,R7,LR}
3E13BE:  ADD             R7, SP, #8
3E13C0:  MOV             R5, R1
3E13C2:  MOV             R4, R0
3E13C4:  CMP             R5, #0
3E13C6:  IT EQ
3E13C8:  POPEQ           {R4,R5,R7,PC}
3E13CA:  LDR             R0, =(TheCamera_ptr - 0x3E13D8)
3E13CC:  MOVS            R1, #0
3E13CE:  STRB.W          R1, [R4,#0x29]
3E13D2:  MOVS            R1, #1
3E13D4:  ADD             R0, PC; TheCamera_ptr
3E13D6:  STRB            R1, [R4,#0x1A]
3E13D8:  LDR             R0, [R0]; TheCamera
3E13DA:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
3E13DE:  STR.W           R5, [R0,#(dword_952884 - 0x951FA8)]
3E13E2:  ADD.W           R2, R1, R1,LSL#5
3E13E6:  ADD.W           R2, R0, R2,LSL#4
3E13EA:  LDR.W           R0, [R2,#0x364]; this
3E13EE:  CBZ             R0, loc_3E1402
3E13F0:  ADD.W           R1, R2, #0x364; CEntity **
3E13F4:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3E13F8:  LDR             R0, =(TheCamera_ptr - 0x3E13FE)
3E13FA:  ADD             R0, PC; TheCamera_ptr
3E13FC:  LDR             R0, [R0]; TheCamera
3E13FE:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
3E1402:  LDR             R0, =(TheCamera_ptr - 0x3E140C)
3E1404:  ADD.W           R1, R1, R1,LSL#5
3E1408:  ADD             R0, PC; TheCamera_ptr
3E140A:  LDR             R0, [R0]; TheCamera
3E140C:  ADD.W           R0, R0, R1,LSL#4
3E1410:  ADD.W           R1, R0, #0x364; CEntity **
3E1414:  STR.W           R5, [R0,#0x364]
3E1418:  MOV             R0, R5; this
3E141A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3E141E:  LDR             R1, [R5,#0x14]
3E1420:  LDRD.W          R0, R1, [R1,#0x10]; float
3E1424:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3E1428:  STR.W           R0, [R4,#0x11C]
3E142C:  POP             {R4,R5,R7,PC}
