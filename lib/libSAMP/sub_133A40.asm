; =========================================================
; Game Engine Function: sub_133A40
; Address            : 0x133A40 - 0x133DF4
; =========================================================

133A40:  PUSH            {R4-R7,LR}
133A42:  ADD             R7, SP, #0xC
133A44:  PUSH.W          {R8-R11}
133A48:  SUB             SP, SP, #4
133A4A:  VPUSH           {D8}
133A4E:  SUB             SP, SP, #0x18
133A50:  MOV             R8, R1
133A52:  MOV             R4, R0
133A54:  BL              sub_12BC78
133A58:  VMOV.I32        Q8, #0
133A5C:  LDR             R0, =(_ZTVN4menu7contentE - 0x133A68); `vtable for'menu::content ...
133A5E:  ADD.W           R6, R4, #0x54 ; 'T'
133A62:  STR             R6, [SP,#0x40+var_3C]
133A64:  ADD             R0, PC; `vtable for'menu::content
133A66:  MOVS            R1, #0
133A68:  VST1.32         {D16-D17}, [R6]!
133A6C:  ADDS            R0, #8
133A6E:  MOVW            R9, #0x8000
133A72:  MOVW            R10, #0x4000
133A76:  STR             R0, [R4]
133A78:  MOV             R0, R6
133A7A:  VST1.32         {D16-D17}, [R0]!
133A7E:  MOVT            R9, #0x3EE4
133A82:  MOVT            R10, #0x3F24
133A86:  VST1.32         {D16-D17}, [R0]!
133A8A:  STR             R1, [R0]
133A8C:  MOVS            R0, #0x3E4B0000
133A92:  STR.W           R1, [R4,#0x88]
133A96:  STR             R0, [SP,#0x40+var_30]
133A98:  MOV             R0, #0x3EC98000
133AA0:  STR.W           R9, [SP,#0x40+var_2C]
133AA4:  STR.W           R10, [SP,#0x40+var_34]
133AA8:  STR             R0, [SP,#0x40+var_38]
133AAA:  MOVS            R0, #0x88; unsigned int
133AAC:  BLX             j__Znwj; operator new(uint)
133AB0:  MOV             R5, R0
133AB2:  ADD             R2, SP, #0x40+var_30
133AB4:  ADD             R3, SP, #0x40+var_38
133AB6:  MOV             R1, R8
133AB8:  BL              sub_133F78
133ABC:  MOV             R0, R6
133ABE:  MOV             R1, R5
133AC0:  BL              sub_134570
133AC4:  MOVW            R0, #0x8000
133AC8:  MOVW            R11, #0x4000
133ACC:  MOVT            R0, #0x3ECA
133AD0:  MOVT            R11, #0x3F17
133AD4:  STR.W           R9, [SP,#0x40+var_2C]
133AD8:  STRD.W          R10, R0, [SP,#0x40+var_34]
133ADC:  STR.W           R11, [SP,#0x40+var_38]
133AE0:  MOVS            R0, #0x88; unsigned int
133AE2:  BLX             j__Znwj; operator new(uint)
133AE6:  MOV             R6, R0
133AE8:  ADD             R2, SP, #0x40+var_30
133AEA:  ADD             R3, SP, #0x40+var_38
133AEC:  MOV             R1, R8
133AEE:  BL              sub_133F78
133AF2:  ADD.W           R0, R4, #0x68 ; 'h'
133AF6:  MOV             R1, R6
133AF8:  BL              sub_134570
133AFC:  MOV.W           R0, #0x3A800000
133B00:  MOVS            R5, #0
133B02:  STR             R0, [SP,#0x40+var_2C]
133B04:  MOVS            R0, #0x3E4B0000
133B0A:  MOVT            R5, #0x3E49
133B0E:  STR             R0, [SP,#0x40+var_30]
133B10:  MOV             R0, #0x3EC98000
133B18:  STR             R5, [SP,#0x40+var_34]
133B1A:  STR             R0, [SP,#0x40+var_38]
133B1C:  MOVS            R0, #0x88; unsigned int
133B1E:  BLX             j__Znwj; operator new(uint)
133B22:  MOV             R6, R0
133B24:  ADD             R2, SP, #0x40+var_30
133B26:  ADD             R3, SP, #0x40+var_38
133B28:  MOV             R1, R8
133B2A:  BL              sub_133F78
133B2E:  ADD.W           R0, R4, #0x6C ; 'l'
133B32:  MOV             R1, R6
133B34:  BL              sub_134570
133B38:  MOV.W           R0, #0x3A800000
133B3C:  STRD.W          R5, R5, [SP,#0x40+var_38]
133B40:  STRD.W          R0, R0, [SP,#0x40+var_30]
133B44:  MOVS            R0, #0x88; unsigned int
133B46:  BLX             j__Znwj; operator new(uint)
133B4A:  MOV             R6, R0
133B4C:  ADD             R2, SP, #0x40+var_30
133B4E:  ADD             R3, SP, #0x40+var_38
133B50:  MOV             R1, R8
133B52:  BL              sub_133F78
133B56:  ADD.W           R0, R4, #0x70 ; 'p'
133B5A:  MOV             R1, R6
133B5C:  BL              sub_134570
133B60:  MOV.W           R0, #0x3A800000
133B64:  STR.W           R9, [SP,#0x40+var_2C]
133B68:  STR             R0, [SP,#0x40+var_30]
133B6A:  STRD.W          R5, R10, [SP,#0x40+var_38]
133B6E:  MOVS            R0, #0x88; unsigned int
133B70:  BLX             j__Znwj; operator new(uint)
133B74:  MOV             R6, R0
133B76:  ADD             R2, SP, #0x40+var_30
133B78:  ADD             R3, SP, #0x40+var_38
133B7A:  MOV             R1, R8
133B7C:  BL              sub_133F78
133B80:  ADD.W           R0, R4, #0x74 ; 't'
133B84:  MOV             R1, R6
133B86:  BL              sub_134570
133B8A:  MOV.W           R0, #0x3A800000
133B8E:  STRD.W          R11, R5, [SP,#0x40+var_38]
133B92:  STR             R0, [SP,#0x40+var_2C]
133B94:  MOV             R0, #0x3ECA8000
133B9C:  STR             R0, [SP,#0x40+var_30]
133B9E:  MOVS            R0, #0x88; unsigned int
133BA0:  BLX             j__Znwj; operator new(uint)
133BA4:  MOV             R6, R0
133BA6:  ADD             R2, SP, #0x40+var_30
133BA8:  ADD             R3, SP, #0x40+var_38
133BAA:  MOV             R1, R8
133BAC:  BL              sub_133F78
133BB0:  ADD.W           R0, R4, #0x78 ; 'x'
133BB4:  MOV             R1, R6
133BB6:  BL              sub_134570
133BBA:  MOVS            R0, #0x3E4B0000
133BC0:  STR             R0, [SP,#0x40+var_2C]
133BC2:  MOVS            R0, #0x3F0E0000
133BC8:  STR             R0, [SP,#0x40+var_30]
133BCA:  MOV             R0, #0x3EC98000
133BD2:  STR             R0, [SP,#0x40+var_34]
133BD4:  MOV.W           R0, #0x3F400000
133BD8:  STR             R0, [SP,#0x40+var_38]
133BDA:  MOVS            R0, #0x88; unsigned int
133BDC:  BLX             j__Znwj; operator new(uint)
133BE0:  MOV             R6, R0
133BE2:  ADD             R2, SP, #0x40+var_30
133BE4:  ADD             R3, SP, #0x40+var_38
133BE6:  MOV             R1, R8
133BE8:  BL              sub_133F78
133BEC:  ADD.W           R0, R4, #0x7C ; '|'
133BF0:  MOV             R1, R6
133BF2:  BL              sub_134570
133BF6:  MOV.W           R0, #0x3A800000
133BFA:  STR             R0, [SP,#0x40+var_2C]
133BFC:  MOV             R0, #0x3F22C000
133C04:  STRD.W          R5, R0, [SP,#0x40+var_34]
133C08:  MOV             R0, #0x3F54C000
133C10:  STR             R0, [SP,#0x40+var_38]
133C12:  MOVS            R0, #0x88; unsigned int
133C14:  BLX             j__Znwj; operator new(uint)
133C18:  MOV             R6, R0
133C1A:  ADD             R2, SP, #0x40+var_30
133C1C:  ADD             R3, SP, #0x40+var_38
133C1E:  MOV             R1, R8
133C20:  BL              sub_133F78
133C24:  ADD.W           R0, R4, #0x80
133C28:  MOV             R1, R6
133C2A:  BL              sub_134570
133C2E:  MOVW            R0, #0xC000
133C32:  MOVW            R5, #0x8000
133C36:  MOVT            R0, #0x3F24
133C3A:  MOVT            R5, #0x3F0D
133C3E:  STR             R0, [SP,#0x40+var_2C]
133C40:  MOV.W           R0, #0x3A800000
133C44:  STR             R0, [SP,#0x40+var_30]
133C46:  MOV             R0, #0x3F56C000
133C4E:  STR             R5, [SP,#0x40+var_38]
133C50:  STR             R0, [SP,#0x40+var_34]
133C52:  MOVS            R0, #0x88; unsigned int
133C54:  BLX             j__Znwj; operator new(uint)
133C58:  MOV             R6, R0
133C5A:  ADD             R2, SP, #0x40+var_30
133C5C:  ADD             R3, SP, #0x40+var_38
133C5E:  MOV             R1, R8
133C60:  BL              sub_133F78
133C64:  ADD.W           R0, R4, #0x84
133C68:  MOV             R1, R6
133C6A:  BL              sub_134570
133C6E:  MOVS            R0, #0x3E7F0000
133C74:  STR             R0, [SP,#0x40+var_2C]
133C76:  MOV.W           R0, #0x3A800000
133C7A:  STR             R0, [SP,#0x40+var_30]
133C7C:  MOV             R0, #0x3EE38000
133C84:  STRD.W          R5, R0, [SP,#0x40+var_38]
133C88:  MOVS            R0, #0x88; unsigned int
133C8A:  BLX             j__Znwj; operator new(uint)
133C8E:  MOV             R6, R0
133C90:  ADD             R2, SP, #0x40+var_30
133C92:  ADD             R3, SP, #0x40+var_38
133C94:  MOV             R1, R8
133C96:  BL              sub_133F78
133C9A:  ADD.W           R0, R4, #0x88
133C9E:  MOV             R1, R6
133CA0:  BL              sub_134570
133CA4:  LDR             R0, =(off_234B7C - 0x133CAA)
133CA6:  ADD             R0, PC; off_234B7C
133CA8:  LDR             R0, [R0]; dword_238EC8
133CAA:  VLDR            S16, [R0]
133CAE:  MOVS            R0, #0x6C ; 'l'; unsigned int
133CB0:  BLX             j__Znwj; operator new(uint)
133CB4:  MOV             R5, R0
133CB6:  MOVS            R1, #1
133CB8:  LDR             R6, [SP,#0x40+var_3C]
133CBA:  BL              sub_13D71C
133CBE:  LDR             R0, [R6]
133CC0:  STR             R5, [R6]
133CC2:  CBZ             R0, loc_133CCC
133CC4:  LDR             R1, [R0]
133CC6:  LDR             R1, [R1,#0x2C]
133CC8:  BLX             R1
133CCA:  LDR             R5, [R6]
133CCC:  MOV             R0, R4
133CCE:  MOV             R1, R5
133CD0:  BL              sub_12BDF6
133CD4:  VMOV.F32        S0, #3.0
133CD8:  LDR             R0, [R6]
133CDA:  VMOV.I32        Q8, #0
133CDE:  ADD.W           R1, R0, #0x58 ; 'X'
133CE2:  VST1.32         {D16-D17}, [R1]!
133CE6:  VMUL.F32        S16, S16, S0
133CEA:  VSTR            S16, [R0,#0x5C]
133CEE:  VSTR            S16, [R1]
133CF2:  MOVS            R0, #0x6C ; 'l'; unsigned int
133CF4:  BLX             j__Znwj; operator new(uint)
133CF8:  MOV             R5, R0
133CFA:  MOVS            R1, #1
133CFC:  BL              sub_13D71C
133D00:  LDR             R0, [R4,#0x58]
133D02:  STR             R5, [R4,#0x58]
133D04:  CBZ             R0, loc_133D0E
133D06:  LDR             R1, [R0]
133D08:  LDR             R1, [R1,#0x2C]
133D0A:  BLX             R1
133D0C:  LDR             R5, [R4,#0x58]
133D0E:  MOV             R0, R4
133D10:  MOV             R1, R5
133D12:  BL              sub_12BDF6
133D16:  LDR             R0, [R4,#0x58]
133D18:  VMOV.I32        Q8, #0
133D1C:  ADDS            R0, #0x58 ; 'X'
133D1E:  VST1.32         {D16-D17}, [R0]!
133D22:  VSTR            S16, [R0]
133D26:  MOVS            R0, #0x6C ; 'l'; unsigned int
133D28:  BLX             j__Znwj; operator new(uint)
133D2C:  MOV             R5, R0
133D2E:  MOVS            R1, #0
133D30:  BL              sub_13D71C
133D34:  LDR             R0, [R4,#0x5C]
133D36:  STR             R5, [R4,#0x5C]
133D38:  CBZ             R0, loc_133D42
133D3A:  LDR             R1, [R0]
133D3C:  LDR             R1, [R1,#0x2C]
133D3E:  BLX             R1
133D40:  LDR             R5, [R4,#0x5C]
133D42:  LDR             R0, [R6]
133D44:  MOV             R1, R5
133D46:  BL              sub_12BDF6
133D4A:  LDR             R0, [R4,#0x5C]
133D4C:  VMOV.I32        Q8, #0
133D50:  ADD.W           R2, R0, #0x58 ; 'X'
133D54:  VST1.32         {D16-D17}, [R2]!
133D58:  LDR             R1, [R4,#0x64]
133D5A:  VSTR            S16, [R2]
133D5E:  BL              sub_12BDF6
133D62:  LDR             R0, [R4,#0x5C]
133D64:  LDR             R1, [R4,#0x68]
133D66:  BL              sub_12BDF6
133D6A:  LDR             R0, [R4,#0x5C]
133D6C:  LDR             R1, [R4,#0x6C]
133D6E:  BL              sub_12BDF6
133D72:  LDR             R0, [R4,#0x5C]
133D74:  LDR             R1, [R4,#0x70]
133D76:  BL              sub_12BDF6
133D7A:  MOVS            R0, #0x6C ; 'l'; unsigned int
133D7C:  BLX             j__Znwj; operator new(uint)
133D80:  MOV             R5, R0
133D82:  MOVS            R1, #0
133D84:  BL              sub_13D71C
133D88:  LDR             R0, [R4,#0x60]
133D8A:  STR             R5, [R4,#0x60]
133D8C:  CBZ             R0, loc_133D96
133D8E:  LDR             R1, [R0]
133D90:  LDR             R1, [R1,#0x2C]
133D92:  BLX             R1
133D94:  LDR             R5, [R4,#0x60]
133D96:  LDR             R0, [R6]
133D98:  MOV             R1, R5
133D9A:  BL              sub_12BDF6
133D9E:  LDR             R0, [R4,#0x60]
133DA0:  VMOV.I32        Q8, #0
133DA4:  ADD.W           R2, R0, #0x58 ; 'X'
133DA8:  VST1.32         {D16-D17}, [R2]!
133DAC:  LDR             R1, [R4,#0x74]
133DAE:  VSTR            S16, [R2]
133DB2:  BL              sub_12BDF6
133DB6:  LDR             R0, [R4,#0x60]
133DB8:  LDR             R1, [R4,#0x78]
133DBA:  BL              sub_12BDF6
133DBE:  LDR             R0, [R4,#0x60]
133DC0:  LDR             R1, [R4,#0x7C]
133DC2:  BL              sub_12BDF6
133DC6:  LDR             R0, [R4,#0x60]
133DC8:  LDR.W           R1, [R4,#0x80]
133DCC:  BL              sub_12BDF6
133DD0:  LDR             R0, [R4,#0x58]
133DD2:  LDR.W           R1, [R4,#0x84]
133DD6:  BL              sub_12BDF6
133DDA:  LDR             R0, [R4,#0x58]
133DDC:  LDR.W           R1, [R4,#0x88]
133DE0:  BL              sub_12BDF6
133DE4:  MOV             R0, R4
133DE6:  ADD             SP, SP, #0x18
133DE8:  VPOP            {D8}
133DEC:  ADD             SP, SP, #4
133DEE:  POP.W           {R8-R11}
133DF2:  POP             {R4-R7,PC}
