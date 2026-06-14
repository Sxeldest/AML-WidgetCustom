; =========================================================
; Game Engine Function: sub_61AD0
; Address            : 0x61AD0 - 0x61D56
; =========================================================

61AD0:  PUSH            {R4-R7,LR}
61AD2:  ADD             R7, SP, #0xC
61AD4:  PUSH.W          {R8}
61AD8:  LDR             R0, =(byte_117698 - 0x61ADE)
61ADA:  ADD             R0, PC; byte_117698
61ADC:  LDRB            R0, [R0]
61ADE:  DMB.W           ISH
61AE2:  LSLS            R0, R0, #0x1F
61AE4:  BEQ.W           loc_61D12
61AE8:  LDR             R4, =(unk_117680 - 0x61AEE)
61AEA:  ADD             R4, PC; unk_117680
61AEC:  MOV             R0, R4
61AEE:  BL              sub_61DFE
61AF2:  LDR             R1, =(aSampOrig - 0x61AFC); "SAMP_ORIG" ...
61AF4:  MOVS            R0, #4; prio
61AF6:  MOV             R2, R4; fmt
61AF8:  ADD             R1, PC; "SAMP_ORIG"
61AFA:  BLX             __android_log_print
61AFE:  LDR             R0, =(off_114AA8 - 0x61B0E)
61B00:  MOV             R1, #0x2A49F2
61B08:  MOVS            R2, #2
61B0A:  ADD             R0, PC; off_114AA8
61B0C:  MOVS            R3, #1
61B0E:  LDR             R6, [R0]; dword_1A4404
61B10:  LDR             R0, [R6]
61B12:  LDR             R4, =(unk_50977 - 0x61B1A)
61B14:  ADDS            R5, R0, R1
61B16:  ADD             R4, PC; unk_50977
61B18:  MOV             R0, R5
61B1A:  MOV             R1, R4
61B1C:  BL              sub_AFA08
61B20:  ADDS            R0, R5, #2
61B22:  MOV             R1, R4
61B24:  MOVS            R2, #2
61B26:  MOVS            R3, #1
61B28:  BL              sub_AFA08
61B2C:  LDR             R0, [R6]
61B2E:  MOVW            R2, #0x5530
61B32:  LDR             R1, =(unk_5097A - 0x61B40)
61B34:  MOVT            R2, #0x3F ; '?'
61B38:  ADD             R0, R2
61B3A:  MOVS            R2, #4
61B3C:  ADD             R1, PC; unk_5097A
61B3E:  MOVS            R3, #1
61B40:  BL              sub_AFA08
61B44:  LDR             R0, [R6]
61B46:  MOVW            R4, #0xC1F0
61B4A:  LDR             R1, =(unk_4AF3A - 0x61B58)
61B4C:  MOVT            R4, #0x2A ; '*'
61B50:  ADD             R0, R4
61B52:  MOVS            R2, #4
61B54:  ADD             R1, PC; unk_4AF3A
61B56:  ADDS            R0, #0x24 ; '$'
61B58:  MOVS            R3, #1
61B5A:  BL              sub_AFA08
61B5E:  LDR             R0, [R6]
61B60:  MOVS            R2, #4
61B62:  LDR             R1, =(aHxd - 0x61B6C); "\aHxD" ...
61B64:  MOVS            R3, #1
61B66:  ADD             R0, R4
61B68:  ADD             R1, PC; "\aHxD"
61B6A:  BL              sub_AFA08
61B6E:  LDR             R0, [R6]
61B70:  MOVW            R1, #0x7CDC
61B74:  LDR             R4, =(unk_4F5B3 - 0x61B82)
61B76:  MOVT            R1, #0x4C ; 'L'
61B7A:  ADD             R0, R1
61B7C:  MOVS            R2, #4
61B7E:  ADD             R4, PC; unk_4F5B3
61B80:  MOVS            R3, #1
61B82:  MOV             R1, R4
61B84:  BL              sub_AFA08
61B88:  LDR             R0, [R6]
61B8A:  MOV             R1, R4
61B8C:  MOVS            R2, #4
61B8E:  MOVS            R3, #1
61B90:  ADD.W           R0, R0, #0x4A8000
61B94:  ADD.W           R0, R0, #0x2D4
61B98:  BL              sub_AFA08
61B9C:  LDR             R0, [R6]
61B9E:  MOVW            R8, #0xC71C
61BA2:  LDR             R1, =(unk_4F856 - 0x61BB0)
61BA4:  MOVT            R8, #0x3A ; ':'
61BA8:  ADD             R0, R8
61BAA:  MOVS            R2, #4
61BAC:  ADD             R1, PC; unk_4F856
61BAE:  MOVS            R3, #1
61BB0:  BL              sub_AFA08
61BB4:  LDR             R0, [R6]
61BB6:  MOVS            R2, #4
61BB8:  LDR             R1, =(unk_50968 - 0x61BC2)
61BBA:  MOVS            R3, #1
61BBC:  ADD             R0, R8
61BBE:  ADD             R1, PC; unk_50968
61BC0:  ADDS            R0, #4
61BC2:  BL              sub_AFA08
61BC6:  LDR             R0, [R6]
61BC8:  MOVS            R2, #4
61BCA:  LDR             R1, =(unk_4DD74 - 0x61BD4)
61BCC:  MOVS            R3, #1
61BCE:  ADD             R0, R8
61BD0:  ADD             R1, PC; unk_4DD74
61BD2:  ADDS            R0, #0xC
61BD4:  BL              sub_AFA08
61BD8:  LDR             R0, [R6]
61BDA:  MOVW            R5, #0x3E24
61BDE:  LDR             R1, =(unk_4DA7E - 0x61BEC)
61BE0:  MOVT            R5, #0x55 ; 'U'
61BE4:  ADD             R0, R5
61BE6:  MOVS            R2, #4
61BE8:  ADD             R1, PC; unk_4DA7E
61BEA:  MOVS            R3, #1
61BEC:  BL              sub_AFA08
61BF0:  LDR             R0, [R6]
61BF2:  MOVS            R2, #4
61BF4:  LDR             R1, =(unk_4F318 - 0x61BFE)
61BF6:  MOVS            R3, #1
61BF8:  ADD             R0, R5
61BFA:  ADD             R1, PC; unk_4F318
61BFC:  ADDS            R0, #4
61BFE:  BL              sub_AFA08
61C02:  LDR             R0, [R6]
61C04:  MOVW            R5, #0x1A50
61C08:  LDR             R1, =(unk_4E7CD - 0x61C16)
61C0A:  MOVT            R5, #0x56 ; 'V'
61C0E:  ADD             R0, R5
61C10:  MOVS            R2, #4
61C12:  ADD             R1, PC; unk_4E7CD
61C14:  MOVS            R3, #1
61C16:  BL              sub_AFA08
61C1A:  LDR             R0, [R6]
61C1C:  MOVS            R2, #4
61C1E:  LDR             R1, =(unk_4E5D6 - 0x61C28)
61C20:  MOVS            R3, #1
61C22:  ADD             R0, R5
61C24:  ADD             R1, PC; unk_4E5D6
61C26:  ADDS            R0, #4
61C28:  BL              sub_AFA08
61C2C:  LDR             R0, [R6]
61C2E:  MOVW            R2, #0xBE64
61C32:  LDR             R1, =(unk_4D7E4 - 0x61C40)
61C34:  MOVT            R2, #0x56 ; 'V'
61C38:  ADD             R0, R2
61C3A:  MOVS            R2, #4
61C3C:  ADD             R1, PC; unk_4D7E4
61C3E:  MOVS            R3, #1
61C40:  BL              sub_AFA08
61C44:  LDR             R0, [R6]
61C46:  MOVW            R2, #0xD054
61C4A:  LDR             R1, =(unk_4FDD7 - 0x61C58)
61C4C:  MOVT            R2, #0x57 ; 'W'
61C50:  ADD             R0, R2
61C52:  MOVS            R2, #4
61C54:  ADD             R1, PC; unk_4FDD7
61C56:  MOVS            R3, #1
61C58:  BL              sub_AFA08
61C5C:  LDR             R0, [R6]
61C5E:  MOVW            R2, #0x3560
61C62:  LDR             R1, =(unk_5096D - 0x61C70)
61C64:  MOVT            R2, #0x39 ; '9'
61C68:  ADD             R0, R2
61C6A:  MOVS            R2, #4
61C6C:  ADD             R1, PC; unk_5096D
61C6E:  MOVS            R3, #1
61C70:  BL              sub_AFA08
61C74:  LDR             R0, [R6]
61C76:  MOVS            R2, #4
61C78:  LDR             R1, =(unk_4B207 - 0x61C82)
61C7A:  MOVS            R3, #1
61C7C:  ADD             R0, R8
61C7E:  ADD             R1, PC; unk_4B207
61C80:  ADD.W           R0, R0, #0x758
61C84:  BL              sub_AFA08
61C88:  LDR             R0, [R6]
61C8A:  MOVW            R5, #0xC9D8
61C8E:  LDR             R1, =(unk_4FDDC - 0x61C9C)
61C90:  MOVT            R5, #0x3B ; ';'
61C94:  ADD             R0, R5
61C96:  MOVS            R2, #4
61C98:  ADD             R1, PC; unk_4FDDC
61C9A:  MOVS            R3, #1
61C9C:  BL              sub_AFA08
61CA0:  LDR             R0, [R6]
61CA2:  MOVS            R2, #4
61CA4:  LDR             R1, =(unk_4F85B - 0x61CAE)
61CA6:  MOVS            R3, #1
61CA8:  ADD             R0, R5
61CAA:  ADD             R1, PC; unk_4F85B
61CAC:  ADDS            R0, #4
61CAE:  BL              sub_AFA08
61CB2:  LDR             R0, [R6]
61CB4:  MOV             R1, #0x3976AC
61CBC:  MOVS            R2, #4
61CBE:  ADD             R0, R1
61CC0:  MOV             R1, R4
61CC2:  MOVS            R3, #1
61CC4:  BL              sub_AFA08
61CC8:  LDR             R0, [R6]
61CCA:  MOVW            R2, #0xB548
61CCE:  LDR             R1, =(unk_4F860 - 0x61CDC)
61CD0:  MOVT            R2, #0x46 ; 'F'
61CD4:  ADD             R0, R2
61CD6:  MOVS            R2, #4
61CD8:  ADD             R1, PC; unk_4F860
61CDA:  MOVS            R3, #1
61CDC:  BL              sub_AFA08
61CE0:  LDR             R0, [R6]
61CE2:  MOVW            R4, #0x914
61CE6:  LDR             R1, =(unk_4D546 - 0x61CF4)
61CE8:  MOVT            R4, #0x55 ; 'U'
61CEC:  ADD             R0, R4
61CEE:  MOVS            R2, #4
61CF0:  ADD             R1, PC; unk_4D546
61CF2:  MOVS            R3, #1
61CF4:  BL              sub_AFA08
61CF8:  LDR             R0, [R6]
61CFA:  MOVS            R2, #4
61CFC:  LDR             R1, =(unk_50972 - 0x61D06)
61CFE:  MOVS            R3, #1
61D00:  ADD             R0, R4
61D02:  ADD             R1, PC; unk_50972
61D04:  ADDS            R0, #4
61D06:  POP.W           {R8}
61D0A:  POP.W           {R4-R7,LR}
61D0E:  B.W             sub_AFA08
61D12:  LDR             R0, =(byte_117698 - 0x61D18)
61D14:  ADD             R0, PC; byte_117698 ; __guard *
61D16:  BLX             j___cxa_guard_acquire
61D1A:  CMP             R0, #0
61D1C:  BEQ.W           loc_61AE8
61D20:  LDR             R1, =(unk_117680 - 0x61D30)
61D22:  ADR             R0, dword_61D60
61D24:  VLD1.64         {D16-D17}, [R0@128]
61D28:  MOVW            R3, #0x5A73
61D2C:  ADD             R1, PC; unk_117680 ; obj
61D2E:  MOVW            R6, #0x3F32
61D32:  LDR             R0, =(loc_61DE8+1 - 0x61D46)
61D34:  MOVT            R6, #0x7229
61D38:  LDR             R2, =(off_110560 - 0x61D48)
61D3A:  STRH            R3, [R1,#(word_117694 - 0x117680)]
61D3C:  MOV             R3, R1
61D3E:  VST1.8          {D16-D17}, [R3@128]!
61D42:  ADD             R0, PC; loc_61DE8 ; lpfunc
61D44:  ADD             R2, PC; off_110560 ; lpdso_handle
61D46:  STR             R6, [R3]
61D48:  BLX             __cxa_atexit
61D4C:  LDR             R0, =(byte_117698 - 0x61D52)
61D4E:  ADD             R0, PC; byte_117698 ; __guard *
61D50:  BLX             j___cxa_guard_release
61D54:  B               loc_61AE8
