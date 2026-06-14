; =========================================================
; Game Engine Function: sub_E036C
; Address            : 0xE036C - 0xE03E2
; =========================================================

E036C:  PUSH            {R4-R7,LR}
E036E:  ADD             R7, SP, #0xC
E0370:  PUSH.W          {R8}
E0374:  LDR.W           R8, [R0]
E0378:  MOV             R12, R0
E037A:  MVN.W           R0, R8
E037E:  MOV             R5, R8
E0380:  ADD             R0, R1
E0382:  LDRB.W          R6, [R5],#1
E0386:  ADD.W           LR, R8, R0
E038A:  MOVS            R0, #0
E038C:  MOV             R4, R0
E038E:  ADD.W           R0, R0, R0,LSL#2
E0392:  CMP             R5, R1
E0394:  ADD.W           R0, R6, R0,LSL#1
E0398:  SUB.W           R0, R0, #0x30 ; '0'
E039C:  BEQ             loc_E03B0
E039E:  LDRB.W          R6, [R5],#1
E03A2:  SUB.W           R3, R6, #0x30 ; '0'
E03A6:  CMP             R3, #0xA
E03A8:  BCC             loc_E038C
E03AA:  SUBS            R1, R5, #1
E03AC:  SUB.W           LR, R5, #2
E03B0:  STR.W           R1, [R12]
E03B4:  SUB.W           R1, R1, R8
E03B8:  CMP             R1, #0xA
E03BA:  BLT             loc_E03DC
E03BC:  BNE             loc_E03DA
E03BE:  LDRB.W          R1, [LR]
E03C2:  MOVS            R3, #0
E03C4:  MOVS            R6, #0xA
E03C6:  SUBS            R1, #0x30 ; '0'
E03C8:  UMLAL.W         R1, R3, R4, R6
E03CC:  SUBS.W          R1, R1, #0x80000000
E03D0:  SBCS.W          R1, R3, #0
E03D4:  IT CS
E03D6:  MOVCS           R0, R2
E03D8:  B               loc_E03DC
E03DA:  MOV             R0, R2
E03DC:  POP.W           {R8}
E03E0:  POP             {R4-R7,PC}
