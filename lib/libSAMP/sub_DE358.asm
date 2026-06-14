; =========================================================
; Game Engine Function: sub_DE358
; Address            : 0xDE358 - 0xDE3E6
; =========================================================

DE358:  PUSH            {R4-R7,LR}
DE35A:  ADD             R7, SP, #0xC
DE35C:  PUSH.W          {R8-R10}
DE360:  MOV             R4, R0
DE362:  LDR             R0, =(unk_91D40 - 0xDE370)
DE364:  LDRH.W          R2, [R1,#9]
DE368:  ADD.W           R8, R1, #0xB
DE36C:  ADD             R0, PC; unk_91D40
DE36E:  LDR             R6, [R1]
DE370:  AND.W           R2, R2, #0xF
DE374:  LDR.W           R10, [R7,#arg_0]
DE378:  SUBS            R5, R6, R3
DE37A:  LDRB            R0, [R0,R2]
DE37C:  IT CC
DE37E:  MOVCC           R5, #0
DE380:  LSRS.W          R6, R5, R0
DE384:  BEQ             loc_DE392
DE386:  MOV             R0, R4
DE388:  MOV             R1, R6
DE38A:  MOV             R2, R8
DE38C:  BL              sub_DD992
DE390:  MOV             R4, R0
DE392:  LDR.W           R1, [R10]
DE396:  SUBS            R6, R5, R6
DE398:  CBZ             R1, loc_DE3C0
DE39A:  LDR             R2, =(unk_91D45 - 0xDE3A4)
DE39C:  LDRD.W          R0, R3, [R4,#8]
DE3A0:  ADD             R2, PC; unk_91D45
DE3A2:  LDRB.W          R9, [R2,R1]
DE3A6:  ADDS            R1, R0, #1
DE3A8:  CMP             R3, R1
DE3AA:  BCS             loc_DE3B8
DE3AC:  LDR             R0, [R4]
DE3AE:  LDR             R2, [R0]
DE3B0:  MOV             R0, R4
DE3B2:  BLX             R2
DE3B4:  LDR             R0, [R4,#8]
DE3B6:  ADDS            R1, R0, #1
DE3B8:  LDR             R2, [R4,#4]
DE3BA:  STR             R1, [R4,#8]
DE3BC:  STRB.W          R9, [R2,R0]
DE3C0:  LDR.W           R1, [R10,#4]
DE3C4:  MOV             R0, R4
DE3C6:  ADDS            R2, R1, #3
DE3C8:  BL              sub_DCF30
DE3CC:  MOV             R0, R4
DE3CE:  CBZ             R6, loc_DE3E0
DE3D0:  MOV             R1, R6
DE3D2:  MOV             R2, R8
DE3D4:  POP.W           {R8-R10}
DE3D8:  POP.W           {R4-R7,LR}
DE3DC:  B.W             sub_DD992
DE3E0:  POP.W           {R8-R10}
DE3E4:  POP             {R4-R7,PC}
