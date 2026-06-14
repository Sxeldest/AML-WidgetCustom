; =========================================================
; Game Engine Function: sub_FB7D8
; Address            : 0xFB7D8 - 0xFB902
; =========================================================

FB7D8:  PUSH            {R7,LR}
FB7DA:  MOV             R7, SP
FB7DC:  LDR             R1, =(aAxl - 0xFB7E6); "AXL" ...
FB7DE:  MOVS            R0, #4; prio
FB7E0:  LDR             R2, =(aInitializingIm - 0xFB7E8); "Initializing ImageList.." ...
FB7E2:  ADD             R1, PC; "AXL"
FB7E4:  ADD             R2, PC; "Initializing ImageList.."
FB7E6:  BLX             __android_log_print
FB7EA:  LDR             R0, =(off_23494C - 0xFB7F8)
FB7EC:  MOV             R1, #0x792DA4
FB7F4:  ADD             R0, PC; off_23494C
FB7F6:  LDR             R0, [R0]; dword_23DF24
FB7F8:  LDR             R2, [R0]
FB7FA:  ADDS            R3, R2, R1
FB7FC:  MOVS            R2, #0
FB7FE:  STRB            R2, [R3,#4]
FB800:  LDR             R3, [R0]
FB802:  STR             R2, [R3,R1]
FB804:  LDR             R3, [R0]
FB806:  ADD             R3, R1
FB808:  STR             R2, [R3,#0x30]
FB80A:  LDR             R3, [R0]
FB80C:  ADD             R3, R1
FB80E:  STR             R2, [R3,#0x60]
FB810:  LDR             R3, [R0]
FB812:  ADD             R3, R1
FB814:  STRB.W          R2, [R3,#0x34]
FB818:  LDR             R3, [R0]
FB81A:  ADD             R3, R1
FB81C:  STR.W           R2, [R3,#0x90]
FB820:  LDR             R3, [R0]
FB822:  ADD             R3, R1
FB824:  STRB.W          R2, [R3,#0x64]
FB828:  LDR             R3, [R0]
FB82A:  ADD             R3, R1
FB82C:  STR.W           R2, [R3,#0xC0]
FB830:  LDR             R3, [R0]
FB832:  ADD             R3, R1
FB834:  STRB.W          R2, [R3,#0x94]
FB838:  LDR             R3, [R0]
FB83A:  ADD             R3, R1
FB83C:  STR.W           R2, [R3,#0xF0]
FB840:  LDR             R3, [R0]
FB842:  ADD             R3, R1
FB844:  STRB.W          R2, [R3,#0xC4]
FB848:  LDR             R3, [R0]
FB84A:  ADD             R3, R1
FB84C:  STR.W           R2, [R3,#0x120]
FB850:  LDR             R3, [R0]
FB852:  ADD             R3, R1
FB854:  STRB.W          R2, [R3,#0xF4]
FB858:  LDR             R3, [R0]
FB85A:  ADD             R3, R1
FB85C:  STR.W           R2, [R3,#0x150]
FB860:  LDR             R3, [R0]
FB862:  LDR             R0, =(aTexdbSampcolIm - 0xFB86A); "TEXDB\\SAMPCOL.IMG" ...
FB864:  ADD             R1, R3
FB866:  ADD             R0, PC; "TEXDB\\SAMPCOL.IMG"
FB868:  STRB.W          R2, [R1,#0x124]
FB86C:  MOVS            R1, #1
FB86E:  BL              sub_12731C
FB872:  LDR             R0, =(aTexdbGta3Img - 0xFB87A); "TEXDB\\GTA3.IMG" ...
FB874:  MOVS            R1, #1
FB876:  ADD             R0, PC; "TEXDB\\GTA3.IMG"
FB878:  BL              sub_12731C
FB87C:  LDR             R0, =(aTexdbGtaIntImg - 0xFB884); "TEXDB\\GTA_INT.IMG" ...
FB87E:  MOVS            R1, #1
FB880:  ADD             R0, PC; "TEXDB\\GTA_INT.IMG"
FB882:  BL              sub_12731C
FB886:  LDR             R0, =(aTexdbSampImg - 0xFB88E); "TEXDB\\SAMP.IMG" ...
FB888:  MOVS            R1, #1
FB88A:  ADD             R0, PC; "TEXDB\\SAMP.IMG"
FB88C:  BL              sub_12731C
FB890:  LDR             R0, =(aTexdbVehs1Img - 0xFB898); "TEXDB\\VEHS_1.IMG" ...
FB892:  MOVS            R1, #1
FB894:  ADD             R0, PC; "TEXDB\\VEHS_1.IMG"
FB896:  BL              sub_12731C
FB89A:  LDR             R0, =(aTexdbVehs2Img - 0xFB8A2); "TEXDB\\VEHS_2.IMG" ...
FB89C:  MOVS            R1, #1
FB89E:  ADD             R0, PC; "TEXDB\\VEHS_2.IMG"
FB8A0:  BL              sub_12731C
FB8A4:  LDR             R0, =(aTexdbVehs3Img - 0xFB8AC); "TEXDB\\VEHS_3.IMG" ...
FB8A6:  MOVS            R1, #1
FB8A8:  ADD             R0, PC; "TEXDB\\VEHS_3.IMG"
FB8AA:  BL              sub_12731C
FB8AE:  LDR             R0, =(aTexdbVehs4Img - 0xFB8B6); "TEXDB\\VEHS_4.IMG" ...
FB8B0:  MOVS            R1, #1
FB8B2:  ADD             R0, PC; "TEXDB\\VEHS_4.IMG"
FB8B4:  BL              sub_12731C
FB8B8:  LDR             R0, =(aTexdbVehs5Img - 0xFB8C0); "TEXDB\\VEHS_5.IMG" ...
FB8BA:  MOVS            R1, #1
FB8BC:  ADD             R0, PC; "TEXDB\\VEHS_5.IMG"
FB8BE:  BL              sub_12731C
FB8C2:  LDR             R0, =(aTexdbPedsImg - 0xFB8CA); "TEXDB\\PEDS.IMG" ...
FB8C4:  MOVS            R1, #1
FB8C6:  ADD             R0, PC; "TEXDB\\PEDS.IMG"
FB8C8:  BL              sub_12731C
FB8CC:  LDR             R0, =(aTexdbAccessori - 0xFB8D4); "TEXDB\\ACCESSORIES.IMG" ...
FB8CE:  MOVS            R1, #1
FB8D0:  ADD             R0, PC; "TEXDB\\ACCESSORIES.IMG"
FB8D2:  BL              sub_12731C
FB8D6:  LDR             R0, =(aTexdbTuningImg - 0xFB8DE); "TEXDB\\TUNING.IMG" ...
FB8D8:  MOVS            R1, #1
FB8DA:  ADD             R0, PC; "TEXDB\\TUNING.IMG"
FB8DC:  BL              sub_12731C
FB8E0:  LDR             R0, =(aTexdbPubgImg - 0xFB8E8); "TEXDB\\PUBG.IMG" ...
FB8E2:  MOVS            R1, #1
FB8E4:  ADD             R0, PC; "TEXDB\\PUBG.IMG"
FB8E6:  BL              sub_12731C
FB8EA:  LDR             R0, =(aTexdbPropsImg - 0xFB8F2); "TEXDB\\PROPS.IMG" ...
FB8EC:  MOVS            R1, #1
FB8EE:  ADD             R0, PC; "TEXDB\\PROPS.IMG"
FB8F0:  BL              sub_12731C
FB8F4:  LDR             R0, =(aTexdbCustomInt - 0xFB8FC); "TEXDB\\CUSTOM_INT.IMG" ...
FB8F6:  MOVS            R1, #1
FB8F8:  ADD             R0, PC; "TEXDB\\CUSTOM_INT.IMG"
FB8FA:  POP.W           {R7,LR}
FB8FE:  B.W             sub_12731C
