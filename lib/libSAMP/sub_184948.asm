; =========================================================
; Game Engine Function: sub_184948
; Address            : 0x184948 - 0x184AD0
; =========================================================

184948:  PUSH            {R4-R7,LR}
18494A:  ADD             R7, SP, #0xC
18494C:  PUSH.W          {R8-R11}
184950:  SUB             SP, SP, #0xAC
184952:  MOV             R11, R0
184954:  LDR             R0, =(unk_BE94C - 0x184960)
184956:  ADD.W           R9, SP, #0xC8+var_2C
18495A:  MOV             R8, R1
18495C:  ADD             R0, PC; unk_BE94C
18495E:  ADD.W           R6, R9, #4
184962:  MOVS            R5, #0
184964:  MOV             R10, R0
184966:  MOVS            R0, #0
184968:  MOV             R4, R0
18496A:  LDRH.W          R0, [R10,R0,LSL#1]
18496E:  MOV             R1, R9
184970:  STR             R0, [SP,#0xC8+var_2C]
184972:  MOV             R0, R11
184974:  MOV             R2, R9
184976:  STRD.W          R5, R5, [R6]
18497A:  STR             R5, [R6,#8]
18497C:  BL              sub_184AD4
184980:  LDR             R0, [SP,#0xC8+var_2C]
184982:  CBNZ            R0, loc_18499C
184984:  MOVS            R1, #0
184986:  MOV             R0, R1
184988:  CMP             R1, #3
18498A:  BEQ             loc_184996
18498C:  LDR.W           R2, [R6,R0,LSL#2]
184990:  ADDS            R1, R0, #1
184992:  CMP             R2, #0
184994:  BEQ             loc_184986
184996:  CMP             R0, #3
184998:  BCS.W           loc_184AC6
18499C:  ADDS            R0, R4, #2
18499E:  CMP             R4, #0xFD
1849A0:  BLS             loc_184968
1849A2:  VLD1.32         {D16-D17}, [R11]
1849A6:  ADD             R0, SP, #0xC8+var_40
1849A8:  MOVS            R1, #0
1849AA:  VST1.64         {D16-D17}, [R0]
1849AE:  LDR.W           R2, [R0,R1,LSL#2]
1849B2:  SUBS            R3, R2, #1
1849B4:  STR.W           R3, [R0,R1,LSL#2]
1849B8:  CMP             R3, R2
1849BA:  BCC             loc_1849C4
1849BC:  ADDS            R2, R1, #1
1849BE:  CMP             R1, #3
1849C0:  MOV             R1, R2
1849C2:  BNE             loc_1849AE
1849C4:  VLD1.64         {D16-D17}, [R0]
1849C8:  ADD             R0, SP, #0xC8+var_50
1849CA:  MOVS            R2, #0
1849CC:  VST1.64         {D16-D17}, [R0]
1849D0:  LDRB.W          R1, [SP,#0xC8+var_50]
1849D4:  LSLS            R1, R1, #0x1F
1849D6:  MOV.W           R1, #0
1849DA:  BNE             loc_184A00
1849DC:  MOVS            R1, #0
1849DE:  MOVS            R6, #0
1849E0:  MOVS            R3, #3
1849E2:  LDR.W           R5, [R0,R3,LSL#2]
1849E6:  ORR.W           R6, R6, R5,LSR#1
1849EA:  STR.W           R6, [R0,R3,LSL#2]
1849EE:  SUBS            R3, #1
1849F0:  LSLS            R6, R5, #0x1F
1849F2:  ADDS            R5, R3, #1
1849F4:  BNE             loc_1849E2
1849F6:  LDRB.W          R3, [SP,#0xC8+var_50]
1849FA:  ADDS            R1, #1
1849FC:  LSLS            R3, R3, #0x1F
1849FE:  BEQ             loc_1849DE
184A00:  VLD1.32         {D16-D17}, [R11]
184A04:  VMOV.I32        Q9, #0
184A08:  MOVS            R0, #1
184A0A:  CMP.W           R8, #0
184A0E:  STRD.W          R2, R2, [SP,#0xC8+var_5C]
184A12:  STR             R2, [SP,#0xC8+var_54]
184A14:  ADD             R2, SP, #0xC8+var_A0
184A16:  VST1.64         {D16-D17}, [R2]!
184A1A:  STR             R0, [SP,#0xC8+s2]
184A1C:  VST1.64         {D18-D19}, [R2]
184A20:  BEQ             loc_184AC8
184A22:  ADD             R6, SP, #0xC8+var_B0
184A24:  ADD.W           R10, SP, #0xC8+var_40
184A28:  ADD             R4, SP, #0xC8+var_C0
184A2A:  ADD.W           R9, SP, #0xC8+var_80
184A2E:  ADDS            R0, R1, #1
184A30:  STR             R0, [SP,#0xC8+var_C4]
184A32:  MOVS            R5, #0
184A34:  BL              sub_187150
184A38:  STR.W           R0, [R6,R5,LSL#2]
184A3C:  ADDS            R5, #1
184A3E:  CMP             R5, #4
184A40:  BNE             loc_184A34
184A42:  MOV             R0, R6
184A44:  MOV             R1, R10
184A46:  MOV             R2, R6
184A48:  BL              sub_184AD4
184A4C:  ADD             R1, SP, #0xC8+var_50
184A4E:  MOV             R0, R6
184A50:  MOV             R2, R11
184A52:  MOV             R3, R4
184A54:  BL              sub_184C5E
184A58:  ADD             R1, SP, #0xC8+s2; s2
184A5A:  MOV             R0, R4; s1
184A5C:  MOVS            R2, #0x10; n
184A5E:  BLX             memcmp
184A62:  CBZ             R0, loc_184ABC
184A64:  MOV             R0, R4; s1
184A66:  MOV             R1, R10; s2
184A68:  MOVS            R2, #0x10; n
184A6A:  BLX             memcmp
184A6E:  CBZ             R0, loc_184ABC
184A70:  LDR             R5, [SP,#0xC8+var_C4]
184A72:  SUBS            R5, #1
184A74:  CMP             R5, #2
184A76:  BCC             loc_184AB0
184A78:  MOV             R0, R4; s1
184A7A:  MOV             R1, R10; s2
184A7C:  MOVS            R2, #0x10; n
184A7E:  BLX             memcmp
184A82:  CBZ             R0, loc_184AB0
184A84:  MOV             R0, R4
184A86:  MOV             R1, R4
184A88:  MOV             R2, R9
184A8A:  BL              sub_184D2E
184A8E:  ADD             R1, SP, #0xC8+var_A0
184A90:  MOV             R0, R9
184A92:  MOV             R2, R9
184A94:  BL              sub_184D9C
184A98:  VLD1.64         {D16-D17}, [R9]
184A9C:  ADD             R1, SP, #0xC8+s2; s2
184A9E:  MOV             R0, R4; s1
184AA0:  MOVS            R2, #0x10; n
184AA2:  VST1.64         {D16-D17}, [R4]
184AA6:  BLX             memcmp
184AAA:  CMP             R0, #0
184AAC:  BNE             loc_184A72
184AAE:  B               loc_184AC6
184AB0:  MOV             R0, R4; s1
184AB2:  MOV             R1, R10; s2
184AB4:  MOVS            R2, #0x10; n
184AB6:  BLX             memcmp
184ABA:  CBNZ            R0, loc_184AC6
184ABC:  SUBS.W          R8, R8, #1
184AC0:  BNE             loc_184A32
184AC2:  MOVS            R0, #1
184AC4:  B               loc_184AC8
184AC6:  MOVS            R0, #0
184AC8:  ADD             SP, SP, #0xAC
184ACA:  POP.W           {R8-R11}
184ACE:  POP             {R4-R7,PC}
