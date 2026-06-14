; =========================================================
; Game Engine Function: sub_144876
; Address            : 0x144876 - 0x144970
; =========================================================

144876:  PUSH            {R4-R7,LR}
144878:  ADD             R7, SP, #0xC
14487A:  PUSH.W          {R8}
14487E:  SUB             SP, SP, #0x1C8
144880:  CMP.W           R1, #0x7D0
144884:  BHI             loc_144968
144886:  MOV             R4, R0
144888:  LDR.W           R0, [R0,#0x218]
14488C:  CMP             R0, #5
14488E:  BNE             loc_144968
144890:  LSRS            R0, R1, #4
144892:  MOV             R5, R1
144894:  CMP             R0, #0x7C ; '|'
144896:  BHI             loc_144968
144898:  LDR.W           R0, [R4,#0x3B0]
14489C:  MOV             R1, R5
14489E:  MOV             R8, R2
1448A0:  LDR             R6, [R0,#4]
1448A2:  MOV             R0, R6
1448A4:  BL              sub_F2396
1448A8:  CMP             R0, #0
1448AA:  BEQ             loc_144968
1448AC:  LDR.W           R6, [R6,R5,LSL#2]
1448B0:  CMP             R6, #0
1448B2:  BEQ             loc_144968
1448B4:  ADD             R1, SP, #0x1D8+var_58
1448B6:  MOV             R0, R6
1448B8:  BL              sub_F8910
1448BC:  ADD             R1, SP, #0x1D8+var_68
1448BE:  MOV             R0, R6
1448C0:  BL              sub_F8994
1448C4:  ADD             R1, SP, #0x1D8+var_78
1448C6:  MOV             R0, R6
1448C8:  BL              sub_F89E0
1448CC:  ADD             R2, SP, #0x1D8+var_BC
1448CE:  LDR             R1, [SP,#0x1D8+var_40]
1448D0:  ADD.W           R0, R2, #0xF
1448D4:  LDR             R6, [SP,#0x1D8+var_20]
1448D6:  VLDR            D17, [SP,#0x1D8+var_48]
1448DA:  STR             R1, [R0,#8]
1448DC:  ADD.W           R1, R2, #0x1B
1448E0:  LDR             R3, [SP,#0x1D8+var_60]
1448E2:  STR             R6, [R1,#8]
1448E4:  ADD.W           R6, R2, #0x27 ; '''
1448E8:  VLDR            D18, [SP,#0x1D8+var_28]
1448EC:  VLDR            D19, [SP,#0x1D8+var_68]
1448F0:  STR             R3, [R6,#8]
1448F2:  ADD.W           R3, R2, #0x33 ; '3'
1448F6:  VLDR            D20, [SP,#0x1D8+var_78]
1448FA:  ADDS            R2, #3
1448FC:  VLDR            D16, [SP,#0x1D8+var_58]
144900:  VST1.8          {D17}, [R0]
144904:  ADD             R0, SP, #0x1D8+var_1D0
144906:  LDR.W           R12, [SP,#0x1D8+var_50]
14490A:  LDR.W           LR, [SP,#0x1D8+var_70]
14490E:  STR.W           LR, [R3,#8]
144912:  VST1.8          {D16}, [R2]
144916:  VST1.8          {D18}, [R1]
14491A:  VST1.8          {D19}, [R6]
14491E:  VST1.8          {D20}, [R3]
144922:  STR.W           R12, [SP,#0x1D8+var_B1]
144926:  STRB.W          R8, [SP,#0x1D8+var_BA]
14492A:  STRH.W          R5, [SP,#0x1D8+var_BC]
14492E:  BL              sub_17D4A8
144932:  MOVS            R1, #0xD1
144934:  STRB.W          R1, [R7,#var_11]
144938:  SUB.W           R1, R7, #-var_11
14493C:  MOVS            R2, #8
14493E:  MOVS            R3, #1
144940:  BL              sub_17D628
144944:  ADD             R0, SP, #0x1D8+var_1D0
144946:  ADD             R1, SP, #0x1D8+var_BC
144948:  MOVS            R2, #0x43 ; 'C'
14494A:  BL              sub_17D566
14494E:  LDR.W           R0, [R4,#0x210]
144952:  LDR             R1, [R0]
144954:  LDR             R6, [R1,#0x20]
144956:  MOVS            R1, #1
144958:  MOVS            R2, #1
14495A:  STR             R1, [SP,#0x1D8+var_1D8]
14495C:  ADD             R1, SP, #0x1D8+var_1D0
14495E:  MOVS            R3, #7
144960:  BLX             R6
144962:  ADD             R0, SP, #0x1D8+var_1D0
144964:  BL              sub_17D542
144968:  ADD             SP, SP, #0x1C8
14496A:  POP.W           {R8}
14496E:  POP             {R4-R7,PC}
