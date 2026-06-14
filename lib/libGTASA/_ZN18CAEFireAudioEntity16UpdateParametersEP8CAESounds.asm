; =========================================================
; Game Engine Function: _ZN18CAEFireAudioEntity16UpdateParametersEP8CAESounds
; Address            : 0x395E54 - 0x395F48
; =========================================================

395E54:  PUSH            {R4,R5,R7,LR}
395E56:  ADD             R7, SP, #8
395E58:  SUB             SP, SP, #0x40
395E5A:  MOV             R4, R1
395E5C:  MOV             R5, R0
395E5E:  CMP             R2, #1
395E60:  BLT             loc_395EAE
395E62:  LDR.W           R0, [R5,#0x84]
395E66:  CBZ             R0, loc_395E78
395E68:  MOV             R1, SP
395E6A:  BLX             j__ZN10FxSystem_c18GetCompositeMatrixEP11RwMatrixTag; FxSystem_c::GetCompositeMatrix(RwMatrixTag *)
395E6E:  ADD             R3, SP, #0x48+var_18
395E70:  MOV             R0, R4
395E72:  LDM             R3, {R1-R3}
395E74:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
395E78:  LDR             R0, [R4,#0xC]
395E7A:  SUBS            R0, #1; switch 4 cases
395E7C:  CMP             R0, #3
395E7E:  BHI             def_395E80; jumptable 00395E80 default case
395E80:  TBB.W           [PC,R0]; switch jump
395E84:  DCB 2; jump table for switch statement
395E85:  DCB 0x22
395E86:  DCB 0x2E
395E87:  DCB 0x46
395E88:  VLDR            S0, [R4,#0x10]; jumptable 00395E80 case 1
395E8C:  VLDR            S2, [R4,#0x14]
395E90:  VCMPE.F32       S2, S0
395E94:  VMRS            APSR_nzcv, FPSCR
395E98:  BGE             loc_395F2E
395E9A:  VMOV.F32        S4, #2.0
395E9E:  VADD.F32        S2, S2, S4
395EA2:  VMIN.F32        D0, D1, D0
395EA6:  VSTR            S0, [R4,#0x14]
395EAA:  ADD             SP, SP, #0x40 ; '@'
395EAC:  POP             {R4,R5,R7,PC}
395EAE:  ADDS            R0, R2, #1
395EB0:  BNE             def_395E80; jumptable 00395E80 default case
395EB2:  LDR             R0, [R5,#0x7C]
395EB4:  CMP             R0, R4
395EB6:  BEQ             loc_395F40
395EB8:  LDR.W           R0, [R5,#0x80]
395EBC:  CMP             R0, R4
395EBE:  ITT EQ
395EC0:  MOVEQ           R0, #0
395EC2:  STREQ.W         R0, [R5,#0x80]
395EC6:  B               def_395E80; jumptable 00395E80 default case
395EC8:  VMOV.F32        S2, #-30.0; jumptable 00395E80 case 2
395ECC:  VLDR            S0, [R4,#0x14]
395ED0:  VCMPE.F32       S0, S2
395ED4:  VMRS            APSR_nzcv, FPSCR
395ED8:  BLE             loc_395F36
395EDA:  VMOV.F32        S2, #-0.75
395EDE:  B               loc_395F04
395EE0:  LDR.W           R0, [R5,#0x84]; jumptable 00395E80 case 3
395EE4:  CBZ             R0, def_395E80; jumptable 00395E80 default case
395EE6:  BLX             j__ZN10FxSystem_c13GetPlayStatusEv; FxSystem_c::GetPlayStatus(void)
395EEA:  CMP             R0, #1
395EEC:  BNE             def_395E80; jumptable 00395E80 default case
395EEE:  VLDR            S2, =-100.0
395EF2:  VLDR            S0, [R4,#0x14]
395EF6:  VCMPE.F32       S0, S2
395EFA:  VMRS            APSR_nzcv, FPSCR
395EFE:  BLE             def_395E80; jumptable 00395E80 default case
395F00:  VMOV.F32        S2, #-1.0
395F04:  VADD.F32        S0, S0, S2
395F08:  VSTR            S0, [R4,#0x14]
395F0C:  ADD             SP, SP, #0x40 ; '@'
395F0E:  POP             {R4,R5,R7,PC}
395F10:  LDR.W           R0, [R5,#0x84]; jumptable 00395E80 case 4
395F14:  CBZ             R0, def_395E80; jumptable 00395E80 default case
395F16:  BLX             j__ZN10FxSystem_c13GetPlayStatusEv; FxSystem_c::GetPlayStatus(void)
395F1A:  CMP             R0, #1
395F1C:  BNE             def_395E80; jumptable 00395E80 default case
395F1E:  MOVS            R0, #0xC2C80000
395F24:  STR             R0, [R4,#0x14]
395F26:  ADD             SP, SP, #0x40 ; '@'
395F28:  POP             {R4,R5,R7,PC}
395F2A:  ADD             SP, SP, #0x40 ; '@'; jumptable 00395E80 default case
395F2C:  POP             {R4,R5,R7,PC}
395F2E:  MOVS            R0, #2
395F30:  STR             R0, [R4,#0xC]
395F32:  ADD             SP, SP, #0x40 ; '@'
395F34:  POP             {R4,R5,R7,PC}
395F36:  MOV             R0, R4; this
395F38:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
395F3C:  ADD             SP, SP, #0x40 ; '@'
395F3E:  POP             {R4,R5,R7,PC}
395F40:  MOVS            R0, #0
395F42:  STR             R0, [R5,#0x7C]
395F44:  ADD             SP, SP, #0x40 ; '@'
395F46:  POP             {R4,R5,R7,PC}
