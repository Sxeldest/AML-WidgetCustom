; =========================================================
; Game Engine Function: PauseOpenSLES
; Address            : 0x248190 - 0x24824E
; =========================================================

248190:  PUSH            {R4,R5,R7,LR}
248192:  ADD             R7, SP, #8
248194:  SUB             SP, SP, #8
248196:  MOV             R4, R1
248198:  MOV             R1, #0x161B0
2481A0:  LDR             R5, [R0,R1]
2481A2:  LDR             R1, =(SL_IID_PLAY_ptr - 0x2481AA)
2481A4:  LDR             R0, [R5,#0xC]
2481A6:  ADD             R1, PC; SL_IID_PLAY_ptr
2481A8:  LDR             R1, [R1]; SL_IID_PLAY
2481AA:  LDR             R2, [R0]
2481AC:  LDR             R1, [R1]
2481AE:  LDR             R3, [R2,#0xC]
2481B0:  ADD             R2, SP, #0x10+var_C
2481B2:  BLX             R3
2481B4:  CBZ             R0, loc_2481D0
2481B6:  LDR             R1, =(LogLevel_ptr - 0x2481BC)
2481B8:  ADD             R1, PC; LogLevel_ptr
2481BA:  LDR             R1, [R1]; LogLevel
2481BC:  LDR             R1, [R1]
2481BE:  CBZ             R1, loc_2481D0
2481C0:  SUBS            R0, #1
2481C2:  CMP             R0, #0xF
2481C4:  BHI             loc_248200
2481C6:  LDR             R1, =(off_661DF0 - 0x2481CC); "Preconditions violated" ...
2481C8:  ADD             R1, PC; off_661DF0
2481CA:  LDR.W           R1, [R1,R0,LSL#2]
2481CE:  B               loc_248204
2481D0:  CBNZ            R0, loc_248218
2481D2:  LDR             R0, [SP,#0x10+var_C]
2481D4:  UXTB            R3, R4
2481D6:  MOVS            R1, #3
2481D8:  CMP             R3, #1
2481DA:  LDR             R2, [R0]
2481DC:  LDR             R2, [R2]
2481DE:  IT EQ
2481E0:  MOVEQ           R1, #2
2481E2:  BLX             R2
2481E4:  CBZ             R0, loc_248236
2481E6:  LDR             R1, =(LogLevel_ptr - 0x2481EC)
2481E8:  ADD             R1, PC; LogLevel_ptr
2481EA:  LDR             R1, [R1]; LogLevel
2481EC:  LDR             R1, [R1]
2481EE:  CBZ             R1, loc_248236
2481F0:  SUBS            R0, #1
2481F2:  CMP             R0, #0xF
2481F4:  BHI             loc_24823C
2481F6:  LDR             R1, =(off_661DF0 - 0x2481FC); "Preconditions violated" ...
2481F8:  ADD             R1, PC; off_661DF0
2481FA:  LDR.W           R1, [R1,R0,LSL#2]
2481FE:  B               loc_248240
248200:  LDR             R1, =(aUnknownErrorCo - 0x248206); "Unknown error code"
248202:  ADD             R1, PC; "Unknown error code"
248204:  LDR             R0, =(aEe - 0x24820E); "(EE)"
248206:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x248210); "%s: %s\n"
248208:  LDR             R3, =(aBufferqueueGet - 0x248212); "bufferQueue->GetInterface"
24820A:  ADD             R0, PC; "(EE)"
24820C:  ADD             R2, PC; "%s: %s\n"
24820E:  ADD             R3, PC; "bufferQueue->GetInterface"
248210:  STR             R1, [SP,#0x10+var_10]
248212:  ADR             R1, aAlcOpenslPause; "alc_opensl_pause_player"
248214:  BLX             j_al_print
248218:  LDR             R0, [R5,#0xC]
24821A:  CMP             R0, #0
24821C:  ITTT NE
24821E:  LDRNE           R1, [R0]
248220:  LDRNE           R1, [R1,#0x18]
248222:  BLXNE           R1
248224:  LDR             R0, [R5,#0x10]; p
248226:  MOVS            R4, #0
248228:  STR             R4, [R5,#0xC]
24822A:  BLX             free
24822E:  STRD.W          R4, R4, [R5,#0x10]
248232:  ADD             SP, SP, #8
248234:  POP             {R4,R5,R7,PC}
248236:  CMP             R0, #0
248238:  BNE             loc_248218
24823A:  B               loc_248232
24823C:  LDR             R1, =(aUnknownErrorCo - 0x248242); "Unknown error code"
24823E:  ADD             R1, PC; "Unknown error code"
248240:  LDR             R0, =(aEe - 0x24824A); "(EE)"
248242:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x24824C); "%s: %s\n"
248244:  LDR             R3, =(aPlayerSetplays - 0x24824E); "player->SetPlayState"
248246:  ADD             R0, PC; "(EE)"
248248:  ADD             R2, PC; "%s: %s\n"
24824A:  ADD             R3, PC; "player->SetPlayState"
24824C:  B               loc_248210
