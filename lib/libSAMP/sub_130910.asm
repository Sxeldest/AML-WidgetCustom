; =========================================================
; Game Engine Function: sub_130910
; Address            : 0x130910 - 0x130F54
; =========================================================

130910:  PUSH            {R4-R7,LR}
130912:  ADD             R7, SP, #0xC
130914:  PUSH.W          {R8}
130918:  VPUSH           {D8-D9}
13091C:  SUB             SP, SP, #0x10
13091E:  MOV             R8, R0
130920:  LDR             R0, =(off_2349A8 - 0x13092A)
130922:  VLDR            S16, [R8,#0x14]
130926:  ADD             R0, PC; off_2349A8
130928:  LDR             R0, [R0]; dword_381BF4
13092A:  LDR             R0, [R0]
13092C:  LDRB.W          R0, [R0,#0x81]
130930:  CBZ             R0, loc_13094C
130932:  B               loc_13093C
130934:  DCD off_2349A8 - 0x13092A
130938:  DCFS -100.0
13093C:  VLDR            S0, =-100.0
130940:  VMOV.F32        S2, #27.0
130944:  VDIV.F32        S0, S16, S0
130948:  VMLA.F32        S16, S0, S2
13094C:  LDR.W           R5, [R8,#0x6C]
130950:  VMOV.I32        Q8, #0
130954:  LDR             R1, =(aQ - 0x130966); "q" ...
130956:  ADD             R6, SP, #0x30+var_2C
130958:  ADD.W           R0, R5, #0x58 ; 'X'
13095C:  MOVS            R2, #0
13095E:  VST1.32         {D16-D17}, [R0]!
130962:  ADD             R1, PC; "q"
130964:  STR             R2, [R0]
130966:  MOV             R0, R6; int
130968:  BL              sub_13055C
13096C:  MOV             R0, R5
13096E:  MOV             R1, R6
130970:  MOVS            R2, #0x71 ; 'q'
130972:  BL              sub_130FE8
130976:  B               loc_13097C
130978:  DCD aQ - 0x130966
13097C:  LDRB.W          R0, [SP,#0x30+var_2C]
130980:  LSLS            R0, R0, #0x1F
130982:  ITT NE
130984:  LDRNE           R0, [SP,#0x30+var_24]; void *
130986:  BLXNE           j__ZdlPv; operator delete(void *)
13098A:  LDR.W           R5, [R8,#0x6C]
13098E:  ADD             R6, SP, #0x30+var_2C
130990:  LDR             R1, =(aW7 - 0x130998); "w7@>" ...
130992:  MOV             R0, R6; int
130994:  ADD             R1, PC; "w7@>"
130996:  BL              sub_13055C
13099A:  MOV             R0, R5
13099C:  MOV             R1, R6
13099E:  MOVS            R2, #0x77 ; 'w'
1309A0:  BL              sub_130FE8
1309A4:  B               loc_1309AC
1309A6:  ALIGN 4
1309A8:  DCD aW7 - 0x130998
1309AC:  LDRB.W          R0, [SP,#0x30+var_2C]
1309B0:  LSLS            R0, R0, #0x1F
1309B2:  ITT NE
1309B4:  LDRNE           R0, [SP,#0x30+var_24]; void *
1309B6:  BLXNE           j__ZdlPv; operator delete(void *)
1309BA:  LDR.W           R5, [R8,#0x6C]
1309BE:  ADD             R6, SP, #0x30+var_2C
1309C0:  LDR             R1, =(aE - 0x1309C8); "e" ...
1309C2:  MOV             R0, R6; int
1309C4:  ADD             R1, PC; "e"
1309C6:  BL              sub_13055C
1309CA:  MOV             R0, R5
1309CC:  MOV             R1, R6
1309CE:  MOVS            R2, #0x65 ; 'e'
1309D0:  BL              sub_130FE8
1309D4:  B               loc_1309DC
1309D6:  ALIGN 4
1309D8:  DCD aE - 0x1309C8
1309DC:  LDRB.W          R0, [SP,#0x30+var_2C]
1309E0:  LSLS            R0, R0, #0x1F
1309E2:  ITT NE
1309E4:  LDRNE           R0, [SP,#0x30+var_24]; void *
1309E6:  BLXNE           j__ZdlPv; operator delete(void *)
1309EA:  LDR.W           R5, [R8,#0x6C]
1309EE:  ADD             R6, SP, #0x30+var_2C
1309F0:  LDR             R1, =(aR_1 - 0x1309F8); "r" ...
1309F2:  MOV             R0, R6; int
1309F4:  ADD             R1, PC; "r"
1309F6:  BL              sub_13055C
1309FA:  MOV             R0, R5
1309FC:  MOV             R1, R6
1309FE:  MOVS            R2, #0x72 ; 'r'
130A00:  BL              sub_130FE8
130A04:  B               loc_130A0C
130A06:  ALIGN 4
130A08:  DCD aR_1 - 0x1309F8
130A0C:  LDRB.W          R0, [SP,#0x30+var_2C]
130A10:  LSLS            R0, R0, #0x1F
130A12:  ITT NE
130A14:  LDRNE           R0, [SP,#0x30+var_24]; void *
130A16:  BLXNE           j__ZdlPv; operator delete(void *)
130A1A:  LDR.W           R5, [R8,#0x6C]
130A1E:  ADD             R6, SP, #0x30+var_2C
130A20:  LDR             R1, =(aT - 0x130A28); "t" ...
130A22:  MOV             R0, R6; int
130A24:  ADD             R1, PC; "t"
130A26:  BL              sub_13055C
130A2A:  MOV             R0, R5
130A2C:  MOV             R1, R6
130A2E:  MOVS            R2, #0x74 ; 't'
130A30:  BL              sub_130FE8
130A34:  B               loc_130A3C
130A36:  ALIGN 4
130A38:  DCD aT - 0x130A28
130A3C:  LDRB.W          R0, [SP,#0x30+var_2C]
130A40:  LSLS            R0, R0, #0x1F
130A42:  ITT NE
130A44:  LDRNE           R0, [SP,#0x30+var_24]; void *
130A46:  BLXNE           j__ZdlPv; operator delete(void *)
130A4A:  LDR.W           R5, [R8,#0x6C]
130A4E:  ADD             R6, SP, #0x30+var_2C
130A50:  LDR             R1, =(unk_84F8D - 0x130A58)
130A52:  MOV             R0, R6; int
130A54:  ADD             R1, PC; unk_84F8D ; src
130A56:  BL              sub_13055C
130A5A:  MOV             R0, R5
130A5C:  MOV             R1, R6
130A5E:  MOVS            R2, #0x79 ; 'y'
130A60:  BL              sub_130FE8
130A64:  B               loc_130A6C
130A66:  ALIGN 4
130A68:  DCD unk_84F8D - 0x130A58
130A6C:  LDRB.W          R0, [SP,#0x30+var_2C]
130A70:  LSLS            R0, R0, #0x1F
130A72:  ITT NE
130A74:  LDRNE           R0, [SP,#0x30+var_24]; void *
130A76:  BLXNE           j__ZdlPv; operator delete(void *)
130A7A:  LDR.W           R5, [R8,#0x6C]
130A7E:  ADD             R6, SP, #0x30+var_2C
130A80:  LDR             R1, =(aU - 0x130A88); "u" ...
130A82:  MOV             R0, R6; int
130A84:  ADD             R1, PC; "u"
130A86:  BL              sub_13055C
130A8A:  MOV             R0, R5
130A8C:  MOV             R1, R6
130A8E:  MOVS            R2, #0x75 ; 'u'
130A90:  BL              sub_130FE8
130A94:  B               loc_130A9C
130A96:  ALIGN 4
130A98:  DCD aU - 0x130A88
130A9C:  LDRB.W          R0, [SP,#0x30+var_2C]
130AA0:  LSLS            R0, R0, #0x1F
130AA2:  ITT NE
130AA4:  LDRNE           R0, [SP,#0x30+var_24]; void *
130AA6:  BLXNE           j__ZdlPv; operator delete(void *)
130AAA:  LDR.W           R5, [R8,#0x6C]
130AAE:  ADD             R6, SP, #0x30+var_2C
130AB0:  LDR             R1, =(unk_84F8F - 0x130AB8)
130AB2:  MOV             R0, R6; int
130AB4:  ADD             R1, PC; unk_84F8F ; src
130AB6:  BL              sub_13055C
130ABA:  MOV             R0, R5
130ABC:  MOV             R1, R6
130ABE:  MOVS            R2, #0x69 ; 'i'
130AC0:  BL              sub_130FE8
130AC4:  B               loc_130ACC
130AC6:  ALIGN 4
130AC8:  DCD unk_84F8F - 0x130AB8
130ACC:  LDRB.W          R0, [SP,#0x30+var_2C]
130AD0:  LSLS            R0, R0, #0x1F
130AD2:  ITT NE
130AD4:  LDRNE           R0, [SP,#0x30+var_24]; void *
130AD6:  BLXNE           j__ZdlPv; operator delete(void *)
130ADA:  LDR.W           R5, [R8,#0x6C]
130ADE:  ADD             R6, SP, #0x30+var_2C
130AE0:  LDR             R1, =(aO - 0x130AE8); "o" ...
130AE2:  MOV             R0, R6; int
130AE4:  ADD             R1, PC; "o"
130AE6:  BL              sub_13055C
130AEA:  MOV             R0, R5
130AEC:  MOV             R1, R6
130AEE:  MOVS            R2, #0x6F ; 'o'
130AF0:  BL              sub_130FE8
130AF4:  B               loc_130AFC
130AF6:  ALIGN 4
130AF8:  DCD aO - 0x130AE8
130AFC:  LDRB.W          R0, [SP,#0x30+var_2C]
130B00:  LSLS            R0, R0, #0x1F
130B02:  ITT NE
130B04:  LDRNE           R0, [SP,#0x30+var_24]; void *
130B06:  BLXNE           j__ZdlPv; operator delete(void *)
130B0A:  LDR.W           R5, [R8,#0x6C]
130B0E:  ADD             R6, SP, #0x30+var_2C
130B10:  LDR             R1, =(unk_8C306 - 0x130B18)
130B12:  MOV             R0, R6; int
130B14:  ADD             R1, PC; unk_8C306 ; src
130B16:  BL              sub_13055C
130B1A:  MOV             R0, R5
130B1C:  MOV             R1, R6
130B1E:  MOVS            R2, #0x70 ; 'p'
130B20:  BL              sub_130FE8
130B24:  B               loc_130B2C
130B26:  ALIGN 4
130B28:  DCD unk_8C306 - 0x130B18
130B2C:  LDRB.W          R0, [SP,#0x30+var_2C]
130B30:  LSLS            R0, R0, #0x1F
130B32:  ITT NE
130B34:  LDRNE           R0, [SP,#0x30+var_24]; void *
130B36:  BLXNE           j__ZdlPv; operator delete(void *)
130B3A:  VMOV.F32        S0, #10.0
130B3E:  LDR.W           R5, [R8,#0x70]
130B42:  LDR             R1, =(unk_8C308 - 0x130B4C)
130B44:  ADD             R6, SP, #0x30+var_2C
130B46:  MOVS            R0, #0
130B48:  ADD             R1, PC; unk_8C308 ; src
130B4A:  STRD.W          R0, R0, [R5,#0x60]
130B4E:  STR             R0, [R5,#0x68]
130B50:  MOV             R0, R6; int
130B52:  VDIV.F32        S16, S16, S0
130B56:  VMOV.F32        S0, #0.5
130B5A:  VMUL.F32        S0, S16, S0
130B5E:  VSTR            S0, [R5,#0x58]
130B62:  VSTR            S0, [R5,#0x5C]
130B66:  BL              sub_13055C
130B6A:  MOV             R0, R5
130B6C:  MOV             R1, R6
130B6E:  MOVS            R2, #0x61 ; 'a'
130B70:  BL              sub_130FE8
130B74:  B               loc_130B7C
130B76:  ALIGN 4
130B78:  DCD unk_8C308 - 0x130B4C
130B7C:  LDRB.W          R0, [SP,#0x30+var_2C]
130B80:  LSLS            R0, R0, #0x1F
130B82:  ITT NE
130B84:  LDRNE           R0, [SP,#0x30+var_24]; void *
130B86:  BLXNE           j__ZdlPv; operator delete(void *)
130B8A:  LDR.W           R5, [R8,#0x70]
130B8E:  ADD             R6, SP, #0x30+var_2C
130B90:  LDR             R1, =(aSkw - 0x130B98); "skW" ...
130B92:  MOV             R0, R6; int
130B94:  ADD             R1, PC; "skW"
130B96:  BL              sub_13055C
130B9A:  MOV             R0, R5
130B9C:  MOV             R1, R6
130B9E:  MOVS            R2, #0x73 ; 's'
130BA0:  BL              sub_130FE8
130BA4:  LDRB.W          R0, [SP,#0x30+var_2C]
130BA8:  LSLS            R0, R0, #0x1F
130BAA:  ITT NE
130BAC:  LDRNE           R0, [SP,#0x30+var_24]; void *
130BAE:  BLXNE           j__ZdlPv; operator delete(void *)
130BB2:  LDR.W           R5, [R8,#0x70]
130BB6:  ADD             R6, SP, #0x30+var_2C
130BB8:  LDR             R1, =(aD_1 - 0x130BC0); "d" ...
130BBA:  MOV             R0, R6; int
130BBC:  ADD             R1, PC; "d"
130BBE:  BL              sub_13055C
130BC2:  MOV             R0, R5
130BC4:  MOV             R1, R6
130BC6:  MOVS            R2, #0x64 ; 'd'
130BC8:  BL              sub_130FE8
130BCC:  LDRB.W          R0, [SP,#0x30+var_2C]
130BD0:  LSLS            R0, R0, #0x1F
130BD2:  ITT NE
130BD4:  LDRNE           R0, [SP,#0x30+var_24]; void *
130BD6:  BLXNE           j__ZdlPv; operator delete(void *)
130BDA:  LDR.W           R5, [R8,#0x70]
130BDE:  ADD             R6, SP, #0x30+var_2C
130BE0:  LDR             R1, =(aFtd - 0x130BE8); "fTD" ...
130BE2:  MOV             R0, R6; int
130BE4:  ADD             R1, PC; "fTD"
130BE6:  BL              sub_13055C
130BEA:  MOV             R0, R5
130BEC:  MOV             R1, R6
130BEE:  MOVS            R2, #0x66 ; 'f'
130BF0:  BL              sub_130FE8
130BF4:  LDRB.W          R0, [SP,#0x30+var_2C]
130BF8:  LSLS            R0, R0, #0x1F
130BFA:  ITT NE
130BFC:  LDRNE           R0, [SP,#0x30+var_24]; void *
130BFE:  BLXNE           j__ZdlPv; operator delete(void *)
130C02:  LDR.W           R5, [R8,#0x70]
130C06:  ADD             R6, SP, #0x30+var_2C
130C08:  LDR             R1, =(aG_0 - 0x130C10); "g" ...
130C0A:  MOV             R0, R6; int
130C0C:  ADD             R1, PC; "g"
130C0E:  BL              sub_13055C
130C12:  MOV             R0, R5
130C14:  MOV             R1, R6
130C16:  MOVS            R2, #0x67 ; 'g'
130C18:  BL              sub_130FE8
130C1C:  LDRB.W          R0, [SP,#0x30+var_2C]
130C20:  LSLS            R0, R0, #0x1F
130C22:  ITT NE
130C24:  LDRNE           R0, [SP,#0x30+var_24]; void *
130C26:  BLXNE           j__ZdlPv; operator delete(void *)
130C2A:  LDR.W           R5, [R8,#0x70]
130C2E:  ADD             R6, SP, #0x30+var_2C
130C30:  LDR             R1, =(aH - 0x130C38); "h" ...
130C32:  MOV             R0, R6; int
130C34:  ADD             R1, PC; "h"
130C36:  BL              sub_13055C
130C3A:  MOV             R0, R5
130C3C:  MOV             R1, R6
130C3E:  MOVS            R2, #0x68 ; 'h'
130C40:  BL              sub_130FE8
130C44:  LDRB.W          R0, [SP,#0x30+var_2C]
130C48:  LSLS            R0, R0, #0x1F
130C4A:  ITT NE
130C4C:  LDRNE           R0, [SP,#0x30+var_24]; void *
130C4E:  BLXNE           j__ZdlPv; operator delete(void *)
130C52:  LDR.W           R5, [R8,#0x70]
130C56:  ADD             R6, SP, #0x30+var_2C
130C58:  LDR             R1, =(aJ - 0x130C60); "j" ...
130C5A:  MOV             R0, R6; int
130C5C:  ADD             R1, PC; "j"
130C5E:  BL              sub_13055C
130C62:  MOV             R0, R5
130C64:  MOV             R1, R6
130C66:  MOVS            R2, #0x6A ; 'j'
130C68:  BL              sub_130FE8
130C6C:  LDRB.W          R0, [SP,#0x30+var_2C]
130C70:  LSLS            R0, R0, #0x1F
130C72:  ITT NE
130C74:  LDRNE           R0, [SP,#0x30+var_24]; void *
130C76:  BLXNE           j__ZdlPv; operator delete(void *)
130C7A:  LDR.W           R5, [R8,#0x70]
130C7E:  ADD             R6, SP, #0x30+var_2C
130C80:  LDR             R1, =(aSkw+2 - 0x130C88); "kW" ...
130C82:  MOV             R0, R6; int
130C84:  ADD             R1, PC; "kW" ; src
130C86:  BL              sub_13055C
130C8A:  MOV             R0, R5
130C8C:  MOV             R1, R6
130C8E:  MOVS            R2, #0x6B ; 'k'
130C90:  BL              sub_130FE8
130C94:  LDRB.W          R0, [SP,#0x30+var_2C]
130C98:  LSLS            R0, R0, #0x1F
130C9A:  ITT NE
130C9C:  LDRNE           R0, [SP,#0x30+var_24]; void *
130C9E:  BLXNE           j__ZdlPv; operator delete(void *)
130CA2:  LDR.W           R5, [R8,#0x70]
130CA6:  ADD             R6, SP, #0x30+var_2C
130CA8:  LDR             R1, =(aL - 0x130CB0); "l" ...
130CAA:  MOV             R0, R6; int
130CAC:  ADD             R1, PC; "l"
130CAE:  BL              sub_13055C
130CB2:  MOV             R0, R5
130CB4:  MOV             R1, R6
130CB6:  MOVS            R2, #0x6C ; 'l'
130CB8:  BL              sub_130FE8
130CBC:  LDRB.W          R0, [SP,#0x30+var_2C]
130CC0:  LSLS            R0, R0, #0x1F
130CC2:  ITT NE
130CC4:  LDRNE           R0, [SP,#0x30+var_24]; void *
130CC6:  BLXNE           j__ZdlPv; operator delete(void *)
130CCA:  LDR.W           R0, [R8,#0x74]
130CCE:  VMOV.I32        Q8, #0
130CD2:  MOVS            R4, #0
130CD4:  ADD.W           R1, R0, #0x58 ; 'X'
130CD8:  VST1.32         {D16-D17}, [R1]!
130CDC:  STR             R4, [R1]
130CDE:  MOVS            R1, #1
130CE0:  BL              sub_12FFFC
130CE4:  VMOV.F32        S0, #1.5
130CE8:  STR             R4, [R0,#0x28]
130CEA:  STR             R4, [R0,#0x20]
130CEC:  ADD             R6, SP, #0x30+var_2C
130CEE:  STR             R4, [R0,#0x18]
130CF0:  VMUL.F32        S18, S16, S0
130CF4:  VSTR            S18, [R0,#0x24]
130CF8:  VSTR            S18, [R0,#0x1C]
130CFC:  VSTR            S18, [R0,#0x14]
130D00:  MOV             R0, R6; int
130D02:  LDR.W           R5, [R8,#0x74]
130D06:  LDR             R1, =(aZ_4 - 0x130D0C); "z" ...
130D08:  ADD             R1, PC; "z"
130D0A:  BL              sub_13055C
130D0E:  MOV             R0, R5
130D10:  MOV             R1, R6
130D12:  MOVS            R2, #0x7A ; 'z'
130D14:  BL              sub_130FE8
130D18:  LDRB.W          R0, [SP,#0x30+var_2C]
130D1C:  LSLS            R0, R0, #0x1F
130D1E:  ITT NE
130D20:  LDRNE           R0, [SP,#0x30+var_24]; void *
130D22:  BLXNE           j__ZdlPv; operator delete(void *)
130D26:  LDR.W           R5, [R8,#0x74]
130D2A:  ADD             R6, SP, #0x30+var_2C
130D2C:  LDR             R1, =(aX_2 - 0x130D34); "x" ...
130D2E:  MOV             R0, R6; int
130D30:  ADD             R1, PC; "x"
130D32:  BL              sub_13055C
130D36:  MOV             R0, R5
130D38:  MOV             R1, R6
130D3A:  MOVS            R2, #0x78 ; 'x'
130D3C:  BL              sub_130FE8
130D40:  LDRB.W          R0, [SP,#0x30+var_2C]
130D44:  LSLS            R0, R0, #0x1F
130D46:  ITT NE
130D48:  LDRNE           R0, [SP,#0x30+var_24]; void *
130D4A:  BLXNE           j__ZdlPv; operator delete(void *)
130D4E:  LDR.W           R5, [R8,#0x74]
130D52:  ADD             R6, SP, #0x30+var_2C
130D54:  LDR             R1, =(aC - 0x130D5C); "c" ...
130D56:  MOV             R0, R6; int
130D58:  ADD             R1, PC; "c"
130D5A:  BL              sub_13055C
130D5E:  MOV             R0, R5
130D60:  MOV             R1, R6
130D62:  MOVS            R2, #0x63 ; 'c'
130D64:  BL              sub_130FE8
130D68:  LDRB.W          R0, [SP,#0x30+var_2C]
130D6C:  LSLS            R0, R0, #0x1F
130D6E:  ITT NE
130D70:  LDRNE           R0, [SP,#0x30+var_24]; void *
130D72:  BLXNE           j__ZdlPv; operator delete(void *)
130D76:  LDR.W           R5, [R8,#0x74]
130D7A:  ADD             R6, SP, #0x30+var_2C
130D7C:  LDR             R1, =(unk_84F91 - 0x130D84)
130D7E:  MOV             R0, R6; int
130D80:  ADD             R1, PC; unk_84F91 ; src
130D82:  BL              sub_13055C
130D86:  MOV             R0, R5
130D88:  MOV             R1, R6
130D8A:  MOVS            R2, #0x76 ; 'v'
130D8C:  BL              sub_130FE8
130D90:  LDRB.W          R0, [SP,#0x30+var_2C]
130D94:  LSLS            R0, R0, #0x1F
130D96:  ITT NE
130D98:  LDRNE           R0, [SP,#0x30+var_24]; void *
130D9A:  BLXNE           j__ZdlPv; operator delete(void *)
130D9E:  LDR.W           R5, [R8,#0x74]
130DA2:  ADD             R6, SP, #0x30+var_2C
130DA4:  LDR             R1, =(aB_2 - 0x130DAC); "b" ...
130DA6:  MOV             R0, R6; int
130DA8:  ADD             R1, PC; "b"
130DAA:  BL              sub_13055C
130DAE:  MOV             R0, R5
130DB0:  MOV             R1, R6
130DB2:  MOVS            R2, #0x62 ; 'b'
130DB4:  BL              sub_130FE8
130DB8:  LDRB.W          R0, [SP,#0x30+var_2C]
130DBC:  LSLS            R0, R0, #0x1F
130DBE:  ITT NE
130DC0:  LDRNE           R0, [SP,#0x30+var_24]; void *
130DC2:  BLXNE           j__ZdlPv; operator delete(void *)
130DC6:  LDR.W           R5, [R8,#0x74]
130DCA:  ADD             R6, SP, #0x30+var_2C
130DCC:  LDR             R1, =(aN_1 - 0x130DD4); "n" ...
130DCE:  MOV             R0, R6; int
130DD0:  ADD             R1, PC; "n"
130DD2:  BL              sub_13055C
130DD6:  MOV             R0, R5
130DD8:  MOV             R1, R6
130DDA:  MOVS            R2, #0x6E ; 'n'
130DDC:  BL              sub_130FE8
130DE0:  LDRB.W          R0, [SP,#0x30+var_2C]
130DE4:  LSLS            R0, R0, #0x1F
130DE6:  ITT NE
130DE8:  LDRNE           R0, [SP,#0x30+var_24]; void *
130DEA:  BLXNE           j__ZdlPv; operator delete(void *)
130DEE:  LDR.W           R5, [R8,#0x74]
130DF2:  ADD             R6, SP, #0x30+var_2C
130DF4:  LDR             R1, =(aM_0 - 0x130DFC); "m" ...
130DF6:  MOV             R0, R6; int
130DF8:  ADD             R1, PC; "m"
130DFA:  BL              sub_13055C
130DFE:  MOV             R0, R5
130E00:  MOV             R1, R6
130E02:  MOVS            R2, #0x6D ; 'm'
130E04:  BL              sub_130FE8
130E08:  LDRB.W          R0, [SP,#0x30+var_2C]
130E0C:  LSLS            R0, R0, #0x1F
130E0E:  ITT NE
130E10:  LDRNE           R0, [SP,#0x30+var_24]; void *
130E12:  BLXNE           j__ZdlPv; operator delete(void *)
130E16:  LDR.W           R0, [R8,#0x74]
130E1A:  MOVS            R1, #3
130E1C:  BL              sub_12FFFC
130E20:  MOVS            R4, #0
130E22:  VSTR            S18, [R0,#0x24]
130E26:  STR             R4, [R0,#0x28]
130E28:  VMOV.I32        Q8, #0
130E2C:  STR             R4, [R0,#0x20]
130E2E:  ADD             R6, SP, #0x30+var_2C
130E30:  VSTR            S18, [R0,#0x1C]
130E34:  STR             R4, [R0,#0x18]
130E36:  VSTR            S18, [R0,#0x14]
130E3A:  LDR.W           R5, [R8,#0x78]
130E3E:  LDR             R1, =(asc_83A7E - 0x130E4C); "/" ...
130E40:  ADD.W           R0, R5, #0x58 ; 'X'
130E44:  VST1.32         {D16-D17}, [R0]!
130E48:  ADD             R1, PC; "/"
130E4A:  STR             R4, [R0]
130E4C:  MOV             R0, R6; int
130E4E:  BL              sub_13055C
130E52:  MOV             R0, R5
130E54:  MOV             R1, R6
130E56:  MOVS            R2, #0x2F ; '/'
130E58:  BL              sub_130FE8
130E5C:  LDRB.W          R1, [SP,#0x30+var_2C]
130E60:  STR             R4, [R0,#0x28]
130E62:  VSTR            S18, [R0,#0x24]
130E66:  STR             R4, [R0,#0x20]
130E68:  VSTR            S18, [R0,#0x1C]
130E6C:  STR             R4, [R0,#0x18]
130E6E:  VSTR            S18, [R0,#0x14]
130E72:  LSLS            R0, R1, #0x1F
130E74:  ITT NE
130E76:  LDRNE           R0, [SP,#0x30+var_24]; void *
130E78:  BLXNE           j__ZdlPv; operator delete(void *)
130E7C:  LDR.W           R0, [R8,#0x78]
130E80:  MOVS            R1, #4
130E82:  BL              sub_12FFFC
130E86:  LDR.W           R0, [R8,#0x78]
130E8A:  MOVS            R1, #5
130E8C:  BL              sub_12FFFC
130E90:  LDR.W           R0, [R8,#0x78]
130E94:  MOVS            R1, #6
130E96:  BL              sub_12FFFC
130E9A:  LDR.W           R0, [R8,#0x78]
130E9E:  MOVS            R1, #9
130EA0:  BL              sub_12FFFC
130EA4:  VMOV.F32        S0, #3.0
130EA8:  MOVS            R1, #0
130EAA:  STR             R1, [R0,#0x28]
130EAC:  ADD             R6, SP, #0x30+var_2C
130EAE:  STR             R1, [R0,#0x20]
130EB0:  STR             R1, [R0,#0x18]
130EB2:  VMUL.F32        S0, S16, S0
130EB6:  VSTR            S0, [R0,#0x24]
130EBA:  VSTR            S0, [R0,#0x1C]
130EBE:  VSTR            S0, [R0,#0x14]
130EC2:  MOV             R0, R6; int
130EC4:  LDR.W           R5, [R8,#0x78]
130EC8:  LDR             R1, =(unk_88380 - 0x130ECE)
130ECA:  ADD             R1, PC; unk_88380 ; src
130ECC:  BL              sub_13055C
130ED0:  MOV             R0, R5
130ED2:  MOV             R1, R6
130ED4:  MOVS            R2, #0x2C ; ','
130ED6:  BL              sub_130FE8
130EDA:  LDRB.W          R0, [SP,#0x30+var_2C]
130EDE:  LSLS            R0, R0, #0x1F
130EE0:  ITT NE
130EE2:  LDRNE           R0, [SP,#0x30+var_24]; void *
130EE4:  BLXNE           j__ZdlPv; operator delete(void *)
130EE8:  LDR.W           R5, [R8,#0x78]
130EEC:  ADD             R6, SP, #0x30+var_2C
130EEE:  LDR             R1, =(asc_836CD - 0x130EF6); "." ...
130EF0:  MOV             R0, R6; int
130EF2:  ADD             R1, PC; "."
130EF4:  BL              sub_13055C
130EF8:  MOV             R0, R5
130EFA:  MOV             R1, R6
130EFC:  MOVS            R2, #0x2E ; '.'
130EFE:  BL              sub_130FE8
130F02:  LDRB.W          R0, [SP,#0x30+var_2C]
130F06:  LSLS            R0, R0, #0x1F
130F08:  ITT NE
130F0A:  LDRNE           R0, [SP,#0x30+var_24]; void *
130F0C:  BLXNE           j__ZdlPv; operator delete(void *)
130F10:  LDR.W           R0, [R8,#0x78]
130F14:  MOVS            R1, #0xC
130F16:  BL              sub_12FFFC
130F1A:  LDR.W           R0, [R8,#0x78]
130F1E:  MOVS            R1, #0xB
130F20:  BL              sub_12FFFC
130F24:  LDR.W           R0, [R8,#0x78]
130F28:  MOVS            R1, #0xA
130F2A:  BL              sub_12FFFC
130F2E:  MOVS            R1, #0
130F30:  VSTR            S18, [R0,#0x24]
130F34:  STR             R1, [R0,#0x28]
130F36:  STR             R1, [R0,#0x20]
130F38:  VSTR            S18, [R0,#0x1C]
130F3C:  STR             R1, [R0,#0x18]
130F3E:  VSTR            S18, [R0,#0x14]
130F42:  MOV             R0, R8
130F44:  BL              sub_13D758
130F48:  ADD             SP, SP, #0x10
130F4A:  VPOP            {D8-D9}
130F4E:  POP.W           {R8}
130F52:  POP             {R4-R7,PC}
