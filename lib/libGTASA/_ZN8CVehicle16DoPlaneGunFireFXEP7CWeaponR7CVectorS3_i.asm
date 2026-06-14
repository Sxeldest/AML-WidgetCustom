; =========================================================
; Game Engine Function: _ZN8CVehicle16DoPlaneGunFireFXEP7CWeaponR7CVectorS3_i
; Address            : 0x58FB68 - 0x58FE96
; =========================================================

58FB68:  PUSH            {R4-R7,LR}
58FB6A:  ADD             R7, SP, #0xC
58FB6C:  PUSH.W          {R8-R10}
58FB70:  SUB             SP, SP, #0x40
58FB72:  MOV             R5, R0
58FB74:  MOVS            R0, #0
58FB76:  STRD.W          R0, R0, [SP,#0x58+var_24]
58FB7A:  MOV             R4, R3
58FB7C:  STR             R0, [SP,#0x58+var_1C]
58FB7E:  MOV             R10, R2
58FB80:  LDR.W           R0, [R5,#0x5A4]
58FB84:  MOV             R8, R1
58FB86:  LDR.W           R9, [R7,#arg_0]
58FB8A:  CMP             R0, #3
58FB8C:  BEQ             loc_58FBE2
58FB8E:  CMP             R0, #4
58FB90:  BNE.W           loc_58FE8E
58FB94:  LDR.W           R2, [R5,#0x9E8]
58FB98:  CMP             R2, #0
58FB9A:  BNE.W           loc_58FD0E
58FB9E:  LDRSH.W         R1, [R5,#0x26]
58FBA2:  MOVS            R0, #4
58FBA4:  CMP.W           R1, #0x208
58FBA8:  UXTH            R6, R1
58FBAA:  BGE.W           loc_58FC50
58FBAE:  SUB.W           R2, R1, #0x1D0; switch 34 cases
58FBB2:  CMP             R2, #0x21 ; '!'
58FBB4:  BHI.W           def_58FBB8; jumptable 0058FBB8 default case
58FBB8:  TBB.W           [PC,R2]; switch jump
58FBBC:  DCB 0x67; jump table for switch statement
58FBBD:  DCB 0x66
58FBBE:  DCB 0x66
58FBBF:  DCB 0x66
58FBC0:  DCB 0x66
58FBC1:  DCB 0x66
58FBC2:  DCB 0x66
58FBC3:  DCB 0x66
58FBC4:  DCB 0x66
58FBC5:  DCB 0x66
58FBC6:  DCB 0x66
58FBC7:  DCB 0x66
58FBC8:  DCB 0x11
58FBC9:  DCB 0x66
58FBCA:  DCB 0x66
58FBCB:  DCB 0x66
58FBCC:  DCB 0x66
58FBCD:  DCB 0x66
58FBCE:  DCB 0x66
58FBCF:  DCB 0x66
58FBD0:  DCB 0x66
58FBD1:  DCB 0x66
58FBD2:  DCB 0x66
58FBD3:  DCB 0x67
58FBD4:  DCB 0x66
58FBD5:  DCB 0x66
58FBD6:  DCB 0x66
58FBD7:  DCB 0x66
58FBD8:  DCB 0x66
58FBD9:  DCB 0x66
58FBDA:  DCB 0x66
58FBDB:  DCB 0x66
58FBDC:  DCB 0x66
58FBDD:  DCB 0x67
58FBDE:  MOVS            R0, #0x18; jumptable 0058FBB8 case 476
58FBE0:  B               loc_58FC8A; jumptable 0058FBB8 cases 464,487,497
58FBE2:  LDR.W           R2, [R5,#0xA20]
58FBE6:  CMP             R2, #0
58FBE8:  BNE.W           loc_58FDE8
58FBEC:  LDRSH.W         R1, [R5,#0x26]
58FBF0:  MOVS            R0, #4
58FBF2:  CMP.W           R1, #0x208
58FBF6:  UXTH            R6, R1
58FBF8:  BGE             loc_58FC62
58FBFA:  SUB.W           R2, R1, #0x1D0; switch 34 cases
58FBFE:  CMP             R2, #0x21 ; '!'
58FC00:  BHI.W           def_58FC04; jumptable 0058FC04 default case
58FC04:  TBH.W           [PC,R2,LSL#1]; switch jump
58FC08:  DCW 0xB0; jump table for switch statement
58FC0A:  DCW 0xAF
58FC0C:  DCW 0xAF
58FC0E:  DCW 0xAF
58FC10:  DCW 0xAF
58FC12:  DCW 0xAF
58FC14:  DCW 0xAF
58FC16:  DCW 0xAF
58FC18:  DCW 0xAF
58FC1A:  DCW 0xAF
58FC1C:  DCW 0xAF
58FC1E:  DCW 0xAF
58FC20:  DCW 0x22
58FC22:  DCW 0xAF
58FC24:  DCW 0xAF
58FC26:  DCW 0xAF
58FC28:  DCW 0xAF
58FC2A:  DCW 0xAF
58FC2C:  DCW 0xAF
58FC2E:  DCW 0xAF
58FC30:  DCW 0xAF
58FC32:  DCW 0xAF
58FC34:  DCW 0xAF
58FC36:  DCW 0xB0
58FC38:  DCW 0xAF
58FC3A:  DCW 0xAF
58FC3C:  DCW 0xAF
58FC3E:  DCW 0xAF
58FC40:  DCW 0xAF
58FC42:  DCW 0xAF
58FC44:  DCW 0xAF
58FC46:  DCW 0xAF
58FC48:  DCW 0xAF
58FC4A:  DCW 0xB0
58FC4C:  MOVS            R0, #0x18; jumptable 0058FC04 case 476
58FC4E:  B               loc_58FD68; jumptable 0058FC04 cases 464,487,497
58FC50:  BEQ             loc_58FC5E
58FC52:  CMP.W           R1, #0x224
58FC56:  BEQ             loc_58FC8A; jumptable 0058FBB8 cases 464,487,497
58FC58:  CMP.W           R1, #0x240
58FC5C:  BNE             loc_58FC88; jumptable 0058FBB8 cases 465-475,477-486,488-496
58FC5E:  MOVS            R0, #8
58FC60:  B               loc_58FC8A; jumptable 0058FBB8 cases 464,487,497
58FC62:  BEQ             loc_58FC74
58FC64:  CMP.W           R1, #0x224
58FC68:  BEQ.W           loc_58FD68; jumptable 0058FC04 cases 464,487,497
58FC6C:  CMP.W           R1, #0x240
58FC70:  BNE.W           loc_58FD66; jumptable 0058FC04 cases 465-475,477-486,488-496
58FC74:  MOVS            R0, #8
58FC76:  B               loc_58FD68; jumptable 0058FC04 cases 464,487,497
58FC78:  MOVW            R2, #0x1A9; jumptable 0058FBB8 default case
58FC7C:  CMP             R1, R2
58FC7E:  ITT NE
58FC80:  MOVWNE          R2, #0x1BF
58FC84:  CMPNE           R1, R2
58FC86:  BEQ             loc_58FC8A; jumptable 0058FBB8 cases 464,487,497
58FC88:  MOVS            R0, #0; jumptable 0058FBB8 cases 465-475,477-486,488-496
58FC8A:  BLX.W           _Znaj; jumptable 0058FBB8 cases 464,487,497
58FC8E:  STR.W           R0, [R5,#0x9E8]
58FC92:  MOVS            R0, #0
58FC94:  MOVW            LR, #0x1A9
58FC98:  MOVW            R12, #0x1BF
58FC9C:  MOVS            R3, #0
58FC9E:  B               loc_58FCA8
58FCA0:  STR.W           R0, [R2,R3,LSL#2]
58FCA4:  ADDS            R3, #1
58FCA6:  LDRH            R6, [R5,#0x26]
58FCA8:  SXTH            R2, R6
58FCAA:  MOVS            R6, #1
58FCAC:  CMP.W           R2, #0x208
58FCB0:  BGE             loc_58FCE4
58FCB2:  SUB.W           R1, R2, #0x1D0; switch 34 cases
58FCB6:  CMP             R1, #0x21 ; '!'
58FCB8:  BHI             def_58FCBA; jumptable 0058FCBA default case
58FCBA:  TBB.W           [PC,R1]; switch jump
58FCBE:  DCB 0x21; jump table for switch statement
58FCBF:  DCB 0x20
58FCC0:  DCB 0x20
58FCC1:  DCB 0x20
58FCC2:  DCB 0x20
58FCC3:  DCB 0x20
58FCC4:  DCB 0x20
58FCC5:  DCB 0x20
58FCC6:  DCB 0x20
58FCC7:  DCB 0x20
58FCC8:  DCB 0x20
58FCC9:  DCB 0x20
58FCCA:  DCB 0x11
58FCCB:  DCB 0x20
58FCCC:  DCB 0x20
58FCCD:  DCB 0x20
58FCCE:  DCB 0x20
58FCCF:  DCB 0x20
58FCD0:  DCB 0x20
58FCD1:  DCB 0x20
58FCD2:  DCB 0x20
58FCD3:  DCB 0x20
58FCD4:  DCB 0x20
58FCD5:  DCB 0x21
58FCD6:  DCB 0x20
58FCD7:  DCB 0x20
58FCD8:  DCB 0x20
58FCD9:  DCB 0x20
58FCDA:  DCB 0x20
58FCDB:  DCB 0x20
58FCDC:  DCB 0x20
58FCDD:  DCB 0x20
58FCDE:  DCB 0x20
58FCDF:  DCB 0x21
58FCE0:  MOVS            R6, #6; jumptable 0058FCBA case 476
58FCE2:  B               loc_58FD00; jumptable 0058FCBA cases 464,487,497
58FCE4:  BEQ             loc_58FCF2
58FCE6:  CMP.W           R2, #0x224
58FCEA:  BEQ             loc_58FD00; jumptable 0058FCBA cases 464,487,497
58FCEC:  CMP.W           R2, #0x240
58FCF0:  BNE             loc_58FCFE; jumptable 0058FCBA cases 465-475,477-486,488-496
58FCF2:  MOVS            R6, #2
58FCF4:  B               loc_58FD00; jumptable 0058FCBA cases 464,487,497
58FCF6:  CMP             R2, LR; jumptable 0058FCBA default case
58FCF8:  IT NE
58FCFA:  CMPNE           R2, R12
58FCFC:  BEQ             loc_58FD00; jumptable 0058FCBA cases 464,487,497
58FCFE:  MOVS            R6, #0; jumptable 0058FCBA cases 465-475,477-486,488-496
58FD00:  LDR.W           R2, [R5,#0x9E8]; jumptable 0058FCBA cases 464,487,497
58FD04:  CMP             R3, R6
58FD06:  BLT             loc_58FCA0
58FD08:  CMP             R2, #0
58FD0A:  BEQ.W           loc_58FE32
58FD0E:  LDR.W           R0, [R2,R9,LSL#2]
58FD12:  CBNZ            R0, loc_58FD4A
58FD14:  LDR             R6, =(g_fxMan_ptr - 0x58FD20)
58FD16:  MOVS            R0, #0
58FD18:  LDR             R1, [R5,#0x18]
58FD1A:  ADD             R2, SP, #0x58+var_24; int
58FD1C:  ADD             R6, PC; g_fxMan_ptr
58FD1E:  CMP             R1, #0
58FD20:  ITTE NE
58FD22:  LDRNE           R1, [R1,#4]
58FD24:  ADDNE.W         R3, R1, #0x10
58FD28:  MOVEQ           R3, #0; int
58FD2A:  STR             R0, [SP,#0x58+var_58]; int
58FD2C:  LDR             R0, [R6]; g_fxMan ; int
58FD2E:  ADR             R1, aGunflash_2; "gunflash"
58FD30:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
58FD34:  LDR.W           R1, [R5,#0x9E8]
58FD38:  STR.W           R0, [R1,R9,LSL#2]
58FD3C:  LDR.W           R0, [R5,#0x9E8]
58FD40:  LDR.W           R0, [R0,R9,LSL#2]
58FD44:  CMP             R0, #0
58FD46:  BEQ.W           loc_58FE32
58FD4A:  MOV             R1, R10
58FD4C:  BLX             j__ZN10FxSystem_c12SetOffsetPosEP5RwV3d; FxSystem_c::SetOffsetPos(RwV3d *)
58FD50:  LDR.W           R0, [R5,#0x9E8]
58FD54:  B               loc_58FE2A
58FD56:  MOVW            R2, #0x1A9; jumptable 0058FC04 default case
58FD5A:  CMP             R1, R2
58FD5C:  ITT NE
58FD5E:  MOVWNE          R2, #0x1BF
58FD62:  CMPNE           R1, R2
58FD64:  BEQ             loc_58FD68; jumptable 0058FC04 cases 464,487,497
58FD66:  MOVS            R0, #0; jumptable 0058FC04 cases 465-475,477-486,488-496
58FD68:  BLX.W           _Znaj; jumptable 0058FC04 cases 464,487,497
58FD6C:  STR.W           R0, [R5,#0xA20]
58FD70:  MOVS            R0, #0
58FD72:  MOVW            LR, #0x1A9
58FD76:  MOVW            R12, #0x1BF
58FD7A:  MOVS            R3, #0
58FD7C:  B               loc_58FD86
58FD7E:  STR.W           R0, [R2,R3,LSL#2]
58FD82:  ADDS            R3, #1
58FD84:  LDRH            R6, [R5,#0x26]
58FD86:  SXTH            R2, R6
58FD88:  MOVS            R6, #1
58FD8A:  CMP.W           R2, #0x208
58FD8E:  BGE             loc_58FDC2
58FD90:  SUB.W           R1, R2, #0x1D0; switch 34 cases
58FD94:  CMP             R1, #0x21 ; '!'
58FD96:  BHI             def_58FD98; jumptable 0058FD98 default case
58FD98:  TBB.W           [PC,R1]; switch jump
58FD9C:  DCB 0x21; jump table for switch statement
58FD9D:  DCB 0x20
58FD9E:  DCB 0x20
58FD9F:  DCB 0x20
58FDA0:  DCB 0x20
58FDA1:  DCB 0x20
58FDA2:  DCB 0x20
58FDA3:  DCB 0x20
58FDA4:  DCB 0x20
58FDA5:  DCB 0x20
58FDA6:  DCB 0x20
58FDA7:  DCB 0x20
58FDA8:  DCB 0x11
58FDA9:  DCB 0x20
58FDAA:  DCB 0x20
58FDAB:  DCB 0x20
58FDAC:  DCB 0x20
58FDAD:  DCB 0x20
58FDAE:  DCB 0x20
58FDAF:  DCB 0x20
58FDB0:  DCB 0x20
58FDB1:  DCB 0x20
58FDB2:  DCB 0x20
58FDB3:  DCB 0x21
58FDB4:  DCB 0x20
58FDB5:  DCB 0x20
58FDB6:  DCB 0x20
58FDB7:  DCB 0x20
58FDB8:  DCB 0x20
58FDB9:  DCB 0x20
58FDBA:  DCB 0x20
58FDBB:  DCB 0x20
58FDBC:  DCB 0x20
58FDBD:  DCB 0x21
58FDBE:  MOVS            R6, #6; jumptable 0058FD98 case 476
58FDC0:  B               loc_58FDDE; jumptable 0058FD98 cases 464,487,497
58FDC2:  BEQ             loc_58FDD0
58FDC4:  CMP.W           R2, #0x224
58FDC8:  BEQ             loc_58FDDE; jumptable 0058FD98 cases 464,487,497
58FDCA:  CMP.W           R2, #0x240
58FDCE:  BNE             loc_58FDDC; jumptable 0058FD98 cases 465-475,477-486,488-496
58FDD0:  MOVS            R6, #2
58FDD2:  B               loc_58FDDE; jumptable 0058FD98 cases 464,487,497
58FDD4:  CMP             R2, LR; jumptable 0058FD98 default case
58FDD6:  IT NE
58FDD8:  CMPNE           R2, R12
58FDDA:  BEQ             loc_58FDDE; jumptable 0058FD98 cases 464,487,497
58FDDC:  MOVS            R6, #0; jumptable 0058FD98 cases 465-475,477-486,488-496
58FDDE:  LDR.W           R2, [R5,#0xA20]; jumptable 0058FD98 cases 464,487,497
58FDE2:  CMP             R3, R6
58FDE4:  BLT             loc_58FD7E
58FDE6:  CBZ             R2, loc_58FE32
58FDE8:  LDR.W           R0, [R2,R9,LSL#2]
58FDEC:  CBNZ            R0, loc_58FE20
58FDEE:  LDR             R6, =(g_fxMan_ptr - 0x58FDFA)
58FDF0:  MOVS            R0, #0
58FDF2:  LDR             R1, [R5,#0x18]
58FDF4:  ADD             R2, SP, #0x58+var_24; int
58FDF6:  ADD             R6, PC; g_fxMan_ptr
58FDF8:  CMP             R1, #0
58FDFA:  ITTE NE
58FDFC:  LDRNE           R1, [R1,#4]
58FDFE:  ADDNE.W         R3, R1, #0x10
58FE02:  MOVEQ           R3, #0; int
58FE04:  STR             R0, [SP,#0x58+var_58]; int
58FE06:  LDR             R0, [R6]; g_fxMan ; int
58FE08:  ADR             R1, aGunflash_2; "gunflash"
58FE0A:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
58FE0E:  LDR.W           R1, [R5,#0xA20]
58FE12:  STR.W           R0, [R1,R9,LSL#2]
58FE16:  LDR.W           R0, [R5,#0xA20]
58FE1A:  LDR.W           R0, [R0,R9,LSL#2]
58FE1E:  CBZ             R0, loc_58FE32
58FE20:  MOV             R1, R10
58FE22:  BLX             j__ZN10FxSystem_c12SetOffsetPosEP5RwV3d; FxSystem_c::SetOffsetPos(RwV3d *)
58FE26:  LDR.W           R0, [R5,#0xA20]
58FE2A:  LDR.W           R0, [R0,R9,LSL#2]; this
58FE2E:  BLX.W           j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
58FE32:  LDR             R0, =(_ZN8CVehicle29s_bPlaneGunsEjectShellCasingsE_ptr - 0x58FE38)
58FE34:  ADD             R0, PC; _ZN8CVehicle29s_bPlaneGunsEjectShellCasingsE_ptr
58FE36:  LDR             R0, [R0]; CVehicle::s_bPlaneGunsEjectShellCasings ...
58FE38:  LDRB            R0, [R0]; CVehicle::s_bPlaneGunsEjectShellCasings
58FE3A:  CBZ             R0, loc_58FE5C
58FE3C:  MOVW            R0, #0xCCCD
58FE40:  ADD             R3, SP, #0x58+var_2C; int
58FE42:  MOVT            R0, #0x3DCC
58FE46:  MOV             R1, R5; this
58FE48:  STR             R0, [SP,#0x58+var_28]
58FE4A:  MOVS            R0, #0
58FE4C:  STR             R0, [SP,#0x58+var_2C]
58FE4E:  MOV.W           R0, #0x3F000000
58FE52:  STR             R0, [SP,#0x58+var_58]; float
58FE54:  MOV             R0, R8; int
58FE56:  MOV             R2, R4; int
58FE58:  BLX             j__ZN7CWeapon11AddGunshellEP7CEntityRK7CVectorRK9CVector2Df; CWeapon::AddGunshell(CEntity *,CVector const&,CVector2D const&,float)
58FE5C:  MOVW            R6, #0xCCCD
58FE60:  LDM.W           R4, {R1-R3}
58FE64:  MOVS            R4, #0
58FE66:  MOVS            R0, #0
58FE68:  MOVT            R6, #0x3ECC
58FE6C:  MOV.W           R5, #0x3F000000
58FE70:  MOVT            R4, #0x4040
58FE74:  ADD.W           R12, SP, #0x58+var_50
58FE78:  STRD.W          R0, R0, [SP,#0x58+var_38]
58FE7C:  STRD.W          R0, R0, [SP,#0x58+var_58]
58FE80:  STM.W           R12, {R0,R4-R6}
58FE84:  STRD.W          R0, R0, [SP,#0x58+var_40]
58FE88:  MOVS            R0, #0
58FE8A:  BLX             j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
58FE8E:  ADD             SP, SP, #0x40 ; '@'
58FE90:  POP.W           {R8-R10}
58FE94:  POP             {R4-R7,PC}
