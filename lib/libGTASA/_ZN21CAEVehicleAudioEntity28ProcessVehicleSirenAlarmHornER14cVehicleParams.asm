; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity28ProcessVehicleSirenAlarmHornER14cVehicleParams
; Address            : 0x3AFC64 - 0x3AFDAC
; =========================================================

3AFC64:  PUSH            {R4-R7,LR}
3AFC66:  ADD             R7, SP, #0xC
3AFC68:  PUSH.W          {R8,R9,R11}
3AFC6C:  SUB             SP, SP, #8
3AFC6E:  MOV             R9, R0
3AFC70:  MOV             R8, R1
3AFC72:  LDRB.W          R1, [R9,#0xA8]
3AFC76:  CBZ             R1, loc_3AFCA2
3AFC78:  LDR.W           R0, [R8,#0x10]
3AFC7C:  LDRH.W          R2, [R0,#0x460]
3AFC80:  CMP             R2, #0
3AFC82:  ITT NE
3AFC84:  MOVWNE          R3, #0xFFFF
3AFC88:  CMPNE           R2, R3
3AFC8A:  BEQ             loc_3AFC98
3AFC8C:  LDRB.W          R3, [R0,#0x3A]
3AFC90:  AND.W           R3, R3, #0xF8
3AFC94:  CMP             R3, #0x28 ; '('
3AFC96:  BNE             loc_3AFD50
3AFC98:  CBZ             R1, loc_3AFCDC
3AFC9A:  MOVS            R6, #0
3AFC9C:  MOVS            R4, #0
3AFC9E:  MOVS            R5, #0
3AFCA0:  B               loc_3AFD80
3AFCA2:  LDRB.W          R0, [R9,#0xC8]
3AFCA6:  CMP             R0, #0
3AFCA8:  BEQ             loc_3AFC78
3AFCAA:  LDR.W           R0, [R8,#0x10]
3AFCAE:  LDRB.W          R2, [R0,#0x431]
3AFCB2:  LSLS            R2, R2, #0x18
3AFCB4:  BPL             loc_3AFC78
3AFCB6:  LDRB.W          R2, [R0,#0x3A]
3AFCBA:  AND.W           R2, R2, #0xF8
3AFCBE:  CMP             R2, #0x20 ; ' '
3AFCC0:  BEQ             loc_3AFC78
3AFCC2:  LDR.W           R1, [R0,#0x524]
3AFCC6:  CMP             R1, #0
3AFCC8:  ITTT NE
3AFCCA:  LDRHNE          R0, [R0,#0x26]
3AFCCC:  MOVWNE          R1, #0x1A7
3AFCD0:  CMPNE           R0, R1
3AFCD2:  BNE             loc_3AFDA4
3AFCD4:  MOVS            R4, #1
3AFCD6:  MOVS            R6, #0
3AFCD8:  MOVS            R5, #0
3AFCDA:  B               loc_3AFD80
3AFCDC:  CMP             R2, #0
3AFCDE:  ITT NE
3AFCE0:  MOVWNE          R1, #0xFFFF
3AFCE4:  CMPNE           R2, R1
3AFCE6:  BEQ             loc_3AFCF4
3AFCE8:  LDRB.W          R1, [R0,#0x3A]
3AFCEC:  AND.W           R1, R1, #0xF8
3AFCF0:  CMP             R1, #0x28 ; '('
3AFCF2:  BNE             loc_3AFC9A
3AFCF4:  LDR.W           R1, [R0,#0x524]
3AFCF8:  CMP             R1, #0
3AFCFA:  BEQ             loc_3AFC9A
3AFCFC:  LDRB.W          R2, [R0,#0x3A]; int
3AFD00:  CMP             R2, #8
3AFD02:  BCC             loc_3AFD4A
3AFD04:  CMP             R1, #0x2D ; '-'
3AFD06:  ITTTT CS
3AFD08:  MOVCS           R1, #0x2C ; ','
3AFD0A:  STRCS.W         R1, [R0,#0x524]
3AFD0E:  LDRCS.W         R0, [R8,#0x10]
3AFD12:  LDRCS.W         R1, [R0,#0x524]
3AFD16:  CMP             R1, #0x2C ; ','
3AFD18:  BNE             loc_3AFD32
3AFD1A:  MOVS            R0, #0; this
3AFD1C:  MOVS            R1, #7; int
3AFD1E:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3AFD22:  LDR.W           R1, [R8,#0x10]
3AFD26:  STRB.W          R0, [R1,#0x528]
3AFD2A:  LDR.W           R0, [R8,#0x10]
3AFD2E:  LDR.W           R1, [R0,#0x524]
3AFD32:  LDR             R2, =(unk_616954 - 0x3AFD42)
3AFD34:  MOVS            R3, #0x2C ; ','
3AFD36:  LDRB.W          R0, [R0,#0x528]
3AFD3A:  RSB.W           R1, R1, #0x2C ; ','
3AFD3E:  ADD             R2, PC; unk_616954
3AFD40:  SMLABB.W        R0, R0, R3, R2
3AFD44:  LDRB            R0, [R0,R1]
3AFD46:  CMP             R0, #0
3AFD48:  BEQ             loc_3AFC9A
3AFD4A:  MOVS            R5, #1
3AFD4C:  MOVS            R6, #0
3AFD4E:  B               loc_3AFD7E
3AFD50:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3AFD5E)
3AFD52:  MOVS            R5, #0
3AFD54:  LDR.W           R2, [R0,#0x524]
3AFD58:  MOVS            R6, #0
3AFD5A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3AFD5C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3AFD5E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3AFD60:  CMP             R1, R2
3AFD62:  ITTTT HI
3AFD64:  ADDWHI          R2, R1, #0x2EE
3AFD68:  STRHI.W         R2, [R0,#0x524]
3AFD6C:  LDRHI.W         R0, [R8,#0x10]
3AFD70:  LDRHI.W         R2, [R0,#0x524]
3AFD74:  ADDW            R0, R1, #0x177
3AFD78:  CMP             R2, R0
3AFD7A:  IT CC
3AFD7C:  MOVCC           R5, #1
3AFD7E:  MOVS            R4, #0
3AFD80:  MOV             R0, R9
3AFD82:  MOV             R1, R5
3AFD84:  MOV             R2, R4
3AFD86:  MOV             R3, R6
3AFD88:  STR.W           R8, [SP,#0x20+var_20]
3AFD8C:  BLX             j__ZN21CAEVehicleAudioEntity15PlayHornOrSirenEhhhR14cVehicleParams; CAEVehicleAudioEntity::PlayHornOrSiren(uchar,uchar,uchar,cVehicleParams &)
3AFD90:  STRB.W          R4, [R9,#0xBF]
3AFD94:  STRB.W          R5, [R9,#0xBE]
3AFD98:  STRB.W          R6, [R9,#0xC0]
3AFD9C:  ADD             SP, SP, #8
3AFD9E:  POP.W           {R8,R9,R11}
3AFDA2:  POP             {R4-R7,PC}
3AFDA4:  MOVS            R5, #0
3AFDA6:  MOVS            R6, #1
3AFDA8:  MOVS            R4, #1
3AFDAA:  B               loc_3AFD80
