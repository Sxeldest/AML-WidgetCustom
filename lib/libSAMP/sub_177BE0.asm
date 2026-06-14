; =========================================================
; Game Engine Function: sub_177BE0
; Address            : 0x177BE0 - 0x177D7A
; =========================================================

177BE0:  PUSH            {R4-R7,LR}
177BE2:  ADD             R7, SP, #0xC
177BE4:  PUSH.W          {R8,R9,R11}
177BE8:  LDR             R2, [R0,#4]
177BEA:  LDR.W           LR, [R0,#0x2C]
177BEE:  ADD.W           R12, R2, LR
177BF2:  LDRH.W          R0, [R2,LR]
177BF6:  LSLS            R0, R0, #0x10
177BF8:  REV             R3, R0
177BFA:  CMP             R3, #6; switch 7 cases
177BFC:  BHI             def_177C00; jumptable 00177C00 default case, cases 1,3,5
177BFE:  MOVS            R0, #0
177C00:  TBB.W           [PC,R3]; switch jump
177C04:  DCB 4; jump table for switch statement
177C05:  DCB 0x10
177C06:  DCB 0x91
177C07:  DCB 0x10
177C08:  DCB 0x32
177C09:  DCB 0x10
177C0A:  DCB 0x7C
177C0B:  ALIGN 2
177C0C:  LDRH.W          R0, [R12,#2]; jumptable 00177C00 case 0
177C10:  LSLS            R0, R0, #0x10
177C12:  REV             R0, R0
177C14:  SUBS            R0, #6
177C16:  CMP             R0, R1
177C18:  BLE.W           loc_177D24
177C1C:  ADD.W           R0, R12, R1
177C20:  LDRB            R0, [R0,#6]
177C22:  B               loc_177D26; jumptable 00177C00 case 2
177C24:  BIC.W           R0, R3, #1; jumptable 00177C00 default case, cases 1,3,5
177C28:  CMP             R0, #0xC
177C2A:  BNE             loc_177D24
177C2C:  LDR.W           R0, [R12,#0xC]
177C30:  REV             R6, R0
177C32:  CMP             R6, #1
177C34:  BLT             loc_177D24
177C36:  ADD.W           R12, R12, #0x10
177C3A:  MOVS            R5, #0
177C3C:  SUBS            R0, R6, R5
177C3E:  ADD.W           R2, R5, R0,ASR#1
177C42:  ADD.W           R0, R2, R2,LSL#1
177C46:  LDR.W           R4, [R12,R0,LSL#2]
177C4A:  REV             R4, R4
177C4C:  CMP             R4, R1
177C4E:  BHI             loc_177C60
177C50:  ADD.W           R0, R12, R0,LSL#2
177C54:  LDR             R5, [R0,#4]
177C56:  REV             R5, R5
177C58:  CMP             R5, R1
177C5A:  BCS             loc_177D5A
177C5C:  ADDS            R5, R2, #1
177C5E:  MOV             R2, R6
177C60:  CMP             R2, R5
177C62:  MOV             R6, R2
177C64:  BGT             loc_177C3C
177C66:  B               loc_177D24
177C68:  CMP.W           R1, #0x10000; jumptable 00177C00 case 4
177C6C:  BGE             loc_177D24
177C6E:  LDRB.W          R4, [R12,#0xD]
177C72:  LDRB.W          R3, [R12,#0xC]
177C76:  AND.W           R4, R4, #0xFE
177C7A:  LDRH.W          R0, [R12,#6]
177C7E:  LDRH.W          R5, [R12,#0xA]
177C82:  ORR.W           R3, R4, R3,LSL#8
177C86:  ADD.W           R4, R12, R3
177C8A:  LSLS            R0, R0, #0x10
177C8C:  REV.W           R8, R0
177C90:  LDRH            R4, [R4,#0xE]
177C92:  LSLS            R4, R4, #0x10
177C94:  REV             R4, R4
177C96:  CMP             R4, R1
177C98:  MOV             R4, LR
177C9A:  IT LE
177C9C:  ADDLE           R4, R3
177C9E:  ADD.W           R3, R4, #0xC
177CA2:  REV             R4, R5
177CA4:  LSRS            R4, R4, #0x10
177CA6:  BEQ             loc_177CD0
177CA8:  LDRH.W          R5, [R12,#8]
177CAC:  MOVW            R9, #0x7FFE
177CB0:  REV             R5, R5
177CB2:  LSRS            R5, R5, #0x10
177CB4:  AND.W           R0, R9, R5,LSR#1
177CB8:  ADDS            R6, R2, R3
177CBA:  SUBS            R4, #1
177CBC:  UBFX.W          R5, R5, #1, #0xF
177CC0:  LDRH            R6, [R6,R0]
177CC2:  LSLS            R6, R6, #0x10
177CC4:  REV             R6, R6
177CC6:  CMP             R6, R1
177CC8:  IT LT
177CCA:  ADDLT           R3, R0
177CCC:  LSLS            R0, R4, #0x10
177CCE:  BNE             loc_177CB4
177CD0:  MOVW            R5, #:lower16:(aSilkLpcInverse+0x18); "in_c"
177CD4:  BIC.W           R0, R8, #1
177CD8:  MOVT            R5, #:upper16:(aSilkLpcInverse+0x18); "in_c"
177CDC:  SUB.W           R4, R5, LR
177CE0:  ADD.W           R6, R12, #0xE
177CE4:  ADD             R3, R4
177CE6:  ADDS            R5, #0xA
177CE8:  ADD             R0, R6
177CEA:  ANDS            R3, R5
177CEC:  ADD             R0, R3
177CEE:  LDRH            R0, [R0,#2]
177CF0:  LSLS            R0, R0, #0x10
177CF2:  REV             R5, R0
177CF4:  CMP             R5, R1
177CF6:  BLE             loc_177D2C
177CF8:  MOVS            R0, #0
177CFA:  B               loc_177D76
177CFC:  LDRH.W          R0, [R12,#6]; jumptable 00177C00 case 6
177D00:  LSLS            R0, R0, #0x10
177D02:  REV             R0, R0
177D04:  CMP             R0, R1
177D06:  BHI             loc_177D24
177D08:  LDRH.W          R2, [R12,#8]
177D0C:  LSLS            R2, R2, #0x10
177D0E:  REV             R2, R2
177D10:  ADD             R2, R0
177D12:  CMP             R2, R1
177D14:  BLS             loc_177D24
177D16:  SUBS            R0, R1, R0
177D18:  ADD.W           R0, R12, R0,LSL#1
177D1C:  LDRH            R0, [R0,#0xA]
177D1E:  LSLS            R0, R0, #0x10
177D20:  REV             R0, R0
177D22:  B               loc_177D26; jumptable 00177C00 case 2
177D24:  MOVS            R0, #0
177D26:  POP.W           {R8,R9,R11}; jumptable 00177C00 case 2
177D2A:  POP             {R4-R7,PC}
177D2C:  MOV.W           R12, R8,LSR#1
177D30:  ADD.W           R4, R12, R12,LSL#1
177D34:  ADD.W           R0, R6, R4,LSL#1
177D38:  ADD             R0, R3
177D3A:  LDRH            R0, [R0,#2]
177D3C:  LSLS            R0, R0, #0x10
177D3E:  REV             R0, R0
177D40:  CBZ             R0, loc_177D68
177D42:  SUBS            R1, R1, R5
177D44:  ADD             R0, R2
177D46:  LSLS            R6, R4, #1
177D48:  ADD.W           R0, R0, R1,LSL#1
177D4C:  ADD             R0, LR
177D4E:  ADD             R0, R6
177D50:  ADD             R0, R3
177D52:  LDRH            R0, [R0,#0x10]
177D54:  LSLS            R0, R0, #0x10
177D56:  REV             R0, R0
177D58:  B               loc_177D76
177D5A:  LDR             R0, [R0,#8]
177D5C:  SUBS            R1, R1, R4
177D5E:  CMP             R3, #0xC
177D60:  REV             R0, R0
177D62:  IT EQ
177D64:  ADDEQ           R0, R1
177D66:  B               loc_177D26; jumptable 00177C00 case 2
177D68:  ADD.W           R0, R6, R12,LSL#2
177D6C:  ADD             R0, R3
177D6E:  LDRH            R0, [R0,#2]
177D70:  LSLS            R0, R0, #0x10
177D72:  REV             R0, R0
177D74:  ADD             R0, R1
177D76:  UXTH            R0, R0
177D78:  B               loc_177D26; jumptable 00177C00 case 2
