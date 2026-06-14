; =========================================================
; Game Engine Function: sub_63B30
; Address            : 0x63B30 - 0x654A6
; =========================================================

63B30:  PUSH            {R4-R7,LR}
63B32:  ADD             R7, SP, #0xC
63B34:  PUSH.W          {R8-R11}
63B38:  SUB             SP, SP, #4
63B3A:  VPUSH           {D8}
63B3E:  SUB.W           SP, SP, #0x620
63B42:  STR             R0, [SP,#0x648+var_628]
63B44:  MOV             R10, R1
63B46:  LDR             R0, =(off_114AB0 - 0x63B50)
63B48:  ADD.W           R11, SP, #0x648+s1
63B4C:  ADD             R0, PC; off_114AB0
63B4E:  LDR.W           R9, [R0]; dword_1A4408
63B52:  LDR             R0, =(__stack_chk_guard_ptr - 0x63B58)
63B54:  ADD             R0, PC; __stack_chk_guard_ptr
63B56:  LDR.W           R1, [R9]
63B5A:  LDR             R0, [R0]; __stack_chk_guard
63B5C:  LDR             R0, [R0]
63B5E:  STR.W           R0, [R7,#var_30]
63B62:  MOV             R0, #0x23DEF4
63B6A:  LDR             R0, [R1,R0]
63B6C:  MOVS            R1, #0xF8; n
63B6E:  STR             R0, [SP,#0x648+var_62C]
63B70:  MOV             R0, R11; int
63B72:  BLX             sub_10967C
63B76:  ADD.W           R5, SP, #0x648+var_220
63B7A:  MOVS            R1, #0xF8; n
63B7C:  MOV             R0, R5; int
63B7E:  BLX             sub_10967C
63B82:  ADD             R4, SP, #0x648+var_318
63B84:  MOVS            R1, #0xF8; n
63B86:  MOV             R0, R4; int
63B88:  BLX             sub_10967C
63B8C:  ADD             R6, SP, #0x648+var_410
63B8E:  MOVS            R1, #0xF8; n
63B90:  MOV             R0, R6; int
63B92:  BLX             sub_10967C
63B96:  ADD.W           R8, SP, #0x648+var_508
63B9A:  MOVS            R1, #0xF8; n
63B9C:  MOV             R0, R8; int
63B9E:  BLX             sub_10967C
63BA2:  LDR             R1, =(aSSSSS - 0x63BAE); "%s %s %s %s %s" ...
63BA4:  MOV             R0, R10; s
63BA6:  MOV             R2, R11
63BA8:  MOV             R3, R5
63BAA:  ADD             R1, PC; "%s %s %s %s %s"
63BAC:  STMEA.W         SP, {R4,R6,R8}
63BB0:  BLX             sscanf
63BB4:  LDR             R0, =(byte_1A3C04 - 0x63BBA)
63BB6:  ADD             R0, PC; byte_1A3C04
63BB8:  LDRB            R0, [R0]
63BBA:  DMB.W           ISH
63BBE:  LDR             R6, =(dword_1A3BFC - 0x63BC4)
63BC0:  ADD             R6, PC; dword_1A3BFC
63BC2:  LSLS            R0, R0, #0x1F
63BC4:  BEQ.W           loc_64FBC
63BC8:  LDRB            R0, [R6,#(byte_1A3C02 - 0x1A3BFC)]
63BCA:  CBZ             R0, loc_63C02
63BCC:  LDRB            R1, [R6]
63BCE:  EOR.W           R0, R0, #0x5A ; 'Z'
63BD2:  LDRB            R2, [R6,#(dword_1A3BFC+1 - 0x1A3BFC)]
63BD4:  STRB            R0, [R6,#(byte_1A3C02 - 0x1A3BFC)]
63BD6:  EOR.W           R1, R1, #0x5A ; 'Z'
63BDA:  LDRB            R0, [R6,#(word_1A3C00 - 0x1A3BFC)]
63BDC:  LDRB            R3, [R6,#(dword_1A3BFC+2 - 0x1A3BFC)]
63BDE:  STRB            R1, [R6]
63BE0:  EOR.W           R1, R2, #0x5A ; 'Z'
63BE4:  LDRB            R5, [R6,#(dword_1A3BFC+3 - 0x1A3BFC)]
63BE6:  EOR.W           R0, R0, #0x5A ; 'Z'
63BEA:  LDRB            R4, [R6,#(word_1A3C00+1 - 0x1A3BFC)]
63BEC:  STRB            R1, [R6,#(dword_1A3BFC+1 - 0x1A3BFC)]
63BEE:  EOR.W           R1, R3, #0x5A ; 'Z'
63BF2:  STRB            R1, [R6,#(dword_1A3BFC+2 - 0x1A3BFC)]
63BF4:  EOR.W           R1, R5, #0x5A ; 'Z'
63BF8:  STRB            R0, [R6,#(word_1A3C00 - 0x1A3BFC)]
63BFA:  EOR.W           R0, R4, #0x5A ; 'Z'
63BFE:  STRB            R1, [R6,#(dword_1A3BFC+3 - 0x1A3BFC)]
63C00:  STRB            R0, [R6,#(word_1A3C00+1 - 0x1A3BFC)]
63C02:  LDR             R1, =(dword_1A3BFC - 0x63C0C)
63C04:  ADD.W           R0, SP, #0x648+s1; s1
63C08:  ADD             R1, PC; dword_1A3BFC ; s2
63C0A:  BLX             strcmp
63C0E:  CMP             R0, #0
63C10:  BEQ.W           loc_63EEC
63C14:  LDR             R0, =(byte_1A3CFC - 0x63C1A)
63C16:  ADD             R0, PC; byte_1A3CFC
63C18:  LDRB            R0, [R0]
63C1A:  DMB.W           ISH
63C1E:  LDR             R6, =(dword_1A3CF0 - 0x63C24)
63C20:  ADD             R6, PC; dword_1A3CF0
63C22:  LSLS            R0, R0, #0x1F
63C24:  BEQ.W           loc_64FF8
63C28:  LDRB            R0, [R6,#(word_1A3CF8+1 - 0x1A3CF0)]
63C2A:  CBZ             R0, loc_63C7C
63C2C:  EOR.W           R0, R0, #0x5A ; 'Z'
63C30:  LDRB            R1, [R6]
63C32:  STRB            R0, [R6,#(word_1A3CF8+1 - 0x1A3CF0)]
63C34:  LDRB            R0, [R6,#(dword_1A3CF4 - 0x1A3CF0)]
63C36:  EOR.W           R1, R1, #0x5A ; 'Z'
63C3A:  LDRB            R2, [R6,#(dword_1A3CF0+1 - 0x1A3CF0)]
63C3C:  LDRB.W          R12, [R6,#(dword_1A3CF4+1 - 0x1A3CF0)]
63C40:  EOR.W           R0, R0, #0x5A ; 'Z'
63C44:  LDRB            R3, [R6,#(dword_1A3CF0+2 - 0x1A3CF0)]
63C46:  LDRB            R4, [R6,#(dword_1A3CF4+2 - 0x1A3CF0)]
63C48:  STRB            R1, [R6]
63C4A:  EOR.W           R1, R2, #0x5A ; 'Z'
63C4E:  STRB            R0, [R6,#(dword_1A3CF4 - 0x1A3CF0)]
63C50:  EOR.W           R0, R12, #0x5A ; 'Z'
63C54:  LDRB            R2, [R6,#(dword_1A3CF4+3 - 0x1A3CF0)]
63C56:  STRB            R1, [R6,#(dword_1A3CF0+1 - 0x1A3CF0)]
63C58:  EOR.W           R1, R3, #0x5A ; 'Z'
63C5C:  STRB            R0, [R6,#(dword_1A3CF4+1 - 0x1A3CF0)]
63C5E:  EOR.W           R0, R4, #0x5A ; 'Z'
63C62:  LDRB            R5, [R6,#(dword_1A3CF0+3 - 0x1A3CF0)]
63C64:  LDRB            R3, [R6,#(word_1A3CF8 - 0x1A3CF0)]
63C66:  STRB            R0, [R6,#(dword_1A3CF4+2 - 0x1A3CF0)]
63C68:  EOR.W           R0, R2, #0x5A ; 'Z'
63C6C:  STRB            R1, [R6,#(dword_1A3CF0+2 - 0x1A3CF0)]
63C6E:  EOR.W           R1, R5, #0x5A ; 'Z'
63C72:  STRB            R0, [R6,#(dword_1A3CF4+3 - 0x1A3CF0)]
63C74:  EOR.W           R0, R3, #0x5A ; 'Z'
63C78:  STRB            R1, [R6,#(dword_1A3CF0+3 - 0x1A3CF0)]
63C7A:  STRB            R0, [R6,#(word_1A3CF8 - 0x1A3CF0)]
63C7C:  LDR             R1, =(dword_1A3CF0 - 0x63C86)
63C7E:  ADD.W           R0, SP, #0x648+s1; s1
63C82:  ADD             R1, PC; dword_1A3CF0 ; s2
63C84:  BLX             strcmp
63C88:  CMP             R0, #0
63C8A:  BEQ.W           loc_64096
63C8E:  LDR             R0, =(byte_1A3DE8 - 0x63C94)
63C90:  ADD             R0, PC; byte_1A3DE8
63C92:  LDRB            R0, [R0]
63C94:  DMB.W           ISH
63C98:  LDR             R6, =(dword_1A3DDC - 0x63C9E)
63C9A:  ADD             R6, PC; dword_1A3DDC
63C9C:  LSLS            R0, R0, #0x1F
63C9E:  BEQ.W           loc_6503A
63CA2:  LDRB            R0, [R6,#(word_1A3DE4+1 - 0x1A3DDC)]
63CA4:  CBZ             R0, loc_63CF6
63CA6:  EOR.W           R0, R0, #0x5A ; 'Z'
63CAA:  LDRB            R1, [R6]
63CAC:  STRB            R0, [R6,#(word_1A3DE4+1 - 0x1A3DDC)]
63CAE:  LDRB            R0, [R6,#(dword_1A3DE0 - 0x1A3DDC)]
63CB0:  EOR.W           R1, R1, #0x5A ; 'Z'
63CB4:  LDRB            R2, [R6,#(dword_1A3DDC+1 - 0x1A3DDC)]
63CB6:  LDRB.W          R12, [R6,#(dword_1A3DE0+1 - 0x1A3DDC)]
63CBA:  EOR.W           R0, R0, #0x5A ; 'Z'
63CBE:  LDRB            R3, [R6,#(dword_1A3DDC+2 - 0x1A3DDC)]
63CC0:  LDRB            R4, [R6,#(dword_1A3DE0+2 - 0x1A3DDC)]
63CC2:  STRB            R1, [R6]
63CC4:  EOR.W           R1, R2, #0x5A ; 'Z'
63CC8:  STRB            R0, [R6,#(dword_1A3DE0 - 0x1A3DDC)]
63CCA:  EOR.W           R0, R12, #0x5A ; 'Z'
63CCE:  LDRB            R2, [R6,#(dword_1A3DE0+3 - 0x1A3DDC)]
63CD0:  STRB            R1, [R6,#(dword_1A3DDC+1 - 0x1A3DDC)]
63CD2:  EOR.W           R1, R3, #0x5A ; 'Z'
63CD6:  STRB            R0, [R6,#(dword_1A3DE0+1 - 0x1A3DDC)]
63CD8:  EOR.W           R0, R4, #0x5A ; 'Z'
63CDC:  LDRB            R5, [R6,#(dword_1A3DDC+3 - 0x1A3DDC)]
63CDE:  LDRB            R3, [R6,#(word_1A3DE4 - 0x1A3DDC)]
63CE0:  STRB            R0, [R6,#(dword_1A3DE0+2 - 0x1A3DDC)]
63CE2:  EOR.W           R0, R2, #0x5A ; 'Z'
63CE6:  STRB            R1, [R6,#(dword_1A3DDC+2 - 0x1A3DDC)]
63CE8:  EOR.W           R1, R5, #0x5A ; 'Z'
63CEC:  STRB            R0, [R6,#(dword_1A3DE0+3 - 0x1A3DDC)]
63CEE:  EOR.W           R0, R3, #0x5A ; 'Z'
63CF2:  STRB            R1, [R6,#(dword_1A3DDC+3 - 0x1A3DDC)]
63CF4:  STRB            R0, [R6,#(word_1A3DE4 - 0x1A3DDC)]
63CF6:  LDR             R1, =(dword_1A3DDC - 0x63D00)
63CF8:  ADD.W           R0, SP, #0x648+s1; s1
63CFC:  ADD             R1, PC; dword_1A3DDC ; s2
63CFE:  BLX             strcmp
63D02:  CMP             R0, #0
63D04:  BEQ.W           loc_64188
63D08:  LDR             R0, =(byte_1A3EE4 - 0x63D0E)
63D0A:  ADD             R0, PC; byte_1A3EE4
63D0C:  LDRB            R0, [R0]
63D0E:  DMB.W           ISH
63D12:  LDR             R6, =(dword_1A3ED8 - 0x63D18)
63D14:  ADD             R6, PC; dword_1A3ED8
63D16:  LSLS            R0, R0, #0x1F
63D18:  BEQ.W           loc_65120
63D1C:  LDRB            R0, [R6,#(byte_1A3EE0 - 0x1A3ED8)]
63D1E:  CBZ             R0, loc_63D68
63D20:  EOR.W           R0, R0, #0x5A ; 'Z'
63D24:  LDRB            R1, [R6]
63D26:  STRB            R0, [R6,#(byte_1A3EE0 - 0x1A3ED8)]
63D28:  LDRB            R0, [R6,#(dword_1A3EDC - 0x1A3ED8)]
63D2A:  EOR.W           R1, R1, #0x5A ; 'Z'
63D2E:  LDRB            R2, [R6,#(dword_1A3ED8+1 - 0x1A3ED8)]
63D30:  LDRB.W          R12, [R6,#(dword_1A3EDC+1 - 0x1A3ED8)]
63D34:  EOR.W           R0, R0, #0x5A ; 'Z'
63D38:  LDRB            R3, [R6,#(dword_1A3ED8+2 - 0x1A3ED8)]
63D3A:  LDRB            R4, [R6,#(dword_1A3EDC+2 - 0x1A3ED8)]
63D3C:  STRB            R1, [R6]
63D3E:  EOR.W           R1, R2, #0x5A ; 'Z'
63D42:  STRB            R0, [R6,#(dword_1A3EDC - 0x1A3ED8)]
63D44:  EOR.W           R0, R12, #0x5A ; 'Z'
63D48:  LDRB            R5, [R6,#(dword_1A3ED8+3 - 0x1A3ED8)]
63D4A:  LDRB            R2, [R6,#(dword_1A3EDC+3 - 0x1A3ED8)]
63D4C:  STRB            R1, [R6,#(dword_1A3ED8+1 - 0x1A3ED8)]
63D4E:  EOR.W           R1, R3, #0x5A ; 'Z'
63D52:  STRB            R0, [R6,#(dword_1A3EDC+1 - 0x1A3ED8)]
63D54:  EOR.W           R0, R4, #0x5A ; 'Z'
63D58:  STRB            R1, [R6,#(dword_1A3ED8+2 - 0x1A3ED8)]
63D5A:  EOR.W           R1, R5, #0x5A ; 'Z'
63D5E:  STRB            R0, [R6,#(dword_1A3EDC+2 - 0x1A3ED8)]
63D60:  EOR.W           R0, R2, #0x5A ; 'Z'
63D64:  STRB            R1, [R6,#(dword_1A3ED8+3 - 0x1A3ED8)]
63D66:  STRB            R0, [R6,#(dword_1A3EDC+3 - 0x1A3ED8)]
63D68:  LDR             R1, =(dword_1A3ED8 - 0x63D72)
63D6A:  ADD.W           R0, SP, #0x648+s1; s1
63D6E:  ADD             R1, PC; dword_1A3ED8 ; s2
63D70:  BLX             strcmp
63D74:  CMP             R0, #0
63D76:  BEQ.W           loc_643EE
63D7A:  LDR             R1, =(aCmenu - 0x63D86); "/cmenu" ...
63D7C:  ADD.W           R0, SP, #0x648+s1; s1
63D80:  MOVS            R2, #7; n
63D82:  ADD             R1, PC; "/cmenu"
63D84:  BLX             memcmp
63D88:  CMP             R0, #0
63D8A:  BEQ.W           loc_64672
63D8E:  LDR             R1, =(aBtn - 0x63D9A); "/btn" ...
63D90:  ADD.W           R0, SP, #0x648+s1; s1
63D94:  MOVS            R2, #5; n
63D96:  ADD             R1, PC; "/btn"
63D98:  BLX             memcmp
63D9C:  CMP             R0, #0
63D9E:  BEQ.W           loc_64924
63DA2:  LDR             R1, =(aRec - 0x63DAE); "/rec" ...
63DA4:  ADD.W           R0, SP, #0x648+s1; s1
63DA8:  MOVS            R2, #5; n
63DAA:  ADD             R1, PC; "/rec"
63DAC:  BLX             memcmp
63DB0:  CMP             R0, #0
63DB2:  BEQ.W           loc_648D8
63DB6:  LDR             R1, =(aReconnect - 0x63DC2); "/reconnect" ...
63DB8:  ADD.W           R0, SP, #0x648+s1; s1
63DBC:  MOVS            R2, #0xB; n
63DBE:  ADD             R1, PC; "/reconnect"
63DC0:  BLX             memcmp
63DC4:  CMP             R0, #0
63DC6:  BEQ.W           loc_648D8
63DCA:  LDR             R0, =(byte_1A404C - 0x63DD0)
63DCC:  ADD             R0, PC; byte_1A404C
63DCE:  LDRB            R0, [R0]
63DD0:  DMB.W           ISH
63DD4:  LDR             R5, =(dword_1A4044 - 0x63DDA)
63DD6:  ADD             R5, PC; dword_1A4044
63DD8:  LSLS            R0, R0, #0x1F
63DDA:  BEQ.W           loc_6539C
63DDE:  LDRB            R0, [R5,#(word_1A4048+1 - 0x1A4044)]
63DE0:  CBZ             R0, loc_63E10
63DE2:  LDRB            R1, [R5]
63DE4:  EOR.W           R0, R0, #0x5A ; 'Z'
63DE8:  LDRB            R2, [R5,#(dword_1A4044+1 - 0x1A4044)]
63DEA:  EOR.W           R1, R1, #0x5A ; 'Z'
63DEE:  LDRB            R3, [R5,#(dword_1A4044+2 - 0x1A4044)]
63DF0:  STRB            R0, [R5,#(word_1A4048+1 - 0x1A4044)]
63DF2:  LDRB            R0, [R5,#(word_1A4048 - 0x1A4044)]
63DF4:  STRB            R1, [R5]
63DF6:  EOR.W           R1, R2, #0x5A ; 'Z'
63DFA:  LDRB            R6, [R5,#(dword_1A4044+3 - 0x1A4044)]
63DFC:  EOR.W           R0, R0, #0x5A ; 'Z'
63E00:  STRB            R1, [R5,#(dword_1A4044+1 - 0x1A4044)]
63E02:  EOR.W           R1, R3, #0x5A ; 'Z'
63E06:  STRB            R1, [R5,#(dword_1A4044+2 - 0x1A4044)]
63E08:  EOR.W           R1, R6, #0x5A ; 'Z'
63E0C:  STRB            R1, [R5,#(dword_1A4044+3 - 0x1A4044)]
63E0E:  STRB            R0, [R5,#(word_1A4048 - 0x1A4044)]
63E10:  LDR             R1, =(dword_1A4044 - 0x63E1A)
63E12:  ADD.W           R0, SP, #0x648+s1; s1
63E16:  ADD             R1, PC; dword_1A4044 ; s2
63E18:  BLX             strcmp
63E1C:  CMP             R0, #0
63E1E:  BEQ.W           loc_64C78
63E22:  ADD             R0, SP, #0x648+var_620
63E24:  BL              sub_86B90
63E28:  MOV             R0, R10; char *
63E2A:  MOV.W           R1, #0xFFFFFFFF; size_t
63E2E:  BLX             __strlen_chk
63E32:  MOV             R5, R0
63E34:  STR             R0, [SP,#0x648+var_624]
63E36:  ADD             R0, SP, #0x648+var_620
63E38:  ADD             R1, SP, #0x648+var_624
63E3A:  MOVS            R2, #0x20 ; ' '
63E3C:  MOVS            R3, #1
63E3E:  BL              sub_86D52
63E42:  ADD             R0, SP, #0x648+var_620
63E44:  MOV             R1, R10
63E46:  MOV             R2, R5
63E48:  BL              sub_86C1C
63E4C:  LDR             R0, =(off_114AD8 - 0x63E54)
63E4E:  MOVS            R3, #0
63E50:  ADD             R0, PC; off_114AD8
63E52:  LDR             R0, [R0]; dword_1A4434
63E54:  LDR             R0, [R0]
63E56:  LDR.W           R0, [R0,#0x210]
63E5A:  LDR             R1, =(off_114B7C - 0x63E60)
63E5C:  ADD             R1, PC; off_114B7C
63E5E:  LDR             R2, [R0]
63E60:  LDR             R1, [R1]; unk_116E24
63E62:  LDR             R6, [R2,#0x6C]
63E64:  MOV.W           R12, #0xFFFFFFFF
63E68:  MOVS            R4, #8
63E6A:  ADD             R2, SP, #0x648+var_620
63E6C:  MOVW            R5, #0xFFFF
63E70:  STRD.W          R4, R3, [SP,#0x648+var_648]
63E74:  STRD.W          R3, R12, [SP,#0x648+var_640]
63E78:  STR             R3, [SP,#0x648+var_630]
63E7A:  MOVS            R3, #1
63E7C:  STRD.W          R5, R5, [SP,#0x648+var_638]
63E80:  BLX             R6
63E82:  ADD             R0, SP, #0x648+var_620
63E84:  BL              sub_86BF8
63E88:  B.W             loc_64F94
63E8C:  DCD off_114AB0 - 0x63B50
63E90:  DCD __stack_chk_guard_ptr - 0x63B58
63E94:  DCD aSSSSS - 0x63BAE
63E98:  DCD byte_1A3C04 - 0x63BBA
63E9C:  DCD dword_1A3BFC - 0x63BC4
63EA0:  DCD dword_1A3BFC - 0x63C0C
63EA4:  DCD byte_1A3CFC - 0x63C1A
63EA8:  DCD dword_1A3CF0 - 0x63C24
63EAC:  DCD dword_1A3CF0 - 0x63C86
63EB0:  DCD byte_1A3DE8 - 0x63C94
63EB4:  DCD dword_1A3DDC - 0x63C9E
63EB8:  DCD dword_1A3DDC - 0x63D00
63EBC:  DCD byte_1A3EE4 - 0x63D0E
63EC0:  DCD dword_1A3ED8 - 0x63D18
63EC4:  DCD dword_1A3ED8 - 0x63D72
63EC8:  DCD aCmenu - 0x63D86
63ECC:  DCD aBtn - 0x63D9A
63ED0:  DCD aRec - 0x63DAE
63ED4:  DCD aReconnect - 0x63DC2
63ED8:  DCD byte_1A404C - 0x63DD0
63EDC:  DCD dword_1A4044 - 0x63DDA
63EE0:  DCD dword_1A4044 - 0x63E1A
63EE4:  DCD off_114AD8 - 0x63E54
63EE8:  DCD off_114B7C - 0x63E60
63EEC:  LDR             R0, =(asc_4B4F4 - 0x63EF2); " " ...
63EEE:  ADD             R0, PC; " "
63EF0:  BL              sub_6C73C
63EF4:  LDR             R0, =(unk_50A50 - 0x63EFE)
63EF6:  MOVS            R1, #0xC
63EF8:  ADD             R2, SP, #0x648+var_620
63EFA:  ADD             R0, PC; unk_50A50
63EFC:  VLD1.64         {D16-D17}, [R0],R1
63F00:  VLD1.32         {D18-D19}, [R0]
63F04:  LDR             R0, =(byte_1A3C24 - 0x63F0E)
63F06:  VST1.64         {D16-D17}, [R2],R1
63F0A:  ADD             R0, PC; byte_1A3C24
63F0C:  VST1.32         {D18-D19}, [R2]
63F10:  LDRB            R0, [R0]
63F12:  DMB.W           ISH
63F16:  LSLS            R0, R0, #0x1F
63F18:  BEQ.W           loc_6507C
63F1C:  LDR             R4, =(unk_1A3C08 - 0x63F22)
63F1E:  ADD             R4, PC; unk_1A3C08
63F20:  MOV             R0, R4
63F22:  BL              sub_67874
63F26:  MOV             R0, R4
63F28:  BL              sub_6C73C
63F2C:  LDR             R0, =(byte_1A3C84 - 0x63F32)
63F2E:  ADD             R0, PC; byte_1A3C84
63F30:  LDRB            R0, [R0]
63F32:  DMB.W           ISH
63F36:  LSLS            R0, R0, #0x1F
63F38:  BEQ.W           loc_650B0
63F3C:  LDR             R0, =(unk_1A3C30 - 0x63F42)
63F3E:  ADD             R0, PC; unk_1A3C30
63F40:  LDRB.W          R1, [R0,#(byte_1A3C83 - 0x1A3C30)]
63F44:  CBZ             R1, loc_63FB2
63F46:  VMOV.I8         Q8, #0x5A ; 'Z'
63F4A:  VLD1.64         {D18-D19}, [R0@128]
63F4E:  MOVS            R2, #0x33 ; '3'
63F50:  MOVS            R3, #0x22 ; '"'
63F52:  VEOR            Q9, Q9, Q8
63F56:  MOVS            R6, #0x11
63F58:  VST1.8          {D18-D19}, [R0@128]!
63F5C:  VLD1.64         {D18-D19}, [R0@128]
63F60:  VEOR            Q9, Q9, Q8
63F64:  VST1.8          {D18-D19}, [R0@128]!
63F68:  MOV             R1, R0
63F6A:  VLD1.8          {D18-D19}, [R1@128],R2
63F6E:  VEOR            Q9, Q9, Q8
63F72:  VST1.8          {D18-D19}, [R0@128]!
63F76:  MOV             R2, R0
63F78:  VLD1.8          {D18-D19}, [R2@128],R3
63F7C:  VEOR            Q9, Q9, Q8
63F80:  LDRB            R3, [R1]
63F82:  VST1.8          {D18-D19}, [R0@128]!
63F86:  EOR.W           R3, R3, #0x5A ; 'Z'
63F8A:  MOV             R4, R0
63F8C:  STRB            R3, [R1]
63F8E:  VLD1.8          {D18-D19}, [R4@128],R6
63F92:  VEOR            Q8, Q9, Q8
63F96:  LDRB            R6, [R2]
63F98:  LDRB            R1, [R4]
63F9A:  VST1.8          {D16-D17}, [R0@128]!
63F9E:  EOR.W           R3, R6, #0x5A ; 'Z'
63FA2:  EOR.W           R1, R1, #0x5A ; 'Z'
63FA6:  STRB            R3, [R2]
63FA8:  LDRB            R2, [R0]
63FAA:  STRB            R1, [R4]
63FAC:  EOR.W           R1, R2, #0x5A ; 'Z'
63FB0:  STRB            R1, [R0]
63FB2:  LDR             R0, =(unk_1A3C30 - 0x63FB8)
63FB4:  ADD             R0, PC; unk_1A3C30
63FB6:  BL              sub_6C73C
63FBA:  LDR             R0, =(byte_1A3CEC - 0x63FC0)
63FBC:  ADD             R0, PC; byte_1A3CEC
63FBE:  LDRB            R0, [R0]
63FC0:  DMB.W           ISH
63FC4:  LSLS            R0, R0, #0x1F
63FC6:  BEQ.W           loc_650E8
63FCA:  LDR             R0, =(unk_1A3C90 - 0x63FD0)
63FCC:  ADD             R0, PC; unk_1A3C90
63FCE:  LDRB.W          R1, [R0,#(byte_1A3CE8 - 0x1A3C90)]
63FD2:  CMP             R1, #0
63FD4:  BEQ             loc_6408A
63FD6:  VMOV.I8         Q8, #0x5A ; 'Z'
63FDA:  MOVS            R1, #0x55 ; 'U'
63FDC:  MOV             R2, R0
63FDE:  MOVS            R6, #0x44 ; 'D'
63FE0:  VLD1.8          {D18-D19}, [R2@128],R1
63FE4:  MOV             R1, R0
63FE6:  VEOR            Q9, Q9, Q8
63FEA:  MOV.W           R12, #0x11
63FEE:  MOV             LR, R2
63FF0:  VST1.8          {D18-D19}, [R1@128]!
63FF4:  MOV             R3, R1
63FF6:  VLD1.8          {D18-D19}, [R3@128],R6
63FFA:  MOVS            R6, #0x33 ; '3'
63FFC:  VEOR            Q9, Q9, Q8
64000:  VST1.8          {D18-D19}, [R1@128]!
64004:  MOV             R4, R1
64006:  VLD1.8          {D18-D19}, [R4@128],R6
6400A:  MOVS            R6, #0x22 ; '"'
6400C:  VEOR            Q9, Q9, Q8
64010:  LDRB            R2, [R4]
64012:  VST1.8          {D18-D19}, [R1@128]!
64016:  EOR.W           R2, R2, #0x5A ; 'Z'
6401A:  MOV             R5, R1
6401C:  STRB            R2, [R4]
6401E:  VLD1.8          {D18-D19}, [R5@128],R6
64022:  VEOR            Q9, Q9, Q8
64026:  LDRB            R4, [R5]
64028:  VST1.8          {D18-D19}, [R1@128]!
6402C:  EOR.W           R4, R4, #0x5A ; 'Z'
64030:  MOV             R6, R1
64032:  STRB            R4, [R5]
64034:  VLD1.8          {D18-D19}, [R6@128],R12
64038:  VEOR            Q8, Q9, Q8
6403C:  LDRB            R2, [R6]
6403E:  LDRB.W          R12, [R3]
64042:  EOR.W           R2, R2, #0x5A ; 'Z'
64046:  STRB            R2, [R6]
64048:  LDRB.W          R2, [LR]
6404C:  EOR.W           R6, R12, #0x5A ; 'Z'
64050:  VST1.8          {D16-D17}, [R1@128]!
64054:  EOR.W           R2, R2, #0x5A ; 'Z'
64058:  LDRB.W          R5, [R0,#(byte_1A3CE6 - 0x1A3C90)]
6405C:  LDRB.W          R4, [R0,#(byte_1A3CE7 - 0x1A3C90)]
64060:  STRB            R6, [R3]
64062:  STRB.W          R2, [LR]
64066:  EOR.W           R2, R5, #0x5A ; 'Z'
6406A:  LDRB.W          R12, [R0,#(byte_1A3CE8 - 0x1A3C90)]
6406E:  LDRB            R3, [R1]
64070:  STRB.W          R2, [R0,#(byte_1A3CE6 - 0x1A3C90)]
64074:  EOR.W           R2, R4, #0x5A ; 'Z'
64078:  STRB.W          R2, [R0,#(byte_1A3CE7 - 0x1A3C90)]
6407C:  EOR.W           R2, R12, #0x5A ; 'Z'
64080:  STRB.W          R2, [R0,#(byte_1A3CE8 - 0x1A3C90)]
64084:  EOR.W           R0, R3, #0x5A ; 'Z'
64088:  STRB            R0, [R1]
6408A:  LDR             R0, =(unk_1A3C90 - 0x64090)
6408C:  ADD             R0, PC; unk_1A3C90
6408E:  BL              sub_6C73C
64092:  B.W             loc_64F94
64096:  ADD.W           R0, R10, #9; s
6409A:  LDRB            R1, [R0]
6409C:  CMP             R1, #0x20 ; ' '
6409E:  BNE             loc_640A4
640A0:  ADDS            R0, #1
640A2:  B               loc_6409A
640A4:  CMP             R1, #0
640A6:  BNE.W           loc_642C4
640AA:  LDR             R0, =(unk_50B28 - 0x640B4)
640AC:  MOVS            R1, #0xA
640AE:  ADD             R2, SP, #0x648+var_620
640B0:  ADD             R0, PC; unk_50B28
640B2:  VLD1.64         {D16-D17}, [R0]!
640B6:  VLD1.64         {D18-D19}, [R0],R1
640BA:  VLD1.16         {D20-D21}, [R0]
640BE:  LDR             R0, =(byte_1A3D2C - 0x640C8)
640C0:  VST1.64         {D16-D17}, [R2]!
640C4:  ADD             R0, PC; byte_1A3D2C
640C6:  VST1.64         {D18-D19}, [R2],R1
640CA:  VST1.16         {D20-D21}, [R2]
640CE:  LDRB            R0, [R0]
640D0:  DMB.W           ISH
640D4:  LSLS            R0, R0, #0x1F
640D6:  BEQ.W           loc_65160
640DA:  LDR             R0, =(unk_1A3D00 - 0x640E0)
640DC:  ADD             R0, PC; unk_1A3D00
640DE:  LDRB.W          R1, [R0,#(byte_1A3D29 - 0x1A3D00)]
640E2:  CMP             R1, #0
640E4:  BEQ             loc_6417C
640E6:  VMOV.I8         Q8, #0x5A ; 'Z'
640EA:  MOVS            R1, #0x22 ; '"'
640EC:  MOV             R2, R0
640EE:  LDRB.W          R3, [R0,#(byte_1A3D24 - 0x1A3D00)]
640F2:  VLD1.8          {D18-D19}, [R2@128],R1
640F6:  MOV.W           R12, #0x11
640FA:  VEOR            Q9, Q9, Q8
640FE:  EOR.W           R3, R3, #0x5A ; 'Z'
64102:  LDRB.W          R1, [R0,#(byte_1A3D23 - 0x1A3D00)]
64106:  LDRB.W          R6, [R0,#(byte_1A3D25 - 0x1A3D00)]
6410A:  EOR.W           R1, R1, #0x5A ; 'Z'
6410E:  STRB.W          R1, [R0,#(byte_1A3D23 - 0x1A3D00)]
64112:  MOV             R1, R0
64114:  LDRB.W          R5, [R0,#(byte_1A3D26 - 0x1A3D00)]
64118:  VST1.8          {D18-D19}, [R1@128]!
6411C:  MOV             R4, R1
6411E:  STRB.W          R3, [R0,#(byte_1A3D24 - 0x1A3D00)]
64122:  EOR.W           R3, R6, #0x5A ; 'Z'
64126:  VLD1.8          {D18-D19}, [R4@128],R12
6412A:  VEOR            Q8, Q9, Q8
6412E:  STRB.W          R3, [R0,#(byte_1A3D25 - 0x1A3D00)]
64132:  EOR.W           R3, R5, #0x5A ; 'Z'
64136:  LDRB.W          LR, [R2]
6413A:  STRB.W          R3, [R0,#(byte_1A3D26 - 0x1A3D00)]
6413E:  LDRB            R3, [R4]
64140:  EOR.W           R5, LR, #0x5A ; 'Z'
64144:  LDRB.W          R6, [R0,#(byte_1A3D27 - 0x1A3D00)]
64148:  STRB            R5, [R2]
6414A:  EOR.W           R2, R3, #0x5A ; 'Z'
6414E:  VST1.8          {D16-D17}, [R1@128]!
64152:  EOR.W           R3, R6, #0x5A ; 'Z'
64156:  STRB            R2, [R4]
64158:  LDRB.W          R2, [R0,#(byte_1A3D28 - 0x1A3D00)]
6415C:  STRB.W          R3, [R0,#(byte_1A3D27 - 0x1A3D00)]
64160:  LDRB            R3, [R1]
64162:  EOR.W           R2, R2, #0x5A ; 'Z'
64166:  STRB.W          R2, [R0,#(byte_1A3D28 - 0x1A3D00)]
6416A:  EOR.W           R2, R3, #0x5A ; 'Z'
6416E:  STRB            R2, [R1]
64170:  LDRB.W          R1, [R0,#(byte_1A3D29 - 0x1A3D00)]
64174:  EOR.W           R1, R1, #0x5A ; 'Z'
64178:  STRB.W          R1, [R0,#(byte_1A3D29 - 0x1A3D00)]
6417C:  LDR             R0, =(unk_1A3D00 - 0x64182)
6417E:  ADD             R0, PC; unk_1A3D00
64180:  BL              sub_6C73C
64184:  B.W             loc_64F94
64188:  ADD.W           R0, R10, #9; s
6418C:  LDRB            R1, [R0]
6418E:  CMP             R1, #0x20 ; ' '
64190:  BNE             loc_64196
64192:  ADDS            R0, #1
64194:  B               loc_6418C
64196:  CMP             R1, #0
64198:  BNE.W           loc_644E0
6419C:  LDR             R0, =(unk_50BC0 - 0x641A6)
6419E:  MOVS            R1, #0xA
641A0:  ADD             R2, SP, #0x648+var_620
641A2:  ADD             R0, PC; unk_50BC0
641A4:  VLD1.64         {D16-D17}, [R0]!
641A8:  VLD1.64         {D18-D19}, [R0],R1
641AC:  VLD1.16         {D20-D21}, [R0]
641B0:  LDR             R0, =(byte_1A3E1C - 0x641BA)
641B2:  VST1.64         {D16-D17}, [R2]!
641B6:  ADD             R0, PC; byte_1A3E1C
641B8:  VST1.64         {D18-D19}, [R2],R1
641BC:  VST1.16         {D20-D21}, [R2]
641C0:  LDRB            R0, [R0]
641C2:  DMB.W           ISH
641C6:  LSLS            R0, R0, #0x1F
641C8:  BEQ.W           loc_65194
641CC:  LDR             R0, =(unk_1A3DF0 - 0x641D2)
641CE:  ADD             R0, PC; unk_1A3DF0
641D0:  LDRB.W          R1, [R0,#(byte_1A3E19 - 0x1A3DF0)]
641D4:  CMP             R1, #0
641D6:  BEQ             loc_6426E
641D8:  VMOV.I8         Q8, #0x5A ; 'Z'
641DC:  MOVS            R1, #0x22 ; '"'
641DE:  MOV             R2, R0
641E0:  LDRB.W          R3, [R0,#(byte_1A3E14 - 0x1A3DF0)]
641E4:  VLD1.8          {D18-D19}, [R2@128],R1
641E8:  MOV.W           R12, #0x11
641EC:  VEOR            Q9, Q9, Q8
641F0:  EOR.W           R3, R3, #0x5A ; 'Z'
641F4:  LDRB.W          R1, [R0,#(byte_1A3E13 - 0x1A3DF0)]
641F8:  LDRB.W          R6, [R0,#(byte_1A3E15 - 0x1A3DF0)]
641FC:  EOR.W           R1, R1, #0x5A ; 'Z'
64200:  STRB.W          R1, [R0,#(byte_1A3E13 - 0x1A3DF0)]
64204:  MOV             R1, R0
64206:  LDRB.W          R5, [R0,#(byte_1A3E16 - 0x1A3DF0)]
6420A:  VST1.8          {D18-D19}, [R1@128]!
6420E:  MOV             R4, R1
64210:  STRB.W          R3, [R0,#(byte_1A3E14 - 0x1A3DF0)]
64214:  EOR.W           R3, R6, #0x5A ; 'Z'
64218:  VLD1.8          {D18-D19}, [R4@128],R12
6421C:  VEOR            Q8, Q9, Q8
64220:  STRB.W          R3, [R0,#(byte_1A3E15 - 0x1A3DF0)]
64224:  EOR.W           R3, R5, #0x5A ; 'Z'
64228:  LDRB.W          LR, [R2]
6422C:  STRB.W          R3, [R0,#(byte_1A3E16 - 0x1A3DF0)]
64230:  LDRB            R3, [R4]
64232:  EOR.W           R5, LR, #0x5A ; 'Z'
64236:  LDRB.W          R6, [R0,#(byte_1A3E17 - 0x1A3DF0)]
6423A:  STRB            R5, [R2]
6423C:  EOR.W           R2, R3, #0x5A ; 'Z'
64240:  VST1.8          {D16-D17}, [R1@128]!
64244:  EOR.W           R3, R6, #0x5A ; 'Z'
64248:  STRB            R2, [R4]
6424A:  LDRB.W          R2, [R0,#(byte_1A3E18 - 0x1A3DF0)]
6424E:  STRB.W          R3, [R0,#(byte_1A3E17 - 0x1A3DF0)]
64252:  LDRB            R3, [R1]
64254:  EOR.W           R2, R2, #0x5A ; 'Z'
64258:  STRB.W          R2, [R0,#(byte_1A3E18 - 0x1A3DF0)]
6425C:  EOR.W           R2, R3, #0x5A ; 'Z'
64260:  STRB            R2, [R1]
64262:  LDRB.W          R1, [R0,#(byte_1A3E19 - 0x1A3DF0)]
64266:  EOR.W           R1, R1, #0x5A ; 'Z'
6426A:  STRB.W          R1, [R0,#(byte_1A3E19 - 0x1A3DF0)]
6426E:  LDR             R0, =(unk_1A3DF0 - 0x64274)
64270:  ADD             R0, PC; unk_1A3DF0
64272:  BL              sub_6C73C
64276:  B.W             loc_64F94
6427A:  ALIGN 4
6427C:  DCD asc_4B4F4 - 0x63EF2
64280:  DCD unk_50A50 - 0x63EFE
64284:  DCD byte_1A3C24 - 0x63F0E
64288:  DCD unk_1A3C08 - 0x63F22
6428C:  DCD byte_1A3C84 - 0x63F32
64290:  DCD unk_1A3C30 - 0x63F42
64294:  DCD unk_1A3C30 - 0x63FB8
64298:  DCD byte_1A3CEC - 0x63FC0
6429C:  DCD unk_1A3C90 - 0x63FD0
642A0:  DCD unk_1A3C90 - 0x64090
642A4:  DCD unk_50B28 - 0x640B4
642A8:  DCD byte_1A3D2C - 0x640C8
642AC:  DCD unk_1A3D00 - 0x640E0
642B0:  DCD unk_1A3D00 - 0x64182
642B4:  DCD unk_50BC0 - 0x641A6
642B8:  DCD byte_1A3E1C - 0x641BA
642BC:  DCD unk_1A3DF0 - 0x641D2
642C0:  DCD unk_1A3DF0 - 0x64274
642C4:  LDR             R1, =(aF - 0x642D0); "%f" ...
642C6:  MOVS            R2, #0
642C8:  STR             R2, [SP,#0x648+var_624]
642CA:  ADD             R2, SP, #0x648+var_624
642CC:  ADD             R1, PC; "%f"
642CE:  BLX             sscanf
642D2:  CMP             R0, #1
642D4:  BNE.W           loc_64594
642D8:  VLDR            S0, [SP,#0x648+var_624]
642DC:  VLDR            S2, =0.1
642E0:  VCMP.F32        S0, S2
642E4:  VMRS            APSR_nzcv, FPSCR
642E8:  BMI.W           loc_64976
642EC:  VMOV.F32        S2, #2.0
642F0:  VCMP.F32        S0, S2
642F4:  VMRS            APSR_nzcv, FPSCR
642F8:  BGT.W           loc_64976
642FC:  LDR             R0, =(unk_50B98 - 0x64304)
642FE:  LDR             R1, =(off_114B80 - 0x6430A)
64300:  ADD             R0, PC; unk_50B98
64302:  VLD1.64         {D16-D17}, [R0]!
64306:  ADD             R1, PC; off_114B80
64308:  VLD1.64         {D18-D19}, [R0]!
6430C:  VLDR            D20, [R0]
64310:  ADD             R0, SP, #0x648+var_620
64312:  LDR.W           R8, [R1]; dword_1A4524
64316:  LDR             R1, =(byte_1A3DD8 - 0x64320)
64318:  VST1.64         {D16-D17}, [R0]!
6431C:  ADD             R1, PC; byte_1A3DD8
6431E:  VST1.64         {D18-D19}, [R0]!
64322:  VSTR            S0, [R8]
64326:  VSTR            D20, [R0]
6432A:  LDRB            R0, [R1]
6432C:  DMB.W           ISH
64330:  LSLS            R0, R0, #0x1F
64332:  BEQ.W           loc_65318
64336:  LDR             R0, =(unk_1A3DB0 - 0x6433C)
64338:  ADD             R0, PC; unk_1A3DB0
6433A:  LDRB.W          R1, [R0,#(byte_1A3DD7 - 0x1A3DB0)]
6433E:  CMP             R1, #0
64340:  BEQ             loc_643C0
64342:  VMOV.I8         Q8, #0x5A ; 'Z'
64346:  MOVS            R2, #0x22 ; '"'
64348:  MOV             R1, R0
6434A:  LDRB.W          R3, [R0,#(byte_1A3DD4 - 0x1A3DB0)]
6434E:  VLD1.8          {D18-D19}, [R1@128],R2
64352:  MOV.W           LR, #0x11
64356:  VEOR            Q9, Q9, Q8
6435A:  EOR.W           R3, R3, #0x5A ; 'Z'
6435E:  LDRB.W          R2, [R0,#(byte_1A3DD3 - 0x1A3DB0)]
64362:  LDRB.W          R6, [R0,#(byte_1A3DD5 - 0x1A3DB0)]
64366:  EOR.W           R2, R2, #0x5A ; 'Z'
6436A:  STRB.W          R2, [R0,#(byte_1A3DD3 - 0x1A3DB0)]
6436E:  MOV             R2, R0
64370:  LDRB.W          R5, [R0,#(byte_1A3DD6 - 0x1A3DB0)]
64374:  VST1.8          {D18-D19}, [R2@128]!
64378:  MOV             R4, R2
6437A:  STRB.W          R3, [R0,#(byte_1A3DD4 - 0x1A3DB0)]
6437E:  VLD1.8          {D18-D19}, [R4@128],LR
64382:  EOR.W           R3, R6, #0x5A ; 'Z'
64386:  VEOR            Q8, Q9, Q8
6438A:  STRB.W          R3, [R0,#(byte_1A3DD5 - 0x1A3DB0)]
6438E:  EOR.W           R3, R5, #0x5A ; 'Z'
64392:  LDRB.W          R12, [R1]
64396:  STRB.W          R3, [R0,#(byte_1A3DD6 - 0x1A3DB0)]
6439A:  LDRB            R3, [R4]
6439C:  EOR.W           R5, R12, #0x5A ; 'Z'
643A0:  VST1.8          {D16-D17}, [R2@128]!
643A4:  STRB            R5, [R1]
643A6:  EOR.W           R1, R3, #0x5A ; 'Z'
643AA:  LDRB.W          R6, [R0,#(byte_1A3DD7 - 0x1A3DB0)]
643AE:  STRB            R1, [R4]
643B0:  LDRB            R1, [R2]
643B2:  EOR.W           R3, R6, #0x5A ; 'Z'
643B6:  STRB.W          R3, [R0,#(byte_1A3DD7 - 0x1A3DB0)]
643BA:  EOR.W           R0, R1, #0x5A ; 'Z'
643BE:  STRB            R0, [R2]
643C0:  VLDR            S0, [R8]
643C4:  LDR             R0, =(unk_1A3DB0 - 0x643CE)
643C6:  VCVT.F64.F32    D16, S0
643CA:  ADD             R0, PC; unk_1A3DB0
643CC:  VMOV            R2, R3, D16
643D0:  BL              sub_6C73C
643D4:  LDR.W           R1, [R9]
643D8:  MOV             R2, #0xE4F35
643E0:  LDR.W           R0, [R8]
643E4:  ADD             R1, R2
643E6:  ADDS            R1, #0x30 ; '0'
643E8:  BLX             R1
643EA:  B.W             loc_64F90
643EE:  ADD.W           R0, R10, #8; s
643F2:  LDRB            R1, [R0]
643F4:  CMP             R1, #0x20 ; ' '
643F6:  BNE             loc_643FC
643F8:  ADDS            R0, #1
643FA:  B               loc_643F2
643FC:  CMP             R1, #0
643FE:  BNE.W           loc_646D0
64402:  LDR             R0, =(byte_1A3F2C - 0x64408)
64404:  ADD             R0, PC; byte_1A3F2C
64406:  LDRB            R0, [R0]
64408:  DMB.W           ISH
6440C:  LDR             R4, =(unk_1A3EF0 - 0x64412)
6440E:  ADD             R4, PC; unk_1A3EF0
64410:  LSLS            R0, R0, #0x1F
64412:  BEQ.W           loc_651FC
64416:  LDRB.W          R0, [R4,#(byte_1A3F2B - 0x1A3EF0)]
6441A:  CMP             R0, #0
6441C:  BEQ             loc_644D4
6441E:  VMOV.I8         Q8, #0x5A ; 'Z'
64422:  MOVS            R0, #0x33 ; '3'
64424:  MOV             R1, R4
64426:  MOVS            R3, #0x22 ; '"'
64428:  VLD1.8          {D18-D19}, [R1@128],R0
6442C:  MOV             R0, R4
6442E:  VEOR            Q9, Q9, Q8
64432:  MOVS            R6, #0x11
64434:  LDRB.W          R12, [R4,#(byte_1A3F26 - 0x1A3EF0)]
64438:  LDRB.W          R5, [R4,#(byte_1A3F25 - 0x1A3EF0)]
6443C:  VST1.8          {D18-D19}, [R0@128]!
64440:  EOR.W           R5, R5, #0x5A ; 'Z'
64444:  MOV             R2, R0
64446:  STRB.W          R5, [R4,#(byte_1A3F25 - 0x1A3EF0)]
6444A:  VLD1.8          {D18-D19}, [R2@128],R3
6444E:  VEOR            Q9, Q9, Q8
64452:  VST1.8          {D18-D19}, [R0@128]!
64456:  MOV             R3, R0
64458:  VLD1.8          {D18-D19}, [R3@128],R6
6445C:  VEOR            Q8, Q9, Q8
64460:  LDRB.W          R6, [R4,#(byte_1A3F24 - 0x1A3EF0)]
64464:  EOR.W           R6, R6, #0x5A ; 'Z'
64468:  STRB.W          R6, [R4,#(byte_1A3F24 - 0x1A3EF0)]
6446C:  LDRB            R6, [R1]
6446E:  VST1.8          {D16-D17}, [R0@128]!
64472:  EOR.W           R6, R6, #0x5A ; 'Z'
64476:  STRB            R6, [R1]
64478:  LDRB            R1, [R2]
6447A:  LDRB            R6, [R3]
6447C:  EOR.W           R1, R1, #0x5A ; 'Z'
64480:  STRB            R1, [R2]
64482:  EOR.W           R1, R6, #0x5A ; 'Z'
64486:  STRB            R1, [R3]
64488:  LDRB.W          R1, [R4,#(byte_1A3F27 - 0x1A3EF0)]
6448C:  EOR.W           R3, R12, #0x5A ; 'Z'
64490:  LDRB.W          R2, [R4,#(byte_1A3F28 - 0x1A3EF0)]
64494:  STRB.W          R3, [R4,#(byte_1A3F26 - 0x1A3EF0)]
64498:  EOR.W           R1, R1, #0x5A ; 'Z'
6449C:  LDRB            R3, [R0]
6449E:  STRB.W          R1, [R4,#(byte_1A3F27 - 0x1A3EF0)]
644A2:  EOR.W           R1, R2, #0x5A ; 'Z'
644A6:  STRB.W          R1, [R4,#(byte_1A3F28 - 0x1A3EF0)]
644AA:  EOR.W           R1, R3, #0x5A ; 'Z'
644AE:  STRB            R1, [R0]
644B0:  LDRB.W          R0, [R4,#(byte_1A3F29 - 0x1A3EF0)]
644B4:  EOR.W           R0, R0, #0x5A ; 'Z'
644B8:  STRB.W          R0, [R4,#(byte_1A3F29 - 0x1A3EF0)]
644BC:  LDRB.W          R0, [R4,#(byte_1A3F2A - 0x1A3EF0)]
644C0:  EOR.W           R0, R0, #0x5A ; 'Z'
644C4:  STRB.W          R0, [R4,#(byte_1A3F2A - 0x1A3EF0)]
644C8:  LDRB.W          R0, [R4,#(byte_1A3F2B - 0x1A3EF0)]
644CC:  EOR.W           R0, R0, #0x5A ; 'Z'
644D0:  STRB.W          R0, [R4,#(byte_1A3F2B - 0x1A3EF0)]
644D4:  LDR             R0, =(unk_1A3EF0 - 0x644DA)
644D6:  ADD             R0, PC; unk_1A3EF0
644D8:  BL              sub_6C73C
644DC:  B.W             loc_64F94
644E0:  LDR             R1, =(aD - 0x644EC); "%d" ...
644E2:  MOVS            R2, #0
644E4:  STR             R2, [SP,#0x648+var_624]
644E6:  ADD             R2, SP, #0x648+var_624
644E8:  ADD             R1, PC; "%d"
644EA:  BLX             sscanf
644EE:  CMP             R0, #1
644F0:  BNE.W           loc_647FC
644F4:  LDR             R0, [SP,#0x648+var_624]
644F6:  SUB.W           R1, R0, #0x15
644FA:  CMN.W           R1, #0x11
644FE:  BHI.W           loc_64B9C
64502:  LDR             R0, =(byte_1A3E98 - 0x64508)
64504:  ADD             R0, PC; byte_1A3E98
64506:  LDRB            R0, [R0]
64508:  DMB.W           ISH
6450C:  LSLS            R0, R0, #0x1F
6450E:  BEQ.W           loc_65424
64512:  LDR             R0, =(unk_1A3E50 - 0x64518)
64514:  ADD             R0, PC; unk_1A3E50
64516:  LDRB.W          R1, [R0,#(byte_1A3E94 - 0x1A3E50)]
6451A:  CBZ             R1, loc_64588
6451C:  VMOV.I8         Q8, #0x5A ; 'Z'
64520:  MOVS            R2, #0x44 ; 'D'
64522:  MOV             R1, R0
64524:  MOVS            R3, #0x33 ; '3'
64526:  VLD1.8          {D18-D19}, [R1@128],R2
6452A:  MOVS            R6, #0x22 ; '"'
6452C:  VEOR            Q9, Q9, Q8
64530:  MOVS            R5, #0x11
64532:  VST1.8          {D18-D19}, [R0@128]!
64536:  MOV             R2, R0
64538:  VLD1.8          {D18-D19}, [R2@128],R3
6453C:  VEOR            Q9, Q9, Q8
64540:  VST1.8          {D18-D19}, [R0@128]!
64544:  MOV             R3, R0
64546:  VLD1.8          {D18-D19}, [R3@128],R6
6454A:  VEOR            Q9, Q9, Q8
6454E:  LDRB            R6, [R1]
64550:  VST1.8          {D18-D19}, [R0@128]!
64554:  EOR.W           R6, R6, #0x5A ; 'Z'
64558:  MOV             R4, R0
6455A:  STRB            R6, [R1]
6455C:  VLD1.8          {D18-D19}, [R4@128],R5
64560:  VEOR            Q8, Q9, Q8
64564:  LDRB            R5, [R2]
64566:  LDRB            R6, [R3]
64568:  EOR.W           R1, R5, #0x5A ; 'Z'
6456C:  VST1.8          {D16-D17}, [R0@128]!
64570:  STRB            R1, [R2]
64572:  EOR.W           R2, R6, #0x5A ; 'Z'
64576:  LDRB            R1, [R4]
64578:  STRB            R2, [R3]
6457A:  LDRB            R2, [R0]
6457C:  EOR.W           R1, R1, #0x5A ; 'Z'
64580:  STRB            R1, [R4]
64582:  EOR.W           R1, R2, #0x5A ; 'Z'
64586:  STRB            R1, [R0]
64588:  LDR             R0, =(unk_1A3E50 - 0x6458E)
6458A:  ADD             R0, PC; unk_1A3E50
6458C:  BL              sub_6C73C
64590:  B.W             loc_64F94
64594:  LDR             R0, =(unk_50B28 - 0x6459E)
64596:  MOVS            R1, #0xA
64598:  ADD             R2, SP, #0x648+var_620
6459A:  ADD             R0, PC; unk_50B28
6459C:  VLD1.64         {D16-D17}, [R0]!
645A0:  VLD1.64         {D18-D19}, [R0],R1
645A4:  VLD1.16         {D20-D21}, [R0]
645A8:  LDR             R0, =(byte_1A3D5C - 0x645B2)
645AA:  VST1.64         {D16-D17}, [R2]!
645AE:  ADD             R0, PC; byte_1A3D5C
645B0:  VST1.64         {D18-D19}, [R2],R1
645B4:  VST1.16         {D20-D21}, [R2]
645B8:  LDRB            R0, [R0]
645BA:  DMB.W           ISH
645BE:  LSLS            R0, R0, #0x1F
645C0:  BEQ.W           loc_651C8
645C4:  LDR             R0, =(unk_1A3D30 - 0x645CA)
645C6:  ADD             R0, PC; unk_1A3D30
645C8:  LDRB.W          R1, [R0,#(byte_1A3D59 - 0x1A3D30)]
645CC:  CMP             R1, #0
645CE:  BEQ             loc_64666
645D0:  VMOV.I8         Q8, #0x5A ; 'Z'
645D4:  MOVS            R1, #0x22 ; '"'
645D6:  MOV             R2, R0
645D8:  LDRB.W          R3, [R0,#(byte_1A3D54 - 0x1A3D30)]
645DC:  VLD1.8          {D18-D19}, [R2@128],R1
645E0:  MOV.W           R12, #0x11
645E4:  VEOR            Q9, Q9, Q8
645E8:  EOR.W           R3, R3, #0x5A ; 'Z'
645EC:  LDRB.W          R1, [R0,#(byte_1A3D53 - 0x1A3D30)]
645F0:  LDRB.W          R6, [R0,#(byte_1A3D55 - 0x1A3D30)]
645F4:  EOR.W           R1, R1, #0x5A ; 'Z'
645F8:  STRB.W          R1, [R0,#(byte_1A3D53 - 0x1A3D30)]
645FC:  MOV             R1, R0
645FE:  LDRB.W          R5, [R0,#(byte_1A3D56 - 0x1A3D30)]
64602:  VST1.8          {D18-D19}, [R1@128]!
64606:  MOV             R4, R1
64608:  STRB.W          R3, [R0,#(byte_1A3D54 - 0x1A3D30)]
6460C:  EOR.W           R3, R6, #0x5A ; 'Z'
64610:  VLD1.8          {D18-D19}, [R4@128],R12
64614:  VEOR            Q8, Q9, Q8
64618:  STRB.W          R3, [R0,#(byte_1A3D55 - 0x1A3D30)]
6461C:  EOR.W           R3, R5, #0x5A ; 'Z'
64620:  LDRB.W          LR, [R2]
64624:  STRB.W          R3, [R0,#(byte_1A3D56 - 0x1A3D30)]
64628:  LDRB            R3, [R4]
6462A:  EOR.W           R5, LR, #0x5A ; 'Z'
6462E:  LDRB.W          R6, [R0,#(byte_1A3D57 - 0x1A3D30)]
64632:  STRB            R5, [R2]
64634:  EOR.W           R2, R3, #0x5A ; 'Z'
64638:  VST1.8          {D16-D17}, [R1@128]!
6463C:  EOR.W           R3, R6, #0x5A ; 'Z'
64640:  STRB            R2, [R4]
64642:  LDRB.W          R2, [R0,#(byte_1A3D58 - 0x1A3D30)]
64646:  STRB.W          R3, [R0,#(byte_1A3D57 - 0x1A3D30)]
6464A:  LDRB            R3, [R1]
6464C:  EOR.W           R2, R2, #0x5A ; 'Z'
64650:  STRB.W          R2, [R0,#(byte_1A3D58 - 0x1A3D30)]
64654:  EOR.W           R2, R3, #0x5A ; 'Z'
64658:  STRB            R2, [R1]
6465A:  LDRB.W          R1, [R0,#(byte_1A3D59 - 0x1A3D30)]
6465E:  EOR.W           R1, R1, #0x5A ; 'Z'
64662:  STRB.W          R1, [R0,#(byte_1A3D59 - 0x1A3D30)]
64666:  LDR             R0, =(unk_1A3D30 - 0x6466C)
64668:  ADD             R0, PC; unk_1A3D30
6466A:  BL              sub_6C73C
6466E:  B.W             loc_64F94
64672:  LDR             R0, =(off_114B14 - 0x64678)
64674:  ADD             R0, PC; off_114B14
64676:  LDR             R0, [R0]; byte_1A44F4
64678:  LDRB            R1, [R0]
6467A:  EOR.W           R1, R1, #1
6467E:  STRB            R1, [R0]
64680:  B.W             loc_64F94
64684:  DCD aF - 0x642D0
64688:  DCFS 0.1
6468C:  DCD unk_50B98 - 0x64304
64690:  DCD off_114B80 - 0x6430A
64694:  DCD byte_1A3DD8 - 0x64320
64698:  DCD unk_1A3DB0 - 0x6433C
6469C:  DCD unk_1A3DB0 - 0x643CE
646A0:  DCD byte_1A3F2C - 0x64408
646A4:  DCD unk_1A3EF0 - 0x64412
646A8:  DCD unk_1A3EF0 - 0x644DA
646AC:  DCD aD - 0x644EC
646B0:  DCD byte_1A3E98 - 0x64508
646B4:  DCD unk_1A3E50 - 0x64518
646B8:  DCD unk_1A3E50 - 0x6458E
646BC:  DCD unk_50B28 - 0x6459E
646C0:  DCD byte_1A3D5C - 0x645B2
646C4:  DCD unk_1A3D30 - 0x645CA
646C8:  DCD unk_1A3D30 - 0x6466C
646CC:  DCD off_114B14 - 0x64678
646D0:  LDR             R1, =(a15sF - 0x646E0); "%15s %f" ...
646D2:  MOVS            R3, #0
646D4:  VMOV.I32        Q8, #0
646D8:  ADD             R2, SP, #0x648+var_620
646DA:  STR             R3, [SP,#0x648+var_624]
646DC:  ADD             R1, PC; "%15s %f"
646DE:  ADD             R3, SP, #0x648+var_624
646E0:  VST1.64         {D16-D17}, [R2]
646E4:  BLX             sscanf
646E8:  CMP             R0, #2
646EA:  BNE.W           loc_64AC0
646EE:  LDR             R0, [SP,#0x648+var_620]
646F0:  MOV             R1, #0x736F70
646F8:  CMP             R0, R1
646FA:  BEQ.W           loc_64CEC
646FE:  LDR             R0, [SP,#0x648+var_620]
64700:  MOV             R1, #0x746F72
64708:  CMP             R0, R1
6470A:  BEQ.W           loc_64DB4
6470E:  LDR             R1, =(aScale - 0x64718); "scale" ...
64710:  ADD             R0, SP, #0x648+var_620; s1
64712:  MOVS            R2, #6; n
64714:  ADD             R1, PC; "scale"
64716:  BLX             memcmp
6471A:  CMP             R0, #0
6471C:  BEQ.W           loc_64EB8
64720:  BL              sub_6584C
64724:  LDR             R0, =(unk_1A4000 - 0x6472A)
64726:  ADD             R0, PC; unk_1A4000
64728:  LDRB.W          R1, [R0,#(byte_1A403C - 0x1A4000)]
6472C:  CMP             R1, #0
6472E:  BEQ             loc_647F2
64730:  VMOV.I8         Q8, #0x5A ; 'Z'
64734:  MOVS            R1, #0x33 ; '3'
64736:  MOV             R2, R0
64738:  MOVS            R6, #0x22 ; '"'
6473A:  VLD1.8          {D18-D19}, [R2@128],R1
6473E:  MOV             R1, R0
64740:  VEOR            Q9, Q9, Q8
64744:  LDRB.W          R12, [R0,#(byte_1A4036 - 0x1A4000)]
64748:  LDRB.W          R5, [R0,#(byte_1A4035 - 0x1A4000)]
6474C:  VST1.8          {D18-D19}, [R1@128]!
64750:  EOR.W           R5, R5, #0x5A ; 'Z'
64754:  MOV             R3, R1
64756:  STRB.W          R5, [R0,#(byte_1A4035 - 0x1A4000)]
6475A:  VLD1.8          {D18-D19}, [R3@128],R6
6475E:  MOVS            R6, #0x11
64760:  VEOR            Q9, Q9, Q8
64764:  VST1.8          {D18-D19}, [R1@128]!
64768:  MOV             R4, R1
6476A:  VLD1.8          {D18-D19}, [R4@128],R6
6476E:  VEOR            Q8, Q9, Q8
64772:  LDRB.W          R6, [R0,#(byte_1A4034 - 0x1A4000)]
64776:  EOR.W           R6, R6, #0x5A ; 'Z'
6477A:  STRB.W          R6, [R0,#(byte_1A4034 - 0x1A4000)]
6477E:  LDRB            R6, [R2]
64780:  VST1.8          {D16-D17}, [R1@128]!
64784:  EOR.W           R6, R6, #0x5A ; 'Z'
64788:  STRB            R6, [R2]
6478A:  LDRB            R2, [R3]
6478C:  LDRB            R6, [R4]
6478E:  EOR.W           R2, R2, #0x5A ; 'Z'
64792:  STRB            R2, [R3]
64794:  EOR.W           R2, R6, #0x5A ; 'Z'
64798:  STRB            R2, [R4]
6479A:  LDRB.W          R2, [R0,#(byte_1A4037 - 0x1A4000)]
6479E:  EOR.W           R6, R12, #0x5A ; 'Z'
647A2:  LDRB.W          R3, [R0,#(byte_1A4038 - 0x1A4000)]
647A6:  STRB.W          R6, [R0,#(byte_1A4036 - 0x1A4000)]
647AA:  EOR.W           R2, R2, #0x5A ; 'Z'
647AE:  LDRB            R6, [R1]
647B0:  STRB.W          R2, [R0,#(byte_1A4037 - 0x1A4000)]
647B4:  EOR.W           R2, R3, #0x5A ; 'Z'
647B8:  STRB.W          R2, [R0,#(byte_1A4038 - 0x1A4000)]
647BC:  EOR.W           R2, R6, #0x5A ; 'Z'
647C0:  STRB            R2, [R1]
647C2:  LDRB.W          R1, [R0,#(byte_1A4039 - 0x1A4000)]
647C6:  EOR.W           R1, R1, #0x5A ; 'Z'
647CA:  STRB.W          R1, [R0,#(byte_1A4039 - 0x1A4000)]
647CE:  LDRB.W          R1, [R0,#(byte_1A403A - 0x1A4000)]
647D2:  EOR.W           R1, R1, #0x5A ; 'Z'
647D6:  STRB.W          R1, [R0,#(byte_1A403A - 0x1A4000)]
647DA:  LDRB.W          R1, [R0,#(byte_1A403B - 0x1A4000)]
647DE:  EOR.W           R1, R1, #0x5A ; 'Z'
647E2:  STRB.W          R1, [R0,#(byte_1A403B - 0x1A4000)]
647E6:  LDRB.W          R1, [R0,#(byte_1A403C - 0x1A4000)]
647EA:  EOR.W           R1, R1, #0x5A ; 'Z'
647EE:  STRB.W          R1, [R0,#(byte_1A403C - 0x1A4000)]
647F2:  LDR             R0, =(unk_1A4000 - 0x647F8)
647F4:  ADD             R0, PC; unk_1A4000
647F6:  BL              sub_6C73C
647FA:  B               loc_64F94
647FC:  LDR             R0, =(unk_50BC0 - 0x64806)
647FE:  MOVS            R1, #0xA
64800:  ADD             R2, SP, #0x648+var_620
64802:  ADD             R0, PC; unk_50BC0
64804:  VLD1.64         {D16-D17}, [R0]!
64808:  VLD1.64         {D18-D19}, [R0],R1
6480C:  VLD1.16         {D20-D21}, [R0]
64810:  LDR             R0, =(byte_1A3E4C - 0x6481A)
64812:  VST1.64         {D16-D17}, [R2]!
64816:  ADD             R0, PC; byte_1A3E4C
64818:  VST1.64         {D18-D19}, [R2],R1
6481C:  VST1.16         {D20-D21}, [R2]
64820:  LDRB            R0, [R0]
64822:  DMB.W           ISH
64826:  LSLS            R0, R0, #0x1F
64828:  BEQ.W           loc_6524C
6482C:  LDR             R0, =(unk_1A3E20 - 0x64832)
6482E:  ADD             R0, PC; unk_1A3E20
64830:  LDRB.W          R1, [R0,#(byte_1A3E49 - 0x1A3E20)]
64834:  CMP             R1, #0
64836:  BEQ             loc_648CE
64838:  VMOV.I8         Q8, #0x5A ; 'Z'
6483C:  MOVS            R1, #0x22 ; '"'
6483E:  MOV             R2, R0
64840:  LDRB.W          R3, [R0,#(byte_1A3E44 - 0x1A3E20)]
64844:  VLD1.8          {D18-D19}, [R2@128],R1
64848:  MOV.W           R12, #0x11
6484C:  VEOR            Q9, Q9, Q8
64850:  EOR.W           R3, R3, #0x5A ; 'Z'
64854:  LDRB.W          R1, [R0,#(byte_1A3E43 - 0x1A3E20)]
64858:  LDRB.W          R6, [R0,#(byte_1A3E45 - 0x1A3E20)]
6485C:  EOR.W           R1, R1, #0x5A ; 'Z'
64860:  STRB.W          R1, [R0,#(byte_1A3E43 - 0x1A3E20)]
64864:  MOV             R1, R0
64866:  LDRB.W          R5, [R0,#(byte_1A3E46 - 0x1A3E20)]
6486A:  VST1.8          {D18-D19}, [R1@128]!
6486E:  MOV             R4, R1
64870:  STRB.W          R3, [R0,#(byte_1A3E44 - 0x1A3E20)]
64874:  EOR.W           R3, R6, #0x5A ; 'Z'
64878:  VLD1.8          {D18-D19}, [R4@128],R12
6487C:  VEOR            Q8, Q9, Q8
64880:  STRB.W          R3, [R0,#(byte_1A3E45 - 0x1A3E20)]
64884:  EOR.W           R3, R5, #0x5A ; 'Z'
64888:  LDRB.W          LR, [R2]
6488C:  STRB.W          R3, [R0,#(byte_1A3E46 - 0x1A3E20)]
64890:  LDRB            R3, [R4]
64892:  EOR.W           R5, LR, #0x5A ; 'Z'
64896:  LDRB.W          R6, [R0,#(byte_1A3E47 - 0x1A3E20)]
6489A:  STRB            R5, [R2]
6489C:  EOR.W           R2, R3, #0x5A ; 'Z'
648A0:  VST1.8          {D16-D17}, [R1@128]!
648A4:  EOR.W           R3, R6, #0x5A ; 'Z'
648A8:  STRB            R2, [R4]
648AA:  LDRB.W          R2, [R0,#(byte_1A3E48 - 0x1A3E20)]
648AE:  STRB.W          R3, [R0,#(byte_1A3E47 - 0x1A3E20)]
648B2:  LDRB            R3, [R1]
648B4:  EOR.W           R2, R2, #0x5A ; 'Z'
648B8:  STRB.W          R2, [R0,#(byte_1A3E48 - 0x1A3E20)]
648BC:  EOR.W           R2, R3, #0x5A ; 'Z'
648C0:  STRB            R2, [R1]
648C2:  LDRB.W          R1, [R0,#(byte_1A3E49 - 0x1A3E20)]
648C6:  EOR.W           R1, R1, #0x5A ; 'Z'
648CA:  STRB.W          R1, [R0,#(byte_1A3E49 - 0x1A3E20)]
648CE:  LDR             R0, =(unk_1A3E20 - 0x648D4)
648D0:  ADD             R0, PC; unk_1A3E20
648D2:  BL              sub_6C73C
648D6:  B               loc_64F94
648D8:  LDR             R4, [SP,#0x648+var_628]
648DA:  LDR.W           R0, [R4,#0x218]
648DE:  CMP             R0, #5
648E0:  BNE.W           loc_64C68
648E4:  MOVW            R1, #:lower16:unk_143389
648E8:  LDR.W           R0, [R9]
648EC:  MOVT            R1, #:upper16:unk_143389
648F0:  ADD             R1, R0
648F2:  LDR             R0, [SP,#0x648+var_62C]
648F4:  BLX             R1
648F6:  LDR.W           R0, [R4,#0x210]
648FA:  MOVS            R2, #0
648FC:  LDR             R1, [R0]
648FE:  LDR             R3, [R1,#0xC]
64900:  MOV.W           R1, #0x7D0
64904:  BLX             R3
64906:  ADD             R0, SP, #0x648+var_620
64908:  ADD             R1, SP, #0x648+var_624
6490A:  STR             R4, [SP,#0x648+var_624]
6490C:  BL              sub_658D0
64910:  BLX             j__ZNSt6__ndk16thread6detachEv; std::thread::detach(void)
64914:  ADD             R0, SP, #0x648+var_620; this
64916:  BLX             j__ZNSt6__ndk16threadD2Ev; std::thread::~thread()
6491A:  LDR             R0, =(aC80018FfffffRe - 0x64920); "{C80018}> {FFFFFF}Reconnecting in {C800"... ...
6491C:  ADD             R0, PC; "{C80018}> {FFFFFF}Reconnecting in {C800"...
6491E:  BL              sub_6C73C
64922:  B               loc_64F94
64924:  ADD.W           R4, R10, #5
64928:  LDRB            R0, [R4]
6492A:  CMP             R0, #0x20 ; ' '
6492C:  BNE             loc_64932
6492E:  ADDS            R4, #1
64930:  B               loc_64928
64932:  CMP             R0, #0
64934:  BEQ.W           loc_64A76
64938:  MOV             R0, R4; s
6493A:  BLX             strlen
6493E:  CMP             R0, #6
64940:  BNE.W           loc_64A76
64944:  LDR             R0, =(aC80018FfffffBu - 0x6494C); "{C80018}> {FFFFFF}Button Color is now {"... ...
64946:  MOV             R1, R4
64948:  ADD             R0, PC; "{C80018}> {FFFFFF}Button Color is now {"...
6494A:  BL              sub_6C73C
6494E:  LDR             R0, =(off_114B44 - 0x64954)
64950:  ADD             R0, PC; off_114B44
64952:  LDR             R0, [R0]; byte_1A4480
64954:  LDRB            R0, [R0]
64956:  CMP             R0, #0
64958:  BEQ.W           loc_64F64
6495C:  LDR             R0, =(off_114B48 - 0x64964)
6495E:  MOVS            R1, #6; size_t
64960:  ADD             R0, PC; off_114B48
64962:  LDR             R0, [R0]; dword_1A41D8
64964:  LDR             R5, [R0]
64966:  MOV             R0, R4; char *
64968:  BLX             strndup
6496C:  MOV             R1, R0
6496E:  MOV             R0, R5
64970:  BL              sub_69AAC
64974:  B               loc_64F7A
64976:  LDR             R0, =(byte_1A3DA0 - 0x6497C)
64978:  ADD             R0, PC; byte_1A3DA0
6497A:  LDRB            R0, [R0]
6497C:  DMB.W           ISH
64980:  LDR             R4, =(unk_1A3D60 - 0x64986)
64982:  ADD             R4, PC; unk_1A3D60
64984:  LSLS            R0, R0, #0x1F
64986:  BEQ.W           loc_6534C
6498A:  LDRB.W          R0, [R4,#(byte_1A3D9E - 0x1A3D60)]
6498E:  CMP             R0, #0
64990:  BEQ             loc_64A6C
64992:  VMOV.I8         Q8, #0x5A ; 'Z'
64996:  MOVS            R0, #0x33 ; '3'
64998:  MOV             R1, R4
6499A:  MOVS            R3, #0x22 ; '"'
6499C:  VLD1.8          {D18-D19}, [R1@128],R0
649A0:  MOV             R0, R4
649A2:  VEOR            Q9, Q9, Q8
649A6:  MOVS            R6, #0x11
649A8:  LDRB.W          R12, [R4,#(byte_1A3D96 - 0x1A3D60)]
649AC:  LDRB.W          R5, [R4,#(byte_1A3D95 - 0x1A3D60)]
649B0:  VST1.8          {D18-D19}, [R0@128]!
649B4:  EOR.W           R5, R5, #0x5A ; 'Z'
649B8:  MOV             R2, R0
649BA:  STRB.W          R5, [R4,#(byte_1A3D95 - 0x1A3D60)]
649BE:  VLD1.8          {D18-D19}, [R2@128],R3
649C2:  VEOR            Q9, Q9, Q8
649C6:  VST1.8          {D18-D19}, [R0@128]!
649CA:  MOV             R3, R0
649CC:  VLD1.8          {D18-D19}, [R3@128],R6
649D0:  VEOR            Q8, Q9, Q8
649D4:  LDRB.W          R6, [R4,#(byte_1A3D94 - 0x1A3D60)]
649D8:  EOR.W           R6, R6, #0x5A ; 'Z'
649DC:  STRB.W          R6, [R4,#(byte_1A3D94 - 0x1A3D60)]
649E0:  LDRB            R6, [R1]
649E2:  VST1.8          {D16-D17}, [R0@128]!
649E6:  EOR.W           R6, R6, #0x5A ; 'Z'
649EA:  STRB            R6, [R1]
649EC:  LDRB            R1, [R2]
649EE:  LDRB            R6, [R3]
649F0:  EOR.W           R1, R1, #0x5A ; 'Z'
649F4:  STRB            R1, [R2]
649F6:  EOR.W           R1, R6, #0x5A ; 'Z'
649FA:  STRB            R1, [R3]
649FC:  LDRB.W          R1, [R4,#(byte_1A3D97 - 0x1A3D60)]
64A00:  EOR.W           R3, R12, #0x5A ; 'Z'
64A04:  LDRB.W          R2, [R4,#(byte_1A3D98 - 0x1A3D60)]
64A08:  STRB.W          R3, [R4,#(byte_1A3D96 - 0x1A3D60)]
64A0C:  EOR.W           R1, R1, #0x5A ; 'Z'
64A10:  LDRB            R3, [R0]
64A12:  STRB.W          R1, [R4,#(byte_1A3D97 - 0x1A3D60)]
64A16:  EOR.W           R1, R2, #0x5A ; 'Z'
64A1A:  STRB.W          R1, [R4,#(byte_1A3D98 - 0x1A3D60)]
64A1E:  EOR.W           R1, R3, #0x5A ; 'Z'
64A22:  STRB            R1, [R0]
64A24:  LDRB.W          R0, [R4,#(byte_1A3D99 - 0x1A3D60)]
64A28:  EOR.W           R0, R0, #0x5A ; 'Z'
64A2C:  STRB.W          R0, [R4,#(byte_1A3D99 - 0x1A3D60)]
64A30:  LDRB.W          R0, [R4,#(byte_1A3D9A - 0x1A3D60)]
64A34:  EOR.W           R0, R0, #0x5A ; 'Z'
64A38:  STRB.W          R0, [R4,#(byte_1A3D9A - 0x1A3D60)]
64A3C:  LDRB.W          R0, [R4,#(byte_1A3D9B - 0x1A3D60)]
64A40:  EOR.W           R0, R0, #0x5A ; 'Z'
64A44:  STRB.W          R0, [R4,#(byte_1A3D9B - 0x1A3D60)]
64A48:  LDRB.W          R0, [R4,#(byte_1A3D9C - 0x1A3D60)]
64A4C:  EOR.W           R0, R0, #0x5A ; 'Z'
64A50:  STRB.W          R0, [R4,#(byte_1A3D9C - 0x1A3D60)]
64A54:  LDRB.W          R0, [R4,#(byte_1A3D9D - 0x1A3D60)]
64A58:  EOR.W           R0, R0, #0x5A ; 'Z'
64A5C:  STRB.W          R0, [R4,#(byte_1A3D9D - 0x1A3D60)]
64A60:  LDRB.W          R0, [R4,#(byte_1A3D9E - 0x1A3D60)]
64A64:  EOR.W           R0, R0, #0x5A ; 'Z'
64A68:  STRB.W          R0, [R4,#(byte_1A3D9E - 0x1A3D60)]
64A6C:  LDR             R0, =(unk_1A3D60 - 0x64A72)
64A6E:  ADD             R0, PC; unk_1A3D60
64A70:  BL              sub_6C73C
64A74:  B               loc_64F94
64A76:  LDR             R0, =(aC80018FfffffUs - 0x64A7C); "{C80018}> {FFFFFF}Usage: /btn [hex code"... ...
64A78:  ADD             R0, PC; "{C80018}> {FFFFFF}Usage: /btn [hex code"...
64A7A:  BL              sub_6C73C
64A7E:  B               loc_64F94
64A80:  DCD a15sF - 0x646E0
64A84:  DCD aScale - 0x64718
64A88:  DCD unk_1A4000 - 0x6472A
64A8C:  DCD unk_1A4000 - 0x647F8
64A90:  DCD unk_50BC0 - 0x64806
64A94:  DCD byte_1A3E4C - 0x6481A
64A98:  DCD unk_1A3E20 - 0x64832
64A9C:  DCD unk_1A3E20 - 0x648D4
64AA0:  DCD aC80018FfffffRe - 0x64920
64AA4:  DCD aC80018FfffffBu - 0x6494C
64AA8:  DCD off_114B44 - 0x64954
64AAC:  DCD off_114B48 - 0x64964
64AB0:  DCD byte_1A3DA0 - 0x6497C
64AB4:  DCD unk_1A3D60 - 0x64986
64AB8:  DCD unk_1A3D60 - 0x64A72
64ABC:  DCD aC80018FfffffUs - 0x64A7C
64AC0:  LDR             R0, =(byte_1A3F6C - 0x64AC6)
64AC2:  ADD             R0, PC; byte_1A3F6C
64AC4:  LDRB            R0, [R0]
64AC6:  DMB.W           ISH
64ACA:  LDR             R4, =(unk_1A3F30 - 0x64AD0)
64ACC:  ADD             R4, PC; unk_1A3F30
64ACE:  LSLS            R0, R0, #0x1F
64AD0:  BEQ.W           loc_653D4
64AD4:  LDRB.W          R0, [R4,#(byte_1A3F6B - 0x1A3F30)]
64AD8:  CMP             R0, #0
64ADA:  BEQ             loc_64B92
64ADC:  VMOV.I8         Q8, #0x5A ; 'Z'
64AE0:  MOVS            R0, #0x33 ; '3'
64AE2:  MOV             R1, R4
64AE4:  MOVS            R3, #0x22 ; '"'
64AE6:  VLD1.8          {D18-D19}, [R1@128],R0
64AEA:  MOV             R0, R4
64AEC:  VEOR            Q9, Q9, Q8
64AF0:  MOVS            R6, #0x11
64AF2:  LDRB.W          R12, [R4,#(byte_1A3F66 - 0x1A3F30)]
64AF6:  LDRB.W          R5, [R4,#(byte_1A3F65 - 0x1A3F30)]
64AFA:  VST1.8          {D18-D19}, [R0@128]!
64AFE:  EOR.W           R5, R5, #0x5A ; 'Z'
64B02:  MOV             R2, R0
64B04:  STRB.W          R5, [R4,#(byte_1A3F65 - 0x1A3F30)]
64B08:  VLD1.8          {D18-D19}, [R2@128],R3
64B0C:  VEOR            Q9, Q9, Q8
64B10:  VST1.8          {D18-D19}, [R0@128]!
64B14:  MOV             R3, R0
64B16:  VLD1.8          {D18-D19}, [R3@128],R6
64B1A:  VEOR            Q8, Q9, Q8
64B1E:  LDRB.W          R6, [R4,#(byte_1A3F64 - 0x1A3F30)]
64B22:  EOR.W           R6, R6, #0x5A ; 'Z'
64B26:  STRB.W          R6, [R4,#(byte_1A3F64 - 0x1A3F30)]
64B2A:  LDRB            R6, [R1]
64B2C:  VST1.8          {D16-D17}, [R0@128]!
64B30:  EOR.W           R6, R6, #0x5A ; 'Z'
64B34:  STRB            R6, [R1]
64B36:  LDRB            R1, [R2]
64B38:  LDRB            R6, [R3]
64B3A:  EOR.W           R1, R1, #0x5A ; 'Z'
64B3E:  STRB            R1, [R2]
64B40:  EOR.W           R1, R6, #0x5A ; 'Z'
64B44:  STRB            R1, [R3]
64B46:  LDRB.W          R1, [R4,#(byte_1A3F67 - 0x1A3F30)]
64B4A:  EOR.W           R3, R12, #0x5A ; 'Z'
64B4E:  LDRB.W          R2, [R4,#(byte_1A3F68 - 0x1A3F30)]
64B52:  STRB.W          R3, [R4,#(byte_1A3F66 - 0x1A3F30)]
64B56:  EOR.W           R1, R1, #0x5A ; 'Z'
64B5A:  LDRB            R3, [R0]
64B5C:  STRB.W          R1, [R4,#(byte_1A3F67 - 0x1A3F30)]
64B60:  EOR.W           R1, R2, #0x5A ; 'Z'
64B64:  STRB.W          R1, [R4,#(byte_1A3F68 - 0x1A3F30)]
64B68:  EOR.W           R1, R3, #0x5A ; 'Z'
64B6C:  STRB            R1, [R0]
64B6E:  LDRB.W          R0, [R4,#(byte_1A3F69 - 0x1A3F30)]
64B72:  EOR.W           R0, R0, #0x5A ; 'Z'
64B76:  STRB.W          R0, [R4,#(byte_1A3F69 - 0x1A3F30)]
64B7A:  LDRB.W          R0, [R4,#(byte_1A3F6A - 0x1A3F30)]
64B7E:  EOR.W           R0, R0, #0x5A ; 'Z'
64B82:  STRB.W          R0, [R4,#(byte_1A3F6A - 0x1A3F30)]
64B86:  LDRB.W          R0, [R4,#(byte_1A3F6B - 0x1A3F30)]
64B8A:  EOR.W           R0, R0, #0x5A ; 'Z'
64B8E:  STRB.W          R0, [R4,#(byte_1A3F6B - 0x1A3F30)]
64B92:  LDR             R0, =(unk_1A3F30 - 0x64B98)
64B94:  ADD             R0, PC; unk_1A3F30
64B96:  BL              sub_6C73C
64B9A:  B               loc_64F94
64B9C:  LDR             R1, =(off_114B88 - 0x64BA4)
64B9E:  LDR             R2, =(byte_1A3ED4 - 0x64BA6)
64BA0:  ADD             R1, PC; off_114B88
64BA2:  ADD             R2, PC; byte_1A3ED4
64BA4:  LDR             R5, [R1]; dword_1A4528
64BA6:  STR             R0, [R5]
64BA8:  LDRB            R0, [R2]
64BAA:  DMB.W           ISH
64BAE:  LDR             R4, =(unk_1A3EA0 - 0x64BB4)
64BB0:  ADD             R4, PC; unk_1A3EA0
64BB2:  LSLS            R0, R0, #0x1F
64BB4:  BEQ.W           loc_6545C
64BB8:  LDRB.W          R0, [R4,#(dword_1A3ED0+3 - 0x1A3EA0)]
64BBC:  CBZ             R0, loc_64C12
64BBE:  VMOV.I8         Q8, #0x5A ; 'Z'
64BC2:  MOVS            R1, #0x33 ; '3'
64BC4:  MOV             R0, R4
64BC6:  MOVS            R2, #0x22 ; '"'
64BC8:  VLD1.8          {D18-D19}, [R0@128],R1
64BCC:  MOVS            R3, #0x11
64BCE:  VEOR            Q9, Q9, Q8
64BD2:  VST1.8          {D18-D19}, [R4@128]!
64BD6:  MOV             R1, R4
64BD8:  VLD1.8          {D18-D19}, [R1@128],R2
64BDC:  VEOR            Q9, Q9, Q8
64BE0:  LDRB            R2, [R0]
64BE2:  VST1.8          {D18-D19}, [R4@128]!
64BE6:  EOR.W           R2, R2, #0x5A ; 'Z'
64BEA:  MOV             R6, R4
64BEC:  STRB            R2, [R0]
64BEE:  VLD1.8          {D18-D19}, [R6@128],R3
64BF2:  VEOR            Q8, Q9, Q8
64BF6:  LDRB            R3, [R1]
64BF8:  LDRB            R0, [R6]
64BFA:  VST1.8          {D16-D17}, [R4@128]!
64BFE:  EOR.W           R2, R3, #0x5A ; 'Z'
64C02:  EOR.W           R0, R0, #0x5A ; 'Z'
64C06:  STRB            R2, [R1]
64C08:  LDRB            R1, [R4]
64C0A:  STRB            R0, [R6]
64C0C:  EOR.W           R0, R1, #0x5A ; 'Z'
64C10:  STRB            R0, [R4]
64C12:  LDR             R0, =(unk_1A3EA0 - 0x64C1A)
64C14:  LDR             R1, [R5]
64C16:  ADD             R0, PC; unk_1A3EA0
64C18:  BL              sub_6C73C
64C1C:  LDR.W           R1, [R9]
64C20:  MOVW            R2, #:lower16:(loc_E4F34+1)
64C24:  LDR             R0, [R5]
64C26:  MOVT            R2, #:upper16:(loc_E4F34+1)
64C2A:  ADD             R1, R2
64C2C:  BLX             R1
64C2E:  BL              sub_6C808
64C32:  VLDR            S0, [R5]
64C36:  LDR             R0, [R0,#0x60]
64C38:  VCVT.F32.U32    S0, S0
64C3C:  ADDW            R0, R0, #0x8DC
64C40:  VLDR            S2, [R0]
64C44:  VMUL.F32        S16, S2, S0
64C48:  BL              sub_6C808
64C4C:  LDR             R0, [R0,#0x60]
64C4E:  VSTR            S16, [R0,#0x28]
64C52:  BL              sub_6C808
64C56:  LDR             R0, [R0,#0x60]
64C58:  VSTR            S16, [R0,#0x20]
64C5C:  BL              sub_6C808
64C60:  LDR             R0, [R0,#0x60]
64C62:  VSTR            S16, [R0,#0x18]
64C66:  B               loc_64F90
64C68:  LDR             R0, =(aC80018FfffffRe_0 - 0x64C6E); "{C80018}> {FFFFFF}Reconnecting..." ...
64C6A:  ADD             R0, PC; "{C80018}> {FFFFFF}Reconnecting..."
64C6C:  BL              sub_6C73C
64C70:  MOVS            R0, #1
64C72:  STR.W           R0, [R4,#0x218]
64C76:  B               loc_64F94
64C78:  ADD.W           R4, R10, #5
64C7C:  LDRB            R0, [R4]
64C7E:  CMP             R0, #0x20 ; ' '
64C80:  BNE             loc_64C86
64C82:  ADDS            R4, #1
64C84:  B               loc_64C7C
64C86:  CMP             R0, #0
64C88:  ITT NE
64C8A:  LDRBNE          R0, [R4]
64C8C:  CMPNE           R0, #0
64C8E:  BEQ.W           loc_64F94
64C92:  ADD             R0, SP, #0x648+var_620
64C94:  BL              sub_86B90
64C98:  MOVS            R1, #0xC9
64C9A:  STRB.W          R1, [SP,#0x648+var_624]
64C9E:  ADD             R1, SP, #0x648+var_624
64CA0:  MOVS            R2, #8
64CA2:  MOVS            R3, #1
64CA4:  BL              sub_86D52
64CA8:  MOV             R0, R4; char *
64CAA:  MOV.W           R1, #0xFFFFFFFF; size_t
64CAE:  BLX             __strlen_chk
64CB2:  MOV             R5, R0
64CB4:  STR             R0, [SP,#0x648+var_624]
64CB6:  ADD             R0, SP, #0x648+var_620
64CB8:  ADD             R1, SP, #0x648+var_624
64CBA:  MOVS            R2, #0x20 ; ' '
64CBC:  MOVS            R3, #1
64CBE:  BL              sub_86D52
64CC2:  ADD             R0, SP, #0x648+var_620
64CC4:  MOV             R1, R4
64CC6:  MOV             R2, R5
64CC8:  BL              sub_86C1C
64CCC:  LDR             R0, =(off_114AD8 - 0x64CD2)
64CCE:  ADD             R0, PC; off_114AD8
64CD0:  LDR             R0, [R0]; dword_1A4434
64CD2:  LDR             R0, [R0]
64CD4:  LDR.W           R0, [R0,#0x210]
64CD8:  LDR             R1, [R0]
64CDA:  LDR             R6, [R1,#0x20]
64CDC:  MOVS            R1, #0
64CDE:  MOVS            R2, #1
64CE0:  STR             R1, [SP,#0x648+var_648]
64CE2:  ADD             R1, SP, #0x648+var_620
64CE4:  MOVS            R3, #8
64CE6:  BLX             R6
64CE8:  B.W             loc_63E82
64CEC:  LDR             R4, =(dword_116C70 - 0x64CF4)
64CEE:  LDR             R0, [SP,#0x648+var_624]
64CF0:  ADD             R4, PC; dword_116C70
64CF2:  STR             R0, [R4]
64CF4:  BL              sub_65618
64CF8:  LDR             R0, =(unk_1A3F70 - 0x64CFE)
64CFA:  ADD             R0, PC; unk_1A3F70
64CFC:  LDRB.W          R1, [R0,#(byte_1A3F9A - 0x1A3F70)]
64D00:  CMP             R1, #0
64D02:  BEQ             loc_64DA6
64D04:  VMOV.I8         Q8, #0x5A ; 'Z'
64D08:  MOVS            R1, #0x22 ; '"'
64D0A:  MOV             R2, R0
64D0C:  LDRB.W          R3, [R0,#(byte_1A3F94 - 0x1A3F70)]
64D10:  VLD1.8          {D18-D19}, [R2@128],R1
64D14:  MOV.W           LR, #0x11
64D18:  VEOR            Q9, Q9, Q8
64D1C:  EOR.W           R3, R3, #0x5A ; 'Z'
64D20:  LDRB.W          R1, [R0,#(byte_1A3F93 - 0x1A3F70)]
64D24:  LDRB.W          R6, [R0,#(byte_1A3F95 - 0x1A3F70)]
64D28:  EOR.W           R1, R1, #0x5A ; 'Z'
64D2C:  STRB.W          R1, [R0,#(byte_1A3F93 - 0x1A3F70)]
64D30:  MOV             R1, R0
64D32:  LDRB.W          R8, [R0,#(byte_1A3F96 - 0x1A3F70)]
64D36:  VST1.8          {D18-D19}, [R1@128]!
64D3A:  MOV             R5, R1
64D3C:  STRB.W          R3, [R0,#(byte_1A3F94 - 0x1A3F70)]
64D40:  VLD1.8          {D18-D19}, [R5@128],LR
64D44:  EOR.W           R3, R6, #0x5A ; 'Z'
64D48:  VEOR            Q8, Q9, Q8
64D4C:  STRB.W          R3, [R0,#(byte_1A3F95 - 0x1A3F70)]
64D50:  EOR.W           R3, R8, #0x5A ; 'Z'
64D54:  LDRB.W          R12, [R2]
64D58:  STRB.W          R3, [R0,#(byte_1A3F96 - 0x1A3F70)]
64D5C:  LDRB            R3, [R5]
64D5E:  EOR.W           R6, R12, #0x5A ; 'Z'
64D62:  LDRB.W          LR, [R0,#(byte_1A3F97 - 0x1A3F70)]
64D66:  STRB            R6, [R2]
64D68:  EOR.W           R2, R3, #0x5A ; 'Z'
64D6C:  VST1.8          {D16-D17}, [R1@128]!
64D70:  EOR.W           R3, LR, #0x5A ; 'Z'
64D74:  STRB            R2, [R5]
64D76:  LDRB.W          R2, [R0,#(byte_1A3F98 - 0x1A3F70)]
64D7A:  STRB.W          R3, [R0,#(byte_1A3F97 - 0x1A3F70)]
64D7E:  LDRB            R3, [R1]
64D80:  EOR.W           R2, R2, #0x5A ; 'Z'
64D84:  STRB.W          R2, [R0,#(byte_1A3F98 - 0x1A3F70)]
64D88:  EOR.W           R2, R3, #0x5A ; 'Z'
64D8C:  STRB            R2, [R1]
64D8E:  LDRB.W          R1, [R0,#(byte_1A3F99 - 0x1A3F70)]
64D92:  EOR.W           R1, R1, #0x5A ; 'Z'
64D96:  STRB.W          R1, [R0,#(byte_1A3F99 - 0x1A3F70)]
64D9A:  LDRB.W          R1, [R0,#(byte_1A3F9A - 0x1A3F70)]
64D9E:  EOR.W           R1, R1, #0x5A ; 'Z'
64DA2:  STRB.W          R1, [R0,#(byte_1A3F9A - 0x1A3F70)]
64DA6:  VLDR            S0, [R4]
64DAA:  LDR             R0, =(unk_1A3F70 - 0x64DB4)
64DAC:  VCVT.F64.F32    D16, S0
64DB0:  ADD             R0, PC; unk_1A3F70
64DB2:  B               loc_64F5A
64DB4:  LDR             R4, =(dword_116C74 - 0x64DBC)
64DB6:  LDR             R0, [SP,#0x648+var_624]
64DB8:  ADD             R4, PC; dword_116C74
64DBA:  STR             R0, [R4]
64DBC:  BL              sub_656D4
64DC0:  LDR             R0, =(unk_1A3FA0 - 0x64DC6)
64DC2:  ADD             R0, PC; unk_1A3FA0
64DC4:  LDRB.W          R1, [R0,#(byte_1A3FCA - 0x1A3FA0)]
64DC8:  CMP             R1, #0
64DCA:  BEQ             loc_64E6E
64DCC:  VMOV.I8         Q8, #0x5A ; 'Z'
64DD0:  MOVS            R1, #0x22 ; '"'
64DD2:  MOV             R2, R0
64DD4:  LDRB.W          R3, [R0,#(byte_1A3FC4 - 0x1A3FA0)]
64DD8:  VLD1.8          {D18-D19}, [R2@128],R1
64DDC:  MOV.W           LR, #0x11
64DE0:  VEOR            Q9, Q9, Q8
64DE4:  EOR.W           R3, R3, #0x5A ; 'Z'
64DE8:  LDRB.W          R1, [R0,#(byte_1A3FC3 - 0x1A3FA0)]
64DEC:  LDRB.W          R6, [R0,#(byte_1A3FC5 - 0x1A3FA0)]
64DF0:  EOR.W           R1, R1, #0x5A ; 'Z'
64DF4:  STRB.W          R1, [R0,#(byte_1A3FC3 - 0x1A3FA0)]
64DF8:  MOV             R1, R0
64DFA:  LDRB.W          R8, [R0,#(byte_1A3FC6 - 0x1A3FA0)]
64DFE:  VST1.8          {D18-D19}, [R1@128]!
64E02:  MOV             R5, R1
64E04:  STRB.W          R3, [R0,#(byte_1A3FC4 - 0x1A3FA0)]
64E08:  VLD1.8          {D18-D19}, [R5@128],LR
64E0C:  EOR.W           R3, R6, #0x5A ; 'Z'
64E10:  VEOR            Q8, Q9, Q8
64E14:  STRB.W          R3, [R0,#(byte_1A3FC5 - 0x1A3FA0)]
64E18:  EOR.W           R3, R8, #0x5A ; 'Z'
64E1C:  LDRB.W          R12, [R2]
64E20:  STRB.W          R3, [R0,#(byte_1A3FC6 - 0x1A3FA0)]
64E24:  LDRB            R3, [R5]
64E26:  EOR.W           R6, R12, #0x5A ; 'Z'
64E2A:  LDRB.W          LR, [R0,#(byte_1A3FC7 - 0x1A3FA0)]
64E2E:  STRB            R6, [R2]
64E30:  EOR.W           R2, R3, #0x5A ; 'Z'
64E34:  VST1.8          {D16-D17}, [R1@128]!
64E38:  EOR.W           R3, LR, #0x5A ; 'Z'
64E3C:  STRB            R2, [R5]
64E3E:  LDRB.W          R2, [R0,#(byte_1A3FC8 - 0x1A3FA0)]
64E42:  STRB.W          R3, [R0,#(byte_1A3FC7 - 0x1A3FA0)]
64E46:  LDRB            R3, [R1]
64E48:  EOR.W           R2, R2, #0x5A ; 'Z'
64E4C:  STRB.W          R2, [R0,#(byte_1A3FC8 - 0x1A3FA0)]
64E50:  EOR.W           R2, R3, #0x5A ; 'Z'
64E54:  STRB            R2, [R1]
64E56:  LDRB.W          R1, [R0,#(byte_1A3FC9 - 0x1A3FA0)]
64E5A:  EOR.W           R1, R1, #0x5A ; 'Z'
64E5E:  STRB.W          R1, [R0,#(byte_1A3FC9 - 0x1A3FA0)]
64E62:  LDRB.W          R1, [R0,#(byte_1A3FCA - 0x1A3FA0)]
64E66:  EOR.W           R1, R1, #0x5A ; 'Z'
64E6A:  STRB.W          R1, [R0,#(byte_1A3FCA - 0x1A3FA0)]
64E6E:  VLDR            S0, [R4]
64E72:  LDR             R0, =(unk_1A3FA0 - 0x64E7C)
64E74:  VCVT.F64.F32    D16, S0
64E78:  ADD             R0, PC; unk_1A3FA0
64E7A:  B               loc_64F5A
64E7C:  DCD byte_1A3F6C - 0x64AC6
64E80:  DCD unk_1A3F30 - 0x64AD0
64E84:  DCD unk_1A3F30 - 0x64B98
64E88:  DCD off_114B88 - 0x64BA4
64E8C:  DCD byte_1A3ED4 - 0x64BA6
64E90:  DCD unk_1A3EA0 - 0x64BB4
64E94:  DCD unk_1A3EA0 - 0x64C1A
64E98:  DCD aC80018FfffffRe_0 - 0x64C6E
64E9C:  DCD off_114AD8 - 0x64CD2
64EA0:  DCD dword_116C70 - 0x64CF4
64EA4:  DCD unk_1A3F70 - 0x64CFE
64EA8:  DCD unk_1A3F70 - 0x64DB4
64EAC:  DCD dword_116C74 - 0x64DBC
64EB0:  DCD unk_1A3FA0 - 0x64DC6
64EB4:  DCD unk_1A3FA0 - 0x64E7C
64EB8:  LDR             R4, =(dword_116C78 - 0x64EC0)
64EBA:  LDR             R0, [SP,#0x648+var_624]
64EBC:  ADD             R4, PC; dword_116C78
64EBE:  STR             R0, [R4]
64EC0:  BL              sub_65790
64EC4:  LDR             R0, =(unk_1A3FD0 - 0x64ECA)
64EC6:  ADD             R0, PC; unk_1A3FD0
64EC8:  LDRB.W          R1, [R0,#(byte_1A3FF7 - 0x1A3FD0)]
64ECC:  CMP             R1, #0
64ECE:  BEQ             loc_64F4E
64ED0:  VMOV.I8         Q8, #0x5A ; 'Z'
64ED4:  MOVS            R2, #0x22 ; '"'
64ED6:  MOV             R1, R0
64ED8:  LDRB.W          R3, [R0,#(byte_1A3FF4 - 0x1A3FD0)]
64EDC:  VLD1.8          {D18-D19}, [R1@128],R2
64EE0:  MOV.W           LR, #0x11
64EE4:  VEOR            Q9, Q9, Q8
64EE8:  EOR.W           R3, R3, #0x5A ; 'Z'
64EEC:  LDRB.W          R2, [R0,#(byte_1A3FF3 - 0x1A3FD0)]
64EF0:  LDRB.W          R6, [R0,#(byte_1A3FF5 - 0x1A3FD0)]
64EF4:  EOR.W           R2, R2, #0x5A ; 'Z'
64EF8:  STRB.W          R2, [R0,#(byte_1A3FF3 - 0x1A3FD0)]
64EFC:  MOV             R2, R0
64EFE:  LDRB.W          R8, [R0,#(byte_1A3FF6 - 0x1A3FD0)]
64F02:  VST1.8          {D18-D19}, [R2@128]!
64F06:  MOV             R5, R2
64F08:  STRB.W          R3, [R0,#(byte_1A3FF4 - 0x1A3FD0)]
64F0C:  VLD1.8          {D18-D19}, [R5@128],LR
64F10:  EOR.W           R3, R6, #0x5A ; 'Z'
64F14:  VEOR            Q8, Q9, Q8
64F18:  STRB.W          R3, [R0,#(byte_1A3FF5 - 0x1A3FD0)]
64F1C:  EOR.W           R3, R8, #0x5A ; 'Z'
64F20:  LDRB.W          R12, [R1]
64F24:  STRB.W          R3, [R0,#(byte_1A3FF6 - 0x1A3FD0)]
64F28:  LDRB            R3, [R5]
64F2A:  EOR.W           R6, R12, #0x5A ; 'Z'
64F2E:  VST1.8          {D16-D17}, [R2@128]!
64F32:  STRB            R6, [R1]
64F34:  EOR.W           R1, R3, #0x5A ; 'Z'
64F38:  LDRB.W          LR, [R0,#(byte_1A3FF7 - 0x1A3FD0)]
64F3C:  STRB            R1, [R5]
64F3E:  LDRB            R1, [R2]
64F40:  EOR.W           R3, LR, #0x5A ; 'Z'
64F44:  STRB.W          R3, [R0,#(byte_1A3FF7 - 0x1A3FD0)]
64F48:  EOR.W           R0, R1, #0x5A ; 'Z'
64F4C:  STRB            R0, [R2]
64F4E:  VLDR            S0, [R4]
64F52:  LDR             R0, =(unk_1A3FD0 - 0x64F5C)
64F54:  VCVT.F64.F32    D16, S0
64F58:  ADD             R0, PC; unk_1A3FD0
64F5A:  VMOV            R2, R3, D16
64F5E:  BL              sub_6C73C
64F62:  B               loc_64F94
64F64:  ADD             R5, SP, #0x648+var_620
64F66:  MOV             R1, R4; s
64F68:  MOV             R0, R5; int
64F6A:  BL              sub_63A74
64F6E:  LDR             R0, =(unk_1A3A88 - 0x64F78)
64F70:  VLD1.64         {D16-D17}, [R5]
64F74:  ADD             R0, PC; unk_1A3A88
64F76:  VST1.64         {D16-D17}, [R0]
64F7A:  MOV             R0, R4; char *
64F7C:  MOVS            R1, #6; size_t
64F7E:  BLX             strndup
64F82:  MOV             R1, R0; src
64F84:  LDR             R0, =(off_114B9C - 0x64F8C)
64F86:  MOVS            R2, #6; n
64F88:  ADD             R0, PC; off_114B9C
64F8A:  LDR             R0, [R0]; unk_1A452C ; dest
64F8C:  BLX             strncpy
64F90:  BL              sub_76564
64F94:  LDR.W           R0, [R7,#var_30]
64F98:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x64FA0)
64F9C:  ADD             R1, PC; __stack_chk_guard_ptr
64F9E:  LDR             R1, [R1]; __stack_chk_guard
64FA0:  LDR             R1, [R1]
64FA2:  CMP             R1, R0
64FA4:  ITTTT EQ
64FA6:  ADDEQ.W         SP, SP, #0x620
64FAA:  VPOPEQ          {D8}
64FAE:  ADDEQ           SP, SP, #4
64FB0:  POPEQ.W         {R8-R11}
64FB4:  IT EQ
64FB6:  POPEQ           {R4-R7,PC}
64FB8:  BLX             __stack_chk_fail
64FBC:  LDR             R0, =(byte_1A3C04 - 0x64FC2)
64FBE:  ADD             R0, PC; byte_1A3C04 ; __guard *
64FC0:  BLX             j___cxa_guard_acquire
64FC4:  CMP             R0, #0
64FC6:  BEQ.W           loc_63BC8
64FCA:  MOVS            R1, #0x5A ; 'Z'
64FCC:  LDR             R0, =(sub_66E8E+1 - 0x64FE4)
64FCE:  LDR             R2, =(off_110560 - 0x64FE6)
64FD0:  STRB            R1, [R6,#(byte_1A3C02 - 0x1A3BFC)]
64FD2:  MOVW            R1, #0x293E
64FD6:  STRH            R1, [R6,#(word_1A3C00 - 0x1A3BFC)]
64FD8:  MOV             R1, #0x37393975
64FE0:  ADD             R0, PC; sub_66E8E ; lpfunc
64FE2:  ADD             R2, PC; off_110560 ; lpdso_handle
64FE4:  STR             R1, [R6]
64FE6:  MOV             R1, R6; obj
64FE8:  BLX             __cxa_atexit
64FEC:  LDR             R0, =(byte_1A3C04 - 0x64FF2)
64FEE:  ADD             R0, PC; byte_1A3C04 ; __guard *
64FF0:  BLX             j___cxa_guard_release
64FF4:  B.W             loc_63BC8
64FF8:  LDR             R0, =(byte_1A3CFC - 0x64FFE)
64FFA:  ADD             R0, PC; byte_1A3CFC ; __guard *
64FFC:  BLX             j___cxa_guard_acquire
65000:  CMP             R0, #0
65002:  BEQ.W           loc_63C28
65006:  MOVW            R1, #0x5A3F
6500A:  LDR             R0, =(sub_66F5E+1 - 0x6501C)
6500C:  LDR             R2, =(off_110560 - 0x65028)
6500E:  STRH            R1, [R6,#(word_1A3CF8 - 0x1A3CF0)]
65010:  MOV             R1, #0x2033292E
65018:  ADD             R0, PC; sub_66F5E ; lpfunc
6501A:  STR             R1, [R6,#(dword_1A3CF4 - 0x1A3CF0)]
6501C:  MOV             R1, #0x34353C75
65024:  ADD             R2, PC; off_110560 ; lpdso_handle
65026:  STR             R1, [R6]
65028:  MOV             R1, R6; obj
6502A:  BLX             __cxa_atexit
6502E:  LDR             R0, =(byte_1A3CFC - 0x65034)
65030:  ADD             R0, PC; byte_1A3CFC ; __guard *
65032:  BLX             j___cxa_guard_release
65036:  B.W             loc_63C28
6503A:  LDR             R0, =(byte_1A3DE8 - 0x65040)
6503C:  ADD             R0, PC; byte_1A3DE8 ; __guard *
6503E:  BLX             j___cxa_guard_acquire
65042:  CMP             R0, #0
65044:  BEQ.W           loc_63CA2
65048:  MOVW            R1, #0x5A3F
6504C:  LDR             R0, =(sub_66F5E+1 - 0x6505E)
6504E:  LDR             R2, =(off_110560 - 0x6506A)
65050:  STRH            R1, [R6,#(word_1A3DE4 - 0x1A3DDC)]
65052:  MOV             R1, #0x2033293F
6505A:  ADD             R0, PC; sub_66F5E ; lpfunc
6505C:  STR             R1, [R6,#(dword_1A3DE0 - 0x1A3DDC)]
6505E:  MOV             R1, #0x3D3B2A75
65066:  ADD             R2, PC; off_110560 ; lpdso_handle
65068:  STR             R1, [R6]
6506A:  MOV             R1, R6; obj
6506C:  BLX             __cxa_atexit
65070:  LDR             R0, =(byte_1A3DE8 - 0x65076)
65072:  ADD             R0, PC; byte_1A3DE8 ; __guard *
65074:  BLX             j___cxa_guard_release
65078:  B.W             loc_63CA2
6507C:  LDR             R0, =(byte_1A3C24 - 0x65082)
6507E:  ADD             R0, PC; byte_1A3C24 ; __guard *
65080:  BLX             j___cxa_guard_acquire
65084:  CMP             R0, #0
65086:  BEQ.W           loc_63F1C
6508A:  LDR             R0, =(unk_1A3C08 - 0x65090)
6508C:  ADD             R0, PC; unk_1A3C08
6508E:  ADD             R1, SP, #0x648+var_620
65090:  BL              sub_66E98
65094:  LDR             R0, =(sub_66F0A+1 - 0x6509E)
65096:  LDR             R1, =(unk_1A3C08 - 0x650A0)
65098:  LDR             R2, =(off_110560 - 0x650A2)
6509A:  ADD             R0, PC; sub_66F0A ; lpfunc
6509C:  ADD             R1, PC; unk_1A3C08 ; obj
6509E:  ADD             R2, PC; off_110560 ; lpdso_handle
650A0:  BLX             __cxa_atexit
650A4:  LDR             R0, =(byte_1A3C24 - 0x650AA)
650A6:  ADD             R0, PC; byte_1A3C24 ; __guard *
650A8:  BLX             j___cxa_guard_release
650AC:  B.W             loc_63F1C
650B0:  LDR             R0, =(byte_1A3C84 - 0x650B6)
650B2:  ADD             R0, PC; byte_1A3C84 ; __guard *
650B4:  BLX             j___cxa_guard_acquire
650B8:  CMP             R0, #0
650BA:  BEQ.W           loc_63F3C
650BE:  LDR             R4, =(unk_1A3C30 - 0x650C8)
650C0:  MOVS            R2, #0x54 ; 'T'; n
650C2:  LDR             R1, =(unk_50A70 - 0x650CA)
650C4:  ADD             R4, PC; unk_1A3C30
650C6:  ADD             R1, PC; unk_50A70 ; src
650C8:  MOV             R0, R4; dest
650CA:  BLX             j_memcpy
650CE:  LDR             R0, =(sub_66F1C+1 - 0x650D8)
650D0:  MOV             R1, R4; obj
650D2:  LDR             R2, =(off_110560 - 0x650DA)
650D4:  ADD             R0, PC; sub_66F1C ; lpfunc
650D6:  ADD             R2, PC; off_110560 ; lpdso_handle
650D8:  BLX             __cxa_atexit
650DC:  LDR             R0, =(byte_1A3C84 - 0x650E2)
650DE:  ADD             R0, PC; byte_1A3C84 ; __guard *
650E0:  BLX             j___cxa_guard_release
650E4:  B.W             loc_63F3C
650E8:  LDR             R0, =(byte_1A3CEC - 0x650EE)
650EA:  ADD             R0, PC; byte_1A3CEC ; __guard *
650EC:  BLX             j___cxa_guard_acquire
650F0:  CMP             R0, #0
650F2:  BEQ.W           loc_63FCA
650F6:  LDR             R4, =(unk_1A3C90 - 0x65100)
650F8:  MOVS            R2, #0x59 ; 'Y'; n
650FA:  LDR             R1, =(unk_50AC8 - 0x65102)
650FC:  ADD             R4, PC; unk_1A3C90
650FE:  ADD             R1, PC; unk_50AC8 ; src
65100:  MOV             R0, R4; dest
65102:  BLX             j_memcpy
65106:  LDR             R0, =(sub_66F3C+1 - 0x65110)
65108:  MOV             R1, R4; obj
6510A:  LDR             R2, =(off_110560 - 0x65112)
6510C:  ADD             R0, PC; sub_66F3C ; lpfunc
6510E:  ADD             R2, PC; off_110560 ; lpdso_handle
65110:  BLX             __cxa_atexit
65114:  LDR             R0, =(byte_1A3CEC - 0x6511A)
65116:  ADD             R0, PC; byte_1A3CEC ; __guard *
65118:  BLX             j___cxa_guard_release
6511C:  B.W             loc_63FCA
65120:  LDR             R0, =(byte_1A3EE4 - 0x65126)
65122:  ADD             R0, PC; byte_1A3EE4 ; __guard *
65124:  BLX             j___cxa_guard_acquire
65128:  CMP             R0, #0
6512A:  BEQ.W           loc_63D1C
6512E:  MOVS            R1, #0x5A ; 'Z'
65130:  LDR             R0, =(sub_6715A+1 - 0x65142)
65132:  LDR             R2, =(off_110560 - 0x6514E)
65134:  STRB            R1, [R6,#(byte_1A3EE0 - 0x1A3ED8)]
65136:  MOV             R1, #0x3038352E
6513E:  ADD             R0, PC; sub_6715A ; lpfunc
65140:  STR             R1, [R6,#(dword_1A3EDC - 0x1A3ED8)]
65142:  MOV             R1, #0x333E3F75
6514A:  ADD             R2, PC; off_110560 ; lpdso_handle
6514C:  STR             R1, [R6]
6514E:  MOV             R1, R6; obj
65150:  BLX             __cxa_atexit
65154:  LDR             R0, =(byte_1A3EE4 - 0x6515A)
65156:  ADD             R0, PC; byte_1A3EE4 ; __guard *
65158:  BLX             j___cxa_guard_release
6515C:  B.W             loc_63D1C
65160:  LDR             R0, =(byte_1A3D2C - 0x65166)
65162:  ADD             R0, PC; byte_1A3D2C ; __guard *
65164:  BLX             j___cxa_guard_acquire
65168:  CMP             R0, #0
6516A:  BEQ.W           loc_640DA
6516E:  LDR             R0, =(unk_1A3D00 - 0x65174)
65170:  ADD             R0, PC; unk_1A3D00
65172:  ADD             R1, SP, #0x648+var_620
65174:  BL              sub_66F68
65178:  LDR             R0, =(sub_6703A+1 - 0x65182)
6517A:  LDR             R1, =(unk_1A3D00 - 0x65184)
6517C:  LDR             R2, =(off_110560 - 0x65186)
6517E:  ADD             R0, PC; sub_6703A ; lpfunc
65180:  ADD             R1, PC; unk_1A3D00 ; obj
65182:  ADD             R2, PC; off_110560 ; lpdso_handle
65184:  BLX             __cxa_atexit
65188:  LDR             R0, =(byte_1A3D2C - 0x6518E)
6518A:  ADD             R0, PC; byte_1A3D2C ; __guard *
6518C:  BLX             j___cxa_guard_release
65190:  B.W             loc_640DA
65194:  LDR             R0, =(byte_1A3E1C - 0x6519A)
65196:  ADD             R0, PC; byte_1A3E1C ; __guard *
65198:  BLX             j___cxa_guard_acquire
6519C:  CMP             R0, #0
6519E:  BEQ.W           loc_641CC
651A2:  LDR             R0, =(unk_1A3DF0 - 0x651A8)
651A4:  ADD             R0, PC; unk_1A3DF0
651A6:  ADD             R1, SP, #0x648+var_620
651A8:  BL              sub_66F68
651AC:  LDR             R0, =(sub_6703A+1 - 0x651B6)
651AE:  LDR             R1, =(unk_1A3DF0 - 0x651B8)
651B0:  LDR             R2, =(off_110560 - 0x651BA)
651B2:  ADD             R0, PC; sub_6703A ; lpfunc
651B4:  ADD             R1, PC; unk_1A3DF0 ; obj
651B6:  ADD             R2, PC; off_110560 ; lpdso_handle
651B8:  BLX             __cxa_atexit
651BC:  LDR             R0, =(byte_1A3E1C - 0x651C2)
651BE:  ADD             R0, PC; byte_1A3E1C ; __guard *
651C0:  BLX             j___cxa_guard_release
651C4:  B.W             loc_641CC
651C8:  LDR             R0, =(byte_1A3D5C - 0x651CE)
651CA:  ADD             R0, PC; byte_1A3D5C ; __guard *
651CC:  BLX             j___cxa_guard_acquire
651D0:  CMP             R0, #0
651D2:  BEQ.W           loc_645C4
651D6:  LDR             R0, =(unk_1A3D30 - 0x651DC)
651D8:  ADD             R0, PC; unk_1A3D30
651DA:  ADD             R1, SP, #0x648+var_620
651DC:  BL              sub_66F68
651E0:  LDR             R0, =(sub_6703A+1 - 0x651EA)
651E2:  LDR             R1, =(unk_1A3D30 - 0x651EC)
651E4:  LDR             R2, =(off_110560 - 0x651EE)
651E6:  ADD             R0, PC; sub_6703A ; lpfunc
651E8:  ADD             R1, PC; unk_1A3D30 ; obj
651EA:  ADD             R2, PC; off_110560 ; lpdso_handle
651EC:  BLX             __cxa_atexit
651F0:  LDR             R0, =(byte_1A3D5C - 0x651F6)
651F2:  ADD             R0, PC; byte_1A3D5C ; __guard *
651F4:  BLX             j___cxa_guard_release
651F8:  B.W             loc_645C4
651FC:  LDR             R0, =(byte_1A3F2C - 0x65202)
651FE:  ADD             R0, PC; byte_1A3F2C ; __guard *
65200:  BLX             j___cxa_guard_acquire
65204:  CMP             R0, #0
65206:  BEQ.W           loc_64416
6520A:  LDR             R0, =(unk_50C70 - 0x65214)
6520C:  MOVS            R1, #0xC
6520E:  MOV             R3, R4
65210:  ADD             R0, PC; unk_50C70
65212:  VLD1.64         {D16-D17}, [R0]!
65216:  VLD1.64         {D18-D19}, [R0]!
6521A:  VLD1.64         {D20-D21}, [R0],R1
6521E:  VLD1.32         {D22-D23}, [R0]
65222:  LDR             R0, =(sub_67164+1 - 0x6522E)
65224:  LDR             R2, =(off_110560 - 0x65230)
65226:  VST1.64         {D16-D17}, [R3@128]!
6522A:  ADD             R0, PC; sub_67164 ; lpfunc
6522C:  ADD             R2, PC; off_110560 ; lpdso_handle
6522E:  VST1.64         {D18-D19}, [R3@128]!
65232:  VST1.64         {D20-D21}, [R3@128],R1
65236:  MOV             R1, R4; obj
65238:  VST1.32         {D22-D23}, [R3]
6523C:  BLX             __cxa_atexit
65240:  LDR             R0, =(byte_1A3F2C - 0x65246)
65242:  ADD             R0, PC; byte_1A3F2C ; __guard *
65244:  BLX             j___cxa_guard_release
65248:  B.W             loc_64416
6524C:  LDR             R0, =(byte_1A3E4C - 0x65252)
6524E:  ADD             R0, PC; byte_1A3E4C ; __guard *
65250:  BLX             j___cxa_guard_acquire
65254:  CMP             R0, #0
65256:  BEQ.W           loc_6482C
6525A:  LDR             R0, =(unk_1A3E20 - 0x65260)
6525C:  ADD             R0, PC; unk_1A3E20
6525E:  ADD             R1, SP, #0x648+var_620
65260:  BL              sub_66F68
65264:  LDR             R0, =(sub_6703A+1 - 0x6526E)
65266:  LDR             R1, =(unk_1A3E20 - 0x65270)
65268:  LDR             R2, =(off_110560 - 0x65272)
6526A:  ADD             R0, PC; sub_6703A ; lpfunc
6526C:  ADD             R1, PC; unk_1A3E20 ; obj
6526E:  ADD             R2, PC; off_110560 ; lpdso_handle
65270:  BLX             __cxa_atexit
65274:  LDR             R0, =(byte_1A3E4C - 0x6527A)
65276:  ADD             R0, PC; byte_1A3E4C ; __guard *
65278:  BLX             j___cxa_guard_release
6527C:  B.W             loc_6482C
65280:  DCD dword_116C78 - 0x64EC0
65284:  DCD unk_1A3FD0 - 0x64ECA
65288:  DCD unk_1A3FD0 - 0x64F5C
6528C:  DCD unk_1A3A88 - 0x64F78
65290:  DCD off_114B9C - 0x64F8C
65294:  DCD byte_1A3C04 - 0x64FC2
65298:  DCD sub_66E8E+1 - 0x64FE4
6529C:  DCD off_110560 - 0x64FE6
652A0:  DCD byte_1A3C04 - 0x64FF2
652A4:  DCD byte_1A3CFC - 0x64FFE
652A8:  DCD sub_66F5E+1 - 0x6501C
652AC:  DCD off_110560 - 0x65028
652B0:  DCD byte_1A3CFC - 0x65034
652B4:  DCD byte_1A3DE8 - 0x65040
652B8:  DCD sub_66F5E+1 - 0x6505E
652BC:  DCD off_110560 - 0x6506A
652C0:  DCD byte_1A3DE8 - 0x65076
652C4:  DCD byte_1A3C24 - 0x65082
652C8:  DCD unk_1A3C08 - 0x65090
652CC:  DCD sub_66F0A+1 - 0x6509E
652D0:  DCD unk_1A3C08 - 0x650A0
652D4:  DCD off_110560 - 0x650A2
652D8:  DCD byte_1A3C24 - 0x650AA
652DC:  DCD byte_1A3C84 - 0x650B6
652E0:  DCD unk_1A3C30 - 0x650C8
652E4:  DCD unk_50A70 - 0x650CA
652E8:  DCD sub_66F1C+1 - 0x650D8
652EC:  DCD off_110560 - 0x650DA
652F0:  DCD byte_1A3C84 - 0x650E2
652F4:  DCD byte_1A3CEC - 0x650EE
652F8:  DCD byte_1A3EE4 - 0x65126
652FC:  DCD sub_6715A+1 - 0x65142
65300:  DCD off_110560 - 0x6514E
65304:  DCD byte_1A3EE4 - 0x6515A
65308:  DCD unk_1A3C90 - 0x65100
6530C:  DCD unk_50AC8 - 0x65102
65310:  DCD sub_66F3C+1 - 0x65110
65314:  DCD off_110560 - 0x65112
65318:  LDR             R0, =(byte_1A3DD8 - 0x6531E)
6531A:  ADD             R0, PC; byte_1A3DD8 ; __guard *
6531C:  BLX             j___cxa_guard_acquire
65320:  CMP             R0, #0
65322:  BEQ.W           loc_64336
65326:  LDR             R0, =(unk_1A3DB0 - 0x6532C)
65328:  ADD             R0, PC; unk_1A3DB0
6532A:  ADD             R1, SP, #0x648+var_620
6532C:  BL              sub_6706A
65330:  LDR             R0, =(sub_6712C+1 - 0x6533A)
65332:  LDR             R1, =(unk_1A3DB0 - 0x6533C)
65334:  LDR             R2, =(off_110560 - 0x6533E)
65336:  ADD             R0, PC; sub_6712C ; lpfunc
65338:  ADD             R1, PC; unk_1A3DB0 ; obj
6533A:  ADD             R2, PC; off_110560 ; lpdso_handle
6533C:  BLX             __cxa_atexit
65340:  LDR             R0, =(byte_1A3DD8 - 0x65346)
65342:  ADD             R0, PC; byte_1A3DD8 ; __guard *
65344:  BLX             j___cxa_guard_release
65348:  B.W             loc_64336
6534C:  LDR             R0, =(byte_1A3DA0 - 0x65352)
6534E:  ADD             R0, PC; byte_1A3DA0 ; __guard *
65350:  BLX             j___cxa_guard_acquire
65354:  CMP             R0, #0
65356:  BEQ.W           loc_6498A
6535A:  LDR             R0, =(unk_50B58 - 0x65364)
6535C:  MOVS            R1, #0xF
6535E:  MOV             R3, R4
65360:  ADD             R0, PC; unk_50B58
65362:  VLD1.64         {D16-D17}, [R0]!
65366:  VLD1.64         {D18-D19}, [R0]!
6536A:  VLD1.64         {D20-D21}, [R0],R1
6536E:  VLD1.8          {D22-D23}, [R0]
65372:  LDR             R0, =(sub_67050+1 - 0x6537E)
65374:  LDR             R2, =(off_110560 - 0x65380)
65376:  VST1.64         {D16-D17}, [R3@128]!
6537A:  ADD             R0, PC; sub_67050 ; lpfunc
6537C:  ADD             R2, PC; off_110560 ; lpdso_handle
6537E:  VST1.64         {D18-D19}, [R3@128]!
65382:  VST1.64         {D20-D21}, [R3@128],R1
65386:  MOV             R1, R4; obj
65388:  VST1.8          {D22-D23}, [R3]
6538C:  BLX             __cxa_atexit
65390:  LDR             R0, =(byte_1A3DA0 - 0x65396)
65392:  ADD             R0, PC; byte_1A3DA0 ; __guard *
65394:  BLX             j___cxa_guard_release
65398:  B.W             loc_6498A
6539C:  LDR             R0, =(byte_1A404C - 0x653A2)
6539E:  ADD             R0, PC; byte_1A404C ; __guard *
653A0:  BLX             j___cxa_guard_acquire
653A4:  CMP             R0, #0
653A6:  BEQ.W           loc_63DDE
653AA:  LDR             R0, =(sub_67198+1 - 0x653C0)
653AC:  MOVW            R1, #0x5A34
653B0:  LDR             R2, =(off_110560 - 0x653C2)
653B2:  STRH            R1, [R5,#(word_1A4048 - 0x1A4044)]
653B4:  MOV             R1, #0x35392875
653BC:  ADD             R0, PC; sub_67198 ; lpfunc
653BE:  ADD             R2, PC; off_110560 ; lpdso_handle
653C0:  STR             R1, [R5]
653C2:  MOV             R1, R5; obj
653C4:  BLX             __cxa_atexit
653C8:  LDR             R0, =(byte_1A404C - 0x653CE)
653CA:  ADD             R0, PC; byte_1A404C ; __guard *
653CC:  BLX             j___cxa_guard_release
653D0:  B.W             loc_63DDE
653D4:  LDR             R0, =(byte_1A3F6C - 0x653DA)
653D6:  ADD             R0, PC; byte_1A3F6C ; __guard *
653D8:  BLX             j___cxa_guard_acquire
653DC:  CMP             R0, #0
653DE:  BEQ.W           loc_64AD4
653E2:  LDR             R0, =(unk_50C70 - 0x653EC)
653E4:  MOVS            R1, #0xC
653E6:  MOV             R3, R4
653E8:  ADD             R0, PC; unk_50C70
653EA:  VLD1.64         {D16-D17}, [R0]!
653EE:  VLD1.64         {D18-D19}, [R0]!
653F2:  VLD1.64         {D20-D21}, [R0],R1
653F6:  VLD1.32         {D22-D23}, [R0]
653FA:  LDR             R0, =(sub_67164+1 - 0x65406)
653FC:  LDR             R2, =(off_110560 - 0x65408)
653FE:  VST1.64         {D16-D17}, [R3@128]!
65402:  ADD             R0, PC; sub_67164 ; lpfunc
65404:  ADD             R2, PC; off_110560 ; lpdso_handle
65406:  VST1.64         {D18-D19}, [R3@128]!
6540A:  VST1.64         {D20-D21}, [R3@128],R1
6540E:  MOV             R1, R4; obj
65410:  VST1.32         {D22-D23}, [R3]
65414:  BLX             __cxa_atexit
65418:  LDR             R0, =(byte_1A3F6C - 0x6541E)
6541A:  ADD             R0, PC; byte_1A3F6C ; __guard *
6541C:  BLX             j___cxa_guard_release
65420:  B.W             loc_64AD4
65424:  LDR             R0, =(byte_1A3E98 - 0x6542A)
65426:  ADD             R0, PC; byte_1A3E98 ; __guard *
65428:  BLX             j___cxa_guard_acquire
6542C:  CMP             R0, #0
6542E:  BEQ.W           loc_64512
65432:  LDR             R4, =(unk_1A3E50 - 0x6543C)
65434:  MOVS            R2, #0x45 ; 'E'; n
65436:  LDR             R1, =(unk_50BF0 - 0x6543E)
65438:  ADD             R4, PC; unk_1A3E50
6543A:  ADD             R1, PC; unk_50BF0 ; src
6543C:  MOV             R0, R4; dest
6543E:  BLX             j_memcpy
65442:  LDR             R0, =(sub_66C72+1 - 0x6544C)
65444:  MOV             R1, R4; obj
65446:  LDR             R2, =(off_110560 - 0x6544E)
65448:  ADD             R0, PC; sub_66C72 ; lpfunc
6544A:  ADD             R2, PC; off_110560 ; lpdso_handle
6544C:  BLX             __cxa_atexit
65450:  LDR             R0, =(byte_1A3E98 - 0x65456)
65452:  ADD             R0, PC; byte_1A3E98 ; __guard *
65454:  BLX             j___cxa_guard_release
65458:  B.W             loc_64512
6545C:  LDR             R0, =(byte_1A3ED4 - 0x65462)
6545E:  ADD             R0, PC; byte_1A3ED4 ; __guard *
65460:  BLX             j___cxa_guard_acquire
65464:  CMP             R0, #0
65466:  BEQ.W           loc_64BB8
6546A:  LDR             R0, =(unk_50C38 - 0x65472)
6546C:  MOV             R3, R4
6546E:  ADD             R0, PC; unk_50C38
65470:  VLD1.64         {D16-D17}, [R0]!
65474:  VLD1.64         {D18-D19}, [R0]!
65478:  VLD1.64         {D20-D21}, [R0]!
6547C:  LDR             R1, [R0]
6547E:  LDR             R0, =(sub_67142+1 - 0x6548A)
65480:  LDR             R2, =(off_110560 - 0x6548C)
65482:  VST1.64         {D16-D17}, [R3@128]!
65486:  ADD             R0, PC; sub_67142 ; lpfunc
65488:  ADD             R2, PC; off_110560 ; lpdso_handle
6548A:  VST1.64         {D18-D19}, [R3@128]!
6548E:  VST1.64         {D20-D21}, [R3@128]!
65492:  STR             R1, [R3]
65494:  MOV             R1, R4; obj
65496:  BLX             __cxa_atexit
6549A:  LDR             R0, =(byte_1A3ED4 - 0x654A0)
6549C:  ADD             R0, PC; byte_1A3ED4 ; __guard *
6549E:  BLX             j___cxa_guard_release
654A2:  B.W             loc_64BB8
