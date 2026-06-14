; =========================================================
; Game Engine Function: MOB_ConfigGetEnumByName
; Address            : 0x261660 - 0x2616B4
; =========================================================

261660:  PUSH            {R4-R7,LR}
261662:  ADD             R7, SP, #0xC
261664:  PUSH.W          {R8,R9,R11}
261668:  LDR             R6, =(aRoot - 0x261676); "root"
26166A:  CMP             R0, #0
26166C:  MOV             R8, R1
26166E:  MOV.W           R4, #0
261672:  ADD             R6, PC; "root"
261674:  IT NE
261676:  MOVNE           R6, R0
261678:  LDR             R0, =(g_ex_configPairs_ptr - 0x26167E)
26167A:  ADD             R0, PC; g_ex_configPairs_ptr
26167C:  LDR             R5, [R0]; g_ex_configPairs
26167E:  LDR             R0, =(g_ex_configPairs_ptr - 0x261684)
261680:  ADD             R0, PC; g_ex_configPairs_ptr
261682:  LDR.W           R9, [R0]; g_ex_configPairs
261686:  LDR.W           R0, [R5,R4,LSL#3]; char *
26168A:  MOV             R1, R6; char *
26168C:  BLX             strcmp
261690:  CBNZ            R0, loc_2616A0
261692:  ADD.W           R0, R9, R4,LSL#3
261696:  MOV             R1, R8; char *
261698:  LDR             R0, [R0,#4]; char *
26169A:  BLX             strcmp
26169E:  CBZ             R0, loc_2616AC
2616A0:  ADDS            R0, R4, #1
2616A2:  CMP             R4, #0x1D
2616A4:  MOV             R4, R0
2616A6:  BLT             loc_261686
2616A8:  MOV.W           R4, #0xFFFFFFFF
2616AC:  MOV             R0, R4
2616AE:  POP.W           {R8,R9,R11}
2616B2:  POP             {R4-R7,PC}
