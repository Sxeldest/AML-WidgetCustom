; =========================================================
; Game Engine Function: _Z29GetPlayerRelationshipRecorderv
; Address            : 0x4D64AC - 0x4D6528
; =========================================================

4D64AC:  LDR             R0, =(dword_9FD44C - 0x4D64B2)
4D64AE:  ADD             R0, PC; dword_9FD44C
4D64B0:  LDR             R0, [R0]
4D64B2:  CMP             R0, #0
4D64B4:  IT NE
4D64B6:  BXNE            LR
4D64B8:  PUSH            {R7,LR}
4D64BA:  MOV             R7, SP
4D64BC:  MOVS            R0, #0x80; unsigned int
4D64BE:  BLX             _Znwj; operator new(uint)
4D64C2:  LDR             R1, =(dword_9FD44C - 0x4D64CC)
4D64C4:  MOVS            R2, #0
4D64C6:  STR             R2, [R0]
4D64C8:  ADD             R1, PC; dword_9FD44C
4D64CA:  STRB            R2, [R0,#4]
4D64CC:  STR             R2, [R0,#8]
4D64CE:  STRB            R2, [R0,#0xC]
4D64D0:  STR             R2, [R0,#0x10]
4D64D2:  STRB            R2, [R0,#0x14]
4D64D4:  STR             R2, [R0,#0x18]
4D64D6:  STRB            R2, [R0,#0x1C]
4D64D8:  STR             R2, [R0,#0x20]
4D64DA:  STRB.W          R2, [R0,#0x24]
4D64DE:  STR             R2, [R0,#0x28]
4D64E0:  STRB.W          R2, [R0,#0x2C]
4D64E4:  STR             R2, [R0,#0x30]
4D64E6:  STRB.W          R2, [R0,#0x34]
4D64EA:  STR             R2, [R0,#0x38]
4D64EC:  STRB.W          R2, [R0,#0x3C]
4D64F0:  STR             R2, [R0,#0x40]
4D64F2:  STRB.W          R2, [R0,#0x44]
4D64F6:  STRB.W          R2, [R0,#0x4C]
4D64FA:  STR             R2, [R0,#0x48]
4D64FC:  STR             R2, [R0,#0x50]
4D64FE:  STRB.W          R2, [R0,#0x54]
4D6502:  STR             R2, [R0,#0x58]
4D6504:  STRB.W          R2, [R0,#0x5C]
4D6508:  STR             R2, [R0,#0x60]
4D650A:  STRB.W          R2, [R0,#0x64]
4D650E:  STR             R2, [R0,#0x68]
4D6510:  STRB.W          R2, [R0,#0x6C]
4D6514:  STR             R2, [R0,#0x70]
4D6516:  STRB.W          R2, [R0,#0x74]
4D651A:  STR             R2, [R0,#0x78]
4D651C:  STRB.W          R2, [R0,#0x7C]
4D6520:  STR             R0, [R1]
4D6522:  POP.W           {R7,LR}
4D6526:  BX              LR
