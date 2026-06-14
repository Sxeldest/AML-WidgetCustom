; =========================================================
; Game Engine Function: sub_113A44
; Address            : 0x113A44 - 0x113B8E
; =========================================================

113A44:  PUSH            {R4,R5,R7,LR}
113A46:  ADD             R7, SP, #8
113A48:  SUB             SP, SP, #8
113A4A:  MOV             R4, R1
113A4C:  MOV             R5, R0
113A4E:  LDR             R0, [R0,#0x20]
113A50:  LDR             R1, [R1,#4]
113A52:  VLDR            S0, [R7,#arg_4]
113A56:  VLDR            S2, [R7,#arg_0]
113A5A:  CMP             R0, R1
113A5C:  IT NE
113A5E:  ADDSNE.W        R0, R0, #1
113A62:  BNE.W           loc_113B8A
113A66:  VLDR            S6, [R4,#8]
113A6A:  VLDR            S4, [R4,#0xC]
113A6E:  VCVT.F32.S32    S6, S6
113A72:  LDRB.W          R0, [R5,#0x28]
113A76:  VCVT.F32.S32    S4, S4
113A7A:  VSTR            S6, [R5,#0x18]
113A7E:  VSTR            S4, [R5,#0x1C]
113A82:  CBZ             R0, loc_113AA0
113A84:  LDR             R0, [R4]
113A86:  CMP             R0, #1
113A88:  BEQ             loc_113AF8
113A8A:  CMP             R0, #4
113A8C:  ITT EQ
113A8E:  MOVEQ           R0, #0
113A90:  STRBEQ.W        R0, [R5,#0x28]
113A94:  MOV             R0, R4
113A96:  ADD             SP, SP, #8
113A98:  POP.W           {R4,R5,R7,LR}
113A9C:  B.W             sub_FA4D8
113AA0:  VMOV            S8, R2
113AA4:  VCMP.F32        S6, S8
113AA8:  VMRS            APSR_nzcv, FPSCR
113AAC:  ITTT PL
113AAE:  VADDPL.F32      S2, S8, S2
113AB2:  VCMPPL.F32      S2, S6
113AB6:  VMRSPL          APSR_nzcv, FPSCR
113ABA:  BMI             loc_113B8A
113ABC:  VMOV            S2, R3
113AC0:  VCMP.F32        S4, S2
113AC4:  VMRS            APSR_nzcv, FPSCR
113AC8:  ITTT PL
113ACA:  VADDPL.F32      S0, S2, S0
113ACE:  VCMPPL.F32      S0, S4
113AD2:  VMRSPL          APSR_nzcv, FPSCR
113AD6:  BMI             loc_113B8A
113AD8:  LDR             R0, [R4]
113ADA:  CMP             R0, #2
113ADC:  BNE             loc_113B8A
113ADE:  MOV             R0, SP; this
113AE0:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
113AE4:  LDRD.W          R0, R1, [SP,#0x10+var_10]
113AE8:  STRD.W          R0, R1, [R5,#0x10]
113AEC:  MOVS            R1, #1
113AEE:  LDR             R0, [R4,#4]
113AF0:  STRB.W          R1, [R5,#0x28]
113AF4:  STR             R0, [R5,#0x20]
113AF6:  B               loc_113B84
113AF8:  MOV             R0, SP; this
113AFA:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
113AFE:  LDRD.W          R0, R1, [R5,#0x10]
113B02:  LDRD.W          R2, R3, [SP,#0x10+var_10]
113B06:  SUBS            R0, R2, R0
113B08:  MOVW            R2, #:lower16:unk_7C830
113B0C:  SBC.W           R1, R3, R1
113B10:  MOVT            R2, #:upper16:unk_7C830
113B14:  SUBS            R0, R0, R2
113B16:  SBCS.W          R0, R1, #0
113B1A:  BLT             loc_113B2A
113B1C:  MOV             R0, SP; this
113B1E:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
113B22:  LDRD.W          R0, R1, [SP,#0x10+var_10]
113B26:  STRD.W          R0, R1, [R5,#0x10]
113B2A:  LDR             R0, =(off_23496C - 0x113B30)
113B2C:  ADD             R0, PC; off_23496C
113B2E:  LDR             R0, [R0]; dword_23DEF4
113B30:  LDR             R0, [R0]
113B32:  CBZ             R0, loc_113B76
113B34:  LDR             R1, [R5,#0x24]
113B36:  CMP             R1, #3
113B38:  BLE             loc_113B4E
113B3A:  CMP.W           R1, #0x100
113B3E:  BEQ             loc_113B5C
113B40:  CMP             R1, #0x80
113B42:  BEQ             loc_113B68
113B44:  CMP             R1, #4
113B46:  BNE             loc_113B76
113B48:  LDR             R1, =(aLock - 0x113B4E); "/lock" ...
113B4A:  ADD             R1, PC; "/lock"
113B4C:  B               loc_113B72
113B4E:  CMP             R1, #1
113B50:  BEQ             loc_113B6E
113B52:  CMP             R1, #2
113B54:  BNE             loc_113B76
113B56:  LDR             R1, =(aLights - 0x113B5C); "/lights" ...
113B58:  ADD             R1, PC; "/lights"
113B5A:  B               loc_113B72
113B5C:  MOVS            R1, #0x55 ; 'U'
113B5E:  MOV.W           R2, #0xFFFFFFFF
113B62:  BL              sub_144A80
113B66:  B               loc_113B76
113B68:  LDR             R1, =(aRadio - 0x113B6E); "/radio" ...
113B6A:  ADD             R1, PC; "/radio"
113B6C:  B               loc_113B72
113B6E:  LDR             R1, =(aEngine - 0x113B74); "/engine" ...
113B70:  ADD             R1, PC; "/engine"
113B72:  BL              sub_144460
113B76:  MOVS            R0, #0
113B78:  MOV.W           R1, #0xFFFFFFFF
113B7C:  STRB.W          R0, [R5,#0x28]
113B80:  STRD.W          R1, R0, [R5,#0x20]
113B84:  MOV             R0, R4
113B86:  BL              sub_FA4D8
113B8A:  ADD             SP, SP, #8
113B8C:  POP             {R4,R5,R7,PC}
