; =========================================================
; Game Engine Function: sub_2627EC
; Address            : 0x2627EC - 0x262FAC
; =========================================================

2627EC:  PUSH            {R4,R6,R7,LR}
2627EE:  ADD             R7, SP, #8
2627F0:  MOV             R4, R1
2627F2:  SUBS            R1, R2, #1; switch 22 cases
2627F4:  CMP             R1, #0x15
2627F6:  BHI.W           def_2627FE; jumptable 002627FE default case, cases 11,14
2627FA:  VMOV            S0, R3
2627FE:  TBH.W           [PC,R1,LSL#1]; switch jump
262802:  DCW 0x16; jump table for switch statement
262804:  DCW 0x44
262806:  DCW 0x72
262808:  DCW 0xA0
26280A:  DCW 0xCE
26280C:  DCW 0xFC
26280E:  DCW 0x12C
262810:  DCW 0x15C
262812:  DCW 0x18C
262814:  DCW 0x1BA
262816:  DCW 0x1E8
262818:  DCW 0x207
26281A:  DCW 0x235
26281C:  DCW 0x1E8
26281E:  DCW 0x262
262820:  DCW 0x291
262822:  DCW 0x2C5
262824:  DCW 0x2F4
262826:  DCW 0x321
262828:  DCW 0x350
26282A:  DCW 0x37D
26282C:  DCW 0x3A8
26282E:  VCMPE.F32       S0, #0.0; jumptable 002627FE case 1
262832:  VMRS            APSR_nzcv, FPSCR
262836:  BLT             loc_26284C
262838:  VMOV.F32        S2, #1.0
26283C:  VCMPE.F32       S0, S2
262840:  VMRS            APSR_nzcv, FPSCR
262844:  ITT LE
262846:  VSTRLE          S0, [R0,#4]
26284A:  POPLE           {R4,R6,R7,PC}
26284C:  LDR.W           R0, =(TrapALError_ptr - 0x262854)
262850:  ADD             R0, PC; TrapALError_ptr
262852:  LDR             R0, [R0]; TrapALError
262854:  LDRB            R0, [R0]
262856:  CMP             R0, #0
262858:  ITT NE
26285A:  MOVNE           R0, #5; sig
26285C:  BLXNE           raise
262860:  LDREX.W         R0, [R4,#0x50]
262864:  CMP             R0, #0
262866:  BNE.W           loc_262FA2
26286A:  ADD.W           R0, R4, #0x50 ; 'P'
26286E:  MOVW            R1, #0xA003
262872:  DMB.W           ISH
262876:  STREX.W         R2, R1, [R0]
26287A:  CMP             R2, #0
26287C:  BEQ.W           loc_262FA6
262880:  LDREX.W         R2, [R0]
262884:  CMP             R2, #0
262886:  BEQ             loc_262876
262888:  B               loc_262FA2
26288A:  VCMPE.F32       S0, #0.0; jumptable 002627FE case 2
26288E:  VMRS            APSR_nzcv, FPSCR
262892:  BLT             loc_2628A8
262894:  VMOV.F32        S2, #1.0
262898:  VCMPE.F32       S0, S2
26289C:  VMRS            APSR_nzcv, FPSCR
2628A0:  ITT LE
2628A2:  VSTRLE          S0, [R0,#8]
2628A6:  POPLE           {R4,R6,R7,PC}
2628A8:  LDR.W           R0, =(TrapALError_ptr - 0x2628B0)
2628AC:  ADD             R0, PC; TrapALError_ptr
2628AE:  LDR             R0, [R0]; TrapALError
2628B0:  LDRB            R0, [R0]
2628B2:  CMP             R0, #0
2628B4:  ITT NE
2628B6:  MOVNE           R0, #5; sig
2628B8:  BLXNE           raise
2628BC:  LDREX.W         R0, [R4,#0x50]
2628C0:  CMP             R0, #0
2628C2:  BNE.W           loc_262FA2
2628C6:  ADD.W           R0, R4, #0x50 ; 'P'
2628CA:  MOVW            R1, #0xA003
2628CE:  DMB.W           ISH
2628D2:  STREX.W         R2, R1, [R0]
2628D6:  CMP             R2, #0
2628D8:  BEQ.W           loc_262FA6
2628DC:  LDREX.W         R2, [R0]
2628E0:  CMP             R2, #0
2628E2:  BEQ             loc_2628D2
2628E4:  B               loc_262FA2
2628E6:  VCMPE.F32       S0, #0.0; jumptable 002627FE case 3
2628EA:  VMRS            APSR_nzcv, FPSCR
2628EE:  BLT             loc_262904
2628F0:  VMOV.F32        S2, #1.0
2628F4:  VCMPE.F32       S0, S2
2628F8:  VMRS            APSR_nzcv, FPSCR
2628FC:  ITT LE
2628FE:  VSTRLE          S0, [R0,#0xC]
262902:  POPLE           {R4,R6,R7,PC}
262904:  LDR.W           R0, =(TrapALError_ptr - 0x26290C)
262908:  ADD             R0, PC; TrapALError_ptr
26290A:  LDR             R0, [R0]; TrapALError
26290C:  LDRB            R0, [R0]
26290E:  CMP             R0, #0
262910:  ITT NE
262912:  MOVNE           R0, #5; sig
262914:  BLXNE           raise
262918:  LDREX.W         R0, [R4,#0x50]
26291C:  CMP             R0, #0
26291E:  BNE.W           loc_262FA2
262922:  ADD.W           R0, R4, #0x50 ; 'P'
262926:  MOVW            R1, #0xA003
26292A:  DMB.W           ISH
26292E:  STREX.W         R2, R1, [R0]
262932:  CMP             R2, #0
262934:  BEQ.W           loc_262FA6
262938:  LDREX.W         R2, [R0]
26293C:  CMP             R2, #0
26293E:  BEQ             loc_26292E
262940:  B               loc_262FA2
262942:  VCMPE.F32       S0, #0.0; jumptable 002627FE case 4
262946:  VMRS            APSR_nzcv, FPSCR
26294A:  BLT             loc_262960
26294C:  VMOV.F32        S2, #1.0
262950:  VCMPE.F32       S0, S2
262954:  VMRS            APSR_nzcv, FPSCR
262958:  ITT LE
26295A:  VSTRLE          S0, [R0,#0x10]
26295E:  POPLE           {R4,R6,R7,PC}
262960:  LDR.W           R0, =(TrapALError_ptr - 0x262968)
262964:  ADD             R0, PC; TrapALError_ptr
262966:  LDR             R0, [R0]; TrapALError
262968:  LDRB            R0, [R0]
26296A:  CMP             R0, #0
26296C:  ITT NE
26296E:  MOVNE           R0, #5; sig
262970:  BLXNE           raise
262974:  LDREX.W         R0, [R4,#0x50]
262978:  CMP             R0, #0
26297A:  BNE.W           loc_262FA2
26297E:  ADD.W           R0, R4, #0x50 ; 'P'
262982:  MOVW            R1, #0xA003
262986:  DMB.W           ISH
26298A:  STREX.W         R2, R1, [R0]
26298E:  CMP             R2, #0
262990:  BEQ.W           loc_262FA6
262994:  LDREX.W         R2, [R0]
262998:  CMP             R2, #0
26299A:  BEQ             loc_26298A
26299C:  B               loc_262FA2
26299E:  VCMPE.F32       S0, #0.0; jumptable 002627FE case 5
2629A2:  VMRS            APSR_nzcv, FPSCR
2629A6:  BLT             loc_2629BC
2629A8:  VMOV.F32        S2, #1.0
2629AC:  VCMPE.F32       S0, S2
2629B0:  VMRS            APSR_nzcv, FPSCR
2629B4:  ITT LE
2629B6:  VSTRLE          S0, [R0,#0x38]
2629BA:  POPLE           {R4,R6,R7,PC}
2629BC:  LDR.W           R0, =(TrapALError_ptr - 0x2629C4)
2629C0:  ADD             R0, PC; TrapALError_ptr
2629C2:  LDR             R0, [R0]; TrapALError
2629C4:  LDRB            R0, [R0]
2629C6:  CMP             R0, #0
2629C8:  ITT NE
2629CA:  MOVNE           R0, #5; sig
2629CC:  BLXNE           raise
2629D0:  LDREX.W         R0, [R4,#0x50]
2629D4:  CMP             R0, #0
2629D6:  BNE.W           loc_262FA2
2629DA:  ADD.W           R0, R4, #0x50 ; 'P'
2629DE:  MOVW            R1, #0xA003
2629E2:  DMB.W           ISH
2629E6:  STREX.W         R2, R1, [R0]
2629EA:  CMP             R2, #0
2629EC:  BEQ.W           loc_262FA6
2629F0:  LDREX.W         R2, [R0]
2629F4:  CMP             R2, #0
2629F6:  BEQ             loc_2629E6
2629F8:  B               loc_262FA2
2629FA:  VLDR            S2, =0.1; jumptable 002627FE case 6
2629FE:  VCMPE.F32       S0, S2
262A02:  VMRS            APSR_nzcv, FPSCR
262A06:  BLT             loc_262A1C
262A08:  VMOV.F32        S2, #20.0
262A0C:  VCMPE.F32       S0, S2
262A10:  VMRS            APSR_nzcv, FPSCR
262A14:  ITT LE
262A16:  VSTRLE          S0, [R0,#0x14]
262A1A:  POPLE           {R4,R6,R7,PC}
262A1C:  LDR.W           R0, =(TrapALError_ptr - 0x262A24)
262A20:  ADD             R0, PC; TrapALError_ptr
262A22:  LDR             R0, [R0]; TrapALError
262A24:  LDRB            R0, [R0]
262A26:  CMP             R0, #0
262A28:  ITT NE
262A2A:  MOVNE           R0, #5; sig
262A2C:  BLXNE           raise
262A30:  LDREX.W         R0, [R4,#0x50]
262A34:  CMP             R0, #0
262A36:  BNE.W           loc_262FA2
262A3A:  ADD.W           R0, R4, #0x50 ; 'P'
262A3E:  MOVW            R1, #0xA003
262A42:  DMB.W           ISH
262A46:  STREX.W         R2, R1, [R0]
262A4A:  CMP             R2, #0
262A4C:  BEQ.W           loc_262FA6
262A50:  LDREX.W         R2, [R0]
262A54:  CMP             R2, #0
262A56:  BEQ             loc_262A46
262A58:  B               loc_262FA2
262A5A:  VLDR            S2, =0.1; jumptable 002627FE case 7
262A5E:  VCMPE.F32       S0, S2
262A62:  VMRS            APSR_nzcv, FPSCR
262A66:  BLT             loc_262A7C
262A68:  VMOV.F32        S2, #2.0
262A6C:  VCMPE.F32       S0, S2
262A70:  VMRS            APSR_nzcv, FPSCR
262A74:  ITT LE
262A76:  VSTRLE          S0, [R0,#0x18]
262A7A:  POPLE           {R4,R6,R7,PC}
262A7C:  LDR.W           R0, =(TrapALError_ptr - 0x262A84)
262A80:  ADD             R0, PC; TrapALError_ptr
262A82:  LDR             R0, [R0]; TrapALError
262A84:  LDRB            R0, [R0]
262A86:  CMP             R0, #0
262A88:  ITT NE
262A8A:  MOVNE           R0, #5; sig
262A8C:  BLXNE           raise
262A90:  LDREX.W         R0, [R4,#0x50]
262A94:  CMP             R0, #0
262A96:  BNE.W           loc_262FA2
262A9A:  ADD.W           R0, R4, #0x50 ; 'P'
262A9E:  MOVW            R1, #0xA003
262AA2:  DMB.W           ISH
262AA6:  STREX.W         R2, R1, [R0]
262AAA:  CMP             R2, #0
262AAC:  BEQ.W           loc_262FA6
262AB0:  LDREX.W         R2, [R0]
262AB4:  CMP             R2, #0
262AB6:  BEQ             loc_262AA6
262AB8:  B               loc_262FA2
262ABA:  VLDR            S2, =0.1; jumptable 002627FE case 8
262ABE:  VCMPE.F32       S0, S2
262AC2:  VMRS            APSR_nzcv, FPSCR
262AC6:  BLT             loc_262ADC
262AC8:  VMOV.F32        S2, #2.0
262ACC:  VCMPE.F32       S0, S2
262AD0:  VMRS            APSR_nzcv, FPSCR
262AD4:  ITT LE
262AD6:  VSTRLE          S0, [R0,#0x3C]
262ADA:  POPLE           {R4,R6,R7,PC}
262ADC:  LDR.W           R0, =(TrapALError_ptr - 0x262AE4)
262AE0:  ADD             R0, PC; TrapALError_ptr
262AE2:  LDR             R0, [R0]; TrapALError
262AE4:  LDRB            R0, [R0]
262AE6:  CMP             R0, #0
262AE8:  ITT NE
262AEA:  MOVNE           R0, #5; sig
262AEC:  BLXNE           raise
262AF0:  LDREX.W         R0, [R4,#0x50]
262AF4:  CMP             R0, #0
262AF6:  BNE.W           loc_262FA2
262AFA:  ADD.W           R0, R4, #0x50 ; 'P'
262AFE:  MOVW            R1, #0xA003
262B02:  DMB.W           ISH
262B06:  STREX.W         R2, R1, [R0]
262B0A:  CMP             R2, #0
262B0C:  BEQ.W           loc_262FA6
262B10:  LDREX.W         R2, [R0]
262B14:  CMP             R2, #0
262B16:  BEQ             loc_262B06
262B18:  B               loc_262FA2
262B1A:  VCMPE.F32       S0, #0.0; jumptable 002627FE case 9
262B1E:  VMRS            APSR_nzcv, FPSCR
262B22:  BLT             loc_262B38
262B24:  VLDR            S2, =3.16
262B28:  VCMPE.F32       S0, S2
262B2C:  VMRS            APSR_nzcv, FPSCR
262B30:  ITT LE
262B32:  VSTRLE          S0, [R0,#0x1C]
262B36:  POPLE           {R4,R6,R7,PC}
262B38:  LDR.W           R0, =(TrapALError_ptr - 0x262B40)
262B3C:  ADD             R0, PC; TrapALError_ptr
262B3E:  LDR             R0, [R0]; TrapALError
262B40:  LDRB            R0, [R0]
262B42:  CMP             R0, #0
262B44:  ITT NE
262B46:  MOVNE           R0, #5; sig
262B48:  BLXNE           raise
262B4C:  LDREX.W         R0, [R4,#0x50]
262B50:  CMP             R0, #0
262B52:  BNE.W           loc_262FA2
262B56:  ADD.W           R0, R4, #0x50 ; 'P'
262B5A:  MOVW            R1, #0xA003
262B5E:  DMB.W           ISH
262B62:  STREX.W         R2, R1, [R0]
262B66:  CMP             R2, #0
262B68:  BEQ.W           loc_262FA6
262B6C:  LDREX.W         R2, [R0]
262B70:  CMP             R2, #0
262B72:  BEQ             loc_262B62
262B74:  B               loc_262FA2
262B76:  VCMPE.F32       S0, #0.0; jumptable 002627FE case 10
262B7A:  VMRS            APSR_nzcv, FPSCR
262B7E:  BLT             loc_262B94
262B80:  VLDR            S2, =0.3
262B84:  VCMPE.F32       S0, S2
262B88:  VMRS            APSR_nzcv, FPSCR
262B8C:  ITT LE
262B8E:  VSTRLE          S0, [R0,#0x20]
262B92:  POPLE           {R4,R6,R7,PC}
262B94:  LDR.W           R0, =(TrapALError_ptr - 0x262B9C)
262B98:  ADD             R0, PC; TrapALError_ptr
262B9A:  LDR             R0, [R0]; TrapALError
262B9C:  LDRB            R0, [R0]
262B9E:  CMP             R0, #0
262BA0:  ITT NE
262BA2:  MOVNE           R0, #5; sig
262BA4:  BLXNE           raise
262BA8:  LDREX.W         R0, [R4,#0x50]
262BAC:  CMP             R0, #0
262BAE:  BNE.W           loc_262FA2
262BB2:  ADD.W           R0, R4, #0x50 ; 'P'
262BB6:  MOVW            R1, #0xA003
262BBA:  DMB.W           ISH
262BBE:  STREX.W         R2, R1, [R0]
262BC2:  CMP             R2, #0
262BC4:  BEQ.W           loc_262FA6
262BC8:  LDREX.W         R2, [R0]
262BCC:  CMP             R2, #0
262BCE:  BEQ             loc_262BBE
262BD0:  B               loc_262FA2
262BD2:  LDR.W           R0, =(TrapALError_ptr - 0x262BDA); jumptable 002627FE default case, cases 11,14
262BD6:  ADD             R0, PC; TrapALError_ptr
262BD8:  LDR             R0, [R0]; TrapALError
262BDA:  LDRB            R0, [R0]
262BDC:  CMP             R0, #0
262BDE:  ITT NE
262BE0:  MOVNE           R0, #5; sig
262BE2:  BLXNE           raise
262BE6:  LDREX.W         R0, [R4,#0x50]
262BEA:  CMP             R0, #0
262BEC:  BNE.W           loc_262FA2
262BF0:  ADD.W           R0, R4, #0x50 ; 'P'
262BF4:  MOVW            R1, #0xA002
262BF8:  DMB.W           ISH
262BFC:  STREX.W         R2, R1, [R0]
262C00:  CMP             R2, #0
262C02:  BEQ.W           loc_262FA6
262C06:  LDREX.W         R2, [R0]
262C0A:  CMP             R2, #0
262C0C:  BEQ             loc_262BFC
262C0E:  B               loc_262FA2
262C10:  VCMPE.F32       S0, #0.0; jumptable 002627FE case 12
262C14:  VMRS            APSR_nzcv, FPSCR
262C18:  BLT             loc_262C2E
262C1A:  VMOV.F32        S2, #10.0
262C1E:  VCMPE.F32       S0, S2
262C22:  VMRS            APSR_nzcv, FPSCR
262C26:  ITT LE
262C28:  VSTRLE          S0, [R0,#0x24]
262C2C:  POPLE           {R4,R6,R7,PC}
262C2E:  LDR.W           R0, =(TrapALError_ptr - 0x262C36)
262C32:  ADD             R0, PC; TrapALError_ptr
262C34:  LDR             R0, [R0]; TrapALError
262C36:  LDRB            R0, [R0]
262C38:  CMP             R0, #0
262C3A:  ITT NE
262C3C:  MOVNE           R0, #5; sig
262C3E:  BLXNE           raise
262C42:  LDREX.W         R0, [R4,#0x50]
262C46:  CMP             R0, #0
262C48:  BNE.W           loc_262FA2
262C4C:  ADD.W           R0, R4, #0x50 ; 'P'
262C50:  MOVW            R1, #0xA003
262C54:  DMB.W           ISH
262C58:  STREX.W         R2, R1, [R0]
262C5C:  CMP             R2, #0
262C5E:  BEQ.W           loc_262FA6
262C62:  LDREX.W         R2, [R0]
262C66:  CMP             R2, #0
262C68:  BEQ             loc_262C58
262C6A:  B               loc_262FA2
262C6C:  VCMPE.F32       S0, #0.0; jumptable 002627FE case 13
262C70:  VMRS            APSR_nzcv, FPSCR
262C74:  BLT             loc_262C8A
262C76:  VLDR            S2, =0.1
262C7A:  VCMPE.F32       S0, S2
262C7E:  VMRS            APSR_nzcv, FPSCR
262C82:  ITT LE
262C84:  VSTRLE          S0, [R0,#0x28]
262C88:  POPLE           {R4,R6,R7,PC}
262C8A:  LDR             R0, =(TrapALError_ptr - 0x262C90)
262C8C:  ADD             R0, PC; TrapALError_ptr
262C8E:  LDR             R0, [R0]; TrapALError
262C90:  LDRB            R0, [R0]
262C92:  CMP             R0, #0
262C94:  ITT NE
262C96:  MOVNE           R0, #5; sig
262C98:  BLXNE           raise
262C9C:  LDREX.W         R0, [R4,#0x50]
262CA0:  CMP             R0, #0
262CA2:  BNE.W           loc_262FA2
262CA6:  ADD.W           R0, R4, #0x50 ; 'P'
262CAA:  MOVW            R1, #0xA003
262CAE:  DMB.W           ISH
262CB2:  STREX.W         R2, R1, [R0]
262CB6:  CMP             R2, #0
262CB8:  BEQ.W           loc_262FA6
262CBC:  LDREX.W         R2, [R0]
262CC0:  CMP             R2, #0
262CC2:  BEQ             loc_262CB2
262CC4:  B               loc_262FA2
262CC6:  VLDR            S2, =0.075; jumptable 002627FE case 15
262CCA:  VCMPE.F32       S0, S2
262CCE:  VMRS            APSR_nzcv, FPSCR
262CD2:  BLT             loc_262CE8
262CD4:  VMOV.F32        S2, #0.25
262CD8:  VCMPE.F32       S0, S2
262CDC:  VMRS            APSR_nzcv, FPSCR
262CE0:  ITT LE
262CE2:  VSTRLE          S0, [R0,#0x58]
262CE6:  POPLE           {R4,R6,R7,PC}
262CE8:  LDR             R0, =(TrapALError_ptr - 0x262CEE)
262CEA:  ADD             R0, PC; TrapALError_ptr
262CEC:  LDR             R0, [R0]; TrapALError
262CEE:  LDRB            R0, [R0]
262CF0:  CMP             R0, #0
262CF2:  ITT NE
262CF4:  MOVNE           R0, #5; sig
262CF6:  BLXNE           raise
262CFA:  LDREX.W         R0, [R4,#0x50]
262CFE:  CMP             R0, #0
262D00:  BNE.W           loc_262FA2
262D04:  ADD.W           R0, R4, #0x50 ; 'P'
262D08:  MOVW            R1, #0xA003
262D0C:  DMB.W           ISH
262D10:  STREX.W         R2, R1, [R0]
262D14:  CMP             R2, #0
262D16:  BEQ.W           loc_262FA6
262D1A:  LDREX.W         R2, [R0]
262D1E:  CMP             R2, #0
262D20:  BEQ             loc_262D10
262D22:  B               loc_262FA2
262D24:  VCMPE.F32       S0, #0.0; jumptable 002627FE case 16
262D28:  VMRS            APSR_nzcv, FPSCR
262D2C:  BLT             loc_262D42
262D2E:  VMOV.F32        S2, #1.0
262D32:  VCMPE.F32       S0, S2
262D36:  VMRS            APSR_nzcv, FPSCR
262D3A:  ITT LE
262D3C:  VSTRLE          S0, [R0,#0x5C]
262D40:  POPLE           {R4,R6,R7,PC}
262D42:  LDR             R0, =(TrapALError_ptr - 0x262D48)
262D44:  ADD             R0, PC; TrapALError_ptr
262D46:  LDR             R0, [R0]; TrapALError
262D48:  LDRB            R0, [R0]
262D4A:  CMP             R0, #0
262D4C:  ITT NE
262D4E:  MOVNE           R0, #5; sig
262D50:  BLXNE           raise
262D54:  LDREX.W         R0, [R4,#0x50]
262D58:  CMP             R0, #0
262D5A:  BNE.W           loc_262FA2
262D5E:  ADD.W           R0, R4, #0x50 ; 'P'
262D62:  MOVW            R1, #0xA003
262D66:  DMB.W           ISH
262D6A:  STREX.W         R2, R1, [R0]
262D6E:  CMP             R2, #0
262D70:  BEQ.W           loc_262FA6
262D74:  LDREX.W         R2, [R0]
262D78:  CMP             R2, #0
262D7A:  BEQ             loc_262D6A
262D7C:  B               loc_262FA2
262D7E:  ALIGN 0x10
262D80:  DCFS 0.1
262D84:  DCFS 3.16
262D88:  DCFS 0.3
262D8C:  VLDR            S2, =0.04; jumptable 002627FE case 17
262D90:  VCMPE.F32       S0, S2
262D94:  VMRS            APSR_nzcv, FPSCR
262D98:  BLT             loc_262DAE
262D9A:  VMOV.F32        S2, #4.0
262D9E:  VCMPE.F32       S0, S2
262DA2:  VMRS            APSR_nzcv, FPSCR
262DA6:  ITT LE
262DA8:  VSTRLE          S0, [R0,#0x60]
262DAC:  POPLE           {R4,R6,R7,PC}
262DAE:  LDR             R0, =(TrapALError_ptr - 0x262DB4)
262DB0:  ADD             R0, PC; TrapALError_ptr
262DB2:  LDR             R0, [R0]; TrapALError
262DB4:  LDRB            R0, [R0]
262DB6:  CMP             R0, #0
262DB8:  ITT NE
262DBA:  MOVNE           R0, #5; sig
262DBC:  BLXNE           raise
262DC0:  LDREX.W         R0, [R4,#0x50]
262DC4:  CMP             R0, #0
262DC6:  BNE.W           loc_262FA2
262DCA:  ADD.W           R0, R4, #0x50 ; 'P'
262DCE:  MOVW            R1, #0xA003
262DD2:  DMB.W           ISH
262DD6:  STREX.W         R2, R1, [R0]
262DDA:  CMP             R2, #0
262DDC:  BEQ.W           loc_262FA6
262DE0:  LDREX.W         R2, [R0]
262DE4:  CMP             R2, #0
262DE6:  BEQ             loc_262DD6
262DE8:  B               loc_262FA2
262DEA:  VCMPE.F32       S0, #0.0; jumptable 002627FE case 18
262DEE:  VMRS            APSR_nzcv, FPSCR
262DF2:  BLT             loc_262E08
262DF4:  VMOV.F32        S2, #1.0
262DF8:  VCMPE.F32       S0, S2
262DFC:  VMRS            APSR_nzcv, FPSCR
262E00:  ITT LE
262E02:  VSTRLE          S0, [R0,#0x64]
262E06:  POPLE           {R4,R6,R7,PC}
262E08:  LDR             R0, =(TrapALError_ptr - 0x262E0E)
262E0A:  ADD             R0, PC; TrapALError_ptr
262E0C:  LDR             R0, [R0]; TrapALError
262E0E:  LDRB            R0, [R0]
262E10:  CMP             R0, #0
262E12:  ITT NE
262E14:  MOVNE           R0, #5; sig
262E16:  BLXNE           raise
262E1A:  LDREX.W         R0, [R4,#0x50]
262E1E:  CMP             R0, #0
262E20:  BNE.W           loc_262FA2
262E24:  ADD.W           R0, R4, #0x50 ; 'P'
262E28:  MOVW            R1, #0xA003
262E2C:  DMB.W           ISH
262E30:  STREX.W         R2, R1, [R0]
262E34:  CMP             R2, #0
262E36:  BEQ.W           loc_262FA6
262E3A:  LDREX.W         R2, [R0]
262E3E:  CMP             R2, #0
262E40:  BEQ             loc_262E30
262E42:  B               loc_262FA2
262E44:  VLDR            S2, =0.892; jumptable 002627FE case 19
262E48:  VCMPE.F32       S0, S2
262E4C:  VMRS            APSR_nzcv, FPSCR
262E50:  BLT             loc_262E66
262E52:  VMOV.F32        S2, #1.0
262E56:  VCMPE.F32       S0, S2
262E5A:  VMRS            APSR_nzcv, FPSCR
262E5E:  ITT LE
262E60:  VSTRLE          S0, [R0,#0x2C]
262E64:  POPLE           {R4,R6,R7,PC}
262E66:  LDR             R0, =(TrapALError_ptr - 0x262E6C)
262E68:  ADD             R0, PC; TrapALError_ptr
262E6A:  LDR             R0, [R0]; TrapALError
262E6C:  LDRB            R0, [R0]
262E6E:  CMP             R0, #0
262E70:  ITT NE
262E72:  MOVNE           R0, #5; sig
262E74:  BLXNE           raise
262E78:  LDREX.W         R0, [R4,#0x50]
262E7C:  CMP             R0, #0
262E7E:  BNE.W           loc_262FA2
262E82:  ADD.W           R0, R4, #0x50 ; 'P'
262E86:  MOVW            R1, #0xA003
262E8A:  DMB.W           ISH
262E8E:  STREX.W         R2, R1, [R0]
262E92:  CMP             R2, #0
262E94:  BEQ.W           loc_262FA6
262E98:  LDREX.W         R2, [R0]
262E9C:  CMP             R2, #0
262E9E:  BEQ             loc_262E8E
262EA0:  B               loc_262FA2
262EA2:  VLDR            S2, =1000.0; jumptable 002627FE case 20
262EA6:  VCMPE.F32       S0, S2
262EAA:  VMRS            APSR_nzcv, FPSCR
262EAE:  BLT             loc_262EC4
262EB0:  VLDR            S2, =20000.0
262EB4:  VCMPE.F32       S0, S2
262EB8:  VMRS            APSR_nzcv, FPSCR
262EBC:  ITT LE
262EBE:  VSTRLE          S0, [R0,#0x68]
262EC2:  POPLE           {R4,R6,R7,PC}
262EC4:  LDR             R0, =(TrapALError_ptr - 0x262ECA)
262EC6:  ADD             R0, PC; TrapALError_ptr
262EC8:  LDR             R0, [R0]; TrapALError
262ECA:  LDRB            R0, [R0]
262ECC:  CMP             R0, #0
262ECE:  ITT NE
262ED0:  MOVNE           R0, #5; sig
262ED2:  BLXNE           raise
262ED6:  LDREX.W         R0, [R4,#0x50]
262EDA:  CMP             R0, #0
262EDC:  BNE             loc_262FA2
262EDE:  ADD.W           R0, R4, #0x50 ; 'P'
262EE2:  MOVW            R1, #0xA003
262EE6:  DMB.W           ISH
262EEA:  STREX.W         R2, R1, [R0]
262EEE:  CMP             R2, #0
262EF0:  BEQ             loc_262FA6
262EF2:  LDREX.W         R2, [R0]
262EF6:  CMP             R2, #0
262EF8:  BEQ             loc_262EEA
262EFA:  B               loc_262FA2
262EFC:  VMOV.F32        S2, #20.0; jumptable 002627FE case 21
262F00:  VCMPE.F32       S0, S2
262F04:  VMRS            APSR_nzcv, FPSCR
262F08:  BLT             loc_262F1E
262F0A:  VLDR            S2, =1000.0
262F0E:  VCMPE.F32       S0, S2
262F12:  VMRS            APSR_nzcv, FPSCR
262F16:  ITT LE
262F18:  VSTRLE          S0, [R0,#0x6C]
262F1C:  POPLE           {R4,R6,R7,PC}
262F1E:  LDR             R0, =(TrapALError_ptr - 0x262F24)
262F20:  ADD             R0, PC; TrapALError_ptr
262F22:  LDR             R0, [R0]; TrapALError
262F24:  LDRB            R0, [R0]
262F26:  CMP             R0, #0
262F28:  ITT NE
262F2A:  MOVNE           R0, #5; sig
262F2C:  BLXNE           raise
262F30:  LDREX.W         R0, [R4,#0x50]
262F34:  CBNZ            R0, loc_262FA2
262F36:  ADD.W           R0, R4, #0x50 ; 'P'
262F3A:  MOVW            R1, #0xA003
262F3E:  DMB.W           ISH
262F42:  STREX.W         R2, R1, [R0]
262F46:  CBZ             R2, loc_262FA6
262F48:  LDREX.W         R2, [R0]
262F4C:  CMP             R2, #0
262F4E:  BEQ             loc_262F42
262F50:  B               loc_262FA2
262F52:  VCMPE.F32       S0, #0.0; jumptable 002627FE case 22
262F56:  VMRS            APSR_nzcv, FPSCR
262F5A:  BLT             loc_262F70
262F5C:  VMOV.F32        S2, #10.0
262F60:  VCMPE.F32       S0, S2
262F64:  VMRS            APSR_nzcv, FPSCR
262F68:  ITT LE
262F6A:  VSTRLE          S0, [R0,#0x30]
262F6E:  POPLE           {R4,R6,R7,PC}
262F70:  LDR             R0, =(TrapALError_ptr - 0x262F76)
262F72:  ADD             R0, PC; TrapALError_ptr
262F74:  LDR             R0, [R0]; TrapALError
262F76:  LDRB            R0, [R0]
262F78:  CMP             R0, #0
262F7A:  ITT NE
262F7C:  MOVNE           R0, #5; sig
262F7E:  BLXNE           raise
262F82:  LDREX.W         R0, [R4,#0x50]
262F86:  CBNZ            R0, loc_262FA2
262F88:  ADD.W           R0, R4, #0x50 ; 'P'
262F8C:  MOVW            R1, #0xA003
262F90:  DMB.W           ISH
262F94:  STREX.W         R2, R1, [R0]
262F98:  CBZ             R2, loc_262FA6
262F9A:  LDREX.W         R2, [R0]
262F9E:  CMP             R2, #0
262FA0:  BEQ             loc_262F94
262FA2:  CLREX.W
262FA6:  DMB.W           ISH
262FAA:  POP             {R4,R6,R7,PC}
