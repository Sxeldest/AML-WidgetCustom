; =========================================================
; Game Engine Function: _ZN9cBuoyancy12PreCalcSetupEP9CPhysicalf
; Address            : 0x56F9A0 - 0x56FCF8
; =========================================================

56F9A0:  PUSH            {R4-R7,LR}
56F9A2:  ADD             R7, SP, #0xC
56F9A4:  PUSH.W          {R11}
56F9A8:  MOV             R5, R1
56F9AA:  MOV             R4, R0
56F9AC:  LDRB.W          R0, [R5,#0x3A]
56F9B0:  MOV             R6, R2
56F9B2:  AND.W           R1, R0, #7
56F9B6:  MOVS            R0, #0
56F9B8:  CMP             R1, #2
56F9BA:  BNE             loc_56F9C6
56F9BC:  LDR.W           R1, [R5,#0x5A0]
56F9C0:  CMP             R1, #5
56F9C2:  IT EQ
56F9C4:  MOVEQ           R0, #1
56F9C6:  STRB.W          R0, [R4,#0xBA]
56F9CA:  MOV             R0, R5; this
56F9CC:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
56F9D0:  VLDR            D16, [R0]
56F9D4:  LDR             R1, [R0,#8]
56F9D6:  STR.W           R1, [R4,#0x84]
56F9DA:  ADD.W           R1, R4, #0x7C ; '|'
56F9DE:  VSTR            D16, [R4,#0x7C]
56F9E2:  VLDR            D16, [R0,#0xC]
56F9E6:  LDR             R0, [R0,#0x14]
56F9E8:  LDRB.W          R3, [R4,#0xBA]
56F9EC:  STR             R0, [R4,#0x78]
56F9EE:  ADD.W           R0, R4, #0x70 ; 'p'
56F9F2:  VSTR            D16, [R4,#0x70]
56F9F6:  CMP             R3, #0
56F9F8:  LDRSH.W         R2, [R5,#0x26]
56F9FC:  BEQ             loc_56FA7E
56F9FE:  SUB.W           R3, R2, #0x1BE; switch 48 cases
56FA02:  CMP             R3, #0x2F ; '/'
56FA04:  BHI.W           def_56FA08; jumptable 0056FA08 default case
56FA08:  TBH.W           [PC,R3,LSL#1]; switch jump
56FA0C:  DCW 0xA2; jump table for switch statement
56FA0E:  DCW 0x9F
56FA10:  DCW 0x9F
56FA12:  DCW 0x9F
56FA14:  DCW 0x9F
56FA16:  DCW 0x9F
56FA18:  DCW 0xB1
56FA1A:  DCW 0x30
56FA1C:  DCW 0xBA
56FA1E:  DCW 0x9F
56FA20:  DCW 0x9F
56FA22:  DCW 0x9F
56FA24:  DCW 0x9F
56FA26:  DCW 0x9F
56FA28:  DCW 0x9F
56FA2A:  DCW 0x9F
56FA2C:  DCW 0x9F
56FA2E:  DCW 0x9F
56FA30:  DCW 0x9F
56FA32:  DCW 0x9F
56FA34:  DCW 0x9F
56FA36:  DCW 0x9F
56FA38:  DCW 0x9F
56FA3A:  DCW 0x9F
56FA3C:  DCW 0x9F
56FA3E:  DCW 0x9F
56FA40:  DCW 0xC5
56FA42:  DCW 0xD2
56FA44:  DCW 0x9F
56FA46:  DCW 0x9F
56FA48:  DCW 0x9F
56FA4A:  DCW 0x9F
56FA4C:  DCW 0x9F
56FA4E:  DCW 0x9F
56FA50:  DCW 0x9F
56FA52:  DCW 0x9F
56FA54:  DCW 0x9F
56FA56:  DCW 0x9F
56FA58:  DCW 0xEB
56FA5A:  DCW 0x9F
56FA5C:  DCW 0x9F
56FA5E:  DCW 0x9F
56FA60:  DCW 0x9F
56FA62:  DCW 0x9F
56FA64:  DCW 0x9F
56FA66:  DCW 0x9F
56FA68:  DCW 0x9F
56FA6A:  DCW 0x30
56FA6C:  VLDR            S0, =0.9; jumptable 0056FA08 cases 453,493
56FA70:  VLDR            S2, [R4,#0x80]
56FA74:  VMUL.F32        S0, S2, S0
56FA78:  VSTR            S0, [R4,#0x80]
56FA7C:  B               loc_56FC02
56FA7E:  CMP.W           R2, #0x1CC
56FA82:  BEQ             loc_56FA9E
56FA84:  MOVW            R3, #0x1A1
56FA88:  CMP             R2, R3
56FA8A:  BNE             loc_56FAE8
56FA8C:  VLDR            S0, =1.15
56FA90:  VLDR            S2, [R4,#0x74]
56FA94:  VLDR            S4, [R4,#0x80]
56FA98:  VLDR            S6, =0.4
56FA9C:  B               loc_56FBF2
56FA9E:  VLDR            S0, =-0.6
56FAA2:  VLDR            S4, [R4,#0x74]
56FAA6:  VLDR            S10, =1.4
56FAAA:  VMUL.F32        S0, S4, S0
56FAAE:  VLDR            S2, [R4,#0x70]
56FAB2:  VLDR            S12, =0.3
56FAB6:  VMUL.F32        S4, S4, S10
56FABA:  VLDR            S6, [R4,#0x7C]
56FABE:  VLDR            S8, [R4,#0x84]
56FAC2:  VMUL.F32        S2, S2, S12
56FAC6:  VLDR            S10, =-0.1
56FACA:  VMUL.F32        S6, S6, S12
56FACE:  VADD.F32        S8, S8, S10
56FAD2:  VSTR            S2, [R4,#0x70]
56FAD6:  VSTR            S4, [R4,#0x74]
56FADA:  VSTR            S6, [R4,#0x7C]
56FADE:  VSTR            S0, [R4,#0x80]
56FAE2:  VSTR            S8, [R4,#0x84]
56FAE6:  B               loc_56FC02
56FAE8:  LDRB.W          R2, [R5,#0x3A]
56FAEC:  AND.W           R2, R2, #7
56FAF0:  CMP             R2, #2
56FAF2:  ITT EQ
56FAF4:  LDREQ.W         R2, [R5,#0x5A4]
56FAF8:  CMPEQ           R2, #3
56FAFA:  BNE.W           loc_56FC02
56FAFE:  VLDR            S0, [R4,#0x74]
56FB02:  VLDR            S2, [R4,#0x84]
56FB06:  VLDR            S4, =-1.1
56FB0A:  VNEG.F32        S0, S0
56FB0E:  VLDR            S6, =0.85
56FB12:  VMUL.F32        S4, S2, S4
56FB16:  VMUL.F32        S2, S2, S6
56FB1A:  VSTR            S4, [R4,#0x78]
56FB1E:  VSTR            S0, [R4,#0x80]
56FB22:  VSTR            S2, [R4,#0x84]
56FB26:  B               loc_56FC02
56FB28:  MOVW            R3, #0x253; jumptable 0056FA08 default case
56FB2C:  CMP             R2, R3
56FB2E:  BNE             loc_56FB4A; jumptable 0056FA08 cases 447-451,455-471,474-483,485-492
56FB30:  VMOV.F32        S0, #1.25
56FB34:  VLDR            S2, [R4,#0x74]
56FB38:  VLDR            S4, [R4,#0x80]
56FB3C:  VLDR            S6, [R4,#0x84]
56FB40:  VLDR            S8, =0.8
56FB44:  VLDR            S10, =-0.1
56FB48:  B               loc_56FBC8
56FB4A:  VLDR            S0, =1.05; jumptable 0056FA08 cases 447-451,455-471,474-483,485-492
56FB4E:  B               loc_56FBE6
56FB50:  VLDR            S0, =0.9; jumptable 0056FA08 case 446
56FB54:  VLDR            S2, [R4,#0x74]
56FB58:  VLDR            S4, [R4,#0x80]
56FB5C:  VMUL.F32        S2, S2, S0
56FB60:  VMUL.F32        S0, S4, S0
56FB64:  VSTR            S2, [R4,#0x74]
56FB68:  VSTR            S0, [R4,#0x80]
56FB6C:  B               loc_56FC02
56FB6E:  VMOV.F32        S0, #1.25; jumptable 0056FA08 case 452
56FB72:  VLDR            S2, [R4,#0x74]
56FB76:  VLDR            S4, [R4,#0x80]
56FB7A:  VLDR            S6, =0.83
56FB7E:  B               loc_56FBF2
56FB80:  VLDR            S0, =1.3; jumptable 0056FA08 case 454
56FB84:  VLDR            S2, [R4,#0x74]
56FB88:  VLDR            S4, [R4,#0x80]
56FB8C:  VLDR            S6, [R4,#0x84]
56FB90:  VLDR            S8, =0.82
56FB94:  B               loc_56FBC4
56FB96:  VLDR            S0, =1.1; jumptable 0056FA08 case 472
56FB9A:  VLDR            S2, [R4,#0x74]
56FB9E:  VLDR            S4, [R4,#0x80]
56FBA2:  VLDR            S6, [R4,#0x84]
56FBA6:  VLDR            S8, =0.9
56FBAA:  VLDR            S10, =-0.3
56FBAE:  B               loc_56FBC8
56FBB0:  VLDR            S0, =1.3; jumptable 0056FA08 case 473
56FBB4:  VLDR            S2, [R4,#0x74]
56FBB8:  VLDR            S4, [R4,#0x80]
56FBBC:  VLDR            S6, [R4,#0x84]
56FBC0:  VLDR            S8, =0.9
56FBC4:  VLDR            S10, =-0.2
56FBC8:  VMUL.F32        S0, S2, S0
56FBCC:  VMUL.F32        S2, S4, S8
56FBD0:  VADD.F32        S4, S6, S10
56FBD4:  VSTR            S0, [R4,#0x74]
56FBD8:  VSTR            S2, [R4,#0x80]
56FBDC:  VSTR            S4, [R4,#0x84]
56FBE0:  B               loc_56FC02
56FBE2:  VLDR            S0, =1.1; jumptable 0056FA08 case 484
56FBE6:  VLDR            S2, [R4,#0x74]
56FBEA:  VLDR            S4, [R4,#0x80]
56FBEE:  VLDR            S6, =0.9
56FBF2:  VMUL.F32        S0, S2, S0
56FBF6:  VMUL.F32        S2, S4, S6
56FBFA:  VSTR            S0, [R4,#0x74]
56FBFE:  VSTR            S2, [R4,#0x80]
56FC02:  VLDR            S2, [R4,#0x78]
56FC06:  VMOV.F32        S6, #0.5
56FC0A:  VLDR            S4, [R4,#0x84]
56FC0E:  VMOV            S0, R6
56FC12:  VLDR            D17, [R0]
56FC16:  ADD.W           R0, R4, #0xA0
56FC1A:  VSUB.F32        S4, S2, S4
56FC1E:  VLDR            D16, [R1]
56FC22:  VSUB.F32        D16, D17, D16
56FC26:  VMOV.I32        D17, #0x3F000000
56FC2A:  VMUL.F32        D1, D16, D17
56FC2E:  VMUL.F32        S4, S4, S6
56FC32:  VST1.32         {D1[1]}, [R0@32]
56FC36:  ADD.W           R0, R4, #0x9C
56FC3A:  VST1.32         {D1[0]}, [R0@32]
56FC3E:  VCMPE.F32       S4, S2
56FC42:  VMRS            APSR_nzcv, FPSCR
56FC46:  VSTR            S4, [R4,#0xA4]
56FC4A:  ITT GT
56FC4C:  VCMPEGT.F32     S4, S3
56FC50:  VMRSGT          APSR_nzcv, FPSCR
56FC54:  BLE             loc_56FC68
56FC56:  VDIV.F32        S6, S3, S4
56FC5A:  VDIV.F32        S4, S2, S4
56FC5E:  VMOV.F32        S2, #1.0
56FC62:  VSTR            S4, [R4,#0xA8]
56FC66:  B               loc_56FC9E
56FC68:  VCMPE.F32       S3, S2
56FC6C:  VMRS            APSR_nzcv, FPSCR
56FC70:  ITT GT
56FC72:  VCMPEGT.F32     S3, S4
56FC76:  VMRSGT          APSR_nzcv, FPSCR
56FC7A:  BLE             loc_56FC8E
56FC7C:  VDIV.F32        S8, S2, S3
56FC80:  VMOV.F32        S6, #1.0
56FC84:  VSTR            S8, [R4,#0xA8]
56FC88:  VMOV.F32        S2, S3
56FC8C:  B               loc_56FC9A
56FC8E:  VDIV.F32        S6, S3, S2
56FC92:  MOV.W           R0, #0x3F800000
56FC96:  STR.W           R0, [R4,#0xA8]
56FC9A:  VDIV.F32        S2, S4, S2
56FC9E:  VMOV.I32        Q8, #0
56FCA2:  VSTR            S6, [R4,#0xAC]
56FCA6:  ADD.W           R0, R4, #0xBC
56FCAA:  VLDR            S4, [R4,#0x64]
56FCAE:  VLDR            S6, [R4,#0x68]
56FCB2:  MOV.W           R1, #0x3F800000
56FCB6:  VST1.32         {D16-D17}, [R0]
56FCBA:  MOVS            R0, #0
56FCBC:  STRB.W          R0, [R4,#0x98]
56FCC0:  VSTR            S2, [R4,#0xB0]
56FCC4:  VADD.F32        S2, S6, S4
56FCC8:  STR.W           R1, [R4,#0x88]
56FCCC:  LDR             R1, [R5,#0x14]
56FCCE:  ADD.W           R2, R1, #0x30 ; '0'
56FCD2:  CMP             R1, #0
56FCD4:  IT EQ
56FCD6:  ADDEQ           R2, R5, #4
56FCD8:  VLDR            D16, [R2]
56FCDC:  LDR             R1, [R2,#8]
56FCDE:  STR             R1, [R4,#8]
56FCE0:  STRD.W          R0, R0, [R4,#0x58]
56FCE4:  STR             R1, [R4,#0x60]
56FCE6:  VSTR            S0, [R4,#0x6C]
56FCEA:  VSTR            S2, [R4,#0x64]
56FCEE:  VSTR            D16, [R4]
56FCF2:  POP.W           {R11}
56FCF6:  POP             {R4-R7,PC}
