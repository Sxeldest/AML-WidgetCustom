; =========================================================
; Game Engine Function: sub_189914
; Address            : 0x189914 - 0x189A38
; =========================================================

189914:  PUSH            {R4-R7,LR}
189916:  ADD             R7, SP, #0xC
189918:  PUSH.W          {R8-R11}
18991C:  SUB             SP, SP, #0x124
18991E:  MOV             R4, R0
189920:  ADD             R0, SP, #0x140+var_134
189922:  STR             R3, [SP,#0x140+var_13C]
189924:  MOV             R11, R2
189926:  STR             R1, [SP,#0x140+var_138]
189928:  BL              sub_17D4A8
18992C:  LDR             R0, [R4,#4]
18992E:  MOV.W           R8, #0
189932:  CMP             R0, #0
189934:  BEQ             loc_1899C2
189936:  CMP.W           R11, #0x31 ; '1'
18993A:  MOV.W           R5, #0
18993E:  BLT             loc_1899C4
189940:  ADD             R6, SP, #0x140+var_134
189942:  SUB.W           R10, R7, #-var_1E
189946:  MOVS            R5, #0
189948:  MOV.W           R8, #0
18994C:  MOV.W           R9, #0
189950:  LDR             R0, [R4]
189952:  LDRH.W          R1, [R0,R9,LSL#2]
189956:  ADD.W           R0, R0, R9,LSL#2
18995A:  LDRH            R0, [R0,#2]
18995C:  CMP             R1, R0
18995E:  BNE             loc_189968
189960:  MOV             R0, R6
189962:  BL              sub_17D84A
189966:  B               loc_18996E
189968:  MOV             R0, R6
18996A:  BL              sub_17D828
18996E:  LDR             R0, [R4]
189970:  LDRH.W          R0, [R0,R9,LSL#2]
189974:  STRH.W          R0, [R7,#var_1E]
189978:  MOV             R0, R6
18997A:  MOV             R1, R10
18997C:  MOVS            R2, #0x10
18997E:  MOVS            R3, #1
189980:  BL              sub_17D628
189984:  LDR             R0, [R4]
189986:  LDRH.W          R1, [R0,R9,LSL#2]
18998A:  ADD.W           R0, R0, R9,LSL#2
18998E:  LDRH            R0, [R0,#2]
189990:  CMP             R1, R0
189992:  BNE             loc_189998
189994:  ADDS            R5, #0x11
189996:  B               loc_1899AA
189998:  STRH.W          R0, [R7,#var_1E]
18999C:  MOV             R0, R6
18999E:  MOV             R1, R10
1899A0:  MOVS            R2, #0x10
1899A2:  MOVS            R3, #1
1899A4:  BL              sub_17D628
1899A8:  ADDS            R5, #0x21 ; '!'
1899AA:  LDR             R0, [R4,#4]
1899AC:  ADD.W           R9, R9, #1
1899B0:  ADD.W           R8, R8, #1
1899B4:  CMP             R9, R0
1899B6:  BCS             loc_1899C4
1899B8:  ADD.W           R0, R5, #0x31 ; '1'
1899BC:  CMP             R0, R11
1899BE:  BLE             loc_189950
1899C0:  B               loc_1899C4
1899C2:  MOVS            R5, #0
1899C4:  LDR             R6, [SP,#0x140+var_138]
1899C6:  STRH.W          R8, [R7,#var_1E]
1899CA:  LDR.W           R9, [R6]
1899CE:  SUB.W           R1, R7, #-var_1E
1899D2:  MOV             R0, R6
1899D4:  MOVS            R2, #0x10
1899D6:  MOVS            R3, #1
1899D8:  BL              sub_17D912
1899DC:  LDR.W           R10, [R6]
1899E0:  LDR             R2, [SP,#0x140+var_134]
1899E2:  ADD             R1, SP, #0x140+var_134
1899E4:  MOV             R0, R6
1899E6:  BL              loc_17D6C8
1899EA:  LDR             R0, [SP,#0x140+var_13C]
1899EC:  CBZ             R0, loc_189A24
1899EE:  MOVS.W          R0, R8,LSL#16
1899F2:  BEQ             loc_189A24
1899F4:  LDR             R0, [R4,#4]
1899F6:  UXTH.W          R12, R8
1899FA:  SUBS.W          R3, R0, R12
1899FE:  BEQ             loc_189A20
189A00:  MOV.W           R0, R12,LSL#2
189A04:  MOVS            R6, #0
189A06:  LDR             R1, [R4]
189A08:  ADDS            R2, R1, R0
189A0A:  LDR.W           R2, [R2,R6,LSL#2]
189A0E:  STR.W           R2, [R1,R6,LSL#2]
189A12:  ADDS            R6, #1
189A14:  CMP             R3, R6
189A16:  BNE             loc_189A06
189A18:  LDR             R0, [R4,#4]
189A1A:  SUB.W           R0, R0, R12
189A1E:  B               loc_189A22
189A20:  MOVS            R0, #0
189A22:  STR             R0, [R4,#4]
189A24:  ADD             R0, SP, #0x140+var_134
189A26:  BL              sub_17D542
189A2A:  SUB.W           R0, R5, R9
189A2E:  ADD             R0, R10
189A30:  ADD             SP, SP, #0x124
189A32:  POP.W           {R8-R11}
189A36:  POP             {R4-R7,PC}
