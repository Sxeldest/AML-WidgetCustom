; =========================================================
; Game Engine Function: _ZN9CPathFind19RemoveInteriorLinksEi
; Address            : 0x31A2D4 - 0x31A36A
; =========================================================

31A2D4:  PUSH            {R4,R5,R7,LR}
31A2D6:  ADD             R7, SP, #8
31A2D8:  LDR             R0, =(NumNodesGiven_ptr - 0x31A2DE)
31A2DA:  ADD             R0, PC; NumNodesGiven_ptr
31A2DC:  LDR             R0, [R0]; NumNodesGiven
31A2DE:  LDR.W           R12, [R0]
31A2E2:  CMP.W           R12, #1
31A2E6:  IT LT
31A2E8:  POPLT           {R4,R5,R7,PC}
31A2EA:  LDR             R0, =(ConnectsToGiven_ptr - 0x31A2F8)
31A2EC:  MOVS            R3, #0
31A2EE:  LDR             R4, =(ConnectsToGiven_ptr - 0x31A2FA)
31A2F0:  MOV.W           LR, #0xFFFFFFFF
31A2F4:  ADD             R0, PC; ConnectsToGiven_ptr
31A2F6:  ADD             R4, PC; ConnectsToGiven_ptr
31A2F8:  LDR             R0, [R0]; ConnectsToGiven
31A2FA:  LDR             R4, [R4]; ConnectsToGiven
31A2FC:  ADDS            R2, R0, #5
31A2FE:  MOVS            R0, #0xFF
31A300:  CMP             R1, R3
31A302:  BNE             loc_31A310
31A304:  STRB.W          R0, [R2,#-1]
31A308:  MOV             R5, R2
31A30A:  STR.W           LR, [R2,#-5]
31A30E:  B               loc_31A35E
31A310:  LDRSB.W         R5, [R2,#-5]
31A314:  CMP             R5, R1
31A316:  IT EQ
31A318:  STRBEQ.W        R0, [R2,#-5]
31A31C:  LDRSB.W         R5, [R2,#-4]
31A320:  CMP             R5, R1
31A322:  IT EQ
31A324:  STRBEQ.W        R0, [R2,#-4]
31A328:  LDRSB.W         R5, [R2,#-3]
31A32C:  CMP             R5, R1
31A32E:  IT EQ
31A330:  STRBEQ.W        R0, [R2,#-3]
31A334:  LDRSB.W         R5, [R2,#-2]
31A338:  CMP             R5, R1
31A33A:  IT EQ
31A33C:  STRBEQ.W        R0, [R2,#-2]
31A340:  LDRSB.W         R5, [R2,#-1]
31A344:  CMP             R5, R1
31A346:  IT EQ
31A348:  STRBEQ.W        R0, [R2,#-1]
31A34C:  LDRSB.W         R5, [R2]
31A350:  CMP             R5, R1
31A352:  BNE             loc_31A360
31A354:  ADD.W           R5, R3, R3,LSL#1
31A358:  ADD.W           R5, R4, R5,LSL#1
31A35C:  ADDS            R5, #5
31A35E:  STRB            R0, [R5]
31A360:  ADDS            R3, #1
31A362:  ADDS            R2, #6
31A364:  CMP             R3, R12
31A366:  BLT             loc_31A300
31A368:  POP             {R4,R5,R7,PC}
