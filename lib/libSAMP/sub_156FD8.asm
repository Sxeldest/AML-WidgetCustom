; =========================================================
; Game Engine Function: sub_156FD8
; Address            : 0x156FD8 - 0x157112
; =========================================================

156FD8:  PUSH            {R4-R7,LR}
156FDA:  ADD             R7, SP, #0xC
156FDC:  PUSH.W          {R8-R11}
156FE0:  SUB             SP, SP, #0xC
156FE2:  ORRS.W          R1, R2, R3
156FE6:  BEQ             loc_157004
156FE8:  SUBS.W          R1, R2, #0xA
156FEC:  ADD.W           R5, R0, #8
156FF0:  MOV             R11, R3
156FF2:  MOV             R6, R2
156FF4:  SBCS.W          R1, R3, #0
156FF8:  BCS             loc_157018
156FFA:  ADD.W           R2, R0, #9
156FFE:  MOV.W           R10, #1
157002:  B               loc_1570F4
157004:  LDR             R0, [R0]
157006:  LDR             R1, [R0]
157008:  LDR             R2, [R1]
15700A:  MOVS            R1, #0x30 ; '0'
15700C:  ADD             SP, SP, #0xC
15700E:  POP.W           {R8-R11}
157012:  POP.W           {R4-R7,LR}
157016:  BX              R2
157018:  STRD.W          R5, R0, [SP,#0x28+var_24]
15701C:  MOV.W           R10, #4
157020:  MOV.W           R8, #0
157024:  MOVW            R9, #0x2710
157028:  MOV             R5, R6
15702A:  MOV             R4, R11
15702C:  RSBS.W          R0, R5, #0x63 ; 'c'
157030:  SBCS.W          R0, R8, R4
157034:  BCS             loc_15707C
157036:  LSRS            R0, R5, #3
157038:  ORR.W           R0, R0, R4,LSL#29
15703C:  RSBS.W          R0, R0, #0x7C ; '|'
157040:  SBCS.W          R0, R8, R4,LSR#3
157044:  BCS             loc_157082
157046:  SUBS.W          R0, R5, R9
15704A:  SBCS.W          R0, R4, #0
15704E:  BCC             loc_157086
157050:  MOV             R0, R5
157052:  MOV             R1, R4
157054:  MOVW            R2, #0x2710
157058:  MOVS            R3, #0
15705A:  BLX             sub_2217B4
15705E:  MOVW            R2, #:lower16:(elf_hash_chain+0x11DF)
157062:  ADD.W           R10, R10, #4
157066:  MOVT            R2, #:upper16:(elf_hash_chain+0x11DF)
15706A:  SUBS            R2, R2, R5
15706C:  MOV             R5, R0
15706E:  SBCS.W          R2, R8, R4
157072:  MOV             R4, R1
157074:  BCC             loc_15702C
157076:  SUB.W           R10, R10, #3
15707A:  B               loc_157086
15707C:  SUB.W           R10, R10, #2
157080:  B               loc_157086
157082:  SUB.W           R10, R10, #1
157086:  LDRD.W          R5, R0, [SP,#0x28+var_24]
15708A:  SUBS.W          R1, R6, #0x64 ; 'd'
15708E:  ADD.W           R2, R0, R10
157092:  SBCS.W          R1, R11, #0
157096:  BCC             loc_1570DA
157098:  LDR             R5, =(a00010203040506_0+0xC8 - 0x1570A8); "000102030405060708091011121314151617181"... ...
15709A:  ADDS            R4, R2, #6
15709C:  MOV.W           R9, #0
1570A0:  MOVW            R8, #0x270F
1570A4:  ADD             R5, PC; "000102030405060708091011121314151617181"...
1570A6:  MOV             R0, R6
1570A8:  MOV             R1, R11
1570AA:  MOVS            R2, #0x64 ; 'd'
1570AC:  MOVS            R3, #0
1570AE:  BLX             sub_2217B4
1570B2:  MOVS            R2, #0x64 ; 'd'
1570B4:  MLS.W           R2, R0, R2, R6
1570B8:  LDRH.W          R2, [R5,R2,LSL#1]
1570BC:  STRH.W          R2, [R4],#-2
1570C0:  SUBS.W          R2, R8, R6
1570C4:  SBCS.W          R2, R9, R11
1570C8:  MOV             R6, R0
1570CA:  MOV             R11, R1
1570CC:  BCC             loc_1570A6
1570CE:  MOV             R6, R0
1570D0:  LDRD.W          R5, R0, [SP,#0x28+var_24]
1570D4:  ADDS            R2, R4, #2
1570D6:  MOV             R11, R1
1570D8:  B               loc_1570DC
1570DA:  ADDS            R2, #8
1570DC:  SUBS.W          R1, R6, #0xA
1570E0:  SBCS.W          R1, R11, #0
1570E4:  BCC             loc_1570F4
1570E6:  LDR             R1, =(a00010203040506_0+0xC8 - 0x1570EC); "000102030405060708091011121314151617181"... ...
1570E8:  ADD             R1, PC; "000102030405060708091011121314151617181"...
1570EA:  LDRH.W          R1, [R1,R6,LSL#1]
1570EE:  STRH.W          R1, [R2,#-2]
1570F2:  B               loc_1570FC
1570F4:  ADD.W           R1, R6, #0x30 ; '0'
1570F8:  STRB.W          R1, [R2,#-1]
1570FC:  LDR             R0, [R0]
1570FE:  MOV             R2, R10
157100:  LDR             R1, [R0]
157102:  LDR             R3, [R1,#4]
157104:  MOV             R1, R5
157106:  ADD             SP, SP, #0xC
157108:  POP.W           {R8-R11}
15710C:  POP.W           {R4-R7,LR}
157110:  BX              R3
