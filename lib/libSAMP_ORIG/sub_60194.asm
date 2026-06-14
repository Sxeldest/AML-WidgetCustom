; =========================================================
; Game Engine Function: sub_60194
; Address            : 0x60194 - 0x602C8
; =========================================================

60194:  PUSH            {R4-R7,LR}
60196:  ADD             R7, SP, #0xC
60198:  PUSH.W          {R8-R11}
6019C:  SUB             SP, SP, #4
6019E:  VPUSH           {D8-D11}
601A2:  SUB             SP, SP, #8
601A4:  MOV             R8, R1
601A6:  LDR             R1, =(aSampOrig - 0x601B4); "SAMP_ORIG" ...
601A8:  MOV             R5, R2
601AA:  LDR             R2, =(aPlayS - 0x601B6); "Play: %s" ...
601AC:  MOV             R6, R0
601AE:  LDR             R0, =(__stack_chk_guard_ptr - 0x601B8)
601B0:  ADD             R1, PC; "SAMP_ORIG"
601B2:  ADD             R2, PC; "Play: %s"
601B4:  ADD             R0, PC; __stack_chk_guard_ptr
601B6:  MOV             R9, R3
601B8:  MOV             R3, R8
601BA:  LDR             R0, [R0]; __stack_chk_guard
601BC:  LDR             R0, [R0]
601BE:  STR             R0, [SP,#0x48+var_44]
601C0:  MOVS            R0, #4; prio
601C2:  BLX             __android_log_print
601C6:  LDRB            R4, [R6]
601C8:  CMP             R4, #0
601CA:  BEQ             loc_6029E
601CC:  LDR             R1, =(aSampOrig - 0x601DC); "SAMP_ORIG" ...
601CE:  MOVS            R0, #4; prio
601D0:  LDR             R2, =(aStopS - 0x601DE); "Stop: %s" ...
601D2:  VMOV            S22, R9
601D6:  LDR             R3, =(unk_117398 - 0x601E4)
601D8:  ADD             R1, PC; "SAMP_ORIG"
601DA:  ADD             R2, PC; "Stop: %s"
601DC:  LDR.W           R10, [R7,#arg_8]
601E0:  ADD             R3, PC; unk_117398
601E2:  VLDR            S16, [R7,#arg_4]
601E6:  VLDR            S18, [R7,#arg_0]
601EA:  VMOV            S20, R5
601EE:  BLX             __android_log_print
601F2:  LDRB            R0, [R6]
601F4:  LDR             R5, =(dword_117394 - 0x601FE)
601F6:  LDR             R2, =(byte_1174AD - 0x60200)
601F8:  LDR             R1, =(byte_1174AF - 0x60202)
601FA:  ADD             R5, PC; dword_117394
601FC:  ADD             R2, PC; byte_1174AD
601FE:  ADD             R1, PC; byte_1174AF
60200:  CBZ             R0, loc_6022C
60202:  LDR             R6, =(byte_1174AE - 0x60208)
60204:  ADD             R6, PC; byte_1174AE
60206:  LDRB            R0, [R6]
60208:  CBZ             R0, loc_6022C
6020A:  MOVS            R0, #0
6020C:  MOV             R9, R1
6020E:  STRB            R0, [R1]
60210:  MOVS            R0, #1
60212:  MOV             R11, R2
60214:  STRB            R0, [R2]
60216:  MOVS            R0, #0xC8; useconds
60218:  BLX             usleep
6021C:  LDRB            R0, [R6]
6021E:  CMP             R0, #0
60220:  BNE             loc_60216
60222:  LDR             R0, =(off_114AAC - 0x60228)
60224:  ADD             R0, PC; off_114AAC
60226:  LDR             R1, [R0]; off_1ABF08
60228:  LDR             R0, [R5]
6022A:  B               loc_6023A
6022C:  LDR             R0, [R5]
6022E:  MOV             R11, R2
60230:  MOV             R9, R1
60232:  CBZ             R0, loc_60242
60234:  LDR             R1, =(off_114A88 - 0x6023A)
60236:  ADD             R1, PC; off_114A88
60238:  LDR             R1, [R1]; off_1ABEE8
6023A:  LDR             R1, [R1]
6023C:  BLX             R1
6023E:  MOVS            R0, #0
60240:  STR             R0, [R5]
60242:  LDR             R5, =(unk_117398 - 0x6024C)
60244:  MOVW            R1, #0x101; n
60248:  ADD             R5, PC; unk_117398
6024A:  MOV             R0, R5; int
6024C:  BLX             sub_10967C
60250:  MOV             R0, R5; dest
60252:  MOV             R1, R8; src
60254:  MOV.W           R2, #0x100; n
60258:  BLX             strncpy
6025C:  LDR             R0, =(unk_1174A0 - 0x60266)
6025E:  LDR             R1, =(unk_11749C - 0x6026A)
60260:  LDR             R3, =(unk_1174A4 - 0x6026E)
60262:  ADD             R0, PC; unk_1174A0
60264:  LDR             R5, =(unk_1174A8 - 0x60272)
60266:  ADD             R1, PC; unk_11749C
60268:  LDR             R6, =(byte_1174AC - 0x6027A)
6026A:  ADD             R3, PC; unk_1174A4
6026C:  LDR             R2, =(sub_60018+1 - 0x60282)
6026E:  ADD             R5, PC; unk_1174A8
60270:  VSTR            S22, [R0]
60274:  MOVS            R0, #0
60276:  ADD             R6, PC; byte_1174AC
60278:  STRB.W          R0, [R11]
6027C:  MOVS            R0, #1
6027E:  ADD             R2, PC; sub_60018 ; start_routine
60280:  VSTR            S20, [R1]
60284:  MOVS            R1, #0; attr
60286:  VSTR            S18, [R3]
6028A:  MOVS            R3, #0; arg
6028C:  STRB.W          R0, [R9]
60290:  MOV             R0, SP; newthread
60292:  VSTR            S16, [R5]
60296:  STRB.W          R10, [R6]
6029A:  BLX             pthread_create
6029E:  CMP             R4, #0
602A0:  IT NE
602A2:  MOVNE           R4, #1
602A4:  LDR             R0, [SP,#0x48+var_44]
602A6:  LDR             R1, =(__stack_chk_guard_ptr - 0x602AC)
602A8:  ADD             R1, PC; __stack_chk_guard_ptr
602AA:  LDR             R1, [R1]; __stack_chk_guard
602AC:  LDR             R1, [R1]
602AE:  CMP             R1, R0
602B0:  ITTTT EQ
602B2:  MOVEQ           R0, R4
602B4:  ADDEQ           SP, SP, #8
602B6:  VPOPEQ          {D8-D11}
602BA:  ADDEQ           SP, SP, #4
602BC:  ITT EQ
602BE:  POPEQ.W         {R8-R11}
602C2:  POPEQ           {R4-R7,PC}
602C4:  BLX             __stack_chk_fail
