; =========================================================
; Game Engine Function: sub_84C08
; Address            : 0x84C08 - 0x84D90
; =========================================================

84C08:  PUSH            {R4-R7,LR}
84C0A:  ADD             R7, SP, #0xC
84C0C:  PUSH.W          {R8-R11}
84C10:  SUB             SP, SP, #0xC
84C12:  MOV             R9, R0
84C14:  LDR             R0, =(__stack_chk_guard_ptr - 0x84C1E)
84C16:  MOV             R10, R9
84C18:  MOV             R4, R1
84C1A:  ADD             R0, PC; __stack_chk_guard_ptr
84C1C:  LDR             R0, [R0]; __stack_chk_guard
84C1E:  LDR             R0, [R0]
84C20:  STR             R0, [SP,#0x28+var_20]
84C22:  LDR.W           R6, [R10,#0x1C]!
84C26:  LDR.W           R5, [R10,#4]
84C2A:  CMP             R6, R5
84C2C:  BEQ             loc_84C40
84C2E:  LDR             R0, [R6]
84C30:  BL              sub_7DB5A
84C34:  LDRH            R1, [R4,#0x10]
84C36:  CMP             R0, R1
84C38:  BEQ             loc_84D36
84C3A:  ADDS            R6, #4
84C3C:  CMP             R6, R5
84C3E:  BNE             loc_84C2E
84C40:  LDRD.W          R6, R5, [R9,#0x1C]
84C44:  ADD.W           R8, R9, #8
84C48:  CMP             R6, R5
84C4A:  BEQ             loc_84C5A
84C4C:  LDR             R0, [R6]
84C4E:  BL              sub_7DB4C
84C52:  CBZ             R0, loc_84CBA
84C54:  ADDS            R6, #4
84C56:  CMP             R6, R5
84C58:  BNE             loc_84C4C
84C5A:  MOVW            R0, #0x25D0; unsigned int
84C5E:  BLX             j__Znwj; operator new(uint)
84C62:  LDR.W           R1, [R9,#4]
84C66:  MOV             R6, R0
84C68:  BL              sub_7D980
84C6C:  LDRD.W          R0, R1, [R9,#0x20]
84C70:  STR             R6, [SP,#0x28+var_28]
84C72:  CMP             R0, R1
84C74:  BCS             loc_84C84
84C76:  MOVS            R1, #0
84C78:  STR             R1, [SP,#0x28+var_28]
84C7A:  STR.W           R6, [R0],#4
84C7E:  STR.W           R0, [R9,#0x20]
84C82:  B               loc_84C8C
84C84:  MOV             R1, SP
84C86:  MOV             R0, R10
84C88:  BL              sub_8533C
84C8C:  LDR             R0, [SP,#0x28+var_28]
84C8E:  MOVS            R1, #0
84C90:  STR             R1, [SP,#0x28+var_28]
84C92:  CBZ             R0, loc_84C9C
84C94:  BL              sub_7DACC
84C98:  BLX             j__ZdlPv; operator delete(void *)
84C9C:  LDRD.W          R0, R1, [R9,#0x1C]
84CA0:  CMP             R1, R0
84CA2:  BEQ             loc_84D44
84CA4:  SUBS            R2, R1, R0
84CA6:  ASRS            R2, R2, #2
84CA8:  ADD.W           R3, R0, R2,LSL#2
84CAC:  SUBS            R6, R3, #4
84CAE:  SUBS            R2, #1
84CB0:  BEQ             loc_84CFE
84CB2:  ADDS            R0, #4
84CB4:  CMP             R0, R1
84CB6:  BNE             loc_84CAE
84CB8:  B               loc_84D44
84CBA:  MOV             R0, R8
84CBC:  LDRH.W          R10, [R4,#0x10]
84CC0:  LDR             R5, [R6]
84CC2:  BL              sub_860B6
84CC6:  LDRB            R2, [R0]
84CC8:  LDR             R3, [R0,#8]
84CCA:  LDR             R1, =(aSvDbgStreamPus - 0x84CD6); "[sv:dbg:stream:push] : channel %p was o"... ...
84CCC:  LSLS            R2, R2, #0x1F
84CCE:  IT EQ
84CD0:  ADDEQ           R3, R0, #1
84CD2:  ADD             R1, PC; "[sv:dbg:stream:push] : channel %p was o"...
84CD4:  MOV             R2, R10
84CD6:  MOV             R0, R1
84CD8:  MOV             R1, R5
84CDA:  BL              sub_80664
84CDE:  LDR.W           R10, [R6]
84CE2:  MOV             R0, R10
84CE4:  BL              sub_7DB4C
84CE8:  CMP             R0, #0
84CEA:  ITT NE
84CEC:  LDRDNE.W        R5, R11, [R9,#0x34]
84CF0:  CMPNE           R5, R11
84CF2:  BNE             loc_84D5E
84CF4:  LDRH            R1, [R4,#0x10]
84CF6:  LDR             R0, [R6]
84CF8:  BL              sub_7DB48
84CFC:  B               loc_84D36
84CFE:  LDRH            R1, [R4,#0x10]
84D00:  LDR             R0, [R6]
84D02:  BL              sub_7DB48
84D06:  MOV             R0, R8
84D08:  LDRH.W          R10, [R4,#0x10]
84D0C:  LDR             R5, [R6]
84D0E:  BL              sub_860B6
84D12:  LDRB            R2, [R0]
84D14:  LDR             R3, [R0,#8]
84D16:  LDR             R1, =(aSvDbgStreamPus_0 - 0x84D22); "[sv:dbg:stream:push] : channel %p for p"... ...
84D18:  LSLS            R2, R2, #0x1F
84D1A:  IT EQ
84D1C:  ADDEQ           R3, R0, #1
84D1E:  ADD             R1, PC; "[sv:dbg:stream:push] : channel %p for p"...
84D20:  MOV             R2, R10
84D22:  MOV             R0, R1
84D24:  MOV             R1, R5
84D26:  BL              sub_80664
84D2A:  LDR.W           R0, [R9]
84D2E:  LDR             R1, [R6]
84D30:  LDR             R2, [R0,#0xC]
84D32:  MOV             R0, R9
84D34:  BLX             R2
84D36:  LDRH            R3, [R4,#0x12]
84D38:  ADD.W           R2, R4, #0x18
84D3C:  LDR             R1, [R4,#0x14]
84D3E:  LDR             R0, [R6]
84D40:  BL              sub_7DBE4
84D44:  LDR             R0, [SP,#0x28+var_20]
84D46:  LDR             R1, =(__stack_chk_guard_ptr - 0x84D4C)
84D48:  ADD             R1, PC; __stack_chk_guard_ptr
84D4A:  LDR             R1, [R1]; __stack_chk_guard
84D4C:  LDR             R1, [R1]
84D4E:  CMP             R1, R0
84D50:  ITTT EQ
84D52:  ADDEQ           SP, SP, #0xC
84D54:  POPEQ.W         {R8-R11}
84D58:  POPEQ           {R4-R7,PC}
84D5A:  BLX             __stack_chk_fail
84D5E:  SUB.W           R8, R7, #-var_22
84D62:  B               loc_84D6A
84D64:  ADDS            R5, #0x18
84D66:  CMP             R5, R11
84D68:  BEQ             loc_84CF4
84D6A:  LDR             R0, [R5,#0x10]
84D6C:  CMP             R0, #0
84D6E:  BEQ             loc_84D64
84D70:  MOV             R0, R10
84D72:  BL              sub_7DB5A
84D76:  MOV             R1, R0
84D78:  LDR             R0, [R5,#0x10]
84D7A:  STRH.W          R1, [R7,#var_22]
84D7E:  CBZ             R0, loc_84D8C
84D80:  LDR             R1, [R0]
84D82:  LDR             R3, [R1,#0x18]
84D84:  MOV             R1, R9
84D86:  MOV             R2, R8
84D88:  BLX             R3
84D8A:  B               loc_84D64
84D8C:  BL              sub_85628
