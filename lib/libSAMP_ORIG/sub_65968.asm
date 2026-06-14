; =========================================================
; Game Engine Function: sub_65968
; Address            : 0x65968 - 0x65BEC
; =========================================================

65968:  PUSH            {R4-R7,LR}
6596A:  ADD             R7, SP, #0xC
6596C:  PUSH.W          {R8-R11}
65970:  SUB             SP, SP, #0x19C
65972:  LDR             R1, =(aSampOrig - 0x6597E); "SAMP_ORIG" ...
65974:  MOV             R4, R0
65976:  LDR             R2, =(aRpcScrsetplaye - 0x65980); "RPC: ScrSetPlayerAttachedObject" ...
65978:  LDR             R0, =(__stack_chk_guard_ptr - 0x65982)
6597A:  ADD             R1, PC; "SAMP_ORIG"
6597C:  ADD             R2, PC; "RPC: ScrSetPlayerAttachedObject"
6597E:  ADD             R0, PC; __stack_chk_guard_ptr
65980:  LDR             R0, [R0]; __stack_chk_guard
65982:  LDR             R0, [R0]
65984:  STR             R0, [SP,#0x1B8+var_20]
65986:  MOVS            R0, #4; prio
65988:  BLX             __android_log_print
6598C:  LDRD.W          R1, R0, [R4]; src
65990:  MOVS            R3, #0
65992:  ASRS            R2, R0, #0x1F
65994:  MOVS            R4, #0
65996:  ADD.W           R0, R0, R2,LSR#29
6599A:  MOVS            R2, #1
6599C:  ADD.W           R2, R2, R0,ASR#3; size
659A0:  ADD             R0, SP, #0x1B8+var_134; int
659A2:  BL              sub_86BA8
659A6:  STR             R4, [SP,#0x1B8+var_148]
659A8:  STRD.W          R4, R4, [SP,#0x1B8+var_150]
659AC:  STRD.W          R4, R4, [SP,#0x1B8+var_158]
659B0:  STRD.W          R4, R4, [SP,#0x1B8+var_160]
659B4:  STRD.W          R4, R4, [SP,#0x1B8+var_168]
659B8:  ADD.W           R1, SP, #0x1B8+var_136; int
659BC:  MOVS            R2, #0x10
659BE:  MOVS            R3, #1
659C0:  BL              sub_86E30
659C4:  ADD             R0, SP, #0x1B8+var_134; int
659C6:  ADD             R1, SP, #0x1B8+var_13C; int
659C8:  MOVS            R2, #0x20 ; ' '
659CA:  MOVS            R3, #1
659CC:  BL              sub_86E30
659D0:  LDR             R1, [SP,#0x1B8+var_134]
659D2:  LDR             R0, [SP,#0x1B8+var_12C]
659D4:  CMP             R0, R1
659D6:  BGE             loc_659EE
659D8:  LDR             R1, [SP,#0x1B8+var_128]
659DA:  ASRS            R2, R0, #3
659DC:  LDRB            R1, [R1,R2]
659DE:  ADDS            R2, R0, #1
659E0:  AND.W           R0, R0, #7
659E4:  STR             R2, [SP,#0x1B8+var_12C]
659E6:  LSL.W           R0, R1, R0
659EA:  UXTB            R0, R0
659EC:  LSRS            R6, R0, #7
659EE:  ADD             R0, SP, #0x1B8+var_134; int
659F0:  ADD             R1, SP, #0x1B8+var_140; int
659F2:  MOVS            R2, #0x20 ; ' '
659F4:  MOVS            R3, #1
659F6:  BL              sub_86E30
659FA:  ADD             R0, SP, #0x1B8+var_134; int
659FC:  ADD             R1, SP, #0x1B8+var_144; int
659FE:  MOVS            R2, #0x20 ; ' '
65A00:  MOVS            R3, #1
65A02:  BL              sub_86E30
65A06:  ADD             R0, SP, #0x1B8+var_134; int
65A08:  ADD             R1, SP, #0x1B8+var_150; int
65A0A:  MOVS            R2, #0x20 ; ' '
65A0C:  MOVS            R3, #1
65A0E:  BL              sub_86E30
65A12:  ADD             R4, SP, #0x1B8+var_150
65A14:  ADDS            R1, R4, #4; int
65A16:  ADD             R0, SP, #0x1B8+var_134; int
65A18:  MOVS            R2, #0x20 ; ' '
65A1A:  MOVS            R3, #1
65A1C:  BL              sub_86E30
65A20:  ADD.W           R1, R4, #8; int
65A24:  ADD             R0, SP, #0x1B8+var_134; int
65A26:  MOVS            R2, #0x20 ; ' '
65A28:  MOVS            R3, #1
65A2A:  BL              sub_86E30
65A2E:  ADD             R0, SP, #0x1B8+var_134; int
65A30:  ADD             R1, SP, #0x1B8+var_15C; int
65A32:  MOVS            R2, #0x20 ; ' '
65A34:  MOVS            R3, #1
65A36:  BL              sub_86E30
65A3A:  ADD             R4, SP, #0x1B8+var_15C
65A3C:  ADDS            R1, R4, #4; int
65A3E:  ADD             R0, SP, #0x1B8+var_134; int
65A40:  MOVS            R2, #0x20 ; ' '
65A42:  MOVS            R3, #1
65A44:  BL              sub_86E30
65A48:  ADD.W           R1, R4, #8; int
65A4C:  ADD             R0, SP, #0x1B8+var_134; int
65A4E:  MOVS            R2, #0x20 ; ' '
65A50:  MOVS            R3, #1
65A52:  BL              sub_86E30
65A56:  ADD             R0, SP, #0x1B8+var_134; int
65A58:  ADD             R1, SP, #0x1B8+var_168; int
65A5A:  MOVS            R2, #0x20 ; ' '
65A5C:  MOVS            R3, #1
65A5E:  BL              sub_86E30
65A62:  ADD             R4, SP, #0x1B8+var_168
65A64:  ADDS            R1, R4, #4; int
65A66:  ADD             R0, SP, #0x1B8+var_134; int
65A68:  MOVS            R2, #0x20 ; ' '
65A6A:  MOVS            R3, #1
65A6C:  BL              sub_86E30
65A70:  ADD.W           R1, R4, #8; int
65A74:  ADD             R0, SP, #0x1B8+var_134; int
65A76:  MOVS            R2, #0x20 ; ' '
65A78:  MOVS            R3, #1
65A7A:  BL              sub_86E30
65A7E:  ADD             R0, SP, #0x1B8+var_134; int
65A80:  ADD             R1, SP, #0x1B8+var_16C; int
65A82:  MOVS            R2, #0x20 ; ' '
65A84:  MOVS            R3, #1
65A86:  BL              sub_86E30
65A8A:  ADD             R0, SP, #0x1B8+var_134; int
65A8C:  ADD             R1, SP, #0x1B8+var_170; int
65A8E:  MOVS            R2, #0x20 ; ' '
65A90:  MOVS            R3, #1
65A92:  BL              sub_86E30
65A96:  LDR             R0, =(off_114AD8 - 0x65A9C)
65A98:  ADD             R0, PC; off_114AD8
65A9A:  LDR             R0, [R0]; dword_1A4434
65A9C:  LDR             R0, [R0]
65A9E:  LDR.W           R0, [R0,#0x3B0]
65AA2:  LDR             R0, [R0]
65AA4:  CMP             R0, #0
65AA6:  BEQ.W           loc_65BCC
65AAA:  MOV.W           R1, #0x13A0
65AAE:  LDRH            R2, [R0,R1]
65AB0:  LDRH.W          R1, [SP,#0x1B8+var_136]
65AB4:  CMP             R1, R2
65AB6:  BNE             loc_65B54
65AB8:  BL              sub_6C844
65ABC:  LDR.W           R10, [R0,#8]
65AC0:  MOV             R5, R0
65AC2:  CMP.W           R10, #0
65AC6:  BNE             loc_65AF6
65AC8:  MOV.W           R0, #0x2F0; unsigned int
65ACC:  BLX             j__Znwj; operator new(uint)
65AD0:  MOV             R10, R0
65AD2:  LDR             R0, =(off_114AB0 - 0x65ADA)
65AD4:  LDR             R1, =(_ZTV10CPlayerPed - 0x65ADC); `vtable for'CPlayerPed ...
65AD6:  ADD             R0, PC; off_114AB0
65AD8:  ADD             R1, PC; `vtable for'CPlayerPed
65ADA:  LDR             R0, [R0]; dword_1A4408
65ADC:  ADDS            R1, #8
65ADE:  STR.W           R1, [R10]
65AE2:  MOV             R1, #0x103B89
65AEA:  LDR             R0, [R0]
65AEC:  ADD             R1, R0
65AEE:  MOV             R0, R10
65AF0:  BLX             R1
65AF2:  STR.W           R10, [R5,#8]
65AF6:  LDRD.W          R3, R0, [SP,#0x1B8+var_150]
65AFA:  ADD             R5, SP, #0x1B8+var_168
65AFC:  LDR             R1, [SP,#0x1B8+var_13C]
65AFE:  STR             R0, [SP,#0x1B8+var_17C]
65B00:  LDR             R0, [SP,#0x1B8+var_15C]
65B02:  STR             R0, [SP,#0x1B8+var_180]
65B04:  STR             R1, [SP,#0x1B8+var_174]
65B06:  LDRH.W          R1, [SP,#0x1B8+var_136]
65B0A:  LDM             R5, {R0,R2,R5}
65B0C:  STR             R1, [SP,#0x1B8+var_178]
65B0E:  MOV             R1, R6
65B10:  LDR.W           R11, [SP,#0x1B8+var_148]
65B14:  LDRD.W          R12, LR, [SP,#0x1B8+var_158]
65B18:  LDRD.W          R4, R8, [SP,#0x1B8+var_144]
65B1C:  LDRD.W          R9, R6, [SP,#0x1B8+var_170]
65B20:  STR             R0, [SP,#0x1B8+var_198]
65B22:  LDR             R0, [SP,#0x1B8+var_17C]
65B24:  STRD.W          R0, R11, [SP,#0x1B8+var_1AC]
65B28:  LDR             R0, [SP,#0x1B8+var_180]
65B2A:  STR             R2, [SP,#0x1B8+var_194]
65B2C:  ADD             R2, SP, #0x1B8+var_1A4
65B2E:  STM.W           R2, {R0,R12,LR}
65B32:  UXTB            R2, R1
65B34:  CMP             R2, #0
65B36:  STR             R5, [SP,#0x1B8+var_190]
65B38:  MOV             R0, R10
65B3A:  STR             R6, [SP,#0x1B8+var_18C]
65B3C:  STR.W           R9, [SP,#0x1B8+var_188]
65B40:  STRD.W          R8, R4, [SP,#0x1B8+var_1B8]
65B44:  STR             R3, [SP,#0x1B8+var_1B0]
65B46:  IT NE
65B48:  MOVNE           R2, #1
65B4A:  LDRD.W          R1, R3, [SP,#0x1B8+var_178]
65B4E:  BL              sub_65C20
65B52:  B               loc_65BCC
65B54:  CMP.W           R1, #0x3EC
65B58:  BHI             loc_65BCC
65B5A:  ADDS            R2, R0, R1
65B5C:  LDRB.W          R2, [R2,#0xFB4]
65B60:  CBZ             R2, loc_65BCC
65B62:  ADD.W           R0, R0, R1,LSL#2
65B66:  LDR             R0, [R0,#4]
65B68:  CMP             R0, #0
65B6A:  ITT NE
65B6C:  LDRNE           R0, [R0]
65B6E:  CMPNE           R0, #0
65B70:  BEQ             loc_65BCC
65B72:  ADD             R5, SP, #0x1B8+var_168
65B74:  LDRD.W          R9, R2, [SP,#0x1B8+var_15C]
65B78:  LDR.W           R0, [R0,#0x128]
65B7C:  MOV             LR, R6
65B7E:  STR             R2, [SP,#0x1B8+var_17C]
65B80:  LDR             R2, [SP,#0x1B8+var_154]
65B82:  STR             R0, [SP,#0x1B8+var_174]
65B84:  LDR             R0, [SP,#0x1B8+var_13C]
65B86:  LDM             R5, {R3-R5}
65B88:  STR             R2, [SP,#0x1B8+var_180]
65B8A:  STR             R0, [SP,#0x1B8+var_178]
65B8C:  LDRD.W          R2, R0, [SP,#0x1B8+var_170]
65B90:  LDRD.W          R8, R11, [SP,#0x1B8+var_150]
65B94:  LDR.W           R10, [SP,#0x1B8+var_148]
65B98:  LDRD.W          R12, R6, [SP,#0x1B8+var_144]
65B9C:  STRD.W          R0, R2, [SP,#0x1B8+var_18C]
65BA0:  UXTB.W          R2, LR
65BA4:  LDR             R0, [SP,#0x1B8+var_17C]
65BA6:  CMP             R2, #0
65BA8:  STR             R0, [SP,#0x1B8+var_1A0]
65BAA:  LDR             R0, [SP,#0x1B8+var_180]
65BAC:  STR             R3, [SP,#0x1B8+var_198]
65BAE:  STR             R4, [SP,#0x1B8+var_194]
65BB0:  STR             R5, [SP,#0x1B8+var_190]
65BB2:  STRD.W          R6, R12, [SP,#0x1B8+var_1B8]
65BB6:  STRD.W          R8, R11, [SP,#0x1B8+var_1B0]
65BBA:  STRD.W          R10, R9, [SP,#0x1B8+var_1A8]
65BBE:  STR             R0, [SP,#0x1B8+var_19C]
65BC0:  IT NE
65BC2:  MOVNE           R2, #1
65BC4:  LDRD.W          R3, R0, [SP,#0x1B8+var_178]
65BC8:  BL              sub_65C20
65BCC:  ADD             R0, SP, #0x1B8+var_134
65BCE:  BL              sub_86BF8
65BD2:  LDR             R0, [SP,#0x1B8+var_20]
65BD4:  LDR             R1, =(__stack_chk_guard_ptr - 0x65BDA)
65BD6:  ADD             R1, PC; __stack_chk_guard_ptr
65BD8:  LDR             R1, [R1]; __stack_chk_guard
65BDA:  LDR             R1, [R1]
65BDC:  CMP             R1, R0
65BDE:  ITTT EQ
65BE0:  ADDEQ           SP, SP, #0x19C
65BE2:  POPEQ.W         {R8-R11}
65BE6:  POPEQ           {R4-R7,PC}
65BE8:  BLX             __stack_chk_fail
