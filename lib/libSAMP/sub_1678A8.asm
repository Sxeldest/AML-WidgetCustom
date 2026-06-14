; =========================================================
; Game Engine Function: sub_1678A8
; Address            : 0x1678A8 - 0x167CDC
; =========================================================

1678A8:  PUSH            {R4-R7,LR}
1678AA:  ADD             R7, SP, #0xC
1678AC:  PUSH.W          {R8-R11}
1678B0:  SUB             SP, SP, #4
1678B2:  VPUSH           {D8-D11}
1678B6:  SUB             SP, SP, #0x48
1678B8:  ADD.W           R10, R0, #8
1678BC:  MOV             R11, R0
1678BE:  STR             R1, [SP,#0x88+var_44]
1678C0:  MOV             R0, R10; int
1678C2:  BL              sub_165030
1678C6:  MOVW            R0, #0x1518
1678CA:  ADD             R0, R11
1678CC:  STR.W           R10, [SP,#0x88+var_54]
1678D0:  BL              sub_164F00
1678D4:  MOVW            R0, #0x18D0
1678D8:  ADD.W           R8, R11, R0
1678DC:  MOV             R0, R8
1678DE:  BL              sub_1726F8
1678E2:  MOVW            R0, #0x18C4
1678E6:  ADD.W           R5, R11, R0
1678EA:  ADR.W           R0, dword_167DD8
1678EE:  MOVS            R1, #0x1C
1678F0:  VLD1.64         {D8-D9}, [R0]
1678F4:  ADD.W           R0, R5, #0x180
1678F8:  MOVS            R6, #0
1678FA:  VMOV.I32        Q5, #0
1678FE:  VST1.32         {D8-D9}, [R0],R1
167902:  MOV.W           R9, #4
167906:  ADD.W           R4, R11, #0x1A20
16790A:  MOVS            R1, #0x58 ; 'X'; n
16790C:  STR             R6, [R0]
16790E:  MOVW            R0, #0x1998
167912:  ADD             R0, R11
167914:  VST1.64         {D10-D11}, [R4]!
167918:  VST1.32         {D10-D11}, [R0],R9
16791C:  STR             R0, [SP,#0x88+var_5C]
16791E:  MOVW            R0, #0x196C
167922:  ADD             R0, R11
167924:  STR             R0, [SP,#0x88+var_58]
167926:  VST1.32         {D10-D11}, [R0]!
16792A:  VST1.32         {D10-D11}, [R0]!
16792E:  VST1.32         {D10-D11}, [R0],R9
167932:  STR             R0, [SP,#0x88+var_60]
167934:  MOVS            R0, #0x38 ; '8'
167936:  VST1.64         {D10-D11}, [R4],R0
16793A:  MOVW            R0, #0x1A10
16793E:  ADD             R0, R11; int
167940:  STRD.W          R6, R6, [R5,#0x128]
167944:  STR.W           R6, [R5,#0x1A0]
167948:  BLX             sub_22178C
16794C:  ADR.W           R0, dword_167DE8
167950:  MOVW            R2, #0xFFFF
167954:  VLD1.64         {D16-D17}, [R0]
167958:  ADD.W           R0, R5, #0x290
16795C:  MOVT            R2, #0x7F7F
167960:  ADD.W           R1, R5, #0x21C
167964:  VST1.32         {D16-D17}, [R0]!
167968:  STR             R2, [R0]
16796A:  ADD.W           R0, R5, #0x2B8
16796E:  VST1.32         {D16-D17}, [R0]!
167972:  STR             R2, [R0]
167974:  MOVS            R0, #0x40 ; '@'
167976:  STR             R1, [SP,#0x88+var_48]
167978:  VST1.32         {D8-D9}, [R1],R0
16797C:  MOVS            R0, #0x28 ; '('
16797E:  VST1.32         {D8-D9}, [R1],R0
167982:  MOVW            R0, #0x1AA4
167986:  ADD             R0, R11
167988:  VST1.64         {D10-D11}, [R4]!
16798C:  STR             R4, [SP,#0x88+var_64]
16798E:  VST1.64         {D10-D11}, [R4]!
167992:  VST1.32         {D10-D11}, [R0],R9
167996:  VST1.64         {D10-D11}, [R4]!
16799A:  STR             R0, [SP,#0x88+var_68]
16799C:  MOV             R0, #0xFF7FFFFF
1679A0:  VST1.64         {D10-D11}, [R4],R9
1679A4:  STR             R4, [SP,#0x88+var_6C]
1679A6:  ADD.W           R4, R11, #0x1BE0
1679AA:  STRD.W          R0, R0, [R5,#0x2A4]
1679AE:  STRD.W          R0, R0, [R5,#0x2F4]
1679B2:  STRD.W          R0, R0, [R5,#0x2CC]
1679B6:  ADD.W           R0, R5, #0x2E0
1679BA:  VST1.32         {D16-D17}, [R0]!
1679BE:  STR             R4, [SP,#0x88+var_70]
1679C0:  VST1.64         {D10-D11}, [R4]!
1679C4:  VST1.64         {D10-D11}, [R4]!
1679C8:  STR             R2, [R0]
1679CA:  MOVS            R0, #0x14
1679CC:  VST1.64         {D10-D11}, [R4]!
1679D0:  VST1.64         {D10-D11}, [R4],R0
1679D4:  STR             R6, [R1]
1679D6:  STRD.W          R6, R6, [R5,#0x288]
1679DA:  STRD.W          R6, R6, [R5,#0x2AC]
1679DE:  STR.W           R6, [R5,#0x2B4]
1679E2:  STRB.W          R6, [R5,#0x318]
1679E6:  STRD.W          R6, R6, [R5,#0x2D4]
1679EA:  STR.W           R6, [R5,#0x2DC]
1679EE:  MOV             R0, R4
1679F0:  MOV             R1, R8
1679F2:  BL              sub_166A58
1679F6:  MOVW            R0, #0x1C9C
1679FA:  ADD             R0, R11
1679FC:  MOV             R1, R8
1679FE:  STR             R4, [SP,#0x88+var_74]
167A00:  BL              sub_166A58
167A04:  STR             R0, [SP,#0x88+var_78]
167A06:  MOVW            R0, #0x1D88
167A0A:  ADD.W           R1, R11, R0
167A0E:  MOV.W           R0, #0xFFFFFFFF
167A12:  MOVS            R6, #0
167A14:  STR.W           R0, [R5,#0x474]
167A18:  MOVW            R0, #0x1D28
167A1C:  VMOV.I32        Q5, #0
167A20:  STRD.W          R6, R6, [R1]
167A24:  ADD             R0, R11
167A26:  STR             R1, [SP,#0x88+var_4C]
167A28:  ADD.W           R2, R11, #0x1D60
167A2C:  STR             R6, [R1,#8]
167A2E:  MOVS            R1, #0x14
167A30:  VST1.64         {D10-D11}, [R0],R1
167A34:  VST1.32         {D10-D11}, [R0]
167A38:  MOVW            R0, #0x1D4C
167A3C:  ADD             R0, R11
167A3E:  VST1.32         {D10-D11}, [R0]!
167A42:  STRB            R6, [R0]
167A44:  MOVW            R0, #0x1DE8
167A48:  ADD             R0, R11
167A4A:  STRH.W          R6, [R5,#0x499]
167A4E:  VST1.64         {D10-D11}, [R0]!
167A52:  VST1.64         {D10-D11}, [R0]!
167A56:  STR             R6, [R0]
167A58:  MOVW            R0, #0x1D9C
167A5C:  ADD.W           R8, R11, R0
167A60:  MOVS            R0, #0xC
167A62:  STR.W           R8, [SP,#0x88+var_7C]
167A66:  VST1.32         {D10-D11}, [R8],R0
167A6A:  MOVW            R0, #0xE84
167A6E:  VST1.32         {D10-D11}, [R8],R1
167A72:  MOVW            R1, #0xE74; n
167A76:  STR.W           R8, [SP,#0x88+var_80]
167A7A:  VST1.32         {D10-D11}, [R8]!
167A7E:  VST1.32         {D10-D11}, [R8],R0
167A82:  MOVW            R0, #0x1DDC
167A86:  ADD             R0, R11; int
167A88:  STR             R2, [SP,#0x88+var_50]
167A8A:  VST1.64         {D8-D9}, [R2]
167A8E:  STR             R0, [SP,#0x88+var_84]
167A90:  BLX             sub_22178C
167A94:  MOV             R0, R8
167A96:  BL              sub_178828
167A9A:  MOVW            R0, #0x2CD4
167A9E:  LDR             R3, [SP,#0x88+var_44]
167AA0:  ADD.W           R4, R11, R0
167AA4:  MOVW            R0, #0x2D2C
167AA8:  ADD.W           R10, R11, R0
167AAC:  CLZ.W           R0, R3
167AB0:  STRD.W          R6, R6, [R4]
167AB4:  MOV.W           R0, R0,LSR#5
167AB8:  STR             R6, [R4,#8]
167ABA:  STRB.W          R0, [R11,#3]
167ABE:  MOVW            R0, #0x2CB0
167AC2:  ADD.W           R9, R11, R0
167AC6:  MOV.W           R0, #0x34 ; '4'
167ACA:  VST1.64         {D10-D11}, [R9],R0
167ACE:  MOV.W           R0, #0x18
167AD2:  VST1.32         {D10-D11}, [R9],R0
167AD6:  MOV             R0, R9
167AD8:  STRD.W          R6, R6, [R10]
167ADC:  VST1.32         {D10-D11}, [R0]!
167AE0:  VST1.32         {D10-D11}, [R0]!
167AE4:  STR.W           R6, [R10,#8]
167AE8:  STRB.W          R6, [R11,#2]
167AEC:  STRH.W          R6, [R11]
167AF0:  STRD.W          R6, R6, [R5]
167AF4:  STR             R6, [R5,#8]
167AF6:  STR             R6, [R0]
167AF8:  CBNZ            R3, loc_167B24
167AFA:  LDR             R0, =(dword_381B58 - 0x167B00)
167AFC:  ADD             R0, PC; dword_381B58
167AFE:  LDR             R0, [R0]
167B00:  CBZ             R0, loc_167B0C
167B02:  LDR.W           R1, [R0,#0x370]
167B06:  ADDS            R1, #1
167B08:  STR.W           R1, [R0,#0x370]
167B0C:  LDR             R0, =(dword_381B60 - 0x167B14)
167B0E:  LDR             R2, =(off_2390AC - 0x167B16)
167B10:  ADD             R0, PC; dword_381B60
167B12:  ADD             R2, PC; off_2390AC
167B14:  LDR             R1, [R0]
167B16:  LDR             R2, [R2]; sub_171190
167B18:  MOVS            R0, #0x5C ; '\'
167B1A:  BLX             R2; sub_171190
167B1C:  MOV             R6, R0
167B1E:  BL              sub_175016
167B22:  MOV             R3, R0
167B24:  MOVW            R0, #0x1DD4
167B28:  ADD.W           R1, R11, R0
167B2C:  MOVW            R0, #0x2CC4
167B30:  ADR             R2, dword_167DF8
167B32:  ADD.W           R12, R11, R0
167B36:  LDR             R0, =(aBackground - 0x167B44); "##Background" ...
167B38:  VLD1.64         {D20-D21}, [R2]
167B3C:  ADR             R2, dword_167E08
167B3E:  MOVS            R6, #0
167B40:  ADD             R0, PC; "##Background"
167B42:  VLD1.64         {D16-D17}, [R2]
167B46:  ADR             R2, dword_167E18
167B48:  MOV             R9, R0
167B4A:  MOVS            R0, #0x20 ; ' '
167B4C:  VLD1.64         {D22-D23}, [R2]
167B50:  MOVW            R2, #0x19FE
167B54:  VMOV.I32        Q9, #0
167B58:  MOV.W           LR, #9
167B5C:  STR.W           R6, [R11,R2]
167B60:  MOVW            R2, #0x19FA
167B64:  MOV.W           R8, #0xFFFFFFFF
167B68:  STR.W           R6, [R11,R2]
167B6C:  ADD.W           R2, R5, #0x120
167B70:  VST1.32         {D22-D23}, [R2],R0
167B74:  STR             R6, [R2]
167B76:  MOVW            R2, #0x1AB4
167B7A:  ADD             R2, R11
167B7C:  STR.W           R3, [R11,#0x94]
167B80:  VST1.32         {D18-D19}, [R2]!
167B84:  MOVS            R3, #0xC
167B86:  VST1.32         {D18-D19}, [R2],R3
167B8A:  MOVS            R3, #0x13
167B8C:  VST1.32         {D18-D19}, [R2],R0
167B90:  LDR             R0, [SP,#0x88+var_48]
167B92:  VST1.64         {D18-D19}, [R2],LR
167B96:  VST1.64         {D8-D9}, [R0]
167B9A:  MOVW            R0, #0x19A8
167B9E:  ADD             R0, R11
167BA0:  VST1.64         {D18-D19}, [R0],LR
167BA4:  VST1.8          {D18-D19}, [R0],R3
167BA8:  MOVS            R3, #0xD
167BAA:  VST1.32         {D18-D19}, [R0],R3
167BAE:  MOVS            R3, #0x23 ; '#'
167BB0:  VST1.8          {D18-D19}, [R0],R3
167BB4:  MOVS            R3, #0x8C
167BB6:  STRD.W          R6, R6, [R0]
167BBA:  MOVW            R0, #0x277
167BBE:  VST1.8          {D18-D19}, [R2],R0
167BC2:  MOVS            R0, #1
167BC4:  STRB.W          R0, [R5,#0x252]
167BC8:  MOV             R0, #0x7FFFFFFF
167BCC:  STR.W           R0, [R5,#0x24C]
167BD0:  ADD.W           R0, R5, #0x270
167BD4:  VST1.32         {D20-D21}, [R0],R3
167BD8:  VMVN.I32        Q10, #0x80000000
167BDC:  STRD.W          R6, R6, [R5,#0x94]
167BE0:  STR.W           R8, [R5,#0xA4]
167BE4:  STRD.W          R6, R8, [R5,#0x9C]
167BE8:  STRD.W          R6, R6, [R5,#0x144]
167BEC:  STR.W           R6, [R5,#0x248]
167BF0:  STRH.W          R6, [R5,#0x26C]
167BF4:  STR.W           R6, [R5,#0x258]
167BF8:  STRH.W          R6, [R5,#0x250]
167BFC:  STR.W           R6, [R5,#0x253]
167C00:  STR.W           R8, [R5,#0x280]
167C04:  LDR             R3, =(aForeground - 0x167C14); "##Foreground" ...
167C06:  STR             R6, [R0]
167C08:  ADD.W           R0, R5, #0x304
167C0C:  VST1.32         {D20-D21}, [R0]!
167C10:  ADD             R3, PC; "##Foreground"
167C12:  STRB            R6, [R0]
167C14:  LDR             R0, [SP,#0x88+var_50]
167C16:  STR.W           R6, [R1,#0xED4]
167C1A:  STRD.W          R6, R6, [R1]
167C1E:  STR.W           R8, [R0,#0x24]
167C22:  LDR             R0, [SP,#0x88+var_4C]
167C24:  STRB.W          R6, [R1,#0xEEC]
167C28:  STR.W           R3, [R5,#0x404]
167C2C:  MOVW            R3, #0xFFFF
167C30:  STR             R6, [R0,#0x30]
167C32:  MOVT            R3, #0x7F7F
167C36:  STRD.W          R6, R6, [R0,#0xC]
167C3A:  MOV.W           R0, #0xA900000
167C3E:  STR.W           R0, [R1,#0xED8]
167C42:  MOV             R0, #0x3C23D70A
167C4A:  MOVS            R1, #0x14
167C4C:  STRD.W          R6, R0, [R12]
167C50:  ADD.W           R0, R4, #0xC
167C54:  VST1.32         {D16-D17}, [R0],R1
167C58:  MOVS            R1, #2
167C5A:  STRB            R6, [R0]
167C5C:  MOVW            R0, #0x2D4C
167C60:  VST1.64         {D18-D19}, [R2]!
167C64:  ADD             R0, R11; int
167C66:  STRD.W          R6, R1, [R10,#0x14]
167C6A:  STR.W           R1, [R10,#0x1C]
167C6E:  MOV.W           R1, #0x1E0; n
167C72:  STR.W           R6, [R5,#0x300]
167C76:  STR.W           R9, [R5,#0x38C]
167C7A:  STR.W           R6, [R5,#0x450]
167C7E:  STRB.W          R6, [R5,#0x455]
167C82:  STR.W           R6, [R5,#0x35C]
167C86:  STR.W           R6, [R5,#0x458]
167C8A:  STR.W           R8, [R5,#0x45C]
167C8E:  STR.W           R8, [R5,#0x460]
167C92:  STRB.W          R6, [R5,#0x454]
167C96:  STRD.W          R6, R6, [R12,#8]
167C9A:  STR             R3, [R4,#0x1C]
167C9C:  STRD.W          R6, R6, [R4,#0x50]
167CA0:  STR             R6, [R4,#0x24]
167CA2:  STRB.W          R6, [R4,#0x4C]
167CA6:  STR             R6, [R2]
167CA8:  STR.W           R3, [R10,#0xC]
167CAC:  STRB.W          R6, [R10,#0x10]
167CB0:  BLX             sub_22178C
167CB4:  ADD.W           R0, R11, #0x2F40; int
167CB8:  MOVW            R1, #0xC01; n
167CBC:  STRD.W          R6, R6, [R10,#0x200]
167CC0:  STRD.W          R8, R8, [R10,#0x208]
167CC4:  STR.W           R8, [R10,#0x210]
167CC8:  BLX             sub_22178C
167CCC:  MOV             R0, R11
167CCE:  ADD             SP, SP, #0x48 ; 'H'
167CD0:  VPOP            {D8-D11}
167CD4:  ADD             SP, SP, #4
167CD6:  POP.W           {R8-R11}
167CDA:  POP             {R4-R7,PC}
