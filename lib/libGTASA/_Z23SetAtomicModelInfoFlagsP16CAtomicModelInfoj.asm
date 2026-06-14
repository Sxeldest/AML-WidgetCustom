; =========================================================
; Game Engine Function: _Z23SetAtomicModelInfoFlagsP16CAtomicModelInfoj
; Address            : 0x46ACC4 - 0x46ADB0
; =========================================================

46ACC4:  PUSH            {R7,LR}
46ACC6:  MOV             R7, SP
46ACC8:  LDRH            R2, [R0,#0x28]
46ACCA:  TST.W           R1, #0xC
46ACCE:  MOV.W           R12, #2
46ACD2:  BIC.W           R3, R2, #2
46ACD6:  IT NE
46ACD8:  ORRNE.W         R3, R2, #2
46ACDC:  TST.W           R1, #8
46ACE0:  BIC.W           R2, R3, #4
46ACE4:  IT NE
46ACE6:  ORRNE.W         R2, R3, #4
46ACEA:  TST.W           R1, #0x40
46ACEE:  BIC.W           R3, R2, #8
46ACF2:  IT NE
46ACF4:  ORRNE.W         R3, R2, #8
46ACF8:  MOVW            R2, #0xFFEF
46ACFC:  ANDS            R2, R3
46ACFE:  TST.W           R1, #0x80
46AD02:  IT NE
46AD04:  ORRNE.W         R2, R3, #0x10
46AD08:  MOVW            R3, #0xFFBF
46AD0C:  ANDS            R3, R2
46AD0E:  TST.W           R1, #0x200000
46AD12:  IT EQ
46AD14:  ORREQ.W         R3, R2, #0x40 ; '@'
46AD18:  MOVW            R2, #0xFEFF
46AD1C:  ANDS            R2, R3
46AD1E:  TST.W           R1, #1
46AD22:  STRH            R3, [R0,#0x28]
46AD24:  IT NE
46AD26:  ORRNE.W         R2, R3, #0x100
46AD2A:  BIC.W           R3, R2, #0x7800
46AD2E:  TST.W           R1, #0x200
46AD32:  IT NE
46AD34:  ORRNE.W         R2, R3, #0x2000
46AD38:  TST.W           R1, #0x400
46AD3C:  IT NE
46AD3E:  ORRNE.W         R2, R3, #0x2800
46AD42:  TST.W           R1, #0x800
46AD46:  BIC.W           R3, R2, #0x7800
46AD4A:  IT NE
46AD4C:  ORRNE.W         R2, R3, #0x3800
46AD50:  TST.W           R1, #0x2000
46AD54:  IT NE
46AD56:  ORRNE.W         R2, R3, #0x800
46AD5A:  TST.W           R1, #0x4000
46AD5E:  MOV             R3, R2
46AD60:  BFI.W           R3, R12, #0xB, #4
46AD64:  IT EQ
46AD66:  MOVEQ           R3, R2
46AD68:  MOVW            R2, #0xFBFF
46AD6C:  STRH            R3, [R0,#0x28]
46AD6E:  AND.W           R12, R3, R2
46AD72:  ORR.W           R3, R3, #0x400
46AD76:  TST.W           R1, #0x8000
46AD7A:  IT NE
46AD7C:  UXTHNE.W        R12, R3
46AD80:  TST.W           R1, #0x100000
46AD84:  BIC.W           LR, R12, #0x7800
46AD88:  MOV             R2, R12
46AD8A:  IT NE
46AD8C:  ORRNE.W         R2, LR, #0x3000
46AD90:  ANDS.W          R3, R1, #0x400000
46AD94:  MOV             R3, R2
46AD96:  ITT NE
46AD98:  ORRNE.W         R3, LR, #0x5800
46AD9C:  MOVNE           R2, R12
46AD9E:  TST.W           R1, #0x80000
46ADA2:  BIC.W           R2, R2, #0x7800
46ADA6:  IT NE
46ADA8:  ORRNE.W         R3, R2, #0x5000
46ADAC:  STRH            R3, [R0,#0x28]
46ADAE:  POP             {R7,PC}
