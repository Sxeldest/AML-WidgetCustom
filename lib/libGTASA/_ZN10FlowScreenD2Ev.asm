; =========================================================
; Game Engine Function: _ZN10FlowScreenD2Ev
; Address            : 0x29D240 - 0x29D2EC
; =========================================================

29D240:  PUSH            {R4-R7,LR}
29D242:  ADD             R7, SP, #0xC
29D244:  PUSH.W          {R8,R9,R11}
29D248:  MOV             R9, R0
29D24A:  LDR             R0, =(_ZTV10FlowScreen_ptr - 0x29D250)
29D24C:  ADD             R0, PC; _ZTV10FlowScreen_ptr
29D24E:  LDR             R1, [R0]; `vtable for'FlowScreen ...
29D250:  LDR.W           R0, [R9,#0x18]
29D254:  ADDS            R1, #8
29D256:  STR.W           R1, [R9]
29D25A:  CBZ             R0, loc_29D266
29D25C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29D260:  MOVS            R0, #0
29D262:  STR.W           R0, [R9,#0x18]
29D266:  LDR.W           R0, [R9,#0x1C]
29D26A:  CBZ             R0, loc_29D276
29D26C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29D270:  MOVS            R0, #0
29D272:  STR.W           R0, [R9,#0x1C]
29D276:  LDR.W           R0, [R9,#0x10]
29D27A:  CBZ             R0, loc_29D286
29D27C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29D280:  MOVS            R0, #0
29D282:  STR.W           R0, [R9,#0x10]
29D286:  LDR.W           R1, [R9,#0x40]
29D28A:  CBZ             R1, loc_29D2B0
29D28C:  MOV.W           R8, #0
29D290:  MOVS            R6, #0
29D292:  MOVS            R5, #0
29D294:  LDR.W           R4, [R9,#0x44]
29D298:  LDR             R0, [R4,R6]
29D29A:  CBZ             R0, loc_29D2A8
29D29C:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29D2A0:  STR.W           R8, [R4,R6]
29D2A4:  LDR.W           R1, [R9,#0x40]
29D2A8:  ADDS            R5, #1
29D2AA:  ADDS            R6, #0xC
29D2AC:  CMP             R5, R1
29D2AE:  BCC             loc_29D294
29D2B0:  LDR.W           R0, [R9,#0x44]; p
29D2B4:  MOVS            R5, #0
29D2B6:  STR.W           R5, [R9,#0x40]
29D2BA:  CBZ             R0, loc_29D2C4
29D2BC:  BLX             free
29D2C0:  STR.W           R5, [R9,#0x44]
29D2C4:  LDR             R0, =(_ZTV10MenuScreen_ptr - 0x29D2CE)
29D2C6:  STR.W           R5, [R9,#0x3C]
29D2CA:  ADD             R0, PC; _ZTV10MenuScreen_ptr
29D2CC:  LDR             R1, [R0]; `vtable for'MenuScreen ...
29D2CE:  LDR.W           R0, [R9,#4]
29D2D2:  ADDS            R1, #8
29D2D4:  STR.W           R1, [R9]
29D2D8:  CBZ             R0, loc_29D2E4
29D2DA:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29D2DE:  MOVS            R0, #0
29D2E0:  STR.W           R0, [R9,#4]
29D2E4:  MOV             R0, R9
29D2E6:  POP.W           {R8,R9,R11}
29D2EA:  POP             {R4-R7,PC}
