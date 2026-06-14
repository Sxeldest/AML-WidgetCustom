; =========================================================
; Game Engine Function: _Z18GetAccidentManagerv
; Address            : 0x3BEE60 - 0x3BEEF2
; =========================================================

3BEE60:  LDR             R0, =(dword_951C10 - 0x3BEE66)
3BEE62:  ADD             R0, PC; dword_951C10
3BEE64:  LDR             R0, [R0]
3BEE66:  CMP             R0, #0
3BEE68:  IT NE
3BEE6A:  BXNE            LR
3BEE6C:  PUSH            {R7,LR}
3BEE6E:  MOV             R7, SP
3BEE70:  MOVS            R0, #0x80; unsigned int
3BEE72:  BLX             _Znwj; operator new(uint)
3BEE76:  LDR             R1, =(dword_951C10 - 0x3BEE80)
3BEE78:  MOVS            R2, #0
3BEE7A:  STR             R2, [R0]
3BEE7C:  ADD             R1, PC; dword_951C10
3BEE7E:  STRH            R2, [R0,#4]
3BEE80:  STR             R2, [R0,#8]
3BEE82:  STRH            R2, [R0,#0xC]
3BEE84:  STR             R2, [R0,#0x10]
3BEE86:  STRH            R2, [R0,#0x14]
3BEE88:  STR             R2, [R0,#0x18]
3BEE8A:  STRH            R2, [R0,#0x1C]
3BEE8C:  STR             R2, [R0,#0x20]
3BEE8E:  STRH            R2, [R0,#0x24]
3BEE90:  STR             R2, [R0,#0x28]
3BEE92:  STRH            R2, [R0,#0x2C]
3BEE94:  STR             R2, [R0,#0x30]
3BEE96:  STRH            R2, [R0,#0x34]
3BEE98:  STR             R2, [R0,#0x38]
3BEE9A:  STRB.W          R2, [R0,#0x3C]
3BEE9E:  STR             R2, [R0,#0x40]
3BEEA0:  STRB.W          R2, [R0,#0x3D]
3BEEA4:  STRB.W          R2, [R0,#0x44]
3BEEA8:  STRB.W          R2, [R0,#0x45]
3BEEAC:  STR             R2, [R0,#0x48]
3BEEAE:  STRB.W          R2, [R0,#0x4C]
3BEEB2:  STRB.W          R2, [R0,#0x4D]
3BEEB6:  STR             R2, [R0,#0x50]
3BEEB8:  STRB.W          R2, [R0,#0x54]
3BEEBC:  STRB.W          R2, [R0,#0x55]
3BEEC0:  STR             R2, [R0,#0x58]
3BEEC2:  STRB.W          R2, [R0,#0x5C]
3BEEC6:  STRB.W          R2, [R0,#0x5D]
3BEECA:  STR             R2, [R0,#0x60]
3BEECC:  STRB.W          R2, [R0,#0x64]
3BEED0:  STRB.W          R2, [R0,#0x65]
3BEED4:  STR             R2, [R0,#0x68]
3BEED6:  STRB.W          R2, [R0,#0x6C]
3BEEDA:  STRB.W          R2, [R0,#0x6D]
3BEEDE:  STR             R2, [R0,#0x70]
3BEEE0:  STRH.W          R2, [R0,#0x74]
3BEEE4:  STR             R2, [R0,#0x78]
3BEEE6:  STRH.W          R2, [R0,#0x7C]
3BEEEA:  STR             R0, [R1]
3BEEEC:  POP.W           {R7,LR}
3BEEF0:  BX              LR
