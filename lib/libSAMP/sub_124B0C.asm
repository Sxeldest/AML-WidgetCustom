; =========================================================
; Game Engine Function: sub_124B0C
; Address            : 0x124B0C - 0x124C40
; =========================================================

124B0C:  PUSH            {R4-R7,LR}
124B0E:  ADD             R7, SP, #0xC
124B10:  PUSH.W          {R8-R11}
124B14:  SUB             SP, SP, #0xC
124B16:  CBZ             R1, loc_124B54
124B18:  MOV             R8, R0
124B1A:  LDRB            R0, [R1]
124B1C:  MOV             R11, R1
124B1E:  CBZ             R0, loc_124B54
124B20:  LDR             R0, =(off_23494C - 0x124B28)
124B22:  MOV             R9, LR
124B24:  ADD             R0, PC; off_23494C
124B26:  LDR             R0, [R0]; dword_23DF24
124B28:  LDR.W           R10, [R0]
124B2C:  LDR             R0, =(dword_238E90 - 0x124B32)
124B2E:  ADD             R0, PC; dword_238E90
124B30:  LDR             R4, [R0]
124B32:  CMP             R4, #1
124B34:  BLT             loc_124B72
124B36:  LDR             R0, =(dword_263C48 - 0x124B3E)
124B38:  MOVS            R5, #0
124B3A:  ADD             R0, PC; dword_263C48
124B3C:  LDR             R6, [R0]
124B3E:  MOV             R0, R6; s1
124B40:  MOV             R1, R11; s2
124B42:  MOVS            R2, #0xE; n
124B44:  BLX             strncasecmp
124B48:  CBZ             R0, loc_124B6E
124B4A:  ADDS            R5, #1
124B4C:  ADDS            R6, #0xE
124B4E:  CMP             R4, R5
124B50:  BNE             loc_124B3E
124B52:  B               loc_124B72
124B54:  LDR             R1, =(aAxl - 0x124B60); "AXL" ...
124B56:  MOVS            R0, #6; prio
124B58:  LDR             R2, =(aSPassedEmptyLi - 0x124B62); "%s passed empty line!" ...
124B5A:  LDR             R3, =(aIntChandlingho - 0x124B64); "int CHandlingHook::FindExactWord(const "... ...
124B5C:  ADD             R1, PC; "AXL"
124B5E:  ADD             R2, PC; "%s passed empty line!"
124B60:  ADD             R3, PC; "int CHandlingHook::FindExactWord(const "...
124B62:  BLX             __android_log_print
124B66:  LDR             R0, =(dword_238E90 - 0x124B6C)
124B68:  ADD             R0, PC; dword_238E90
124B6A:  LDR             R5, [R0]
124B6C:  B               loc_124C36
124B6E:  CMP             R4, R5
124B70:  BNE             loc_124C36
124B72:  LDR             R5, =(dword_238EA0 - 0x124B84)
124B74:  MOVW            R0, #0x38AC
124B78:  SUB.W           R6, R9, R10
124B7C:  MOVT            R0, #0x47 ; 'G'
124B80:  ADD             R5, PC; dword_238EA0
124B82:  CMP             R6, R0
124B84:  BGT             loc_124BB6
124B86:  MOV             R0, #0x473331
124B8E:  CMP             R6, R0
124B90:  BEQ             loc_124BE2
124B92:  MOV             R0, #0x473627
124B9A:  CMP             R6, R0
124B9C:  BNE             loc_124C14
124B9E:  MOV             R0, R8
124BA0:  MOV             R1, R11
124BA2:  BL              sub_125788
124BA6:  LDR             R0, =(dword_238EAC - 0x124BAE)
124BA8:  LDR             R1, =(aAxl - 0x124BB0); "AXL" ...
124BAA:  ADD             R0, PC; dword_238EAC
124BAC:  ADD             R1, PC; "AXL"
124BAE:  LDR             R0, [R0]
124BB0:  LDR             R2, =(aChandlinghookH - 0x124BB6); "CHandlingHook: Handling id for boat \"%"... ...
124BB2:  ADD             R2, PC; "CHandlingHook: Handling id for boat \"%"...
124BB4:  B               loc_124C0C
124BB6:  MOV             R0, #0x4738AD
124BBE:  CMP             R6, R0
124BC0:  BEQ             loc_124BF6
124BC2:  MOV             R0, #0x473AF1
124BCA:  CMP             R6, R0
124BCC:  BNE             loc_124C14
124BCE:  MOV             R0, R8
124BD0:  MOV             R1, R11
124BD2:  BL              sub_1253B8
124BD6:  LDR             R1, =(aAxl - 0x124BE0); "AXL" ...
124BD8:  LDR             R0, [R5]
124BDA:  LDR             R2, =(aChandlinghookH_0 - 0x124BE2); "CHandlingHook: Handling id for bike \"%"... ...
124BDC:  ADD             R1, PC; "AXL"
124BDE:  ADD             R2, PC; "CHandlingHook: Handling id for bike \"%"...
124BE0:  B               loc_124C0C
124BE2:  MOV             R0, R8
124BE4:  MOV             R1, R11
124BE6:  BL              sub_12528C
124BEA:  LDR             R1, =(aAxl - 0x124BF4); "AXL" ...
124BEC:  LDR             R0, [R5]
124BEE:  LDR             R2, =(aChandlinghookH_1 - 0x124BF6); "CHandlingHook: Handling id for car \"%s"... ...
124BF0:  ADD             R1, PC; "AXL"
124BF2:  ADD             R2, PC; "CHandlingHook: Handling id for car \"%s"...
124BF4:  B               loc_124C0C
124BF6:  MOV             R0, R8
124BF8:  MOV             R1, R11
124BFA:  BL              sub_125590
124BFE:  LDR             R0, =(dword_238EA8 - 0x124C06)
124C00:  LDR             R1, =(aAxl - 0x124C08); "AXL" ...
124C02:  ADD             R0, PC; dword_238EA8
124C04:  ADD             R1, PC; "AXL"
124C06:  LDR             R0, [R0]
124C08:  LDR             R2, =(aChandlinghookH_2 - 0x124C0E); "CHandlingHook: Handling id for flying "... ...
124C0A:  ADD             R2, PC; "CHandlingHook: Handling id for flying "...
124C0C:  STR             R0, [SP,#0x28+var_28]
124C0E:  MOVS            R0, #4
124C10:  MOV             R3, R11
124C12:  B               loc_124C30
124C14:  LDR             R0, [R5]
124C16:  MOV             R1, R11; s
124C18:  ADDS            R0, #1; int
124C1A:  BL              sub_125AF0
124C1E:  LDR             R1, =(aAxl - 0x124C2A); "AXL" ...
124C20:  MOV             R3, R6
124C22:  LDR             R0, [R5]
124C24:  LDR             R2, =(aChandlinghookH_3 - 0x124C2C); "CHandlingHook: Handling id for %08X \"%"... ...
124C26:  ADD             R1, PC; "AXL"
124C28:  ADD             R2, PC; "CHandlingHook: Handling id for %08X \"%"...
124C2A:  STRD.W          R11, R0, [SP,#0x28+var_28]
124C2E:  MOVS            R0, #5; prio
124C30:  BLX             __android_log_print
124C34:  LDR             R5, [R5]
124C36:  MOV             R0, R5
124C38:  ADD             SP, SP, #0xC
124C3A:  POP.W           {R8-R11}
124C3E:  POP             {R4-R7,PC}
