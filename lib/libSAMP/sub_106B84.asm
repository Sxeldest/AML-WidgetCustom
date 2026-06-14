; =========================================================
; Game Engine Function: sub_106B84
; Address            : 0x106B84 - 0x106E04
; =========================================================

106B84:  PUSH            {R4,R5,R7,LR}
106B86:  ADD             R7, SP, #8
106B88:  SUB             SP, SP, #0x18
106B8A:  MOV             R4, R0
106B8C:  LDR             R0, [R0,#0x5C]
106B8E:  CMP             R0, #0
106B90:  BEQ.W           loc_106E00
106B94:  MOV             R0, R4
106B96:  BL              sub_F8C70
106B9A:  CMP             R0, #0
106B9C:  BEQ.W           loc_106E00
106BA0:  LDR             R0, [R4,#8]
106BA2:  BL              sub_1082F4
106BA6:  CMP             R0, #0
106BA8:  BEQ.W           loc_106E00
106BAC:  LDR             R0, [R4,#0x58]
106BAE:  CBZ             R0, loc_106C06
106BB0:  LDRB            R5, [R0]
106BB2:  CMP             R5, #2
106BB4:  BNE             loc_106C08
106BB6:  LDR             R0, [R4,#0x5C]
106BB8:  CBZ             R0, loc_106BE2
106BBA:  LDRB.W          R1, [R0,#0x485]
106BBE:  LSLS            R1, R1, #0x1B
106BC0:  BMI             loc_106BE2
106BC2:  LDR.W           R0, [R0,#0x440]
106BC6:  LDR             R0, [R0,#0x10]
106BC8:  CBZ             R0, loc_106BE2
106BCA:  LDR             R1, =(off_23494C - 0x106BD2)
106BCC:  LDR             R0, [R0]
106BCE:  ADD             R1, PC; off_23494C
106BD0:  LDR             R1, [R1]; dword_23DF24
106BD2:  LDR             R1, [R1]
106BD4:  SUBS            R0, R0, R1
106BD6:  MOV             R1, #0x66CC38
106BDE:  CMP             R0, R1
106BE0:  BEQ             loc_106C02
106BE2:  LDR             R0, =(off_23496C - 0x106BEC)
106BE4:  MOVW            R1, #0x13BC
106BE8:  ADD             R0, PC; off_23496C
106BEA:  LDR             R0, [R0]; dword_23DEF4
106BEC:  LDR             R0, [R0]
106BEE:  LDR.W           R0, [R0,#0x3B0]
106BF2:  LDR             R0, [R0]
106BF4:  LDR             R0, [R0,R1]
106BF6:  LDR             R0, [R0,#0x1C]
106BF8:  CMP             R0, R4
106BFA:  BEQ             loc_106C02
106BFC:  MOV             R0, R4
106BFE:  BL              sub_106164
106C02:  MOVS            R5, #2
106C04:  B               def_106C42; jumptable 00106C42 default case
106C06:  MOVS            R5, #0
106C08:  LDR             R0, [R4,#0x5C]
106C0A:  CBZ             R0, loc_106C3A
106C0C:  LDRB.W          R1, [R0,#0x485]
106C10:  LSLS            R1, R1, #0x1B
106C12:  BMI             loc_106C3A
106C14:  LDR.W           R0, [R0,#0x440]
106C18:  LDR             R0, [R0,#0x10]
106C1A:  CBZ             R0, loc_106C3A
106C1C:  LDR             R1, =(off_23494C - 0x106C24)
106C1E:  LDR             R0, [R0]
106C20:  ADD             R1, PC; off_23494C
106C22:  LDR             R1, [R1]; dword_23DF24
106C24:  LDR             R1, [R1]
106C26:  SUBS            R0, R0, R1
106C28:  MOV             R1, #0x66CC38
106C30:  CMP             R0, R1
106C32:  ITT EQ
106C34:  MOVEQ           R0, R4
106C36:  BLEQ            sub_1061F8
106C3A:  SUBS            R0, R5, #5; switch 4 cases
106C3C:  CMP             R0, #3
106C3E:  BHI             def_106C42; jumptable 00106C42 default case
106C40:  BHI             loc_106C70
106C42:  TBB.W           [PC,R0]; switch jump
106C46:  DCB 2; jump table for switch statement
106C47:  DCB 0x1C
106C48:  DCB 0x1E
106C49:  DCB 0x20
106C4A:  MOVS            R0, #0; jumptable 00106C42 case 5
106C4C:  B               loc_106C88
106C4E:  LDRB.W          R0, [R4,#0x39]; jumptable 00106C42 default case
106C52:  CBZ             R0, loc_106C5A
106C54:  MOV             R0, R4
106C56:  BL              sub_1062F4
106C5A:  CMP             R5, #0xA
106C5C:  BNE             loc_106CB2
106C5E:  MOV             R0, R4
106C60:  BL              sub_1064BC
106C64:  CBNZ            R0, loc_106C6C
106C66:  MOV             R0, R4
106C68:  BL              sub_10650C
106C6C:  MOVS            R5, #0xA
106C6E:  B               loc_106CDE
106C70:  LDRB.W          R0, [R4,#0x39]
106C74:  CBZ             R0, loc_106CB2
106C76:  MOV             R0, R4
106C78:  BL              sub_1062F4
106C7C:  B               loc_106CB2
106C7E:  MOVS            R0, #1; jumptable 00106C42 case 6
106C80:  B               loc_106C88
106C82:  MOVS            R0, #2; jumptable 00106C42 case 7
106C84:  B               loc_106C88
106C86:  MOVS            R0, #3; jumptable 00106C42 case 8
106C88:  LDRB.W          R1, [R4,#0x39]
106C8C:  STRB.W          R0, [R7,#var_9]
106C90:  CBZ             R1, loc_106CA8
106C92:  LDRB.W          R1, [R4,#0x38]
106C96:  CMP             R1, R0
106C98:  BNE             loc_106CA2
106C9A:  MOV             R0, R4
106C9C:  BL              sub_106334
106CA0:  B               loc_106CB2
106CA2:  MOV             R0, R4
106CA4:  BL              sub_1062F4
106CA8:  SUB.W           R1, R7, #-var_9
106CAC:  MOV             R0, R4
106CAE:  BL              sub_106248
106CB2:  MOV             R0, R4
106CB4:  BL              sub_1064BC
106CB8:  CBZ             R0, loc_106CC0
106CBA:  MOV             R0, R4
106CBC:  BL              sub_1062F4
106CC0:  CMP             R5, #0xB
106CC2:  BNE             loc_106CDE
106CC4:  LDRB.W          R0, [R4,#0x41]
106CC8:  CBNZ            R0, loc_106CDA
106CCA:  MOVS            R0, #1
106CCC:  SUB.W           R1, R7, #-var_A
106CD0:  STRB.W          R0, [R7,#var_A]
106CD4:  MOV             R0, R4
106CD6:  BL              sub_106544
106CDA:  MOVS            R5, #0xB
106CDC:  B               loc_106D10
106CDE:  LDRB.W          R0, [R4,#0x41]
106CE2:  CBZ             R0, loc_106CF4
106CE4:  MOVS            R0, #0
106CE6:  SUB.W           R1, R7, #-var_B
106CEA:  STRB.W          R0, [R7,#var_B]
106CEE:  MOV             R0, R4
106CF0:  BL              sub_106544
106CF4:  AND.W           R0, R5, #0xFC
106CF8:  CMP             R0, #0x14
106CFA:  BNE             loc_106D10
106CFC:  SUB.W           R0, R5, #0x14; switch 4 cases
106D00:  CMP             R0, #3
106D02:  BHI             def_106D04; jumptable 00106D04 default case
106D04:  TBB.W           [PC,R0]; switch jump
106D08:  DCB 2; jump table for switch statement
106D09:  DCB 0x21
106D0A:  DCB 0x23
106D0B:  DCB 0x25
106D0C:  MOVS            R0, #1; jumptable 00106D04 case 20
106D0E:  B               loc_106D54
106D10:  LDRB.W          R0, [R4,#0x3B]
106D14:  CBZ             R0, loc_106D1C
106D16:  MOV             R0, R4
106D18:  BL              sub_10679C
106D1C:  CMP             R5, #0x18
106D1E:  BNE             loc_106D70
106D20:  LDRB.W          R0, [R4,#0x42]
106D24:  CBZ             R0, loc_106D2E
106D26:  MOV             R0, R4
106D28:  BL              sub_1056D0
106D2C:  B               loc_106D38
106D2E:  MOVS            R0, #1
106D30:  STRB.W          R0, [R4,#0x44]
106D34:  STRB.W          R0, [R4,#0x42]
106D38:  MOVS            R5, #0x18
106D3A:  B               loc_106D92
106D3C:  LDRB.W          R0, [R4,#0x3B]; jumptable 00106D04 default case
106D40:  CBZ             R0, loc_106D70
106D42:  MOV             R0, R4
106D44:  BL              sub_10679C
106D48:  B               loc_106D70
106D4A:  MOVS            R0, #4; jumptable 00106D04 case 21
106D4C:  B               loc_106D54
106D4E:  MOVS            R0, #2; jumptable 00106D04 case 22
106D50:  B               loc_106D54
106D52:  MOVS            R0, #3; jumptable 00106D04 case 23
106D54:  LDRB.W          R1, [R4,#0x3B]
106D58:  STRB.W          R0, [SP,#0x20+var_C]
106D5C:  CMP             R1, R0
106D5E:  BNE             loc_106D68
106D60:  MOV             R0, R4
106D62:  BL              sub_1067FC
106D66:  B               loc_106D70
106D68:  ADD             R1, SP, #0x20+var_C
106D6A:  MOV             R0, R4
106D6C:  BL              sub_106580
106D70:  LDRB.W          R0, [R4,#0x42]
106D74:  CBZ             R0, loc_106D80
106D76:  MOVS            R0, #0
106D78:  STRB.W          R0, [R4,#0x44]
106D7C:  STRB.W          R0, [R4,#0x42]
106D80:  CMP             R5, #0x19
106D82:  BNE             loc_106D92
106D84:  LDRB.W          R0, [R4,#0x43]
106D88:  CBZ             R0, loc_106DB0
106D8A:  MOV             R0, R4
106D8C:  BL              sub_1056D0
106D90:  B               loc_106DB8
106D92:  LDRB.W          R0, [R4,#0x43]
106D96:  CBZ             R0, loc_106D9E
106D98:  MOVS            R0, #0
106D9A:  STRH.W          R0, [R4,#0x43]
106D9E:  CMP             R5, #0x44 ; 'D'
106DA0:  BNE             loc_106DB8
106DA2:  LDRB.W          R0, [R4,#0x40]
106DA6:  CBNZ            R0, loc_106DC4
106DA8:  MOV             R0, R4
106DAA:  BL              sub_106944
106DAE:  B               loc_106DC4
106DB0:  MOVW            R0, #0x101
106DB4:  STRH.W          R0, [R4,#0x43]
106DB8:  LDRB.W          R0, [R4,#0x40]
106DBC:  CBZ             R0, loc_106DC4
106DBE:  MOV             R0, R4
106DC0:  BL              sub_106A40
106DC4:  LDR             R0, [R4,#0x5C]
106DC6:  CBZ             R0, loc_106E00
106DC8:  LDR             R0, [R4,#0x68]
106DCA:  CBZ             R0, loc_106E00
106DCC:  MOV             R0, R4
106DCE:  BL              sub_104648
106DD2:  CMP             R0, #0x2E ; '.'
106DD4:  BEQ             loc_106E00
106DD6:  VMOV.I32        D16, #0
106DDA:  LDR             R1, [R4,#0x68]
106DDC:  LDR             R0, =(unk_B369A - 0x106DEC)
106DDE:  MOVS            R5, #0
106DE0:  STRD.W          R5, R5, [SP,#0x20+var_20]
106DE4:  VMOV            R2, R3, D16
106DE8:  ADD             R0, PC; unk_B369A
106DEA:  STRD.W          R5, R5, [SP,#0x20+var_18]
106DEE:  STR             R5, [SP,#0x20+var_10]
106DF0:  BL              sub_107188
106DF4:  LDR             R0, =(unk_B36AE - 0x106DFC)
106DF6:  LDR             R1, [R4,#0x68]
106DF8:  ADD             R0, PC; unk_B36AE
106DFA:  BL              sub_107188
106DFE:  STR             R5, [R4,#0x68]
106E00:  ADD             SP, SP, #0x18
106E02:  POP             {R4,R5,R7,PC}
