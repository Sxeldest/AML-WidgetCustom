; =========================================================
; Game Engine Function: _ZN9CPhysical21SetDamagedPieceRecordEfP7CEntityR9CColPointf
; Address            : 0x3FD384 - 0x3FD484
; =========================================================

3FD384:  PUSH            {R4-R7,LR}
3FD386:  ADD             R7, SP, #0xC
3FD388:  PUSH.W          {R8}
3FD38C:  VPUSH           {D8}
3FD390:  MOV             R4, R0
3FD392:  VMOV            S0, R1
3FD396:  VLDR            S2, [R4,#0xDC]
3FD39A:  MOV             R6, R3
3FD39C:  MOV             R8, R2
3FD39E:  VCMPE.F32       S2, S0
3FD3A2:  VMRS            APSR_nzcv, FPSCR
3FD3A6:  BGE             loc_3FD446
3FD3A8:  MOV             R5, R4
3FD3AA:  LDRB.W          R1, [R6,#0x21]
3FD3AE:  LDR.W           R0, [R5,#0xE0]!; this
3FD3B2:  VLDR            S16, [R7,#arg_0]
3FD3B6:  CMP             R0, #0
3FD3B8:  VSTR            S0, [R5,#-4]
3FD3BC:  STRH            R1, [R5,#0x1C]
3FD3BE:  ITT NE
3FD3C0:  MOVNE           R1, R5; CEntity **
3FD3C2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3FD3C6:  MOV             R0, R8; this
3FD3C8:  MOV             R1, R5; CEntity **
3FD3CA:  STR.W           R8, [R4,#0xE0]
3FD3CE:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3FD3D2:  VLDR            D16, [R6]
3FD3D6:  LDR             R0, [R6,#8]
3FD3D8:  STR.W           R0, [R4,#0xF8]
3FD3DC:  VSTR            D16, [R4,#0xF0]
3FD3E0:  VLDR            S0, [R6,#0x10]
3FD3E4:  VLDR            S2, [R6,#0x14]
3FD3E8:  VLDR            S4, [R6,#0x18]
3FD3EC:  VMUL.F32        S0, S0, S16
3FD3F0:  VMUL.F32        S2, S2, S16
3FD3F4:  LDRB.W          R0, [R4,#0x3A]
3FD3F8:  VMUL.F32        S4, S4, S16
3FD3FC:  AND.W           R0, R0, #7
3FD400:  CMP             R0, #4
3FD402:  VSTR            S0, [R4,#0xE4]
3FD406:  VSTR            S2, [R4,#0xE8]
3FD40A:  VSTR            S4, [R4,#0xEC]
3FD40E:  ITT EQ
3FD410:  LDRBEQ.W        R0, [R6,#0x23]
3FD414:  CMPEQ           R0, #0x41 ; 'A'
3FD416:  BEQ             loc_3FD43A
3FD418:  LDRB.W          R0, [R8,#0x3A]
3FD41C:  AND.W           R0, R0, #7
3FD420:  CMP             R0, #4
3FD422:  BNE             loc_3FD446
3FD424:  LDRB.W          R0, [R6,#0x20]
3FD428:  CMP             R0, #0x41 ; 'A'
3FD42A:  ITTT EQ
3FD42C:  LDREQ.W         R0, [R8,#0x144]
3FD430:  ORREQ.W         R0, R0, #0x80000
3FD434:  STREQ.W         R0, [R8,#0x144]
3FD438:  B               loc_3FD446
3FD43A:  LDR.W           R0, [R4,#0x144]
3FD43E:  ORR.W           R0, R0, #0x80000
3FD442:  STR.W           R0, [R4,#0x144]
3FD446:  LDRB.W          R0, [R4,#0x44]
3FD44A:  LSLS            R0, R0, #0x18
3FD44C:  BPL             loc_3FD47A
3FD44E:  LDR             R0, =(MI_POOL_CUE_BALL_ptr - 0x3FD458)
3FD450:  LDRSH.W         R1, [R8,#0x26]
3FD454:  ADD             R0, PC; MI_POOL_CUE_BALL_ptr
3FD456:  LDR             R0, [R0]; MI_POOL_CUE_BALL
3FD458:  LDRH            R0, [R0]
3FD45A:  CMP             R1, R0
3FD45C:  BNE             loc_3FD47A
3FD45E:  LDRB.W          R0, [R4,#0x3A]
3FD462:  AND.W           R0, R0, #7
3FD466:  CMP             R0, #4
3FD468:  BNE             loc_3FD47A
3FD46A:  LDRB.W          R0, [R4,#0x14C]
3FD46E:  MOVS            R1, #0x32 ; '2'
3FD470:  CMP             R0, #0xFF
3FD472:  IT EQ
3FD474:  MOVEQ           R1, #0x35 ; '5'
3FD476:  STRB.W          R1, [R4,#0x14C]
3FD47A:  VPOP            {D8}
3FD47E:  POP.W           {R8}
3FD482:  POP             {R4-R7,PC}
