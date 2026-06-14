; =========================================================
; Game Engine Function: _ZN16CAtomicModelInfo24SetupVehicleUpgradeFlagsEPKc
; Address            : 0x384AB4 - 0x384CA4
; =========================================================

384AB4:  PUSH            {R4-R7,LR}
384AB6:  ADD             R7, SP, #0xC
384AB8:  PUSH.W          {R8}
384ABC:  MOV             R4, R0
384ABE:  MOV             R5, R1
384AC0:  LDRSH.W         R1, [R4,#0x28]
384AC4:  CMP             R1, #0
384AC6:  BLT.W           loc_384C70
384ACA:  LDR             R0, =(aBnt - 0x384AD8); "bnt_"
384ACC:  UXTB.W          R8, R1
384AD0:  MOV             R1, R5; char *
384AD2:  MOVS            R2, #4; size_t
384AD4:  ADD             R0, PC; "bnt_"
384AD6:  STRH.W          R8, [R4,#0x28]
384ADA:  BLX             strncmp
384ADE:  CMP             R0, #0
384AE0:  BEQ.W           loc_384C2E
384AE4:  LDR             R0, =(aBntl - 0x384AEE); "bntl_"
384AE6:  MOV             R1, R5; char *
384AE8:  MOVS            R2, #5; size_t
384AEA:  ADD             R0, PC; "bntl_"
384AEC:  BLX             strncmp
384AF0:  CMP             R0, #0
384AF2:  BEQ.W           loc_384C32
384AF6:  LDR             R0, =(aBntr - 0x384B00); "bntr_"
384AF8:  MOV             R1, R5; char *
384AFA:  MOVS            R2, #5; size_t
384AFC:  ADD             R0, PC; "bntr_"
384AFE:  BLX             strncmp
384B02:  CMP             R0, #0
384B04:  BEQ.W           loc_384C36
384B08:  LDR             R0, =(aSpl - 0x384B12); "spl_"
384B0A:  MOV             R1, R5; char *
384B0C:  MOVS            R2, #4; size_t
384B0E:  ADD             R0, PC; "spl_"
384B10:  BLX             strncmp
384B14:  CMP             R0, #0
384B16:  BEQ.W           loc_384C3A
384B1A:  LDR             R0, =(aWgL - 0x384B24); "wg_l_"
384B1C:  MOV             R1, R5; char *
384B1E:  MOVS            R2, #5; size_t
384B20:  ADD             R0, PC; "wg_l_"
384B22:  BLX             strncmp
384B26:  CMP             R0, #0
384B28:  BEQ.W           loc_384C3E
384B2C:  LDR             R0, =(aWgR - 0x384B38); "wg_r_"
384B2E:  MOV             R1, R5; char *
384B30:  MOVS            R2, #5; size_t
384B32:  MOVS            R6, #5
384B34:  ADD             R0, PC; "wg_r_"
384B36:  BLX             strncmp
384B3A:  CMP             R0, #0
384B3C:  BEQ.W           loc_384C5C
384B40:  LDR             R0, =(aFbb - 0x384B4A); "fbb_"
384B42:  MOV             R1, R5; char *
384B44:  MOVS            R2, #4; size_t
384B46:  ADD             R0, PC; "fbb_"
384B48:  BLX             strncmp
384B4C:  CMP             R0, #0
384B4E:  BEQ             loc_384C42
384B50:  LDR             R0, =(aBbb - 0x384B5A); "bbb_"
384B52:  MOV             R1, R5; char *
384B54:  MOVS            R2, #4; size_t
384B56:  ADD             R0, PC; "bbb_"
384B58:  BLX             strncmp
384B5C:  CMP             R0, #0
384B5E:  BEQ             loc_384C46
384B60:  LDR             R0, =(aLgt - 0x384B6A); "lgt_"
384B62:  MOV             R1, R5; char *
384B64:  MOVS            R2, #4; size_t
384B66:  ADD             R0, PC; "lgt_"
384B68:  BLX             strncmp
384B6C:  CMP             R0, #0
384B6E:  BEQ             loc_384C4A
384B70:  LDR             R0, =(aRf - 0x384B7A); "rf_"
384B72:  MOV             R1, R5; char *
384B74:  MOVS            R2, #3; size_t
384B76:  ADD             R0, PC; "rf_"
384B78:  BLX             strncmp
384B7C:  CMP             R0, #0
384B7E:  BEQ             loc_384C4E
384B80:  LDR             R0, =(aNto - 0x384B8A); "nto_"
384B82:  MOV             R1, R5; char *
384B84:  MOVS            R2, #4; size_t
384B86:  ADD             R0, PC; "nto_"
384B88:  BLX             strncmp
384B8C:  CMP             R0, #0
384B8E:  BEQ             loc_384C52
384B90:  LDR             R0, =(aHydralics - 0x384B9A); "hydralics"
384B92:  MOV             R1, R5; char *
384B94:  MOVS            R2, #9; size_t
384B96:  ADD             R0, PC; "hydralics"
384B98:  BLX             strncmp
384B9C:  CMP             R0, #0
384B9E:  BEQ             loc_384C56
384BA0:  LDR             R0, =(aWideStereo+5 - 0x384BAA); "stereo"
384BA2:  MOV             R1, R5; char *
384BA4:  MOVS            R2, #6; size_t
384BA6:  ADD             R0, PC; "stereo"
384BA8:  BLX             strncmp
384BAC:  CMP             R0, #0
384BAE:  BEQ             loc_384C5A
384BB0:  LDR             R0, =(aChss - 0x384BBA); "chss_"
384BB2:  MOV             R1, R5; char *
384BB4:  MOVS            R2, #5; size_t
384BB6:  ADD             R0, PC; "chss_"
384BB8:  BLX             strncmp
384BBC:  CMP             R0, #0
384BBE:  BEQ             loc_384C76
384BC0:  LDR             R0, =(aWheel_0 - 0x384BCA); "wheel_"
384BC2:  MOV             R1, R5; char *
384BC4:  MOVS            R2, #6; size_t
384BC6:  ADD             R0, PC; "wheel_"
384BC8:  BLX             strncmp
384BCC:  CMP             R0, #0
384BCE:  BEQ             loc_384C7A
384BD0:  LDR             R0, =(aExh - 0x384BDA); "exh_"
384BD2:  MOV             R1, R5; char *
384BD4:  MOVS            R2, #4; size_t
384BD6:  ADD             R0, PC; "exh_"
384BD8:  BLX             strncmp
384BDC:  CMP             R0, #0
384BDE:  BEQ             loc_384C7E
384BE0:  LDR             R0, =(aFbmp - 0x384BEA); "fbmp_"
384BE2:  MOV             R1, R5; char *
384BE4:  MOVS            R2, #5; size_t
384BE6:  ADD             R0, PC; "fbmp_"
384BE8:  BLX             strncmp
384BEC:  CMP             R0, #0
384BEE:  BEQ             loc_384C82
384BF0:  LDR             R0, =(aRbmp - 0x384BFA); "rbmp_"
384BF2:  MOV             R1, R5; char *
384BF4:  MOVS            R2, #5; size_t
384BF6:  ADD             R0, PC; "rbmp_"
384BF8:  BLX             strncmp
384BFC:  CMP             R0, #0
384BFE:  BEQ             loc_384C86
384C00:  LDR             R0, =(aMiscA - 0x384C0A); "misc_a_"
384C02:  MOV             R1, R5; char *
384C04:  MOVS            R2, #7; size_t
384C06:  ADD             R0, PC; "misc_a_"
384C08:  BLX             strncmp
384C0C:  CBZ             R0, loc_384C8A
384C0E:  LDR             R0, =(aMiscB - 0x384C18); "misc_b_"
384C10:  MOV             R1, R5; char *
384C12:  MOVS            R2, #7; size_t
384C14:  ADD             R0, PC; "misc_b_"
384C16:  BLX             strncmp
384C1A:  CBZ             R0, loc_384C8E
384C1C:  LDR             R0, =(aMiscC - 0x384C28); "misc_c_"
384C1E:  MOV             R1, R5; char *
384C20:  MOVS            R2, #7; size_t
384C22:  MOVS            R6, #7
384C24:  ADD             R0, PC; "misc_c_"
384C26:  BLX             strncmp
384C2A:  CBNZ            R0, loc_384C70
384C2C:  B               loc_384C90
384C2E:  MOVS            R6, #0
384C30:  B               loc_384C5C
384C32:  MOVS            R6, #1
384C34:  B               loc_384C5C
384C36:  MOVS            R6, #2
384C38:  B               loc_384C5C
384C3A:  MOVS            R6, #3
384C3C:  B               loc_384C5C
384C3E:  MOVS            R6, #4
384C40:  B               loc_384C5C
384C42:  MOVS            R6, #6
384C44:  B               loc_384C5C
384C46:  MOVS            R6, #7
384C48:  B               loc_384C5C
384C4A:  MOVS            R6, #8
384C4C:  B               loc_384C5C
384C4E:  MOVS            R6, #9
384C50:  B               loc_384C5C
384C52:  MOVS            R6, #0xA
384C54:  B               loc_384C5C
384C56:  MOVS            R6, #0xB
384C58:  B               loc_384C5C
384C5A:  MOVS            R6, #0xC
384C5C:  LDR             R0, =(off_667394 - 0x384C62); "bnt_" ...
384C5E:  ADD             R0, PC; off_667394
384C60:  ADD.W           R0, R0, R6,LSL#3
384C64:  LDR             R0, [R0,#4]
384C66:  ORR.W           R0, R8, R0,LSL#10
384C6A:  ORR.W           R0, R0, #0x8000
384C6E:  STRH            R0, [R4,#0x28]
384C70:  POP.W           {R8}
384C74:  POP             {R4-R7,PC}
384C76:  MOVS            R6, #0
384C78:  B               loc_384C90
384C7A:  MOVS            R6, #1
384C7C:  B               loc_384C90
384C7E:  MOVS            R6, #2
384C80:  B               loc_384C90
384C82:  MOVS            R6, #3
384C84:  B               loc_384C90
384C86:  MOVS            R6, #4
384C88:  B               loc_384C90
384C8A:  MOVS            R6, #5
384C8C:  B               loc_384C90
384C8E:  MOVS            R6, #6
384C90:  LDR             R0, =(off_667404 - 0x384C96); "chss_" ...
384C92:  ADD             R0, PC; off_667404
384C94:  ADD.W           R0, R0, R6,LSL#3
384C98:  LDR             R0, [R0,#4]
384C9A:  ORR.W           R0, R8, R0,LSL#10
384C9E:  ORR.W           R0, R0, #0x8100
384CA2:  B               loc_384C6E
