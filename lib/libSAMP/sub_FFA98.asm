; =========================================================
; Game Engine Function: sub_FFA98
; Address            : 0xFFA98 - 0x10051C
; =========================================================

FFA98:  PUSH            {R4-R7,LR}
FFA9A:  ADD             R7, SP, #0xC
FFA9C:  PUSH.W          {R8-R11}
FFAA0:  SUB             SP, SP, #4
FFAA2:  LDR             R0, =(off_23494C - 0xFFAB0)
FFAA4:  MOV             R3, #0x66E7C8
FFAAC:  ADD             R0, PC; off_23494C
FFAAE:  LDR             R6, [R0]; dword_23DF24
FFAB0:  LDR             R0, [R6]
FFAB2:  LDR             R1, =(sub_FD228+1 - 0xFFABC)
FFAB4:  LDR             R2, =(off_247500 - 0xFFAC0)
FFAB6:  ADD             R0, R3
FFAB8:  ADD             R1, PC; sub_FD228
FFABA:  ADDS            R0, #0x94
FFABC:  ADD             R2, PC; off_247500
FFABE:  BL              sub_164196
FFAC2:  LDR             R0, [R6]
FFAC4:  MOVW            R3, #0x1BE0
FFAC8:  LDR             R1, =(sub_FFA68+1 - 0xFFAD6)
FFACA:  MOVT            R3, #0x67 ; 'g'
FFACE:  LDR             R2, =(off_25B1FC - 0xFFADC)
FFAD0:  ADD             R0, R3
FFAD2:  ADD             R1, PC; sub_FFA68
FFAD4:  ADD.W           R0, R0, #0x158
FFAD8:  ADD             R2, PC; off_25B1FC
FFADA:  BL              sub_164196
FFADE:  LDR             R0, [R6]
FFAE0:  MOVW            R3, #0x56C
FFAE4:  LDR             R1, =(loc_FFA54+1 - 0xFFAF2)
FFAE6:  MOVT            R3, #0x67 ; 'g'
FFAEA:  LDR             R2, =(off_25B1F8 - 0xFFAF6)
FFAEC:  ADD             R0, R3
FFAEE:  ADD             R1, PC; loc_FFA54
FFAF0:  ADDS            R0, #0xEC
FFAF2:  ADD             R2, PC; off_25B1F8
FFAF4:  BL              sub_164196
FFAF8:  MOVW            R1, #0xDB68
FFAFC:  LDR             R0, [R6]
FFAFE:  MOVT            R1, #0x66 ; 'f'
FFB02:  ADD.W           R9, R1, #0x5D0
FFB06:  LDR             R1, =(sub_FD708+1 - 0xFFB10)
FFB08:  ADD             R0, R9
FFB0A:  MOVS            R2, #0
FFB0C:  ADD             R1, PC; sub_FD708
FFB0E:  MOV             R11, R1
FFB10:  BL              sub_164222
FFB14:  LDR             R0, [R6]
FFB16:  MOVW            R8, #0x589C
FFB1A:  LDR             R1, =(sub_FBA74+1 - 0xFFB28)
FFB1C:  MOVT            R8, #0x67 ; 'g'
FFB20:  LDR             R2, =(off_247400 - 0xFFB2A)
FFB22:  ADD             R0, R8
FFB24:  ADD             R1, PC; sub_FBA74
FFB26:  ADD             R2, PC; off_247400
FFB28:  BL              sub_164196
FFB2C:  LDR             R0, [R6]
FFB2E:  LDR             R1, =(sub_FD040+1 - 0xFFB3C)
FFB30:  LDR             R2, =(off_2474FC - 0xFFB3E)
FFB32:  ADD             R0, R8
FFB34:  ADD.W           R0, R0, #0x548
FFB38:  ADD             R1, PC; sub_FD040
FFB3A:  ADD             R2, PC; off_2474FC
FFB3C:  BL              sub_164196
FFB40:  MOVW            R1, #0xECC
FFB44:  LDR             R0, [R6]
FFB46:  MOVT            R1, #0x67 ; 'g'
FFB4A:  ADD             R0, R1
FFB4C:  LDR             R1, =(sub_FF15C+1 - 0xFFB58)
FFB4E:  LDR             R2, =(off_25B150 - 0xFFB5A)
FFB50:  ADD.W           R0, R0, #0x1F8
FFB54:  ADD             R1, PC; sub_FF15C
FFB56:  ADD             R2, PC; off_25B150
FFB58:  BL              sub_164196
FFB5C:  MOVW            R1, #0xA98
FFB60:  LDR             R0, [R6]
FFB62:  MOVT            R1, #0x67 ; 'g'
FFB66:  ADD             R0, R1
FFB68:  LDR             R1, =(sub_FBAD4+1 - 0xFFB74)
FFB6A:  LDR             R2, =(unk_247404 - 0xFFB76)
FFB6C:  ADD.W           R0, R0, #0x324
FFB70:  ADD             R1, PC; sub_FBAD4
FFB72:  ADD             R2, PC; unk_247404
FFB74:  BL              sub_164196
FFB78:  MOVW            R1, #0x196C
FFB7C:  LDR             R0, [R6]
FFB7E:  MOVT            R1, #0x67 ; 'g'
FFB82:  ADD             R0, R1
FFB84:  MOV             R10, R1
FFB86:  LDR             R1, =(sub_FC3E8+1 - 0xFFB8E)
FFB88:  LDR             R2, =(unk_2474A8 - 0xFFB90)
FFB8A:  ADD             R1, PC; sub_FC3E8
FFB8C:  ADD             R2, PC; unk_2474A8
FFB8E:  BL              sub_164196
FFB92:  LDR             R0, [R6]
FFB94:  LDR             R1, =(sub_FC4D0+1 - 0xFFBA2)
FFB96:  LDR             R2, =(off_2474AC - 0xFFBA4)
FFB98:  ADD             R0, R8
FFB9A:  ADD.W           R0, R0, #0x5D0
FFB9E:  ADD             R1, PC; sub_FC4D0
FFBA0:  ADD             R2, PC; off_2474AC
FFBA2:  BL              sub_164196
FFBA6:  LDR             R0, [R6]
FFBA8:  MOVS            R2, #0
FFBAA:  LDR             R1, =(sub_FC504+1 - 0xFFBB6)
FFBAC:  ADD             R0, R8
FFBAE:  ADD.W           R0, R0, #0x188
FFBB2:  ADD             R1, PC; sub_FC504
FFBB4:  BL              sub_164196
FFBB8:  LDR             R0, [R6]
FFBBA:  MOVW            R1, #0x12F8
FFBBE:  LDR             R5, =(sub_FC5B4+1 - 0xFFBCC)
FFBC0:  MOVT            R1, #0x67 ; 'g'
FFBC4:  LDR             R2, =(off_2474B8 - 0xFFBD2)
FFBC6:  ADD             R0, R1
FFBC8:  ADD             R5, PC; sub_FC5B4
FFBCA:  ADD.W           R0, R0, #0x310
FFBCE:  ADD             R2, PC; off_2474B8
FFBD0:  MOV             R1, R5
FFBD2:  BL              sub_164196
FFBD6:  LDR             R0, [R6]
FFBD8:  MOV             R4, #0x667C08
FFBE0:  MOV             R1, R5
FFBE2:  ADD             R0, R4
FFBE4:  MOVS            R2, #0
FFBE6:  ADD.W           R0, R0, #0x2EC
FFBEA:  BL              sub_164222
FFBEE:  LDR             R0, [R6]
FFBF0:  MOV             R1, R5
FFBF2:  MOVS            R2, #0
FFBF4:  ADD             R0, R4
FFBF6:  ADD.W           R0, R0, #0x354
FFBFA:  BL              sub_164222
FFBFE:  LDR             R0, [R6]
FFC00:  MOV             R1, #0x66847C
FFC08:  MOVS            R2, #0
FFC0A:  ADD             R0, R1
FFC0C:  MOV             R1, R5
FFC0E:  ADDS            R0, #0x28 ; '('
FFC10:  BL              sub_164222
FFC14:  MOVW            R1, #0xFE58
FFC18:  LDR             R0, [R6]
FFC1A:  MOVT            R1, #0x66 ; 'f'
FFC1E:  ADD             R0, R1
FFC20:  LDR             R1, =(sub_FCAC8+1 - 0xFFC28)
FFC22:  LDR             R2, =(off_2474DC - 0xFFC2A)
FFC24:  ADD             R1, PC; sub_FCAC8
FFC26:  ADD             R2, PC; off_2474DC
FFC28:  BL              sub_164196
FFC2C:  MOVW            R1, #0x2F98
FFC30:  LDR             R0, [R6]
FFC32:  MOVT            R1, #0x67 ; 'g'
FFC36:  ADD             R0, R1
FFC38:  LDR             R1, =(sub_FCCC4+1 - 0xFFC44)
FFC3A:  LDR             R2, =(unk_2474E0 - 0xFFC46)
FFC3C:  ADD.W           R0, R0, #0x458
FFC40:  ADD             R1, PC; sub_FCCC4
FFC42:  ADD             R2, PC; unk_2474E0
FFC44:  BL              sub_164196
FFC48:  MOVW            R1, #0x374C
FFC4C:  LDR             R0, [R6]
FFC4E:  MOVT            R1, #0x67 ; 'g'
FFC52:  ADD             R0, R1
FFC54:  LDR             R1, =(sub_FCE80+1 - 0xFFC60)
FFC56:  LDR             R2, =(unk_2474E8 - 0xFFC62)
FFC58:  ADD.W           R0, R0, #0x204
FFC5C:  ADD             R1, PC; sub_FCE80
FFC5E:  ADD             R2, PC; unk_2474E8
FFC60:  BL              sub_164196
FFC64:  LDR             R0, [R6]
FFC66:  LDR             R5, =(sub_FCD28+1 - 0xFFC70)
FFC68:  LDR             R2, =(off_2474E4 - 0xFFC74)
FFC6A:  ADD             R0, R10
FFC6C:  ADD             R5, PC; sub_FCD28
FFC6E:  ADDS            R0, #0x18
FFC70:  ADD             R2, PC; off_2474E4
FFC72:  MOV             R1, R5
FFC74:  BL              sub_164196
FFC78:  LDR             R0, [R6]
FFC7A:  MOV             R1, #0x675320
FFC82:  MOVS            R2, #0
FFC84:  ADD             R0, R1
FFC86:  MOV             R1, R5
FFC88:  BL              sub_164196
FFC8C:  LDR             R0, [R6]
FFC8E:  LDR             R1, =(sub_FD250+1 - 0xFFC9C)
FFC90:  LDR             R2, =(off_247504 - 0xFFC9E)
FFC92:  ADD             R0, R8
FFC94:  ADD.W           R0, R0, #0x3CC
FFC98:  ADD             R1, PC; sub_FD250
FFC9A:  ADD             R2, PC; off_247504
FFC9C:  BL              sub_164196
FFCA0:  LDR             R0, [R6]
FFCA2:  MOVW            R10, #0x2D14
FFCA6:  LDR             R1, =(sub_FD280+1 - 0xFFCB8)
FFCA8:  MOVT            R10, #0x67 ; 'g'
FFCAC:  LDR             R2, =(unk_247508 - 0xFFCBA)
FFCAE:  ADD             R0, R10
FFCB0:  SUB.W           R0, R0, #0x6D0
FFCB4:  ADD             R1, PC; sub_FD280
FFCB6:  ADD             R2, PC; unk_247508
FFCB8:  BL              sub_164196
FFCBC:  MOVW            R1, #0x56C
FFCC0:  LDR             R0, [R6]
FFCC2:  MOVT            R1, #0x67 ; 'g'
FFCC6:  ADD             R0, R1
FFCC8:  LDR             R1, =(sub_FD2F8+1 - 0xFFCD0)
FFCCA:  LDR             R2, =(unk_24750C - 0xFFCD2)
FFCCC:  ADD             R1, PC; sub_FD2F8
FFCCE:  ADD             R2, PC; unk_24750C
FFCD0:  BL              sub_164196
FFCD4:  LDR             R0, [R6]
FFCD6:  MOVW            R5, #0x92B4
FFCDA:  LDR             R1, =(sub_FD368+1 - 0xFFCEC)
FFCDC:  MOVT            R5, #0x66 ; 'f'
FFCE0:  LDR             R2, =(off_247510 - 0xFFCEE)
FFCE2:  ADD             R0, R5
FFCE4:  ADD.W           R0, R0, #0x3E8
FFCE8:  ADD             R1, PC; sub_FD368
FFCEA:  ADD             R2, PC; off_247510
FFCEC:  BL              sub_164222
FFCF0:  LDR             R0, [R6]
FFCF2:  LDR             R1, =(sub_FD41C+1 - 0xFFCFC)
FFCF4:  LDR             R2, =(dword_247514 - 0xFFCFE)
FFCF6:  ADD             R0, R5
FFCF8:  ADD             R1, PC; sub_FD41C
FFCFA:  ADD             R2, PC; dword_247514
FFCFC:  BL              sub_164222
FFD00:  LDR             R0, [R6]
FFD02:  MOV             R4, #0x66D6AC
FFD0A:  MOV             R1, R11
FFD0C:  ADD             R0, R4
FFD0E:  MOVS            R2, #0
FFD10:  ADDS            R0, #8
FFD12:  BL              sub_164222
FFD16:  LDR             R0, [R6]
FFD18:  MOV             R1, R11
FFD1A:  MOVS            R2, #0
FFD1C:  ADD             R0, R4
FFD1E:  ADD.W           R0, R0, #0x3B0
FFD22:  BL              sub_164222
FFD26:  LDR             R0, [R6]
FFD28:  MOV             R1, R11
FFD2A:  MOVS            R2, #0
FFD2C:  ADD             R0, R4
FFD2E:  ADD.W           R0, R0, #0x180
FFD32:  BL              sub_164222
FFD36:  LDR             R0, [R6]
FFD38:  MOV             R5, #0x66DB68
FFD40:  MOV             R1, R11
FFD42:  ADD             R0, R5
FFD44:  MOVS            R2, #0
FFD46:  ADD.W           R0, R0, #0x258
FFD4A:  BL              sub_164222
FFD4E:  LDR             R0, [R6]
FFD50:  MOV             R1, R11
FFD52:  MOVS            R2, #0
FFD54:  ADD             R0, R5
FFD56:  ADDS            R0, #8
FFD58:  BL              sub_164222
FFD5C:  LDR             R0, [R6]
FFD5E:  MOV             R1, R11
FFD60:  MOVS            R2, #0
FFD62:  ADD             R0, R4
FFD64:  ADD.W           R0, R0, #0x298
FFD68:  BL              sub_164222
FFD6C:  LDR             R0, [R6]
FFD6E:  MOV             R1, R11
FFD70:  MOVS            R2, #0
FFD72:  ADD             R0, R5
FFD74:  ADD.W           R0, R0, #0x130
FFD78:  BL              sub_164222
FFD7C:  LDR             R0, [R6]
FFD7E:  MOV             R1, R11
FFD80:  MOVS            R2, #0
FFD82:  ADD             R0, R5
FFD84:  ADD.W           R0, R0, #0x380
FFD88:  BL              sub_164222
FFD8C:  LDR             R0, [R6]
FFD8E:  MOV             R1, R11
FFD90:  MOVS            R2, #0
FFD92:  ADD             R0, R9
FFD94:  BL              sub_164222
FFD98:  MOVW            R1, #0xEDD4
FFD9C:  LDR             R0, [R6]
FFD9E:  MOVT            R1, #0x66 ; 'f'
FFDA2:  ADD             R0, R1
FFDA4:  MOV             R5, R1
FFDA6:  LDR             R1, =(sub_FDED8+1 - 0xFFDB2)
FFDA8:  ADD.W           R0, R0, #0x318
FFDAC:  LDR             R2, =(off_24756C - 0xFFDB4)
FFDAE:  ADD             R1, PC; sub_FDED8
FFDB0:  ADD             R2, PC; off_24756C
FFDB2:  BL              sub_164196
FFDB6:  LDR             R0, [R6]
FFDB8:  MOVW            R4, #0xE7C8
FFDBC:  LDR             R1, =(sub_FDFF0+1 - 0xFFDCA)
FFDBE:  MOVT            R4, #0x66 ; 'f'
FFDC2:  LDR             R2, =(off_247584 - 0xFFDCC)
FFDC4:  ADD             R0, R4
FFDC6:  ADD             R1, PC; sub_FDFF0
FFDC8:  ADD             R2, PC; off_247584
FFDCA:  BL              sub_164196
FFDCE:  LDR             R0, [R6]
FFDD0:  LDR             R1, =(sub_FE040+1 - 0xFFDDC)
FFDD2:  LDR             R2, =(off_247588 - 0xFFDDE)
FFDD4:  ADD             R0, R10
FFDD6:  ADDS            R0, #0xA8
FFDD8:  ADD             R1, PC; sub_FE040
FFDDA:  ADD             R2, PC; off_247588
FFDDC:  BL              sub_164196
FFDE0:  LDR             R0, [R6]
FFDE2:  MOVW            R11, #0x3E80
FFDE6:  LDR             R1, =(sub_FDF1C+1 - 0xFFDF8)
FFDE8:  MOVT            R11, #0x67 ; 'g'
FFDEC:  LDR             R2, =(unk_247570 - 0xFFDFA)
FFDEE:  ADD             R0, R11
FFDF0:  ADD.W           R0, R0, #0xB50
FFDF4:  ADD             R1, PC; sub_FDF1C
FFDF6:  ADD             R2, PC; unk_247570
FFDF8:  BL              sub_164196
FFDFC:  LDR             R0, [R6]
FFDFE:  LDR             R1, =(sub_FE1B4+1 - 0xFFE0C)
FFE00:  LDR             R2, =(unk_247590 - 0xFFE0E)
FFE02:  ADD             R0, R8
FFE04:  ADD.W           R0, R0, #0x798
FFE08:  ADD             R1, PC; sub_FE1B4
FFE0A:  ADD             R2, PC; unk_247590
FFE0C:  BL              sub_164196
FFE10:  LDR             R0, [R6]
FFE12:  LDR             R1, =(sub_FE3D8+1 - 0xFFE1E)
FFE14:  LDR             R2, =(off_2475F4 - 0xFFE20)
FFE16:  ADD             R0, R8
FFE18:  ADDS            R0, #0x78 ; 'x'
FFE1A:  ADD             R1, PC; sub_FE3D8
FFE1C:  ADD             R2, PC; off_2475F4
FFE1E:  BL              sub_164196
FFE22:  LDR             R0, [R6]
FFE24:  LDR             R1, =(sub_FE4DC+1 - 0xFFE32)
FFE26:  LDR             R2, =(off_25AE78 - 0xFFE34)
FFE28:  ADD             R0, R5
FFE2A:  ADD.W           R0, R0, #0x5E0
FFE2E:  ADD             R1, PC; sub_FE4DC
FFE30:  ADD             R2, PC; off_25AE78
FFE32:  BL              sub_164196
FFE36:  LDR             R0, [R6]
FFE38:  MOVW            R8, #0xF430
FFE3C:  LDR             R1, =(sub_FE844+1 - 0xFFE4E)
FFE3E:  MOVT            R8, #0x66 ; 'f'
FFE42:  LDR             R2, =(off_25AE7C - 0xFFE50)
FFE44:  ADD             R0, R8
FFE46:  ADD.W           R0, R0, #0x334
FFE4A:  ADD             R1, PC; sub_FE844
FFE4C:  ADD             R2, PC; off_25AE7C
FFE4E:  BL              sub_164196
FFE52:  LDR             R0, [R6]
FFE54:  LDR             R1, =(sub_FE8B4+1 - 0xFFE5E)
FFE56:  LDR             R2, =(off_25AE8C - 0xFFE60)
FFE58:  ADD             R0, R10
FFE5A:  ADD             R1, PC; sub_FE8B4
FFE5C:  ADD             R2, PC; off_25AE8C
FFE5E:  BL              sub_164196
FFE62:  LDR             R0, [R6]
FFE64:  MOVW            R1, #0x2AC5
FFE68:  LDR             R2, =(off_25AE94 - 0xFFE76)
FFE6A:  MOVT            R1, #0x58 ; 'X'
FFE6E:  ADD             R1, R0
FFE70:  ADD             R0, R4
FFE72:  ADD             R2, PC; off_25AE94
FFE74:  ADD.W           R0, R0, #0x558
FFE78:  MOV             R5, R4
FFE7A:  STR             R1, [R2]
FFE7C:  LDR             R1, =(sub_FE970+1 - 0xFFE84)
FFE7E:  LDR             R2, =(off_25AEA8 - 0xFFE86)
FFE80:  ADD             R1, PC; sub_FE970
FFE82:  ADD             R2, PC; off_25AEA8
FFE84:  BL              sub_164196
FFE88:  LDR             R0, [R6]
FFE8A:  LDR             R1, =(sub_FE9BC+1 - 0xFFE94)
FFE8C:  LDR             R2, =(off_25AEB0 - 0xFFF9C)
FFE8E:  ADD             R0, R8
FFE90:  ADD             R1, PC; sub_FE9BC
FFE92:  B.W             loc_FFF98
FFE96:  ALIGN 4
FFE98:  DCD off_23494C - 0xFFAB0
FFE9C:  DCD sub_FD228+1 - 0xFFABC
FFEA0:  DCD off_247500 - 0xFFAC0
FFEA4:  DCD sub_FFA68+1 - 0xFFAD6
FFEA8:  DCD off_25B1FC - 0xFFADC
FFEAC:  DCD loc_FFA54+1 - 0xFFAF2
FFEB0:  DCD off_25B1F8 - 0xFFAF6
FFEB4:  DCD sub_FD708+1 - 0xFFB10
FFEB8:  DCD sub_FBA74+1 - 0xFFB28
FFEBC:  DCD off_247400 - 0xFFB2A
FFEC0:  DCD sub_FD040+1 - 0xFFB3C
FFEC4:  DCD off_2474FC - 0xFFB3E
FFEC8:  DCD sub_FF15C+1 - 0xFFB58
FFECC:  DCD off_25B150 - 0xFFB5A
FFED0:  DCD sub_FBAD4+1 - 0xFFB74
FFED4:  DCD unk_247404 - 0xFFB76
FFED8:  DCD sub_FC3E8+1 - 0xFFB8E
FFEDC:  DCD unk_2474A8 - 0xFFB90
FFEE0:  DCD sub_FC4D0+1 - 0xFFBA2
FFEE4:  DCD off_2474AC - 0xFFBA4
FFEE8:  DCD sub_FC504+1 - 0xFFBB6
FFEEC:  DCD sub_FC5B4+1 - 0xFFBCC
FFEF0:  DCD off_2474B8 - 0xFFBD2
FFEF4:  DCD sub_FCAC8+1 - 0xFFC28
FFEF8:  DCD off_2474DC - 0xFFC2A
FFEFC:  DCD sub_FCCC4+1 - 0xFFC44
FFF00:  DCD unk_2474E0 - 0xFFC46
FFF04:  DCD sub_FCE80+1 - 0xFFC60
FFF08:  DCD unk_2474E8 - 0xFFC62
FFF0C:  DCD sub_FCD28+1 - 0xFFC70
FFF10:  DCD off_2474E4 - 0xFFC74
FFF14:  DCD sub_FD250+1 - 0xFFC9C
FFF18:  DCD off_247504 - 0xFFC9E
FFF1C:  DCD sub_FD280+1 - 0xFFCB8
FFF20:  DCD unk_247508 - 0xFFCBA
FFF24:  DCD sub_FD2F8+1 - 0xFFCD0
FFF28:  DCD unk_24750C - 0xFFCD2
FFF2C:  DCD sub_FD368+1 - 0xFFCEC
FFF30:  DCD off_247510 - 0xFFCEE
FFF34:  DCD sub_FD41C+1 - 0xFFCFC
FFF38:  DCD dword_247514 - 0xFFCFE
FFF3C:  DCD sub_FDED8+1 - 0xFFDB2
FFF40:  DCD off_24756C - 0xFFDB4
FFF44:  DCD sub_FDFF0+1 - 0xFFDCA
FFF48:  DCD off_247584 - 0xFFDCC
FFF4C:  DCD sub_FE040+1 - 0xFFDDC
FFF50:  DCD off_247588 - 0xFFDDE
FFF54:  DCD sub_FDF1C+1 - 0xFFDF8
FFF58:  DCD unk_247570 - 0xFFDFA
FFF5C:  DCD sub_FE1B4+1 - 0xFFE0C
FFF60:  DCD unk_247590 - 0xFFE0E
FFF64:  DCD sub_FE3D8+1 - 0xFFE1E
FFF68:  DCD off_2475F4 - 0xFFE20
FFF6C:  DCD sub_FE4DC+1 - 0xFFE32
FFF70:  DCD off_25AE78 - 0xFFE34
FFF74:  DCD sub_FE844+1 - 0xFFE4E
FFF78:  DCD off_25AE7C - 0xFFE50
FFF7C:  DCD sub_FE8B4+1 - 0xFFE5E
FFF80:  DCD off_25AE8C - 0xFFE60
FFF84:  DCD off_25AE94 - 0xFFE76
FFF88:  DCD sub_FE970+1 - 0xFFE84
FFF8C:  DCD off_25AEA8 - 0xFFE86
FFF90:  DCD sub_FE9BC+1 - 0xFFE94
FFF94:  DCD off_25AEB0 - 0xFFF9C
FFF98:  ADD             R2, PC; off_25AEB0
FFF9A:  BL              sub_164196
FFF9E:  LDR             R0, [R6]
FFFA0:  LDR             R1, =(sub_FEA2C+1 - 0xFFFAE)
FFFA2:  LDR             R2, =(off_25AEB4 - 0xFFFB0)
FFFA4:  ADD             R0, R11
FFFA6:  ADD.W           R0, R0, #0x508
FFFAA:  ADD             R1, PC; sub_FEA2C
FFFAC:  ADD             R2, PC; off_25AEB4
FFFAE:  BL              sub_164196
FFFB2:  LDR             R0, [R6]
FFFB4:  MOVW            R4, #0xECC
FFFB8:  LDR             R1, =(loc_FEDE0+1 - 0xFFFCA)
FFFBA:  MOVT            R4, #0x67 ; 'g'
FFFBE:  LDR             R2, =(off_25AED0 - 0xFFFCC)
FFFC0:  ADD             R0, R4
FFFC2:  ADD.W           R0, R0, #0x3B0
FFFC6:  ADD             R1, PC; loc_FEDE0
FFFC8:  ADD             R2, PC; off_25AED0
FFFCA:  BL              sub_164196
FFFCE:  MOVW            R1, #0x1BE0
FFFD2:  LDR             R0, [R6]
FFFD4:  MOVT            R1, #0x67 ; 'g'
FFFD8:  ADD             R0, R1
FFFDA:  LDR             R1, =(sub_FEE00+1 - 0xFFFE6)
FFFDC:  LDR             R2, =(unk_25AED4 - 0xFFFE8)
FFFDE:  ADD.W           R0, R0, #0x6D0
FFFE2:  ADD             R1, PC; sub_FEE00
FFFE4:  ADD             R2, PC; unk_25AED4
FFFE6:  BL              sub_164196
FFFEA:  LDR             R0, [R6]
FFFEC:  MOVW            R10, #0xFE58
FFFF0:  LDR             R1, =(loc_FEF1C+1 - 0x100002)
FFFF2:  MOVT            R10, #0x66 ; 'f'
FFFF6:  LDR             R2, =(off_25AFA0 - 0x100004)
FFFF8:  ADD             R0, R10
FFFFA:  ADD.W           R0, R0, #0x204
FFFFE:  ADD             R1, PC; loc_FEF1C
100000:  ADD             R2, PC; off_25AFA0
100002:  BL              sub_164196
100006:  LDR             R0, [R6]
100008:  MOVW            R9, #0x2F98
10000C:  LDR             R1, =(sub_FEF58+1 - 0x10001E)
10000E:  MOVT            R9, #0x67 ; 'g'
100012:  LDR             R2, =(off_25B138 - 0x100020)
100014:  ADD             R0, R9
100016:  ADD.W           R0, R0, #0x178
10001A:  ADD             R1, PC; sub_FEF58
10001C:  ADD             R2, PC; off_25B138
10001E:  BL              sub_164196
100022:  LDR             R0, [R6]
100024:  LDR             R1, =(sub_FEF8C+1 - 0x100032)
100026:  LDR             R2, =(off_25B13C - 0x100034)
100028:  ADD             R0, R5
10002A:  ADD.W           R0, R0, #0x320
10002E:  ADD             R1, PC; sub_FEF8C
100030:  ADD             R2, PC; off_25B13C
100032:  BL              sub_164196
100036:  MOVW            R1, #0xA650
10003A:  LDR             R0, [R6]
10003C:  MOVT            R1, #0x66 ; 'f'
100040:  ADD             R0, R1
100042:  LDR             R1, =(sub_FEFFC+1 - 0x10004A)
100044:  LDR             R2, =(off_25B140 - 0x10004C)
100046:  ADD             R1, PC; sub_FEFFC
100048:  ADD             R2, PC; off_25B140
10004A:  BL              sub_164222
10004E:  LDR             R0, [R6]
100050:  LDR             R1, =(sub_FF084+1 - 0x10005A)
100052:  LDR             R2, =(off_25B14C - 0x10005C)
100054:  ADD             R0, R11
100056:  ADD             R1, PC; sub_FF084
100058:  ADD             R2, PC; off_25B14C
10005A:  BL              sub_164196
10005E:  LDR             R0, [R6]
100060:  LDR             R1, =(sub_FF2B8+1 - 0x10006E)
100062:  LDR             R2, =(off_25B168 - 0x100070)
100064:  ADD             R0, R10
100066:  ADD.W           R0, R0, #0x278
10006A:  ADD             R1, PC; sub_FF2B8
10006C:  ADD             R2, PC; off_25B168
10006E:  BL              sub_164196
100072:  LDR             R0, [R6]
100074:  LDR             R1, =(sub_FF30C+1 - 0x100080)
100076:  LDR             R2, =(off_25B16C - 0x100082)
100078:  ADD             R0, R10
10007A:  ADDS            R0, #0xB4
10007C:  ADD             R1, PC; sub_FF30C
10007E:  ADD             R2, PC; off_25B16C
100080:  BL              sub_164196
100084:  LDR             R0, [R6]
100086:  MOV             R5, R4
100088:  LDR             R1, =(sub_FF374+1 - 0x100094)
10008A:  LDR             R2, =(off_25B170 - 0x100096)
10008C:  ADD             R0, R4
10008E:  ADDS            R0, #0xE0
100090:  ADD             R1, PC; sub_FF374
100092:  ADD             R2, PC; off_25B170
100094:  BL              sub_164196
100098:  MOVW            R1, #0x4C14
10009C:  LDR             R0, [R6]
10009E:  MOVT            R1, #0x67 ; 'g'
1000A2:  ADD             R0, R1
1000A4:  MOV             R4, R1
1000A6:  LDR             R1, =(sub_FF41C+1 - 0x1000B0)
1000A8:  ADDS            R0, #0xBC
1000AA:  LDR             R2, =(off_25B178 - 0x1000B2)
1000AC:  ADD             R1, PC; sub_FF41C
1000AE:  ADD             R2, PC; off_25B178
1000B0:  BL              sub_164196
1000B4:  LDR             R0, [R6]
1000B6:  LDR             R1, =(loc_FF464+1 - 0x1000C4)
1000B8:  LDR             R2, =(off_25B180 - 0x1000C6)
1000BA:  ADD             R0, R9
1000BC:  ADD.W           R0, R0, #0x284
1000C0:  ADD             R1, PC; loc_FF464
1000C2:  ADD             R2, PC; off_25B180
1000C4:  BL              sub_164196
1000C8:  LDR             R0, [R6]
1000CA:  LDR             R1, =(loc_FF498+1 - 0x1000D8)
1000CC:  LDR             R2, =(off_25B184 - 0x1000DA)
1000CE:  ADD             R0, R8
1000D0:  ADD.W           R0, R0, #0x7A0
1000D4:  ADD             R1, PC; loc_FF498
1000D6:  ADD             R2, PC; off_25B184
1000D8:  BL              sub_164196
1000DC:  LDR             R0, [R6]
1000DE:  MOV             R9, R4
1000E0:  LDR             R1, =(loc_FF514+1 - 0x1000EE)
1000E2:  LDR             R2, =(off_25B18C - 0x1000F0)
1000E4:  ADD             R0, R4
1000E6:  ADD.W           R0, R0, #0x4C0
1000EA:  ADD             R1, PC; loc_FF514
1000EC:  ADD             R2, PC; off_25B18C
1000EE:  BL              sub_164196
1000F2:  LDR             R0, [R6]
1000F4:  MOVW            R10, #0xE244
1000F8:  LDR             R1, =(sub_FF4AC+1 - 0x10010A)
1000FA:  MOVT            R10, #0x66 ; 'f'
1000FE:  LDR             R2, =(off_25B188 - 0x10010C)
100100:  ADD             R0, R10
100102:  ADD.W           R0, R0, #0x368
100106:  ADD             R1, PC; sub_FF4AC
100108:  ADD             R2, PC; off_25B188
10010A:  BL              sub_164196
10010E:  LDR             R0, [R6]
100110:  LDR             R1, =(loc_FF524+1 - 0x10011E)
100112:  LDR             R2, =(off_25B190 - 0x100120)
100114:  ADD             R0, R11
100116:  ADD.W           R0, R0, #0x3D4
10011A:  ADD             R1, PC; loc_FF524
10011C:  ADD             R2, PC; off_25B190
10011E:  BL              sub_164196
100122:  LDR             R0, [R6]
100124:  MOVW            R4, #0x374C
100128:  LDR             R1, =(sub_FF554+1 - 0x100138)
10012A:  MOVT            R4, #0x67 ; 'g'
10012E:  LDR             R2, =(off_25B198 - 0x10013A)
100130:  ADD             R0, R4
100132:  ADDS            R0, #0x78 ; 'x'
100134:  ADD             R1, PC; sub_FF554
100136:  ADD             R2, PC; off_25B198
100138:  BL              sub_164196
10013C:  LDR             R0, [R6]
10013E:  LDR             R1, =(sub_FF60C+1 - 0x10014C)
100140:  LDR             R2, =(unk_25B1A4 - 0x10014E)
100142:  ADD             R0, R4
100144:  ADD.W           R0, R0, #0x25C
100148:  ADD             R1, PC; sub_FF60C
10014A:  ADD             R2, PC; unk_25B1A4
10014C:  BL              sub_164196
100150:  MOVW            R1, #0x56C
100154:  LDR             R0, [R6]
100156:  MOVT            R1, #0x67 ; 'g'
10015A:  ADD             R0, R1
10015C:  LDR             R1, =(sub_FCE84+1 - 0x100166)
10015E:  LDR             R2, =(off_2474F8 - 0x100168)
100160:  ADDS            R0, #0xD0
100162:  ADD             R1, PC; sub_FCE84
100164:  ADD             R2, PC; off_2474F8
100166:  BL              sub_164196
10016A:  LDR             R0, [R6]
10016C:  MOV             R11, R5
10016E:  LDR             R1, =(sub_FF618+1 - 0x100178)
100170:  LDR             R2, =(off_25B1A8 - 0x10017A)
100172:  ADD             R0, R5
100174:  ADD             R1, PC; sub_FF618
100176:  ADD             R2, PC; off_25B1A8
100178:  BL              sub_164196
10017C:  LDR             R0, [R6]
10017E:  LDR             R1, =(sub_FF624+1 - 0x100188)
100180:  LDR             R2, =(off_25B1AC - 0x10018A)
100182:  ADD             R0, R4
100184:  ADD             R1, PC; sub_FF624
100186:  ADD             R2, PC; off_25B1AC
100188:  BL              sub_164196
10018C:  MOVW            R1, #0x196C
100190:  LDR             R0, [R6]
100192:  MOVT            R1, #0x67 ; 'g'
100196:  ADD             R0, R1
100198:  LDR             R1, =(sub_FF654+1 - 0x1001A4)
10019A:  LDR             R2, =(off_25B1B0 - 0x1001A6)
10019C:  SUB.W           R0, R0, #0x1B0
1001A0:  ADD             R1, PC; sub_FF654
1001A2:  ADD             R2, PC; off_25B1B0
1001A4:  BL              sub_164196
1001A8:  MOVW            R1, #0xA98
1001AC:  LDR             R0, [R6]
1001AE:  MOVT            R1, #0x67 ; 'g'
1001B2:  ADD             R0, R1
1001B4:  LDR             R1, =(sub_FF684+1 - 0x1001BC)
1001B6:  LDR             R2, =(off_25B1B4 - 0x1001BE)
1001B8:  ADD             R1, PC; sub_FF684
1001BA:  ADD             R2, PC; off_25B1B4
1001BC:  BL              sub_164196
1001C0:  LDR             R0, [R6]
1001C2:  LDR             R1, =(sub_FF848+1 - 0x1001CC)
1001C4:  LDR             R2, =(off_25B1C4 - 0x1001CE)
1001C6:  ADD             R0, R9
1001C8:  ADD             R1, PC; sub_FF848
1001CA:  ADD             R2, PC; off_25B1C4
1001CC:  BL              sub_164196
1001D0:  LDR             R0, [R6]
1001D2:  MOVW            R4, #0xEDD4
1001D6:  LDR             R1, =(loc_FF86C+1 - 0x1001E8)
1001D8:  MOVT            R4, #0x66 ; 'f'
1001DC:  LDR             R2, =(off_25B1C8 - 0x1001EA)
1001DE:  ADD             R0, R4
1001E0:  ADD.W           R0, R0, #0x450
1001E4:  ADD             R1, PC; loc_FF86C
1001E6:  ADD             R2, PC; off_25B1C8
1001E8:  BL              sub_164196
1001EC:  LDR             R0, [R6]
1001EE:  LDR             R1, =(loc_FF880+1 - 0x1001F8)
1001F0:  LDR             R2, =(off_25B1CC - 0x1001FA)
1001F2:  ADD             R0, R4
1001F4:  ADD             R1, PC; loc_FF880
1001F6:  ADD             R2, PC; off_25B1CC
1001F8:  BL              sub_164196
1001FC:  MOVW            R1, #0xA650
100200:  LDR             R0, [R6]
100202:  MOVT            R1, #0x66 ; 'f'
100206:  ADD             R0, R1
100208:  LDR             R1, =(sub_FF9D8+1 - 0x100214)
10020A:  LDR             R2, =(off_25B1F0 - 0x100216)
10020C:  ADD.W           R0, R0, #0xE30
100210:  ADD             R1, PC; sub_FF9D8
100212:  ADD             R2, PC; off_25B1F0
100214:  BL              sub_164222
100218:  LDR             R0, [R6]
10021A:  MOVW            R1, #0x1BE0
10021E:  LDR             R4, =(sub_FF894+1 - 0x10022C)
100220:  MOVT            R1, #0x67 ; 'g'
100224:  LDR             R5, =(off_25B1D4 - 0x10022E)
100226:  ADD             R0, R1
100228:  ADD             R4, PC; sub_FF894
10022A:  ADD             R5, PC; off_25B1D4
10022C:  MOV             R1, R4
10022E:  MOV             R2, R5
100230:  BL              sub_164196
100234:  LDR             R0, [R6]
100236:  MOV             R8, #0x661FEC
10023E:  MOV             R1, R4
100240:  ADD             R0, R8
100242:  MOV             R2, R5
100244:  BL              sub_164222
100248:  LDR             R0, [R6]
10024A:  MOV             R1, R4
10024C:  MOV             R2, R5
10024E:  ADD             R0, R8
100250:  ADDS            R0, #0x64 ; 'd'
100252:  BL              sub_164222
100256:  LDR             R0, [R6]
100258:  MOV             R8, #0x667C08
100260:  MOV             R1, R4
100262:  ADD             R0, R8
100264:  MOV             R2, R5
100266:  BL              sub_164222
10026A:  LDR             R0, [R6]
10026C:  MOV             R1, R4
10026E:  MOV             R2, R5
100270:  ADD             R0, R8
100272:  ADDS            R0, #0x64 ; 'd'
100274:  BL              sub_164222
100278:  LDR             R0, [R6]
10027A:  MOV             R1, R4
10027C:  MOV             R2, R5
10027E:  ADD             R0, R8
100280:  ADDS            R0, #0xD8
100282:  BL              sub_164222
100286:  LDR             R0, [R6]
100288:  MOV             R1, R4
10028A:  MOV             R2, R5
10028C:  ADD             R0, R8
10028E:  ADD.W           R0, R0, #0x1F8
100292:  BL              sub_164222
100296:  LDR             R0, [R6]
100298:  MOV             R1, R4
10029A:  MOV             R2, R5
10029C:  ADD             R0, R8
10029E:  ADD.W           R0, R0, #0x25C
1002A2:  BL              sub_164222
1002A6:  LDR             R0, [R6]
1002A8:  MOV             R1, R4
1002AA:  MOV             R2, R5
1002AC:  ADD             R0, R8
1002AE:  ADD.W           R0, R0, #0x2C4
1002B2:  BL              sub_164222
1002B6:  LDR             R0, [R6]
1002B8:  MOV             R1, R4
1002BA:  MOV             R2, R5
1002BC:  ADD             R0, R8
1002BE:  ADD.W           R0, R0, #0x32C
1002C2:  BL              sub_164222
1002C6:  LDR             R0, [R6]
1002C8:  MOV             R1, #0x66847C
1002D0:  MOV             R2, R5
1002D2:  ADD             R0, R1
1002D4:  MOV             R1, R4
1002D6:  BL              sub_164222
1002DA:  LDR             R0, [R6]
1002DC:  MOV             R1, R4
1002DE:  MOV             R2, R5
1002E0:  ADD.W           R0, R0, #0x668000
1002E4:  ADD.W           R0, R0, #0xBB0
1002E8:  BL              sub_164222
1002EC:  LDR             R0, [R6]
1002EE:  MOVW            R8, #0xD6AC
1002F2:  LDR             R4, =(sub_FF8C8+1 - 0x100300)
1002F4:  MOVT            R8, #0x66 ; 'f'
1002F8:  LDR             R5, =(off_25B1D8 - 0x100302)
1002FA:  ADD             R0, R8
1002FC:  ADD             R4, PC; sub_FF8C8
1002FE:  ADD             R5, PC; off_25B1D8
100300:  MOV             R1, R4
100302:  MOV             R2, R5
100304:  BL              sub_164222
100308:  LDR             R0, [R6]
10030A:  MOV             R1, R4
10030C:  MOV             R2, R5
10030E:  ADD             R0, R8
100310:  ADD.W           R0, R0, #0x178
100314:  BL              sub_164222
100318:  LDR             R0, [R6]
10031A:  MOV             R1, R4
10031C:  MOV             R2, R5
10031E:  ADD             R0, R8
100320:  ADD.W           R0, R0, #0x290
100324:  BL              sub_164222
100328:  LDR             R0, [R6]
10032A:  MOV             R1, R4
10032C:  MOV             R2, R5
10032E:  ADD             R0, R8
100330:  ADD.W           R0, R0, #0x3A8
100334:  BL              sub_164222
100338:  LDR             R0, [R6]
10033A:  MOV             R8, #0x66DB68
100342:  MOV             R1, R4
100344:  ADD             R0, R8
100346:  MOV             R2, R5
100348:  BL              sub_164222
10034C:  LDR             R0, [R6]
10034E:  MOV             R1, R4
100350:  MOV             R2, R5
100352:  ADD             R0, R8
100354:  ADD.W           R0, R0, #0x128
100358:  BL              sub_164222
10035C:  LDR             R0, [R6]
10035E:  MOV             R1, R4
100360:  MOV             R2, R5
100362:  ADD             R0, R8
100364:  ADD.W           R0, R0, #0x250
100368:  BL              sub_164222
10036C:  LDR             R0, [R6]
10036E:  MOV             R1, R4
100370:  MOV             R2, R5
100372:  ADD             R0, R8
100374:  ADD.W           R0, R0, #0x378
100378:  BL              sub_164222
10037C:  LDR             R0, [R6]
10037E:  MOV             R1, R4
100380:  MOV             R2, R5
100382:  ADD             R0, R8
100384:  ADD.W           R0, R0, #0x4A0
100388:  BL              sub_164222
10038C:  LDR             R0, [R6]
10038E:  MOV             R1, R4
100390:  B.W             loc_10041C
100394:  DCD sub_FEA2C+1 - 0xFFFAE
100398:  DCD off_25AEB4 - 0xFFFB0
10039C:  DCD loc_FEDE0+1 - 0xFFFCA
1003A0:  DCD off_25AED0 - 0xFFFCC
1003A4:  DCD sub_FEE00+1 - 0xFFFE6
1003A8:  DCD unk_25AED4 - 0xFFFE8
1003AC:  DCD loc_FEF1C+1 - 0x100002
1003B0:  DCD off_25AFA0 - 0x100004
1003B4:  DCD sub_FEF58+1 - 0x10001E
1003B8:  DCD off_25B138 - 0x100020
1003BC:  DCD sub_FEF8C+1 - 0x100032
1003C0:  DCD off_25B13C - 0x100034
1003C4:  DCD sub_FEFFC+1 - 0x10004A
1003C8:  DCD off_25B140 - 0x10004C
1003CC:  DCD sub_FF084+1 - 0x10005A
1003D0:  DCD off_25B14C - 0x10005C
1003D4:  DCD sub_FF2B8+1 - 0x10006E
1003D8:  DCD off_25B168 - 0x100070
1003DC:  DCD sub_FF30C+1 - 0x100080
1003E0:  DCD off_25B16C - 0x100082
1003E4:  DCD sub_FF374+1 - 0x100094
1003E8:  DCD off_25B170 - 0x100096
1003EC:  DCD sub_FF41C+1 - 0x1000B0
1003F0:  DCD off_25B178 - 0x1000B2
1003F4:  DCD loc_FF464+1 - 0x1000C4
1003F8:  DCD off_25B180 - 0x1000C6
1003FC:  DCD loc_FF498+1 - 0x1000D8
100400:  DCD off_25B184 - 0x1000DA
100404:  DCD loc_FF514+1 - 0x1000EE
100408:  DCD off_25B18C - 0x1000F0
10040C:  DCD sub_FF4AC+1 - 0x10010A
100410:  DCD off_25B188 - 0x10010C
100414:  DCD loc_FF524+1 - 0x10011E
100418:  DCD off_25B190 - 0x100120
10041C:  MOV             R2, R5
10041E:  ADD             R0, R8
100420:  ADD.W           R0, R0, #0x5C8
100424:  BL              sub_164222
100428:  LDR             R0, [R6]
10042A:  MOV             R1, R4
10042C:  MOV             R2, R5
10042E:  ADD             R0, R10
100430:  BL              sub_164222
100434:  LDR             R0, [R6]
100436:  MOVW            R4, #0x768C
10043A:  LDR             R1, =(sub_FF8FC+1 - 0x10044A)
10043C:  MOVT            R4, #0x66 ; 'f'
100440:  LDR             R2, =(off_25B1DC - 0x10044C)
100442:  ADD             R0, R4
100444:  ADDS            R0, #0x50 ; 'P'
100446:  ADD             R1, PC; sub_FF8FC
100448:  ADD             R2, PC; off_25B1DC
10044A:  BL              sub_164222
10044E:  LDR             R0, [R6]
100450:  LDR             R1, =(sub_FF94C+1 - 0x10045A)
100452:  LDR             R2, =(off_25B1E0 - 0x10045C)
100454:  ADD             R0, R4
100456:  ADD             R1, PC; sub_FF94C
100458:  ADD             R2, PC; off_25B1E0
10045A:  BL              sub_164222
10045E:  LDR             R0, [R6]
100460:  MOVW            R3, #0x2F98
100464:  LDR             R1, =(loc_FF99C+1 - 0x100472)
100466:  MOVT            R3, #0x67 ; 'g'
10046A:  LDR             R2, =(off_25B1E8 - 0x100474)
10046C:  ADD             R0, R3
10046E:  ADD             R1, PC; loc_FF99C
100470:  ADD             R2, PC; off_25B1E8
100472:  BL              sub_164222
100476:  LDR             R0, [R6]
100478:  LDR             R1, =(sub_FB788+1 - 0x100482)
10047A:  LDR             R2, =(off_2473F4 - 0x100488)
10047C:  ADD             R0, R9
10047E:  ADD             R1, PC; sub_FB788
100480:  ADD.W           R0, R0, #0x6C0
100484:  ADD             R2, PC; off_2473F4
100486:  BL              sub_164196
10048A:  LDR             R0, [R6]
10048C:  LDR             R1, =(sub_FF9B4+1 - 0x100496)
10048E:  LDR             R2, =(off_25B1EC - 0x10049A)
100490:  ADD             R0, R11
100492:  ADD             R1, PC; sub_FF9B4
100494:  ADDS            R0, #0x70 ; 'p'
100496:  ADD             R2, PC; off_25B1EC
100498:  BL              sub_164196
10049C:  LDR             R0, [R6]
10049E:  MOVW            R3, #0x12F8
1004A2:  LDR             R1, =(sub_FFA10+1 - 0x1004B0)
1004A4:  MOVT            R3, #0x67 ; 'g'
1004A8:  LDR             R2, =(off_25B1F4 - 0x1004B2)
1004AA:  ADD             R0, R3
1004AC:  ADD             R1, PC; sub_FFA10
1004AE:  ADD             R2, PC; off_25B1F4
1004B0:  BL              sub_164196
1004B4:  BL              sub_FE0B0
1004B8:  BL              sub_1034B4
1004BC:  BL              sub_10A7C0
1004C0:  BL              sub_F5AD0
1004C4:  BL              sub_120554
1004C8:  MOVS            R0, #1; unsigned int
1004CA:  BLX             j__Znwj; operator new(uint)
1004CE:  MOV             R4, R0
1004D0:  BL              sub_125F60
1004D4:  MOVS            R0, #1; unsigned int
1004D6:  BLX             j__Znwj; operator new(uint)
1004DA:  MOV             R4, R0
1004DC:  BL              sub_129118
1004E0:  MOVS            R0, #1; unsigned int
1004E2:  BLX             j__Znwj; operator new(uint)
1004E6:  MOV             R4, R0
1004E8:  BL              sub_11E758
1004EC:  MOVS            R0, #1; unsigned int
1004EE:  BLX             j__Znwj; operator new(uint)
1004F2:  MOV             R4, R0
1004F4:  BL              sub_1201EC
1004F8:  BL              sub_120378
1004FC:  MOVS            R0, #1; unsigned int
1004FE:  BLX             j__Znwj; operator new(uint)
100502:  MOV             R4, R0
100504:  BL              sub_11F8F8
100508:  MOVS            R0, #1; unsigned int
10050A:  BLX             j__Znwj; operator new(uint)
10050E:  MOV             R4, R0
100510:  BL              sub_11E724
100514:  ADD             SP, SP, #4
100516:  POP.W           {R8-R11}
10051A:  POP             {R4-R7,PC}
