; =========================================================
; Game Engine Function: sub_DD0CC
; Address            : 0xDD0CC - 0xDD15A
; =========================================================

DD0CC:  PUSH            {R4-R7,LR}
DD0CE:  ADD             R7, SP, #0xC
DD0D0:  PUSH.W          {R8-R11}
DD0D4:  SUB             SP, SP, #0xC
DD0D6:  STR             R0, [SP,#0x28+var_20]
DD0D8:  MOV             R6, R2
DD0DA:  LDR             R0, [R7,#arg_0]
DD0DC:  MOV             R5, R3
DD0DE:  ADDS            R4, R1, R0
DD0E0:  SUBS.W          R0, R2, #0x64 ; 'd'
DD0E4:  LDR             R2, =(a00010203040506 - 0xDD0F0); "000102030405060708091011121314151617181"... ...
DD0E6:  SBCS.W          R0, R3, #0
DD0EA:  STR             R4, [SP,#0x28+var_24]
DD0EC:  ADD             R2, PC; "000102030405060708091011121314151617181"...
DD0EE:  BCC             loc_DD126
DD0F0:  MOV.W           R10, #0x64 ; 'd'
DD0F4:  MOV.W           R11, #0
DD0F8:  MOVW            R8, #0x270F
DD0FC:  MOV             R9, R2
DD0FE:  MOV             R0, R6
DD100:  MOV             R1, R5
DD102:  MOVS            R2, #0x64 ; 'd'
DD104:  MOVS            R3, #0
DD106:  BLX             sub_2217B4
DD10A:  MLS.W           R2, R0, R10, R6
DD10E:  LDRH.W          R2, [R9,R2,LSL#1]
DD112:  STRH.W          R2, [R4,#-2]!
DD116:  SUBS.W          R2, R8, R6
DD11A:  SBCS.W          R2, R11, R5
DD11E:  MOV             R6, R0
DD120:  MOV             R5, R1
DD122:  BCC             loc_DD0FE
DD124:  B               loc_DD12C
DD126:  MOV             R0, R6
DD128:  MOV             R1, R5
DD12A:  MOV             R9, R2
DD12C:  RSBS.W          R3, R0, #9
DD130:  MOV.W           R2, #0
DD134:  SBCS.W          R1, R2, R1
DD138:  BCC             loc_DD142
DD13A:  ADDS            R0, #0x30 ; '0'
DD13C:  STRB.W          R0, [R4,#-1]!
DD140:  B               loc_DD14A
DD142:  LDRH.W          R0, [R9,R0,LSL#1]
DD146:  STRH.W          R0, [R4,#-2]!
DD14A:  LDR             R0, [SP,#0x28+var_20]
DD14C:  LDR             R1, [SP,#0x28+var_24]
DD14E:  STR             R4, [R0]
DD150:  STR             R1, [R0,#4]
DD152:  ADD             SP, SP, #0xC
DD154:  POP.W           {R8-R11}
DD158:  POP             {R4-R7,PC}
