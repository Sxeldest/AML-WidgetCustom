; =========================================================
; Game Engine Function: sub_80B40
; Address            : 0x80B40 - 0x80D9E
; =========================================================

80B40:  PUSH            {R4-R7,LR}
80B42:  ADD             R7, SP, #0xC
80B44:  PUSH.W          {R8-R10}
80B48:  SUB.W           SP, SP, #0x568
80B4C:  LDR             R0, =(__stack_chk_guard_ptr - 0x80B52)
80B4E:  ADD             R0, PC; __stack_chk_guard_ptr
80B50:  LDR             R0, [R0]; __stack_chk_guard
80B52:  LDR             R0, [R0]
80B54:  STR.W           R0, [R7,#var_1C]
80B58:  BL              sub_86790
80B5C:  CMP             R0, #0
80B5E:  BEQ.W           loc_80C82
80B62:  ADD             R0, SP, #0x580+var_57C
80B64:  BL              sub_7E86C
80B68:  LDR             R0, [SP,#0x580+var_57C]
80B6A:  CBZ             R0, loc_80B9E
80B6C:  ADD             R4, SP, #0x580+var_57C
80B6E:  MOVS            R6, #0
80B70:  B               loc_80B7C
80B72:  MOV             R0, R4
80B74:  BL              sub_7E86C
80B78:  LDR             R0, [SP,#0x580+var_57C]
80B7A:  CBZ             R0, loc_80B9E
80B7C:  LDR             R0, [R0]
80B7E:  BL              sub_80DF0
80B82:  LDR             R5, [SP,#0x580+var_57C]
80B84:  STR             R6, [SP,#0x580+var_57C]
80B86:  CMP             R5, #0
80B88:  BEQ             loc_80B72
80B8A:  LDR             R0, [R5]; void *
80B8C:  CMP             R0, #0
80B8E:  ITT NE
80B90:  STRNE           R0, [R5,#4]
80B92:  BLXNE           j__ZdlPv; operator delete(void *)
80B96:  MOV             R0, R5; void *
80B98:  BLX             j__ZdlPv; operator delete(void *)
80B9C:  B               loc_80B72
80B9E:  ADD             R0, SP, #0x580+var_57C
80BA0:  BL              sub_7E914
80BA4:  LDR             R5, [SP,#0x580+var_57C]
80BA6:  LDR             R4, =(dword_1A49D8 - 0x80BAC)
80BA8:  ADD             R4, PC; dword_1A49D8
80BAA:  CBZ             R5, loc_80C20
80BAC:  ADD.W           R9, SP, #0x580+var_57C
80BB0:  MOV.W           R8, #0
80BB4:  B               loc_80BD6
80BB6:  STR.W           R8, [SP,#0x580+var_57C]
80BBA:  LDR             R0, [R5]; void *
80BBC:  CMP             R0, #0
80BBE:  ITT NE
80BC0:  STRNE           R0, [R5,#4]
80BC2:  BLXNE           j__ZdlPv; operator delete(void *)
80BC6:  MOV             R0, R5; void *
80BC8:  BLX             j__ZdlPv; operator delete(void *)
80BCC:  MOV             R0, R9
80BCE:  BL              sub_7E914
80BD2:  LDR             R5, [SP,#0x580+var_57C]
80BD4:  CBZ             R5, loc_80C20
80BD6:  LDR             R2, [R4,#(dword_1A49DC - 0x1A49D8)]
80BD8:  CMP             R2, #0
80BDA:  BEQ             loc_80BB6
80BDC:  LDR.W           R12, [R5]
80BE0:  MOV             R10, R4
80BE2:  ADDS            R4, #4
80BE4:  LDR.W           R0, [R12,#0xC]
80BE8:  MOV             R3, R4
80BEA:  LDR             R6, [R2,#0x10]
80BEC:  MOV             R1, R2
80BEE:  CMP             R6, R0
80BF0:  IT CC
80BF2:  ADDCC           R1, #4
80BF4:  LDR             R1, [R1]
80BF6:  IT CS
80BF8:  MOVCS           R3, R2
80BFA:  CMP             R1, #0
80BFC:  MOV             R2, R1
80BFE:  BNE             loc_80BEA
80C00:  CMP             R3, R4
80C02:  BEQ             loc_80C14
80C04:  LDR             R1, [R3,#0x10]
80C06:  CMP             R0, R1
80C08:  BCC             loc_80C14
80C0A:  LDR             R0, [R3,#0x14]
80C0C:  MOV             R1, R12
80C0E:  BL              sub_84C08
80C12:  LDR             R5, [SP,#0x580+var_57C]
80C14:  CMP             R5, #0
80C16:  MOV             R4, R10
80C18:  STR.W           R8, [SP,#0x580+var_57C]
80C1C:  BNE             loc_80BBA
80C1E:  B               loc_80BCC
80C20:  MOV             R0, R4
80C22:  LDR.W           R5, [R0],#4
80C26:  CMP             R5, R0
80C28:  BEQ             loc_80C66
80C2A:  ADDS            R4, #4
80C2C:  B               loc_80C32
80C2E:  CMP             R5, R4
80C30:  BEQ             loc_80C66
80C32:  LDR             R0, [R5,#0x14]
80C34:  LDR             R1, [R0]
80C36:  LDR             R1, [R1,#8]
80C38:  BLX             R1
80C3A:  LDR             R0, [R5,#4]
80C3C:  CBZ             R0, loc_80C48
80C3E:  MOV             R5, R0
80C40:  LDR             R0, [R0]
80C42:  CMP             R0, #0
80C44:  BNE             loc_80C3E
80C46:  B               loc_80C2E
80C48:  MOV             R0, R5
80C4A:  LDR.W           R1, [R0,#8]!
80C4E:  LDR             R2, [R1]
80C50:  CMP             R2, R5
80C52:  MOV             R5, R1
80C54:  BEQ             loc_80C2E
80C56:  LDR             R1, [R0]
80C58:  MOV             R0, R1
80C5A:  LDR.W           R5, [R0,#8]!
80C5E:  LDR             R2, [R5]
80C60:  CMP             R2, R1
80C62:  BNE             loc_80C56
80C64:  B               loc_80C2E
80C66:  BL              sub_80290
80C6A:  BL              sub_832B0
80C6E:  LDR             R0, =(off_114B10 - 0x80C74)
80C70:  ADD             R0, PC; off_114B10
80C72:  LDR             R5, [R0]; dword_1A442C
80C74:  LDR             R0, [R5]
80C76:  CMP             R0, #0
80C78:  ITT NE
80C7A:  LDRNE.W         R0, [R0,#0x80]
80C7E:  CMPNE           R0, #0
80C80:  BNE             loc_80CA0
80C82:  LDR.W           R0, [R7,#var_1C]
80C86:  LDR             R1, =(__stack_chk_guard_ptr - 0x80C8C)
80C88:  ADD             R1, PC; __stack_chk_guard_ptr
80C8A:  LDR             R1, [R1]; __stack_chk_guard
80C8C:  LDR             R1, [R1]
80C8E:  CMP             R1, R0
80C90:  ITTT EQ
80C92:  ADDEQ.W         SP, SP, #0x568
80C96:  POPEQ.W         {R8-R10}
80C9A:  POPEQ           {R4-R7,PC}
80C9C:  BLX             __stack_chk_fail
80CA0:  BL              sub_7E420
80CA4:  CBZ             R0, loc_80D00
80CA6:  BL              sub_7EFDC
80CAA:  CMP             R0, #3
80CAC:  BNE             loc_80D00
80CAE:  LDR             R4, =(dword_116E04 - 0x80CB4)
80CB0:  ADD             R4, PC; dword_116E04
80CB2:  LDR             R0, [R4]
80CB4:  ADDS            R0, #1
80CB6:  BEQ             loc_80D00
80CB8:  LDR             R0, =(byte_1A49E4 - 0x80CBE)
80CBA:  ADD             R0, PC; byte_1A49E4
80CBC:  LDRB            R0, [R0]
80CBE:  CBNZ            R0, loc_80D00
80CC0:  LDR             R0, [R5]
80CC2:  LDR             R6, =(byte_1A49E5 - 0x80CCC)
80CC4:  LDR.W           R0, [R0,#0x80]
80CC8:  ADD             R6, PC; byte_1A49E5
80CCA:  LDRB            R0, [R0,#1]
80CCC:  CBZ             R0, loc_80CE2
80CCE:  LDRB            R0, [R6]
80CD0:  CBNZ            R0, loc_80CE2
80CD2:  BL              sub_8265C
80CD6:  CMP             R0, #0
80CD8:  ITT NE
80CDA:  LDRNE           R1, [R4]
80CDC:  ADDSNE.W        R0, R1, #1
80CE0:  BNE             loc_80D34
80CE2:  LDR             R0, [R5]
80CE4:  LDR.W           R0, [R0,#0x80]
80CE8:  LDRB            R0, [R0,#1]
80CEA:  CBNZ            R0, loc_80D00
80CEC:  LDRB            R0, [R6]
80CEE:  CBZ             R0, loc_80D00
80CF0:  BL              sub_8265C
80CF4:  CMP             R0, #0
80CF6:  ITT NE
80CF8:  LDRNE           R1, [R4]
80CFA:  ADDSNE.W        R0, R1, #1
80CFE:  BNE             loc_80D6A
80D00:  ADD             R0, SP, #0x580+var_57C
80D02:  MOV.W           R1, #0x560
80D06:  BL              sub_83340
80D0A:  CMP             R0, #0
80D0C:  BEQ             loc_80C82
80D0E:  UXTH            R1, R0
80D10:  ADD             R0, SP, #0x580+var_57C
80D12:  BL              sub_7E7BC
80D16:  CBNZ            R0, loc_80D20
80D18:  LDR             R0, =(aSvErrPluginFai_3 - 0x80D1E); "[sv:err:plugin] : failed to send voice "... ...
80D1A:  ADD             R0, PC; "[sv:err:plugin] : failed to send voice "...
80D1C:  BL              sub_80664
80D20:  LDR             R0, =(byte_1A49E5 - 0x80D26)
80D22:  ADD             R0, PC; byte_1A49E5
80D24:  LDRB            R0, [R0]
80D26:  CMP             R0, #0
80D28:  BNE             loc_80C82
80D2A:  BL              sub_83224
80D2E:  BL              sub_7E84C
80D32:  B               loc_80C82
80D34:  LDR             R0, =(aSvDbgPluginAct - 0x80D3A); "[sv:dbg:plugin] : activation key(%hhu) "... ...
80D36:  ADD             R0, PC; "[sv:dbg:plugin] : activation key(%hhu) "...
80D38:  BL              sub_80664
80D3C:  LDR             R0, =(byte_1A49E6 - 0x80D42)
80D3E:  ADD             R0, PC; byte_1A49E6
80D40:  LDRB            R0, [R0]
80D42:  CBNZ            R0, loc_80D4C
80D44:  MOVS            R0, #1
80D46:  STRB            R0, [R6]
80D48:  BL              sub_8345C
80D4C:  LDR             R0, [R4]
80D4E:  ADD             R1, SP, #0x580+var_57C
80D50:  STRB.W          R0, [SP,#0x580+var_57C]
80D54:  MOVS            R0, #0x11
80D56:  MOVS            R2, #1
80D58:  BL              sub_7E6E0
80D5C:  CMP             R0, #0
80D5E:  BNE             loc_80CE2
80D60:  LDR             R0, =(aSvErrMainHookw - 0x80D66); "[sv:err:main:HookWndProc] : failed to s"... ...
80D62:  ADD             R0, PC; "[sv:err:main:HookWndProc] : failed to s"...
80D64:  BL              sub_80664
80D68:  B               loc_80CE2
80D6A:  LDR             R0, =(aSvDbgPluginAct_0 - 0x80D70); "[sv:dbg:plugin] : activation key(%hhu) "... ...
80D6C:  ADD             R0, PC; "[sv:dbg:plugin] : activation key(%hhu) "...
80D6E:  BL              sub_80664
80D72:  LDR             R0, =(byte_1A49E6 - 0x80D7C)
80D74:  ADD             R1, SP, #0x580+var_57C
80D76:  MOVS            R2, #1
80D78:  ADD             R0, PC; byte_1A49E6
80D7A:  LDRB            R0, [R0]
80D7C:  CMP             R0, #0
80D7E:  ITT EQ
80D80:  MOVEQ           R0, #0
80D82:  STRBEQ          R0, [R6]
80D84:  LDR             R0, [R4]
80D86:  STRB.W          R0, [SP,#0x580+var_57C]
80D8A:  MOVS            R0, #0x12
80D8C:  BL              sub_7E6E0
80D90:  CMP             R0, #0
80D92:  BNE             loc_80D00
80D94:  LDR             R0, =(aSvErrMainHookw_0 - 0x80D9A); "[sv:err:main:HookWndProc] : failed to s"... ...
80D96:  ADD             R0, PC; "[sv:err:main:HookWndProc] : failed to s"...
80D98:  BL              sub_80664
80D9C:  B               loc_80D00
