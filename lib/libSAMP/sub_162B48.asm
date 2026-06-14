; =========================================================
; Game Engine Function: sub_162B48
; Address            : 0x162B48 - 0x162C3A
; =========================================================

162B48:  PUSH            {R4-R7,LR}
162B4A:  ADD             R7, SP, #0xC
162B4C:  PUSH.W          {R8-R11}
162B50:  SUB             SP, SP, #0x1C
162B52:  CMP             R3, #0
162B54:  BEQ             loc_162C30
162B56:  MOV             R9, R0
162B58:  LDRB.W          R0, [R3,#0x54]
162B5C:  MOV             R10, R3
162B5E:  LSLS            R0, R0, #0x1E
162B60:  BEQ             loc_162B70
162B62:  LDR             R1, =(aStackCorrupted - 0x162B6C); "============= STACK CORRUPTED ========="... ...
162B64:  MOVS            R0, #3; int
162B66:  MOVS            R2, #0x2B ; '+'
162B68:  ADD             R1, PC; "============= STACK CORRUPTED ========="...
162B6A:  BL              sub_ED4F8
162B6E:  B               loc_162C30
162B70:  LDR             R4, =(byte_8F794 - 0x162B7A)
162B72:  MOVS            R0, #3; int
162B74:  MOVS            R2, #0
162B76:  ADD             R4, PC; byte_8F794
162B78:  MOV             R1, R4; text
162B7A:  BL              sub_ED4F8
162B7E:  MOVS            R0, #3; int
162B80:  MOV             R1, R4; text
162B82:  MOVS            R2, #0
162B84:  BL              sub_ED4F8
162B88:  LDR             R1, =(aStack_0 - 0x162B92); "================== STACK =============="... ...
162B8A:  MOVS            R0, #3; int
162B8C:  MOVS            R2, #0x2B ; '+'
162B8E:  ADD             R1, PC; "================== STACK =============="...
162B90:  BL              sub_ED4F8
162B94:  LDR.W           R0, [R10,#0x54]
162B98:  BL              sub_162C60
162B9C:  LDR.W           R6, [R10,#0x54]
162BA0:  MOVS            R1, #0x40 ; '@'
162BA2:  STR             R0, [SP,#0x38+var_28]
162BA4:  SUBS            R2, R6, R0
162BA6:  LSRS            R3, R2, #2
162BA8:  CMP             R3, #0x40 ; '@'
162BAA:  IT CC
162BAC:  LSRCC           R1, R2, #2
162BAE:  CBZ             R1, loc_162BF0
162BB0:  ADD.W           R5, R6, R1,LSL#2
162BB4:  LDR             R6, =(a04x08x08x08x08 - 0x162BC0); "+{:04X}: {:08X} {:08X} {:08X} {:08X}" ...
162BB6:  ADDS            R4, R1, #4
162BB8:  ADD.W           R11, SP, #0x38+var_20
162BBC:  ADD             R6, PC; "+{:04X}: {:08X} {:08X} {:08X} {:08X}"
162BBE:  MOV.W           R8, #0
162BC2:  SUBS            R2, R5, #4
162BC4:  SUB.W           R0, R5, #0xC
162BC8:  SUB.W           R1, R5, #8
162BCC:  MOV             R3, R11
162BCE:  STRD.W          R1, R0, [SP,#0x38+var_30]
162BD2:  MOVS            R0, #3
162BD4:  STRD.W          R5, R2, [SP,#0x38+var_38]
162BD8:  MOV             R1, R6
162BDA:  MOVS            R2, #0x24 ; '$'
162BDC:  STR.W           R8, [SP,#0x38+var_20]
162BE0:  BL              sub_162D58
162BE4:  SUBS            R4, #4
162BE6:  ADD.W           R8, R8, #0x10
162BEA:  SUBS            R5, #0x10
162BEC:  CMP             R4, #4
162BEE:  BHI             loc_162BC2
162BF0:  LDR             R1, =(byte_8F794 - 0x162BFA)
162BF2:  MOVS            R0, #3; int
162BF4:  MOVS            R2, #0
162BF6:  ADD             R1, PC; byte_8F794 ; text
162BF8:  BL              sub_ED4F8
162BFC:  LDR             R1, =(aTrace - 0x162C06); "================== TRACE =============="... ...
162BFE:  MOVS            R0, #3; int
162C00:  MOVS            R2, #0x2B ; '+'
162C02:  ADD             R1, PC; "================== TRACE =============="...
162C04:  BL              sub_ED4F8
162C08:  LDR.W           R2, [R10,#0x54]
162C0C:  MOV             R0, R9
162C0E:  LDR             R1, [SP,#0x38+var_28]
162C10:  BL              sub_162CB8
162C14:  CMP             R0, #0x40 ; '@'
162C16:  BLS             loc_162C30
162C18:  LDR             R2, =(asc_BAB6C - 0x162C24); "@" ...
162C1A:  SUBS            R0, #0x40 ; '@'
162C1C:  LDR             R1, =(aAndFramesNotSh - 0x162C28); "(and {} frames not showed by UEF settin"... ...
162C1E:  ADD             R3, SP, #0x38+var_24
162C20:  ADD             R2, PC; "@"
162C22:  STR             R0, [SP,#0x38+var_24]
162C24:  ADD             R1, PC; "(and {} frames not showed by UEF settin"...
162C26:  STR             R2, [SP,#0x38+var_38]
162C28:  MOVS            R0, #3
162C2A:  MOVS            R2, #0x3C ; '<'
162C2C:  BL              sub_162E5C
162C30:  MOVS            R0, #2
162C32:  ADD             SP, SP, #0x1C
162C34:  POP.W           {R8-R11}
162C38:  POP             {R4-R7,PC}
