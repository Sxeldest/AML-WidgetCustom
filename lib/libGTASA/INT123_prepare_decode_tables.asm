; =========================================================
; Game Engine Function: INT123_prepare_decode_tables
; Address            : 0x22ED20 - 0x22EEC6
; =========================================================

22ED20:  PUSH            {R4-R7,LR}
22ED22:  ADD             R7, SP, #0xC
22ED24:  PUSH.W          {R8-R11}
22ED28:  SUB             SP, SP, #4
22ED2A:  VPUSH           {D8-D11}
22ED2E:  LDR             R0, =(INT123_pnts_ptr - 0x22ED3A)
22ED30:  VMOV.F64        D9, #1.0
22ED34:  MOVS            R5, #0
22ED36:  ADD             R0, PC; INT123_pnts_ptr
22ED38:  LDR             R0, [R0]; INT123_pnts
22ED3A:  VMOV.I32        D8, #0
22ED3E:  VLDR            D10, =3.14159265
22ED42:  VLDR            D11, =0.015625
22ED46:  LDR             R4, [R0]; unk_6D6160
22ED48:  VADD.F64        D16, D8, D8
22ED4C:  VADD.F64        D16, D16, D9
22ED50:  VMUL.F64        D16, D16, D10
22ED54:  VMUL.F64        D16, D16, D11
22ED58:  VMOV            R0, R1, D16; x
22ED5C:  BLX             cos
22ED60:  VMOV            D16, R0, R1
22ED64:  ADDS            R0, R4, R5
22ED66:  VADD.F64        D8, D8, D9
22ED6A:  ADDS            R5, #8
22ED6C:  CMP             R5, #0x80
22ED6E:  VADD.F64        D16, D16, D16
22ED72:  VDIV.F64        D16, D9, D16
22ED76:  VSTR            D16, [R0]
22ED7A:  BNE             loc_22ED48
22ED7C:  LDR             R0, =(INT123_pnts_ptr - 0x22ED8E)
22ED7E:  MOVW            R8, #0x13D1
22ED82:  MOVW            LR, #0xD971
22ED86:  MOVW            R6, #0xE3C6
22ED8A:  ADD             R0, PC; INT123_pnts_ptr
22ED8C:  MOVW            R5, #0x2467
22ED90:  MOVW            R12, #0x5A74
22ED94:  MOVW            R3, #0xB84F
22ED98:  LDR             R0, [R0]; INT123_pnts
22ED9A:  MOVW            R2, #0xE15E
22ED9E:  MOVT            R8, #0x3FE0
22EDA2:  MOVT            LR, #0x9C61
22EDA6:  MOVT            R6, #0x98BB
22EDAA:  MOVT            R5, #0x3FE2
22EDAE:  LDR             R1, [R0,#(off_683D00 - 0x683CFC)]; dword_6D61E0
22EDB0:  MOVT            R12, #0xD106
22EDB4:  MOVT            R3, #0x3FE0
22EDB8:  MOVT            R2, #0x3EB
22EDBC:  MOVW            R9, #0xCED7
22EDC0:  MOVW            R10, #0x3890
22EDC4:  STRD.W          LR, R8, [R1]
22EDC8:  ADD.W           LR, R1, #8
22EDCC:  STM.W           LR, {R2,R3,R12}
22EDD0:  MOVW            R11, #0x4210
22EDD4:  MOVW            R4, #0xB2C3
22EDD8:  STRD.W          R5, R6, [R1,#(dword_6D61F4 - 0x6D61E0)]
22EDDC:  MOVW            R6, #0xF889
22EDE0:  MOVT            R4, #0x3FE4
22EDE4:  MOVT            R9, #0x2A4E
22EDE8:  MOVT            R10, #0x3FE9
22EDEC:  MOVT            R11, #0xB7D
22EDF0:  MOVT            R6, #0x3FF0
22EDF4:  STR             R4, [R1,#(dword_6D61FC - 0x6D61E0)]
22EDF6:  STRD.W          R11, R10, [R1,#(dword_6D6200 - 0x6D61E0)]
22EDFA:  MOVW            R2, #0x6793
22EDFE:  STR.W           R9, [R1,#(dword_6D6208 - 0x6D61E0)]
22EE02:  MOVW            R3, #0x38D4
22EE06:  STR             R6, [R1,#(dword_6D620C - 0x6D61E0)]
22EE08:  MOV             R6, #0xB0406142
22EE10:  MOVT            R2, #0x4014
22EE14:  STR             R6, [R1,#(dword_6D6210 - 0x6D61E0)]
22EE16:  MOVW            R6, #0x8F24
22EE1A:  MOVT            R3, #0x80E5
22EE1E:  MOVT            R6, #0x3FFB
22EE22:  STRD.W          R6, R3, [R1,#(dword_6D6214 - 0x6D61E0)]
22EE26:  MOVW            R8, #0x503E
22EE2A:  STR             R2, [R1,#(dword_6D621C - 0x6D61E0)]
22EE2C:  MOVW            R3, #0xBA53
22EE30:  LDR             R1, [R0,#(off_683D04 - 0x683CFC)]; dword_6D6220
22EE32:  MOVW            R12, #0xCC9A
22EE36:  MOVW            R5, #0x8D57
22EE3A:  MOVW            R4, #0x3E37
22EE3E:  MOVW            R6, #0x173E
22EE42:  MOVW            LR, #0x80D9
22EE46:  MOVW            R2, #0xB426
22EE4A:  MOVT            R8, #0x3FE0
22EE4E:  MOVT            R3, #0xD17C
22EE52:  MOVT            R12, #0x3FEC
22EE56:  MOVT            R5, #0xEFB1
22EE5A:  MOVT            R4, #0x3FE3
22EE5E:  MOVT            R6, #0xA1E0
22EE62:  MOVT            LR, #0x4004
22EE66:  MOVT            R2, #0xD073
22EE6A:  STRD.W          R3, R8, [R1]
22EE6E:  STRD.W          R6, R4, [R1,#(dword_6D6228 - 0x6D6220)]
22EE72:  MOVW            R3, #0x3895
22EE76:  STRD.W          R5, R12, [R1,#(dword_6D6230 - 0x6D6220)]
22EE7A:  MOVW            R6, #0xE7AE
22EE7E:  STRD.W          R2, LR, [R1,#(dword_6D6238 - 0x6D6220)]
22EE82:  MOVW            R2, #0x517A
22EE86:  LDR             R1, [R0,#(off_683D08 - 0x683CFC)]; dword_6D6240
22EE88:  MOVW            R5, #0xF0FB
22EE8C:  MOVT            R2, #0x3FE1
22EE90:  MOVT            R3, #0x7BDB
22EE94:  MOVT            R6, #0x3FF4
22EE98:  MOVT            R5, #0x9144
22EE9C:  STRD.W          R3, R2, [R1]
22EEA0:  MOVW            R2, #0x3BCC
22EEA4:  STRD.W          R5, R6, [R1,#(dword_6D6248 - 0x6D6240)]
22EEA8:  MOVW            R1, #0xA09E
22EEAC:  LDR             R0, [R0,#(off_683D0C - 0x683CFC)]; dword_6D6250
22EEAE:  MOVT            R1, #0x3FE6
22EEB2:  MOVT            R2, #0x667F
22EEB6:  STRD.W          R2, R1, [R0]
22EEBA:  VPOP            {D8-D11}
22EEBE:  ADD             SP, SP, #4
22EEC0:  POP.W           {R8-R11}
22EEC4:  POP             {R4-R7,PC}
