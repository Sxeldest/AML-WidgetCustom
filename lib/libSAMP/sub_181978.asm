; =========================================================
; Game Engine Function: sub_181978
; Address            : 0x181978 - 0x181A36
; =========================================================

181978:  PUSH            {R4-R7,LR}
18197A:  ADD             R7, SP, #0xC
18197C:  PUSH.W          {R8-R10}
181980:  SUB             SP, SP, #0x10
181982:  MOV             R5, R3
181984:  LDR             R3, =(unk_BE944 - 0x18198E)
181986:  MOV             R4, R0
181988:  ADD             R0, SP, #0x28+var_20
18198A:  ADD             R3, PC; unk_BE944
18198C:  STRD.W          R1, R2, [SP,#0x28+var_20]
181990:  MOV             R1, R3
181992:  BL              sub_17E580
181996:  CBZ             R0, loc_1819A2
181998:  MOVS            R0, #0
18199A:  ADD             SP, SP, #0x10
18199C:  POP.W           {R8-R10}
1819A0:  POP             {R4-R7,PC}
1819A2:  CBZ             R5, loc_1819D2
1819A4:  ADD.W           R0, R4, #0x344
1819A8:  ADD             R1, SP, #0x28+var_20
1819AA:  SUB.W           R2, R7, #-var_21
1819AE:  BL              sub_182454
1819B2:  LDRB.W          R1, [R7,#var_21]
1819B6:  CMP             R1, #0
1819B8:  BEQ             loc_181998
1819BA:  ADD.W           R0, R0, R0,LSL#1
1819BE:  LDRD.W          R1, R2, [R4,#0x340]
1819C2:  ADD.W           R0, R2, R0,LSL#2
1819C6:  LDR             R0, [R0,#8]
1819C8:  ADD.W           R0, R0, R0,LSL#5
1819CC:  ADD.W           R0, R1, R0,LSL#6
1819D0:  B               loc_18199A
1819D2:  LDRH            R0, [R4,#8]
1819D4:  CMP             R0, #0
1819D6:  BEQ             loc_181998
1819D8:  LDR.W           R8, [R7,#arg_0]
1819DC:  ADD.W           R9, SP, #0x28+var_20
1819E0:  MOV.W           R10, #0xFFFFFFFF
1819E4:  MOVS            R5, #0
1819E6:  MOVS            R6, #0
1819E8:  LDR.W           R0, [R4,#0x340]
1819EC:  MOV             R1, R9
1819EE:  ADD             R0, R5
1819F0:  ADDS            R0, #4
1819F2:  BL              sub_17E580
1819F6:  CBZ             R0, loc_181A08
1819F8:  LDR.W           R0, [R4,#0x340]
1819FC:  LDRB            R1, [R0,R5]
1819FE:  CBNZ            R1, loc_181A32
181A00:  ADDS.W          R0, R10, #1
181A04:  IT EQ
181A06:  MOVEQ           R10, R6
181A08:  LDRH            R0, [R4,#8]
181A0A:  ADDS            R6, #1
181A0C:  ADD.W           R5, R5, #0x840
181A10:  CMP             R6, R0
181A12:  BCC             loc_1819E8
181A14:  ADDS.W          R0, R10, #1
181A18:  MOV.W           R0, #0
181A1C:  BEQ             loc_18199A
181A1E:  CMP.W           R8, #0
181A22:  ITTT EQ
181A24:  LDREQ.W         R0, [R4,#0x340]
181A28:  ADDEQ.W         R1, R10, R10,LSL#5
181A2C:  ADDEQ.W         R0, R0, R1,LSL#6
181A30:  B               loc_18199A
181A32:  ADD             R0, R5
181A34:  B               loc_18199A
