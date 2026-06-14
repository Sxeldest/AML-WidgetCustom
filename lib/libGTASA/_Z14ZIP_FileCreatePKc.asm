; =========================================================
; Game Engine Function: _Z14ZIP_FileCreatePKc
; Address            : 0x26FE54 - 0x26FF02
; =========================================================

26FE54:  PUSH            {R4-R7,LR}
26FE56:  ADD             R7, SP, #0xC
26FE58:  PUSH.W          {R11}
26FE5C:  ADR             R1, aApk; ".apk"
26FE5E:  MOV             R5, R0
26FE60:  BLX             strstr
26FE64:  MOV             R6, R0
26FE66:  MOV.W           R0, #0x118; unsigned int
26FE6A:  BLX             _Znwj; operator new(uint)
26FE6E:  MOV             R4, R0
26FE70:  CBZ             R6, loc_26FE88
26FE72:  MOV             R0, R4
26FE74:  MOV.W           R1, #0x118
26FE78:  BLX             j___aeabi_memclr8
26FE7C:  LDR             R0, =(_ZTV7APKFile_ptr - 0x26FE82)
26FE7E:  ADD             R0, PC; _ZTV7APKFile_ptr
26FE80:  LDR             R0, [R0]; `vtable for'APKFile ...
26FE82:  ADDS            R0, #8
26FE84:  STR             R0, [R4]
26FE86:  B               loc_26FEA4
26FE88:  LDR             R0, =(_ZTV7ZIPFile_ptr - 0x26FE94)
26FE8A:  MOVS            R1, #0
26FE8C:  STR.W           R1, [R4,#0x114]
26FE90:  ADD             R0, PC; _ZTV7ZIPFile_ptr
26FE92:  STR.W           R1, [R4,#0xD]
26FE96:  STR.W           R1, [R4,#9]
26FE9A:  LDR             R0, [R0]; `vtable for'ZIPFile ...
26FE9C:  ADDS            R0, #8
26FE9E:  STRD.W          R0, R1, [R4]
26FEA2:  STR             R1, [R4,#8]
26FEA4:  MOV             R0, R4; this
26FEA6:  MOV             R1, R5; char *
26FEA8:  BLX             j__ZN7ZIPFile10InitializeEPKc; ZIPFile::Initialize(char const*)
26FEAC:  CBNZ            R0, loc_26FEFA
26FEAE:  LDR             R0, =(_ZTV7ZIPFile_ptr - 0x26FEB4)
26FEB0:  ADD             R0, PC; _ZTV7ZIPFile_ptr
26FEB2:  LDR             R1, [R0]; `vtable for'ZIPFile ...
26FEB4:  LDR.W           R0, [R4,#0x114]; p
26FEB8:  ADDS            R1, #8
26FEBA:  STR             R1, [R4]
26FEBC:  CBZ             R0, loc_26FECA
26FEBE:  BLX             free
26FEC2:  MOVS            R0, #0
26FEC4:  STR.W           R0, [R4,#0x114]
26FEC8:  B               loc_26FEE4
26FECA:  LDR             R0, [R4,#8]
26FECC:  CBZ             R0, loc_26FEE4
26FECE:  MOVS            R5, #0
26FED0:  MOVS            R6, #8
26FED2:  LDR             R0, [R4,#0xC]
26FED4:  LDR             R0, [R0,R6]; p
26FED6:  BLX             free
26FEDA:  LDR             R0, [R4,#8]
26FEDC:  ADDS            R5, #1
26FEDE:  ADDS            R6, #0xC
26FEE0:  CMP             R5, R0
26FEE2:  BCC             loc_26FED2
26FEE4:  LDR             R0, [R4,#0xC]; p
26FEE6:  MOVS            R1, #0
26FEE8:  STR             R1, [R4,#8]
26FEEA:  CMP             R0, #0
26FEEC:  IT NE
26FEEE:  BLXNE           free
26FEF2:  MOV             R0, R4; void *
26FEF4:  BLX             _ZdlPv; operator delete(void *)
26FEF8:  MOVS            R4, #0
26FEFA:  MOV             R0, R4
26FEFC:  POP.W           {R11}
26FF00:  POP             {R4-R7,PC}
