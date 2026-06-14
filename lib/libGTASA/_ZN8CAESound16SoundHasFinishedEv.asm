; =========================================================
; Game Engine Function: _ZN8CAESound16SoundHasFinishedEv
; Address            : 0x3A7E2A - 0x3A7EAC
; =========================================================

3A7E2A:  PUSH            {R4-R7,LR}
3A7E2C:  ADD             R7, SP, #0xC
3A7E2E:  PUSH.W          {R11}
3A7E32:  MOV             R4, R0
3A7E34:  LDRH.W          R0, [R4,#0x56]
3A7E38:  TST.W           R0, #0x80
3A7E3C:  BEQ             loc_3A7E5A
3A7E3E:  LDR             R1, [R4,#8]
3A7E40:  CBZ             R1, loc_3A7E82
3A7E42:  LDR             R0, [R1,#0x14]
3A7E44:  ADD.W           R3, R0, #0x30 ; '0'
3A7E48:  CMP             R0, #0
3A7E4A:  IT EQ
3A7E4C:  ADDEQ           R3, R1, #4
3A7E4E:  MOV             R0, R4
3A7E50:  LDM             R3, {R1-R3}
3A7E52:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
3A7E56:  LDRH.W          R0, [R4,#0x56]
3A7E5A:  LSLS            R0, R0, #0x1D
3A7E5C:  BPL             loc_3A7E8C
3A7E5E:  LDR             R0, [R4,#4]
3A7E60:  CBZ             R0, loc_3A7E8C
3A7E62:  LDR             R1, [R0]
3A7E64:  MOV.W           R2, #0xFFFFFFFF
3A7E68:  LDR             R3, [R1]
3A7E6A:  MOV             R1, R4
3A7E6C:  BLX             R3
3A7E6E:  VLDR            S0, [R4,#0x20]
3A7E72:  VCMP.F32        S0, #0.0
3A7E76:  VMRS            APSR_nzcv, FPSCR
3A7E7A:  ITT EQ
3A7E7C:  LDREQ           R0, [R4,#0x1C]
3A7E7E:  STREQ           R0, [R4,#0x64]
3A7E80:  B               loc_3A7E8C
3A7E82:  MOVS            R1, #1
3A7E84:  STRH.W          R1, [R4,#0x68]
3A7E88:  LSLS            R0, R0, #0x1D
3A7E8A:  BMI             loc_3A7E5E
3A7E8C:  MOV             R5, R4
3A7E8E:  MOVS            R6, #0
3A7E90:  LDR.W           R0, [R5,#8]!; this
3A7E94:  CMP             R0, #0
3A7E96:  STRH.W          R6, [R5,#0x50]
3A7E9A:  BEQ             loc_3A7EA4
3A7E9C:  MOV             R1, R5; CEntity **
3A7E9E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3A7EA2:  STR             R6, [R5]
3A7EA4:  STR             R6, [R4,#0x5C]
3A7EA6:  POP.W           {R11}
3A7EAA:  POP             {R4-R7,PC}
