; =========================================================
; Game Engine Function: _Z19NVDefaultLogMessage11ENVLogLevelPKcS1_S1_
; Address            : 0x276B50 - 0x276C28
; =========================================================

276B50:  PUSH            {R4-R7,LR}
276B52:  ADD             R7, SP, #0xC
276B54:  PUSH.W          {R8-R11}
276B58:  SUB             SP, SP, #0xC
276B5A:  MOV             R4, R1
276B5C:  MOV             R8, R0
276B5E:  MOV             R0, R4; char *
276B60:  MOV             R10, R3
276B62:  MOV             R6, R2
276B64:  BLX             strlen
276B68:  MOV             R5, R0
276B6A:  MOVW            R11, #0x3F9C
276B6E:  MOV             R0, R6; char *
276B70:  ADR.W           R9, aTagTooBig; "(Tag too big)"
276B74:  CMP             R5, R11
276B76:  IT LS
276B78:  MOVLS           R9, R4
276B7A:  BLX             strlen
276B7E:  ADDS            R4, R0, R5
276B80:  MOV             R0, R10; char *
276B82:  ADR             R5, aMessageTooLong; "(Message too long)"
276B84:  CMP             R4, R11
276B86:  IT LS
276B88:  MOVLS           R5, R6
276B8A:  BLX             strlen
276B8E:  ADDS            R1, R4, R0
276B90:  ADR             R0, aDetailsTooLong; "(Details too long)"
276B92:  CMP             R1, R11
276B94:  SUB.W           R1, R8, #1; switch 32 cases
276B98:  IT LS
276B9A:  MOVLS           R0, R10
276B9C:  CMP             R1, #0x1F
276B9E:  BHI             def_276BA4; jumptable 00276BA4 default case, cases 3,5-7,9-15,17-31
276BA0:  LDR             R2, =(aDebug - 0x276BA6); "DEBUG"
276BA2:  ADD             R2, PC; "DEBUG"
276BA4:  TBB.W           [PC,R1]; switch jump
276BA8:  DCB 0x2C; jump table for switch statement
276BA9:  DCB 0x10
276BAA:  DCB 0x14
276BAB:  DCB 0x19
276BAC:  DCB 0x14
276BAD:  DCB 0x14
276BAE:  DCB 0x14
276BAF:  DCB 0x1E
276BB0:  DCB 0x14
276BB1:  DCB 0x14
276BB2:  DCB 0x14
276BB3:  DCB 0x14
276BB4:  DCB 0x14
276BB5:  DCB 0x14
276BB6:  DCB 0x14
276BB7:  DCB 0x23
276BB8:  DCB 0x14
276BB9:  DCB 0x14
276BBA:  DCB 0x14
276BBB:  DCB 0x14
276BBC:  DCB 0x14
276BBD:  DCB 0x14
276BBE:  DCB 0x14
276BBF:  DCB 0x14
276BC0:  DCB 0x14
276BC1:  DCB 0x14
276BC2:  DCB 0x14
276BC3:  DCB 0x14
276BC4:  DCB 0x14
276BC5:  DCB 0x14
276BC6:  DCB 0x14
276BC7:  DCB 0x28
276BC8:  LDR             R1, =(aDebug - 0x276BCE); jumptable 00276BA4 case 2
276BCA:  ADD             R1, PC; "DEBUG"
276BCC:  ADDS            R2, R1, #6
276BCE:  B               loc_276C00; jumptable 00276BA4 case 1
276BD0:  LDR             R1, =(aDebug - 0x276BD6); jumptable 00276BA4 default case, cases 3,5-7,9-15,17-31
276BD2:  ADD             R1, PC; "DEBUG"
276BD4:  ADD.W           R2, R1, #0x24 ; '$'
276BD8:  B               loc_276C00; jumptable 00276BA4 case 1
276BDA:  LDR             R1, =(aDebug - 0x276BE0); jumptable 00276BA4 case 4
276BDC:  ADD             R1, PC; "DEBUG"
276BDE:  ADD.W           R2, R1, #0xC
276BE2:  B               loc_276C00; jumptable 00276BA4 case 1
276BE4:  LDR             R1, =(aDebug - 0x276BEA); jumptable 00276BA4 case 8
276BE6:  ADD             R1, PC; "DEBUG"
276BE8:  ADD.W           R2, R1, #0x12
276BEC:  B               loc_276C00; jumptable 00276BA4 case 1
276BEE:  LDR             R1, =(aDebug - 0x276BF4); jumptable 00276BA4 case 16
276BF0:  ADD             R1, PC; "DEBUG"
276BF2:  ADD.W           R2, R1, #0x18
276BF6:  B               loc_276C00; jumptable 00276BA4 case 1
276BF8:  LDR             R1, =(aDebug - 0x276BFE); jumptable 00276BA4 case 32
276BFA:  ADD             R1, PC; "DEBUG"
276BFC:  ADD.W           R2, R1, #0x1E
276C00:  LDR             R4, =(unk_6DA0E0 - 0x276C0E); jumptable 00276BA4 case 1
276C02:  ADR             R1, aSSSS; "%s(%s): %s - %s\n"
276C04:  STRD.W          R5, R0, [SP,#0x28+var_28]
276C08:  MOV             R3, R9
276C0A:  ADD             R4, PC; unk_6DA0E0
276C0C:  MOV             R0, R4
276C0E:  BL              sub_5E6BC0
276C12:  LDR             R0, =(NVLogOutput_ptr - 0x276C18)
276C14:  ADD             R0, PC; NVLogOutput_ptr
276C16:  LDR             R0, [R0]; NVLogOutput
276C18:  LDR             R1, [R0]; NVDefaultLogOutput(char const*)
276C1A:  MOV             R0, R4; char *
276C1C:  BLX             R1; NVDefaultLogOutput(char const*)
276C1E:  MOV             R0, R4
276C20:  ADD             SP, SP, #0xC
276C22:  POP.W           {R8-R11}
276C26:  POP             {R4-R7,PC}
