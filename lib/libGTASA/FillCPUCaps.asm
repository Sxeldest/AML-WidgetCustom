; =========================================================
; Game Engine Function: FillCPUCaps
; Address            : 0x261314 - 0x261356
; =========================================================

261314:  LDR             R0, =(LogLevel_ptr - 0x26131A)
261316:  ADD             R0, PC; LogLevel_ptr
261318:  LDR             R0, [R0]; LogLevel
26131A:  LDR             R0, [R0]
26131C:  CMP             R0, #3
26131E:  BCC             loc_26134A
261320:  PUSH            {R7,LR}
261322:  MOV             R7, SP
261324:  SUB             SP, SP, #8
261326:  LDR             R0, =(aIi - 0x261330); "(II)"
261328:  LDR             R1, =(aFillcpucaps_0 - 0x261334); "FillCPUCaps"
26132A:  LDR             R2, =(aGotCapsSSS - 0x26133A); "Got caps:%s%s%s\n"
26132C:  ADD             R0, PC; "(II)"
26132E:  LDR             R3, =(byte_61CD7E - 0x26133C)
261330:  ADD             R1, PC; "FillCPUCaps"
261332:  LDR.W           R12, =(aNone_3 - 0x26133E); " -none-"
261336:  ADD             R2, PC; "Got caps:%s%s%s\n"
261338:  ADD             R3, PC; byte_61CD7E
26133A:  ADD             R12, PC; " -none-"
26133C:  STRD.W          R3, R12, [SP,#0x10+var_10]
261340:  BLX             j_al_print
261344:  ADD             SP, SP, #8
261346:  POP.W           {R7,LR}
26134A:  LDR             R0, =(CPUCapFlags_ptr - 0x261352)
26134C:  MOVS            R1, #0
26134E:  ADD             R0, PC; CPUCapFlags_ptr
261350:  LDR             R0, [R0]; CPUCapFlags
261352:  STR             R1, [R0]
261354:  BX              LR
