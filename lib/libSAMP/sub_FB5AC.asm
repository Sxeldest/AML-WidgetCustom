; =========================================================
; Game Engine Function: sub_FB5AC
; Address            : 0xFB5AC - 0xFB6FA
; =========================================================

FB5AC:  PUSH            {R4-R7,LR}
FB5AE:  ADD             R7, SP, #0xC
FB5B0:  PUSH.W          {R8-R11}
FB5B4:  SUB             SP, SP, #0x104
FB5B6:  MOV             R5, SP
FB5B8:  MOV             R9, R1
FB5BA:  MOV             R10, R0
FB5BC:  MOV             R0, R5; int
FB5BE:  MOVS            R1, #0xFF; n
FB5C0:  MOV             R8, R3
FB5C2:  MOV             R4, R2
FB5C4:  STR             R2, [SP,#0x120+var_20]
FB5C6:  BLX             sub_22178C
FB5CA:  BL              loc_10DF04
FB5CE:  LDR             R6, =(off_2473F0 - 0xFB5D4)
FB5D0:  ADD             R6, PC; off_2473F0
FB5D2:  CBZ             R0, loc_FB5E4
FB5D4:  LDR             R1, =(aDataWaterDat - 0xFB5DE); "DATA\\water.dat" ...
FB5D6:  MOV             R0, R4; s1
FB5D8:  MOVS            R2, #0xE; n
FB5DA:  ADD             R1, PC; "DATA\\water.dat"
FB5DC:  BLX             strncmp
FB5E0:  CMP             R0, #0
FB5E2:  BEQ             loc_FB694
FB5E4:  LDR             R1, =(aDataScriptMain - 0xFB5EE); "data\\script\\mainV1.scm" ...
FB5E6:  MOV             R0, R4; s1
FB5E8:  MOVS            R2, #0x16; n
FB5EA:  ADD             R1, PC; "data\\script\\mainV1.scm"
FB5EC:  BLX             strncmp
FB5F0:  CMP             R0, #0
FB5F2:  BEQ             loc_FB680
FB5F4:  LDR             R1, =(aDataScriptScri - 0xFB5FE); "DATA\\SCRIPT\\SCRIPTV1.IMG" ...
FB5F6:  MOV             R0, R4; s1
FB5F8:  MOVS            R2, #0x18; n
FB5FA:  ADD             R1, PC; "DATA\\SCRIPT\\SCRIPTV1.IMG"
FB5FC:  BLX             strncmp
FB600:  CMP             R0, #0
FB602:  BEQ             loc_FB6A2
FB604:  LDR             R1, =(aDataPathsTrack - 0xFB60E); "data\\paths\\tracks2.dat" ...
FB606:  MOV             R0, R4; s1
FB608:  MOVS            R2, #0x15; n
FB60A:  ADD             R1, PC; "data\\paths\\tracks2.dat"
FB60C:  BLX             strncmp
FB610:  CMP             R0, #0
FB612:  BEQ             loc_FB6B6
FB614:  LDR             R1, =(aDataPathsTrack_0 - 0xFB61E); "data\\paths\\tracks4.dat" ...
FB616:  MOV             R0, R4; s1
FB618:  MOVS            R2, #0x15; n
FB61A:  ADD             R1, PC; "data\\paths\\tracks4.dat"
FB61C:  BLX             strncmp
FB620:  CMP             R0, #0
FB622:  BEQ             loc_FB6CA
FB624:  LDR             R1, =(aData - 0xFB62C); "data\\" ...
FB626:  MOV             R0, R4; haystack
FB628:  ADD             R1, PC; "data\\"
FB62A:  BLX             strcasestr
FB62E:  CMP             R0, R4
FB630:  BEQ             loc_FB640
FB632:  LDR             R1, =(aData_0 - 0xFB63A); "data/" ...
FB634:  MOV             R0, R4; haystack
FB636:  ADD             R1, PC; "data/"
FB638:  BLX             strcasestr
FB63C:  CMP             R0, R4
FB63E:  BNE             loc_FB6E6
FB640:  LDR             R2, =(aSampS - 0xFB64C); "SAMP%s" ...
FB642:  MOV             R11, SP
FB644:  ADDS            R3, R4, #4
FB646:  MOV             R0, R11
FB648:  ADD             R2, PC; "SAMP%s"
FB64A:  BL              sub_FB760
FB64E:  LDR             R1, =(aAxl - 0xFB65A); "AXL" ...
FB650:  MOVS            R0, #4; prio
FB652:  LDR             R2, =(aLoadingS_0 - 0xFB65C); "Loading %s.." ...
FB654:  MOV             R3, R4
FB656:  ADD             R1, PC; "AXL"
FB658:  ADD             R2, PC; "Loading %s.."
FB65A:  BLX             __android_log_print
FB65E:  LDR             R5, [R6]
FB660:  MOV             R0, R10
FB662:  MOV             R1, R9
FB664:  MOV             R2, R11
FB666:  MOV             R3, R8
FB668:  BLX             R5
FB66A:  CBNZ            R0, loc_FB6E6
FB66C:  LDR             R1, =(aAxl - 0xFB678); "AXL" ...
FB66E:  MOV             R3, SP
FB670:  LDR             R2, =(aRedirectToS - 0xFB67A); "\tRedirect to %s" ...
FB672:  MOVS            R0, #4; prio
FB674:  ADD             R1, PC; "AXL"
FB676:  ADD             R2, PC; "\tRedirect to %s"
FB678:  BLX             __android_log_print
FB67C:  MOVS            R0, #0
FB67E:  B               loc_FB6F2
FB680:  LDR             R1, =(aAxl - 0xFB68A); "AXL" ...
FB682:  MOVS            R0, #4; prio
FB684:  LDR             R2, =(aLoadingMainv1S - 0xFB68C); "Loading mainV1.scm.." ...
FB686:  ADD             R1, PC; "AXL"
FB688:  ADD             R2, PC; "Loading mainV1.scm.."
FB68A:  BLX             __android_log_print
FB68E:  LDR             R2, =(aSampMainScm - 0xFB694); "SAMP\\main.scm" ...
FB690:  ADD             R2, PC; "SAMP\\main.scm"
FB692:  B               loc_FB6DC
FB694:  BL              loc_10DF04
FB698:  ADD             R1, SP, #0x120+var_20
FB69A:  BL              sub_10DFD8
FB69E:  LDR             R4, [SP,#0x120+var_20]
FB6A0:  B               loc_FB6E6
FB6A2:  LDR             R1, =(aAxl - 0xFB6AC); "AXL" ...
FB6A4:  MOVS            R0, #4; prio
FB6A6:  LDR             R2, =(aLoadingScriptv - 0xFB6AE); "Loading scriptV1.img.." ...
FB6A8:  ADD             R1, PC; "AXL"
FB6AA:  ADD             R2, PC; "Loading scriptV1.img.."
FB6AC:  BLX             __android_log_print
FB6B0:  LDR             R2, =(aSampScriptImg - 0xFB6B6); "SAMP\\script.img" ...
FB6B2:  ADD             R2, PC; "SAMP\\script.img"
FB6B4:  B               loc_FB6DC
FB6B6:  LDR             R1, =(aAxl - 0xFB6C0); "AXL" ...
FB6B8:  MOVS            R0, #4; prio
FB6BA:  LDR             R2, =(aLoadingTracks2 - 0xFB6C2); "Loading tracks2.dat..." ...
FB6BC:  ADD             R1, PC; "AXL"
FB6BE:  ADD             R2, PC; "Loading tracks2.dat..."
FB6C0:  BLX             __android_log_print
FB6C4:  LDR             R2, =(aSampTracks2Dat - 0xFB6CA); "SAMP\\tracks2.dat" ...
FB6C6:  ADD             R2, PC; "SAMP\\tracks2.dat"
FB6C8:  B               loc_FB6DC
FB6CA:  LDR             R1, =(aAxl - 0xFB6D4); "AXL" ...
FB6CC:  MOVS            R0, #4; prio
FB6CE:  LDR             R2, =(aLoadingTracks4 - 0xFB6D6); "Loading tracks4.dat..." ...
FB6D0:  ADD             R1, PC; "AXL"
FB6D2:  ADD             R2, PC; "Loading tracks4.dat..."
FB6D4:  BLX             __android_log_print
FB6D8:  LDR             R2, =(aSampTracks4Dat - 0xFB6DE); "SAMP\\tracks4.dat" ...
FB6DA:  ADD             R2, PC; "SAMP\\tracks4.dat"
FB6DC:  MOV             R0, R5
FB6DE:  BL              sub_FB760
FB6E2:  STR             R5, [SP,#0x120+var_20]
FB6E4:  MOV             R4, R5
FB6E6:  LDR             R6, [R6]
FB6E8:  MOV             R0, R10
FB6EA:  MOV             R1, R9
FB6EC:  MOV             R2, R4
FB6EE:  MOV             R3, R8
FB6F0:  BLX             R6
FB6F2:  ADD             SP, SP, #0x104
FB6F4:  POP.W           {R8-R11}
FB6F8:  POP             {R4-R7,PC}
