; =========================================================
; Game Engine Function: sub_146C48
; Address            : 0x146C48 - 0x146D68
; =========================================================

146C48:  PUSH            {R4-R7,LR}
146C4A:  ADD             R7, SP, #0xC
146C4C:  PUSH.W          {R11}
146C50:  SUB.W           SP, SP, #0x950
146C54:  LDR             R1, =(off_23496C - 0x146C5A)
146C56:  ADD             R1, PC; off_23496C
146C58:  LDR             R1, [R1]; dword_23DEF4
146C5A:  LDR             R1, [R1]
146C5C:  LDR.W           R1, [R1,#0x3B0]
146C60:  LDR             R4, [R1,#0x14]
146C62:  CMP             R4, #0
146C64:  BEQ             loc_146D5E
146C66:  LDRD.W          R5, R6, [R0]
146C6A:  MOVS            R0, #0
146C6C:  STRD.W          R0, R0, [R7,#var_40]
146C70:  MOVW            R1, #0x801; n
146C74:  STR.W           R0, [R7,#var_38]
146C78:  ADD             R0, SP, #0x960+s; int
146C7A:  BLX             sub_22178C
146C7E:  ASRS            R0, R6, #0x1F
146C80:  MOVS            R1, #1
146C82:  ADD.W           R0, R6, R0,LSR#29
146C86:  MOVS            R3, #0
146C88:  ADD.W           R2, R1, R0,ASR#3; size
146C8C:  ADD             R0, SP, #0x960+var_95C; int
146C8E:  MOV             R1, R5; src
146C90:  BL              sub_17D4F2
146C94:  SUB.W           R1, R7, #-var_12; int
146C98:  MOVS            R2, #0x10
146C9A:  MOVS            R3, #1
146C9C:  BL              sub_17D786
146CA0:  SUB.W           R5, R7, #-var_40
146CA4:  ADD             R0, SP, #0x960+var_95C; int
146CA6:  ADD.W           R1, R5, #0xC; int
146CAA:  MOVS            R2, #0x20 ; ' '
146CAC:  MOVS            R3, #1
146CAE:  BL              sub_17D786
146CB2:  ADD.W           R1, R5, #0x10; int
146CB6:  ADD             R0, SP, #0x960+var_95C; int
146CB8:  MOVS            R2, #0x20 ; ' '
146CBA:  MOVS            R3, #1
146CBC:  BL              sub_17D786
146CC0:  ADD.W           R1, R5, #0x14; int
146CC4:  ADD             R0, SP, #0x960+var_95C; int
146CC6:  MOVS            R2, #0x20 ; ' '
146CC8:  MOVS            R3, #1
146CCA:  BL              sub_17D786
146CCE:  ADD.W           R1, R5, #0x18; int
146CD2:  ADD             R0, SP, #0x960+var_95C; int
146CD4:  MOVS            R2, #0x20 ; ' '
146CD6:  MOVS            R3, #1
146CD8:  BL              sub_17D786
146CDC:  ADD.W           R1, R5, #0x1C; int
146CE0:  ADD             R0, SP, #0x960+var_95C; int
146CE2:  MOVS            R2, #0x20 ; ' '
146CE4:  MOVS            R3, #1
146CE6:  BL              sub_17D786
146CEA:  ADD.W           R1, R5, #0x20 ; ' '; int
146CEE:  ADD             R0, SP, #0x960+var_95C; int
146CF0:  MOVS            R2, #8
146CF2:  MOVS            R3, #1
146CF4:  BL              sub_17D786
146CF8:  ADD.W           R1, R5, #0x22 ; '"'; int
146CFC:  ADD             R0, SP, #0x960+var_95C; int
146CFE:  MOVS            R2, #0x10
146D00:  MOVS            R3, #1
146D02:  BL              sub_17D786
146D06:  ADD.W           R1, R5, #0x24 ; '$'; int
146D0A:  ADD             R0, SP, #0x960+var_95C; int
146D0C:  MOVS            R2, #0x10
146D0E:  MOVS            R3, #1
146D10:  BL              sub_17D786
146D14:  BL              sub_18CEC8
146D18:  MOVS            R1, #0
146D1A:  ADD             R3, SP, #0x960+var_95C
146D1C:  STR             R1, [SP,#0x960+var_960]
146D1E:  ADD             R1, SP, #0x960+s
146D20:  MOV.W           R2, #0x800
146D24:  BL              sub_18D07E
146D28:  SUB.W           R0, R7, #-var_40; int
146D2C:  ADD             R1, SP, #0x960+s; s
146D2E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
146D32:  LDRH.W          R1, [R7,#var_12]
146D36:  MOVS            R0, #0
146D38:  CMP.W           R0, R1,LSR#11
146D3C:  BNE             loc_146D48
146D3E:  SUB.W           R2, R7, #-var_40
146D42:  MOV             R0, R4
146D44:  BL              sub_14F898
146D48:  ADD             R0, SP, #0x960+var_95C
146D4A:  BL              sub_17D542
146D4E:  LDRB.W          R0, [R7,#var_40]
146D52:  LSLS            R0, R0, #0x1F
146D54:  ITT NE
146D56:  LDRNE.W         R0, [R7,#var_38]; void *
146D5A:  BLXNE           j__ZdlPv; operator delete(void *)
146D5E:  ADD.W           SP, SP, #0x950
146D62:  POP.W           {R11}
146D66:  POP             {R4-R7,PC}
