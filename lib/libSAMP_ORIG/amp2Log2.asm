; =========================================================
; Game Engine Function: amp2Log2
; Address            : 0xBC920 - 0xBCA4E
; =========================================================

BC920:  PUSH            {R4-R7,LR}
BC922:  ADD             R7, SP, #0xC
BC924:  PUSH.W          {R8-R11}
BC928:  SUB             SP, SP, #0x18
BC92A:  LDR.W           R11, [R7,#arg_0]
BC92E:  CMP             R1, #0
BC930:  BLE             loc_BCA1C
BC932:  LDR             R0, [R0,#8]
BC934:  MOVW            R12, #0
BC938:  MOVW            R8, #0
BC93C:  MOVT            R12, #0xFFFF
BC940:  MOVT            R8, #0xE577
BC944:  STR             R1, [SP,#0x34+var_28]
BC946:  LSLS            R6, R0, #2
BC948:  LSLS            R0, R0, #1
BC94A:  STR             R0, [SP,#0x34+var_30]
BC94C:  LDR             R0, =(eMeans_ptr - 0xBC956)
BC94E:  STR             R6, [SP,#0x34+var_2C]
BC950:  MOVS            R6, #0
BC952:  ADD             R0, PC; eMeans_ptr
BC954:  LDR             R0, [R0]; eMeans
BC956:  STR             R0, [SP,#0x34+var_34]
BC958:  STRD.W          R6, R3, [SP,#0x34+var_24]
BC95C:  MOV             R0, R1
BC95E:  LDR.W           R10, [SP,#0x34+var_34]
BC962:  MOV             LR, R11
BC964:  LDR             R4, [R3]
BC966:  CBZ             R4, loc_BC9D6
BC968:  CLZ.W           R6, R4
BC96C:  RSB.W           R5, R6, #0x10
BC970:  RSB.W           R6, R6, #0x1F
BC974:  RSB.W           R9, R6, #0xF
BC978:  CMP             R6, #0xF
BC97A:  LSL.W           R1, R4, R9
BC97E:  IT GT
BC980:  ASRGT.W         R1, R4, R5
BC984:  MOV.W           R4, #0x40000000
BC988:  MOVW            R5, #0xF50E
BC98C:  ADD.W           R1, R4, R1,LSL#16
BC990:  MOVS            R4, #0
BC992:  MOVT            R5, #0xFFFF
BC996:  MOVT            R4, #0x9F1
BC99A:  SMLABT.W        R4, R5, R1, R4
BC99E:  MOVS            R5, #0x3D820000
BC9A4:  SMULTT.W        R4, R4, R1
BC9A8:  AND.W           R4, R12, R4,LSL#1
BC9AC:  ADD             R4, R8
BC9AE:  ADD.W           R4, R4, #0x6280000
BC9B2:  SMULTT.W        R4, R4, R1
BC9B6:  AND.W           R4, R12, R4,LSL#1
BC9BA:  ADD             R4, R5
BC9BC:  SMULTT.W        R1, R4, R1
BC9C0:  MOV.W           R4, #0xCC000000
BC9C4:  ADD.W           R4, R4, R6,LSL#26
BC9C8:  AND.W           R1, R12, R1,LSL#1
BC9CC:  ADD             R1, R8
BC9CE:  ASRS            R1, R1, #0x14
BC9D0:  ADD.W           R4, R1, R4,LSR#16
BC9D4:  B               loc_BC9DA
BC9D6:  MOVW            R4, #0x8001
BC9DA:  LDRSB.W         R1, [R10],#1
BC9DE:  ADDS            R3, #4
BC9E0:  SUBS            R0, #1
BC9E2:  SUB.W           R1, R4, R1,LSL#6
BC9E6:  ADD.W           R1, R1, #0x800
BC9EA:  STRH.W          R1, [LR],#2
BC9EE:  BNE             loc_BC964
BC9F0:  LDR             R1, [SP,#0x34+var_28]
BC9F2:  MOV.W           R3, #0xC800
BC9F6:  CMP             R1, R2
BC9F8:  MOV             R0, R1
BC9FA:  BGE             loc_BCA06
BC9FC:  STRH.W          R3, [R11,R0,LSL#1]
BCA00:  ADDS            R0, #1
BCA02:  CMP             R2, R0
BCA04:  BNE             loc_BC9FC
BCA06:  LDR             R3, [SP,#0x34+var_20]
BCA08:  LDR             R0, [SP,#0x34+var_2C]
BCA0A:  LDR             R6, [SP,#0x34+var_24]
BCA0C:  ADD             R3, R0
BCA0E:  LDR             R0, [SP,#0x34+var_30]
BCA10:  ADDS            R6, #1
BCA12:  ADD             R11, R0
BCA14:  LDR             R0, [R7,#arg_4]
BCA16:  CMP             R6, R0
BCA18:  BLT             loc_BC958
BCA1A:  B               loc_BCA46
BCA1C:  SUB.W           R12, R2, R1
BCA20:  MOVS            R3, #0
BCA22:  MOV.W           R6, #0xC800
BCA26:  CMP             R1, R2
BCA28:  BGE             loc_BCA3E
BCA2A:  LDR             R5, [R0,#8]
BCA2C:  MOV             R4, R12
BCA2E:  MLA.W           R5, R5, R3, R1
BCA32:  ADD.W           R5, R11, R5,LSL#1
BCA36:  STRH.W          R6, [R5],#2
BCA3A:  SUBS            R4, #1
BCA3C:  BNE             loc_BCA36
BCA3E:  LDR             R5, [R7,#arg_4]
BCA40:  ADDS            R3, #1
BCA42:  CMP             R3, R5
BCA44:  BLT             loc_BCA26
BCA46:  ADD             SP, SP, #0x18
BCA48:  POP.W           {R8-R11}
BCA4C:  POP             {R4-R7,PC}
