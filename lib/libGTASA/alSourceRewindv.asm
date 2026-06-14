; =========================================================
; Game Engine Function: alSourceRewindv
; Address            : 0x25ACE0 - 0x25AE10
; =========================================================

25ACE0:  PUSH            {R4-R7,LR}
25ACE2:  ADD             R7, SP, #0xC
25ACE4:  PUSH.W          {R8-R11}
25ACE8:  SUB             SP, SP, #4
25ACEA:  MOV             R5, R1
25ACEC:  MOV             R6, R0
25ACEE:  BLX             j_GetContextRef
25ACF2:  MOV             R8, R0
25ACF4:  CMP.W           R8, #0
25ACF8:  BEQ             loc_25AD8A
25ACFA:  CMP             R6, #0
25ACFC:  BLT             loc_25AD92
25ACFE:  BEQ             loc_25AD1A
25AD00:  ADD.W           R9, R8, #8
25AD04:  MOVS            R4, #0
25AD06:  LDR.W           R1, [R5,R4,LSL#2]
25AD0A:  MOV             R0, R9
25AD0C:  BLX             j_LookupUIntMapKey
25AD10:  CMP             R0, #0
25AD12:  BEQ             loc_25ADC6
25AD14:  ADDS            R4, #1
25AD16:  CMP             R4, R6
25AD18:  BLT             loc_25AD06
25AD1A:  LDR.W           R0, [R8,#0x88]
25AD1E:  MOV             R1, #0x161AC
25AD26:  LDR             R1, [R0,R1]
25AD28:  LDR             R1, [R1,#0x2C]
25AD2A:  BLX             R1
25AD2C:  CMP             R6, #1
25AD2E:  BLT             loc_25AD76
25AD30:  MOVW            R9, #0
25AD34:  ADD.W           R10, R8, #8
25AD38:  MOVS            R4, #0
25AD3A:  MOVW            R11, #0x1011
25AD3E:  MOVT            R9, #0xBFF0
25AD42:  LDR             R1, [R5]
25AD44:  MOV             R0, R10
25AD46:  BLX             j_LookupUIntMapKey
25AD4A:  LDR.W           R1, [R0,#0x80]
25AD4E:  STR.W           R4, [R0,#0x84]
25AD52:  CMP             R1, R11
25AD54:  BEQ             loc_25AD6A
25AD56:  STR.W           R11, [R0,#0x80]
25AD5A:  STRD.W          R4, R4, [R0,#0x88]
25AD5E:  STR.W           R4, [R0,#0x98]
25AD62:  STRB.W          R4, [R0,#0xE0]
25AD66:  STR.W           R4, [R0,#0xE4]
25AD6A:  SUBS            R6, #1
25AD6C:  ADD.W           R5, R5, #4
25AD70:  STRD.W          R4, R9, [R0,#0x70]
25AD74:  BNE             loc_25AD42
25AD76:  LDR.W           R0, [R8,#0x88]
25AD7A:  MOV             R1, #0x161AC
25AD82:  LDR             R1, [R0,R1]
25AD84:  LDR             R1, [R1,#0x30]
25AD86:  BLX             R1
25AD88:  B               loc_25AE00
25AD8A:  ADD             SP, SP, #4
25AD8C:  POP.W           {R8-R11}
25AD90:  POP             {R4-R7,PC}
25AD92:  LDR             R0, =(TrapALError_ptr - 0x25AD98)
25AD94:  ADD             R0, PC; TrapALError_ptr
25AD96:  LDR             R0, [R0]; TrapALError
25AD98:  LDRB            R0, [R0]
25AD9A:  CMP             R0, #0
25AD9C:  ITT NE
25AD9E:  MOVNE           R0, #5; sig
25ADA0:  BLXNE           raise
25ADA4:  LDREX.W         R0, [R8,#0x50]
25ADA8:  CBNZ            R0, loc_25ADF8
25ADAA:  ADD.W           R0, R8, #0x50 ; 'P'
25ADAE:  MOVW            R1, #0xA003
25ADB2:  DMB.W           ISH
25ADB6:  STREX.W         R2, R1, [R0]
25ADBA:  CBZ             R2, loc_25ADFC
25ADBC:  LDREX.W         R2, [R0]
25ADC0:  CMP             R2, #0
25ADC2:  BEQ             loc_25ADB6
25ADC4:  B               loc_25ADF8
25ADC6:  LDR             R0, =(TrapALError_ptr - 0x25ADCC)
25ADC8:  ADD             R0, PC; TrapALError_ptr
25ADCA:  LDR             R0, [R0]; TrapALError
25ADCC:  LDRB            R0, [R0]
25ADCE:  CMP             R0, #0
25ADD0:  ITT NE
25ADD2:  MOVNE           R0, #5; sig
25ADD4:  BLXNE           raise
25ADD8:  LDREX.W         R0, [R8,#0x50]
25ADDC:  CBNZ            R0, loc_25ADF8
25ADDE:  ADD.W           R0, R8, #0x50 ; 'P'
25ADE2:  MOVW            R1, #0xA001
25ADE6:  DMB.W           ISH
25ADEA:  STREX.W         R2, R1, [R0]
25ADEE:  CBZ             R2, loc_25ADFC
25ADF0:  LDREX.W         R2, [R0]
25ADF4:  CMP             R2, #0
25ADF6:  BEQ             loc_25ADEA
25ADF8:  CLREX.W
25ADFC:  DMB.W           ISH
25AE00:  MOV             R0, R8
25AE02:  ADD             SP, SP, #4
25AE04:  POP.W           {R8-R11}
25AE08:  POP.W           {R4-R7,LR}
25AE0C:  B.W             ALCcontext_DecRef
