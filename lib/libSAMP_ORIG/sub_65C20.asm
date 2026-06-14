; =========================================================
; Game Engine Function: sub_65C20
; Address            : 0x65C20 - 0x65E56
; =========================================================

65C20:  PUSH            {R4-R7,LR}
65C22:  ADD             R7, SP, #0xC
65C24:  PUSH.W          {R8-R11}
65C28:  SUB             SP, SP, #0x64
65C2A:  MOV             R6, R0
65C2C:  LDR             R0, =(__stack_chk_guard_ptr - 0x65C32)
65C2E:  ADD             R0, PC; __stack_chk_guard_ptr
65C30:  LDR             R0, [R0]; __stack_chk_guard
65C32:  LDR             R0, [R0]
65C34:  STR             R0, [SP,#0x80+var_20]
65C36:  LDR             R0, [R6,#0x5C]
65C38:  CMP             R0, #0
65C3A:  BEQ.W           loc_65D94
65C3E:  LDR             R0, [R6,#8]
65C40:  MOV             R4, R3
65C42:  MOV             R5, R2
65C44:  MOV             R10, R1
65C46:  BL              sub_685E0
65C4A:  CMP             R4, #9
65C4C:  BHI.W           loc_65D94
65C50:  CMP             R0, #0
65C52:  BEQ.W           loc_65D94
65C56:  CMP             R5, #0
65C58:  BEQ             loc_65D4C
65C5A:  LDR             R0, =(off_114AA8 - 0x65C68)
65C5C:  MOV             R8, #0x667D24
65C64:  ADD             R0, PC; off_114AA8
65C66:  LDR.W           R11, [R0]; dword_1A4404
65C6A:  LDR             R0, [R6,#0x5C]
65C6C:  LDR.W           R1, [R11]
65C70:  LDR             R0, [R0]
65C72:  ADD             R1, R8
65C74:  CMP             R0, R1
65C76:  ITT NE
65C78:  LDRNE           R0, [R6,#4]
65C7A:  CMPNE           R0, #0
65C7C:  BEQ.W           loc_65D94
65C80:  LDR             R1, [R7,#arg_4]
65C82:  SUBS            R1, #1
65C84:  CMP             R1, #0x11
65C86:  BHI.W           loc_65D94
65C8A:  LDR             R1, [R0,#0x18]
65C8C:  CMP             R1, #0
65C8E:  BEQ.W           loc_65D94
65C92:  LDR             R3, =(unk_1176A0 - 0x65CA0)
65C94:  MOV.W           R9, #0x23C
65C98:  LDRD.W          R12, R5, [R7,#arg_14]
65C9C:  ADD             R3, PC; unk_1176A0
65C9E:  LDR.W           LR, [R7,#arg_0]
65CA2:  MLA.W           R2, R10, R9, R3
65CA6:  ADD             R2, R4
65CA8:  LDRB.W          R1, [R2,#0x208]
65CAC:  ADD.W           R2, R2, #0x208
65CB0:  STR             R2, [SP,#0x80+var_5C]
65CB2:  CBZ             R1, loc_65D06
65CB4:  MLA.W           R0, R10, R9, R3
65CB8:  ADD.W           R1, R0, R4,LSL#2
65CBC:  LDR.W           R0, [R1,#0x214]
65CC0:  CBZ             R0, loc_65CDE
65CC2:  ADD.W           R9, R1, #0x214
65CC6:  LDR             R1, [R0]
65CC8:  MOV             R5, R3
65CCA:  LDR             R1, [R1,#4]
65CCC:  BLX             R1
65CCE:  MOV             R3, R5
65CD0:  LDR.W           LR, [R7,#arg_0]
65CD4:  LDRD.W          R12, R5, [R7,#arg_14]
65CD8:  MOVS            R0, #0
65CDA:  STR.W           R0, [R9]
65CDE:  MOV.W           R0, #0x23C
65CE2:  MOVS            R1, #0x34 ; '4'
65CE4:  MLA.W           R0, R10, R0, R3
65CE8:  VMOV.I32        Q8, #0
65CEC:  LDR             R2, [SP,#0x80+var_5C]
65CEE:  MLA.W           R0, R4, R1, R0
65CF2:  MOVS            R1, #0
65CF4:  VST1.32         {D16-D17}, [R0]!
65CF8:  VST1.32         {D16-D17}, [R0]!
65CFC:  VST1.32         {D16-D17}, [R0]!
65D00:  STR             R1, [R0]
65D02:  LDR             R0, [R6,#4]
65D04:  STRB            R1, [R2]
65D06:  LDR             R1, [R7,#arg_30]
65D08:  CMP             R0, #0
65D0A:  STR             R1, [SP,#0x80+var_28]
65D0C:  LDR             R1, [R7,#arg_2C]
65D0E:  STR             R1, [SP,#0x80+var_2C]
65D10:  LDR             R1, [R7,#arg_28]
65D12:  STR             R1, [SP,#0x80+var_30]
65D14:  LDR             R1, [R7,#arg_24]
65D16:  STR             R1, [SP,#0x80+var_34]
65D18:  LDR             R1, [R7,#arg_20]
65D1A:  STR             R1, [SP,#0x80+var_38]
65D1C:  LDR             R1, [R7,#arg_10]
65D1E:  STR             R1, [SP,#0x80+var_48]
65D20:  LDR             R1, [R7,#arg_C]
65D22:  STR             R1, [SP,#0x80+var_4C]
65D24:  LDR             R1, [R7,#arg_8]
65D26:  STR             R1, [SP,#0x80+var_50]
65D28:  LDR             R1, [R7,#arg_4]
65D2A:  LDR             R6, [R7,#arg_1C]
65D2C:  STR             R6, [SP,#0x80+var_3C]
65D2E:  STRD.W          R12, R5, [SP,#0x80+var_44]
65D32:  STRD.W          LR, R1, [SP,#0x80+var_58]
65D36:  ITT NE
65D38:  LDRNE           R0, [R0,#0x14]
65D3A:  CMPNE           R0, #0
65D3C:  BNE             loc_65DAE
65D3E:  MOVS            R0, #0
65D40:  MOV.W           R9, #0
65D44:  STR             R0, [SP,#0x80+var_60]
65D46:  MOVS            R0, #0
65D48:  STR             R0, [SP,#0x80+var_64]
65D4A:  B               loc_65DBA
65D4C:  LDR             R5, =(unk_1176A0 - 0x65D56)
65D4E:  MOV.W           R8, #0x23C
65D52:  ADD             R5, PC; unk_1176A0
65D54:  MLA.W           R0, R10, R8, R5
65D58:  ADD.W           R1, R0, R4,LSL#2
65D5C:  LDR.W           R0, [R1,#0x214]
65D60:  CBZ             R0, loc_65D70
65D62:  ADD.W           R6, R1, #0x214
65D66:  LDR             R1, [R0]
65D68:  LDR             R1, [R1,#4]
65D6A:  BLX             R1
65D6C:  MOVS            R0, #0
65D6E:  STR             R0, [R6]
65D70:  MLA.W           R0, R10, R8, R5
65D74:  MOVS            R1, #0x34 ; '4'
65D76:  VMOV.I32        Q8, #0
65D7A:  MOVS            R2, #0
65D7C:  MLA.W           R1, R4, R1, R0
65D80:  ADD             R0, R4
65D82:  VST1.32         {D16-D17}, [R1]!
65D86:  VST1.32         {D16-D17}, [R1]!
65D8A:  VST1.32         {D16-D17}, [R1]!
65D8E:  STR             R2, [R1]
65D90:  STRB.W          R2, [R0,#0x208]
65D94:  LDR             R0, [SP,#0x80+var_20]
65D96:  LDR             R1, =(__stack_chk_guard_ptr - 0x65D9C)
65D98:  ADD             R1, PC; __stack_chk_guard_ptr
65D9A:  LDR             R1, [R1]; __stack_chk_guard
65D9C:  LDR             R1, [R1]
65D9E:  CMP             R1, R0
65DA0:  ITTT EQ
65DA2:  ADDEQ           SP, SP, #0x64 ; 'd'
65DA4:  POPEQ.W         {R8-R11}
65DA8:  POPEQ           {R4-R7,PC}
65DAA:  BLX             __stack_chk_fail
65DAE:  LDR.W           R9, [R0,#0x38]
65DB2:  LDR             R1, [R0,#0x30]
65DB4:  STR             R1, [SP,#0x80+var_60]
65DB6:  LDR             R1, [R0,#0x34]
65DB8:  STR             R1, [SP,#0x80+var_64]
65DBA:  MOV.W           R0, #0x23C
65DBE:  MOVS            R1, #0x34 ; '4'
65DC0:  MLA.W           R10, R10, R0, R3
65DC4:  ADD             R0, SP, #0x80+var_58
65DC6:  VLD1.32         {D16-D17}, [R0]!
65DCA:  MLA.W           R1, R4, R1, R10
65DCE:  VLD1.32         {D18-D19}, [R0]!
65DD2:  VLD1.32         {D20-D21}, [R0]!
65DD6:  LDR             R0, [R0]
65DD8:  VST1.32         {D16-D17}, [R1]!
65DDC:  VST1.32         {D18-D19}, [R1]!
65DE0:  VST1.32         {D20-D21}, [R1]!
65DE4:  STR             R0, [R1]
65DE6:  MOV.W           R0, #0x4A0; unsigned int
65DEA:  BLX             j__Znwj; operator new(uint)
65DEE:  MOV             R5, R0
65DF0:  LDR             R0, =(off_114AB0 - 0x65DF8)
65DF2:  LDR             R1, =(_ZTV7CObject - 0x65DFA); `vtable for'CObject ...
65DF4:  ADD             R0, PC; off_114AB0
65DF6:  ADD             R1, PC; `vtable for'CObject
65DF8:  LDR             R0, [R0]; dword_1A4408
65DFA:  ADDS            R1, #8
65DFC:  STR             R1, [R5]
65DFE:  LDR             R0, [R0]
65E00:  MOVS            R2, #0
65E02:  MOVS            R1, #1
65E04:  MOVT            R2, #0x4348
65E08:  LDR             R3, [R7,#arg_14]
65E0A:  STRD.W          R2, R1, [SP,#0x80+var_70]
65E0E:  MOVW            R1, #:lower16:(loc_101808+1)
65E12:  STR             R3, [SP,#0x80+var_7C]
65E14:  MOVT            R1, #:upper16:(loc_101808+1)
65E18:  LDR             R3, [R7,#arg_18]
65E1A:  STRD.W          R3, R6, [SP,#0x80+var_78]
65E1E:  ADDS            R6, R0, R1
65E20:  LDR             R1, [R7,#arg_0]
65E22:  MOV             R0, R5
65E24:  LDRD.W          R3, R2, [SP,#0x80+var_64]
65E28:  STR.W           R9, [SP,#0x80+var_80]
65E2C:  BLX             R6
65E2E:  LDR             R0, [R5,#4]
65E30:  ADD.W           R1, R10, R4,LSL#2
65E34:  STR.W           R5, [R1,#0x214]
65E38:  CBZ             R0, loc_65E4E
65E3A:  LDR.W           R1, [R11]
65E3E:  LDR             R2, [R0]
65E40:  ADD             R1, R8
65E42:  CMP             R2, R1
65E44:  ITTT NE
65E46:  MOVNE           R1, #0xA2
65E48:  MOVTNE          R1, #0x1800
65E4C:  STRNE           R1, [R0,#0x1C]
65E4E:  LDR             R1, [SP,#0x80+var_5C]
65E50:  MOVS            R0, #1
65E52:  STRB            R0, [R1]
65E54:  B               loc_65D94
