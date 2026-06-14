; =========================================================
; Game Engine Function: sub_63948
; Address            : 0x63948 - 0x63996
; =========================================================

63948:  PUSH            {R4,R6,R7,LR}
6394A:  ADD             R7, SP, #8
6394C:  LDR             R1, =(off_1A3A7C - 0x63952)
6394E:  ADD             R1, PC; off_1A3A7C
63950:  LDR             R1, [R1]
63952:  BLX             R1
63954:  LDR             R1, =(off_114B70 - 0x6395A); "127.0.0.1" ...
63956:  ADD             R1, PC; off_114B70
63958:  LDR             R0, [R1]; "127.0.0.1"
6395A:  LDRB            R2, [R0]; "127.0.0.1"
6395C:  SUBS            R2, #0x33 ; '3'
6395E:  CMN.W           R2, #4
63962:  BHI             loc_63986
63964:  LDR             R0, =(off_114B74 - 0x6396C)
63966:  LDR             R4, [R1]; "127.0.0.1"
63968:  ADD             R0, PC; off_114B74
6396A:  LDR             R0, [R0]; unk_1ABEC5 ; int
6396C:  MOV             R1, R4; name
6396E:  BL              sub_8775C
63972:  CBNZ            R0, loc_63986
63974:  LDR             R1, =(aSampOrig - 0x63980); "SAMP_ORIG" ...
63976:  MOVS            R0, #4; prio
63978:  LDR             R2, =(aFailedToConver - 0x63982); "Failed to convert host %s to IP" ...
6397A:  MOV             R3, R4
6397C:  ADD             R1, PC; "SAMP_ORIG"
6397E:  ADD             R2, PC; "Failed to convert host %s to IP"
63980:  BLX             __android_log_print
63984:  MOV             R0, R4
63986:  LDR             R1, =(off_114B78 - 0x6398C)
63988:  ADD             R1, PC; off_114B78
6398A:  LDR             R1, [R1]; dword_116CE0
6398C:  LDR             R1, [R1]
6398E:  POP.W           {R4,R6,R7,LR}
63992:  B.W             sub_7EEFC
