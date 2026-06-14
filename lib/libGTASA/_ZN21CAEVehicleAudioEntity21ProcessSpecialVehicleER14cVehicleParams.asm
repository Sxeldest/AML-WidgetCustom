; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity21ProcessSpecialVehicleER14cVehicleParams
; Address            : 0x3AEA58 - 0x3AEB7A
; =========================================================

3AEA58:  PUSH            {R4,R5,R7,LR}
3AEA5A:  ADD             R7, SP, #8
3AEA5C:  MOV             R4, R1
3AEA5E:  MOV             R5, R0
3AEA60:  LDR             R0, [R4,#0x10]
3AEA62:  MOVW            R1, #0x21A
3AEA66:  LDRSH.W         R0, [R0,#0x26]
3AEA6A:  CMP             R0, R1
3AEA6C:  BGT.W           loc_3AEACE
3AEA70:  SUBW            R0, R0, #0x1B3; switch 67 cases
3AEA74:  CMP             R0, #0x42 ; 'B'
3AEA76:  BHI.W           def_3AEA7A; jumptable 003AEA7A default case, cases 436-440,442-449,451-456,458-463,466-500
3AEA7A:  TBB.W           [PC,R0]; switch jump
3AEA7E:  DCB 0x3E; jump table for switch statement
3AEA7F:  DCB 0x6A
3AEA80:  DCB 0x6A
3AEA81:  DCB 0x6A
3AEA82:  DCB 0x6A
3AEA83:  DCB 0x6A
3AEA84:  DCB 0x33
3AEA85:  DCB 0x6A
3AEA86:  DCB 0x6A
3AEA87:  DCB 0x6A
3AEA88:  DCB 0x6A
3AEA89:  DCB 0x6A
3AEA8A:  DCB 0x6A
3AEA8B:  DCB 0x6A
3AEA8C:  DCB 0x6A
3AEA8D:  DCB 0x3E
3AEA8E:  DCB 0x6A
3AEA8F:  DCB 0x6A
3AEA90:  DCB 0x6A
3AEA91:  DCB 0x6A
3AEA92:  DCB 0x6A
3AEA93:  DCB 0x6A
3AEA94:  DCB 0x4C
3AEA95:  DCB 0x6A
3AEA96:  DCB 0x6A
3AEA97:  DCB 0x6A
3AEA98:  DCB 0x6A
3AEA99:  DCB 0x6A
3AEA9A:  DCB 0x6A
3AEA9B:  DCB 0x46
3AEA9C:  DCB 0x22
3AEA9D:  DCB 0x6A
3AEA9E:  DCB 0x6A
3AEA9F:  DCB 0x6A
3AEAA0:  DCB 0x6A
3AEAA1:  DCB 0x6A
3AEAA2:  DCB 0x6A
3AEAA3:  DCB 0x6A
3AEAA4:  DCB 0x6A
3AEAA5:  DCB 0x6A
3AEAA6:  DCB 0x6A
3AEAA7:  DCB 0x6A
3AEAA8:  DCB 0x6A
3AEAA9:  DCB 0x6A
3AEAAA:  DCB 0x6A
3AEAAB:  DCB 0x6A
3AEAAC:  DCB 0x6A
3AEAAD:  DCB 0x6A
3AEAAE:  DCB 0x6A
3AEAAF:  DCB 0x6A
3AEAB0:  DCB 0x6A
3AEAB1:  DCB 0x6A
3AEAB2:  DCB 0x6A
3AEAB3:  DCB 0x6A
3AEAB4:  DCB 0x6A
3AEAB5:  DCB 0x6A
3AEAB6:  DCB 0x6A
3AEAB7:  DCB 0x6A
3AEAB8:  DCB 0x6A
3AEAB9:  DCB 0x6A
3AEABA:  DCB 0x6A
3AEABB:  DCB 0x6A
3AEABC:  DCB 0x6A
3AEABD:  DCB 0x6A
3AEABE:  DCB 0x6A
3AEABF:  DCB 0x6A
3AEAC0:  DCB 0x22
3AEAC1:  ALIGN 2
3AEAC2:  MOV             R0, R5; jumptable 003AEA7A cases 465,501
3AEAC4:  MOV             R1, R4
3AEAC6:  POP.W           {R4,R5,R7,LR}
3AEACA:  B.W             _ZN21CAEVehicleAudioEntity18ProcessDummyRCHeliER14cVehicleParams; CAEVehicleAudioEntity::ProcessDummyRCHeli(cVehicleParams &)
3AEACE:  CMP.W           R0, #0x248
3AEAD2:  BGE             loc_3AEAF0
3AEAD4:  MOVW            R1, #0x21B
3AEAD8:  CMP             R0, R1
3AEADA:  BEQ             loc_3AEB54
3AEADC:  CMP.W           R0, #0x234
3AEAE0:  IT NE
3AEAE2:  POPNE           {R4,R5,R7,PC}
3AEAE4:  MOV             R0, R5; jumptable 003AEA7A case 441
3AEAE6:  MOV             R1, R4
3AEAE8:  POP.W           {R4,R5,R7,LR}
3AEAEC:  B.W             _ZN21CAEVehicleAudioEntity17ProcessDummyRCCarER14cVehicleParams; CAEVehicleAudioEntity::ProcessDummyRCCar(cVehicleParams &)
3AEAF0:  ITT NE
3AEAF2:  MOVWNE          R1, #0x24F
3AEAF6:  CMPNE           R0, R1
3AEAF8:  BNE             def_3AEA7A; jumptable 003AEA7A default case, cases 436-440,442-449,451-456,458-463,466-500
3AEAFA:  MOV             R0, R5; jumptable 003AEA7A cases 435,450
3AEAFC:  MOV             R1, R4
3AEAFE:  BLX             j__ZN21CAEVehicleAudioEntity23ProcessVehicleRoadNoiseER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleRoadNoise(cVehicleParams &)
3AEB02:  MOV             R0, R5
3AEB04:  POP.W           {R4,R5,R7,LR}
3AEB08:  B               _ZN21CAEVehicleAudioEntity20ProcessRainOnVehicleER14cVehicleParams; CAEVehicleAudioEntity::ProcessRainOnVehicle(cVehicleParams &)
3AEB0A:  MOV             R0, R5; jumptable 003AEA7A case 464
3AEB0C:  MOV             R1, R4
3AEB0E:  POP.W           {R4,R5,R7,LR}
3AEB12:  B.W             _ZN21CAEVehicleAudioEntity19ProcessDummyRCPlaneER14cVehicleParams; CAEVehicleAudioEntity::ProcessDummyRCPlane(cVehicleParams &)
3AEB16:  MOV             R0, R5; jumptable 003AEA7A case 457
3AEB18:  MOV             R1, R4
3AEB1A:  BLX             j__ZN21CAEVehicleAudioEntity23ProcessVehicleRoadNoiseER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleRoadNoise(cVehicleParams &)
3AEB1E:  MOV             R0, R5
3AEB20:  MOV             R1, R4
3AEB22:  BLX             j__ZN21CAEVehicleAudioEntity22ProcessVehicleSkiddingER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleSkidding(cVehicleParams &)
3AEB26:  MOV             R0, R5; this
3AEB28:  MOV             R1, R4
3AEB2A:  BLX             j__ZN21CAEVehicleAudioEntity22ProcessVehicleFlatTyreER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleFlatTyre(cVehicleParams &)
3AEB2E:  MOV             R0, R5
3AEB30:  MOV             R1, R4
3AEB32:  BLX             j__ZN21CAEVehicleAudioEntity28ProcessVehicleSirenAlarmHornER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleSirenAlarmHorn(cVehicleParams &)
3AEB36:  MOV             R0, R5
3AEB38:  MOV             R1, R4
3AEB3A:  BLX             j__ZN21CAEVehicleAudioEntity20ProcessDummyGolfCartER14cVehicleParams; CAEVehicleAudioEntity::ProcessDummyGolfCart(cVehicleParams &)
3AEB3E:  MOV             R0, R5
3AEB40:  BLX             j__ZN21CAEVehicleAudioEntity20ProcessRainOnVehicleER14cVehicleParams; CAEVehicleAudioEntity::ProcessRainOnVehicle(cVehicleParams &)
3AEB44:  LDR             R0, [R4,#0x10]
3AEB46:  LDRB.W          R0, [R0,#0x3A]
3AEB4A:  AND.W           R0, R0, #0xF8
3AEB4E:  CMP             R0, #0x10
3AEB50:  BNE             loc_3AEB6E
3AEB52:  POP             {R4,R5,R7,PC}; jumptable 003AEA7A default case, cases 436-440,442-449,451-456,458-463,466-500
3AEB54:  MOV             R0, R5
3AEB56:  MOV             R1, R4
3AEB58:  BLX             j__ZN21CAEVehicleAudioEntity22ProcessDummyHovercraftER14cVehicleParams; CAEVehicleAudioEntity::ProcessDummyHovercraft(cVehicleParams &)
3AEB5C:  MOV             R0, R5
3AEB5E:  BLX             j__ZN21CAEVehicleAudioEntity20ProcessRainOnVehicleER14cVehicleParams; CAEVehicleAudioEntity::ProcessRainOnVehicle(cVehicleParams &)
3AEB62:  MOV             R0, R5
3AEB64:  MOV             R1, R4
3AEB66:  POP.W           {R4,R5,R7,LR}
3AEB6A:  B.W             _ZN21CAEVehicleAudioEntity28ProcessVehicleSirenAlarmHornER14cVehicleParams; CAEVehicleAudioEntity::ProcessVehicleSirenAlarmHorn(cVehicleParams &)
3AEB6E:  MOV             R0, R5; this
3AEB70:  MOV             R1, R4
3AEB72:  POP.W           {R4,R5,R7,LR}
3AEB76:  B.W             _ZN21CAEVehicleAudioEntity19ProcessEngineDamageER14cVehicleParams; CAEVehicleAudioEntity::ProcessEngineDamage(cVehicleParams &)
