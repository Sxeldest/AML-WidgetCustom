; =========================================================
; Game Engine Function: _Z33RtAnimRegisterInterpolationSchemeP22RtAnimInterpolatorInfo
; Address            : 0x1EAEE8 - 0x1EAF62
; =========================================================

1EAEE8:  PUSH            {R7,LR}
1EAEEA:  MOV             R7, SP
1EAEEC:  LDR             R1, =(RtAnimInterpolatorInfoBlockNumEntries_ptr - 0x1EAEF2)
1EAEEE:  ADD             R1, PC; RtAnimInterpolatorInfoBlockNumEntries_ptr
1EAEF0:  LDR             R1, [R1]; RtAnimInterpolatorInfoBlockNumEntries
1EAEF2:  LDR.W           R12, [R1]
1EAEF6:  CMP.W           R12, #0xF
1EAEFA:  ITT GT
1EAEFC:  MOVGT           R0, #0
1EAEFE:  POPGT           {R7,PC}
1EAF00:  CMP.W           R12, #1
1EAF04:  BLT             loc_1EAF20
1EAF06:  LDR             R1, =(RtAnimInterpolatorInfoBlock_ptr - 0x1EAF10)
1EAF08:  LDR.W           LR, [R0]
1EAF0C:  ADD             R1, PC; RtAnimInterpolatorInfoBlock_ptr
1EAF0E:  LDR             R3, [R1]; RtAnimInterpolatorInfoBlock
1EAF10:  MOVS            R1, #0
1EAF12:  LDR             R2, [R3]
1EAF14:  CMP             R2, LR
1EAF16:  BEQ             loc_1EAF5E
1EAF18:  ADDS            R1, #1
1EAF1A:  ADDS            R3, #0x30 ; '0'
1EAF1C:  CMP             R1, R12
1EAF1E:  BLT             loc_1EAF12
1EAF20:  LDR             R3, =(RtAnimInterpolatorInfoBlock_ptr - 0x1EAF2E)
1EAF22:  ADD.W           R1, R0, #0x20 ; ' '
1EAF26:  VLD1.32         {D16-D17}, [R0]!
1EAF2A:  ADD             R3, PC; RtAnimInterpolatorInfoBlock_ptr
1EAF2C:  VLD1.32         {D18-D19}, [R1]
1EAF30:  ADD.W           R1, R12, R12,LSL#1
1EAF34:  VLD1.32         {D20-D21}, [R0]
1EAF38:  LDR             R0, [R3]; RtAnimInterpolatorInfoBlock
1EAF3A:  LDR             R2, =(RtAnimInterpolatorInfoBlockNumEntries_ptr - 0x1EAF44)
1EAF3C:  ADD.W           R0, R0, R1,LSL#4
1EAF40:  ADD             R2, PC; RtAnimInterpolatorInfoBlockNumEntries_ptr
1EAF42:  ADD.W           R1, R0, #0x20 ; ' '
1EAF46:  VST1.32         {D18-D19}, [R1]
1EAF4A:  VST1.32         {D16-D17}, [R0]!
1EAF4E:  LDR             R2, [R2]; RtAnimInterpolatorInfoBlockNumEntries
1EAF50:  VST1.32         {D20-D21}, [R0]
1EAF54:  ADD.W           R0, R12, #1
1EAF58:  STR             R0, [R2]
1EAF5A:  MOVS            R0, #1
1EAF5C:  POP             {R7,PC}
1EAF5E:  MOVS            R0, #0
1EAF60:  POP             {R7,PC}
