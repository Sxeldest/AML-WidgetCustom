; =========================================================
; Game Engine Function: sub_10AB48
; Address            : 0x10AB48 - 0x10AC58
; =========================================================

10AB48:  PUSH            {R4-R7,LR}
10AB4A:  ADD             R7, SP, #0xC
10AB4C:  PUSH.W          {R8}
10AB50:  VPUSH           {D8}
10AB54:  SUB             SP, SP, #0x28
10AB56:  MOV             R8, R1
10AB58:  LDR             R1, =(off_23494C - 0x10AB64)
10AB5A:  LDR             R6, =(dword_263080 - 0x10AB68)
10AB5C:  MOVW            R5, #:lower16:unk_2BCC3D
10AB60:  ADD             R1, PC; off_23494C
10AB62:  LDR             R4, =(dword_263050 - 0x10AB70)
10AB64:  ADD             R6, PC; dword_263080
10AB66:  MOVT            R5, #:upper16:unk_2BCC3D
10AB6A:  LDR             R1, [R1]; dword_23DF24
10AB6C:  ADD             R4, PC; dword_263050
10AB6E:  LDR             R3, [R1]
10AB70:  LDR             R1, [R6,#(dword_263084 - 0x263080)]
10AB72:  ADD             R3, R5
10AB74:  STR             R3, [R4]
10AB76:  CMP             R1, #0
10AB78:  BEQ             loc_10AC30
10AB7A:  LDR             R5, [R1,#4]
10AB7C:  ADDS            R5, #1
10AB7E:  BEQ             loc_10AC30
10AB80:  MOV             R0, R1; this
10AB82:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
10AB86:  CMP             R0, #0
10AB88:  STR             R0, [SP,#0x40+var_1C]
10AB8A:  BEQ             loc_10AC44
10AB8C:  LDR             R6, [R6]
10AB8E:  MOV             R4, R0
10AB90:  STR             R6, [SP,#0x40+var_20]
10AB92:  CBZ             R6, loc_10AC04
10AB94:  LDR             R0, [R6]
10AB96:  VLDR            S16, [R8]
10AB9A:  LDR             R2, [R0,#0x10]
10AB9C:  ADD             R0, SP, #0x40+var_30
10AB9E:  MOV             R1, R6
10ABA0:  BLX             R2
10ABA2:  VLDR            S0, [SP,#0x40+var_30]
10ABA6:  VCMP.F32        S16, S0
10ABAA:  VMRS            APSR_nzcv, FPSCR
10ABAE:  BLT             loc_10AC04
10ABB0:  LDR             R0, [R6]
10ABB2:  VLDR            S16, [R8,#4]
10ABB6:  LDR             R2, [R0,#0x10]
10ABB8:  MOV             R0, SP
10ABBA:  MOV             R1, R6
10ABBC:  BLX             R2
10ABBE:  VLDR            S0, [SP,#0x40+var_38]
10ABC2:  VCMP.F32        S16, S0
10ABC6:  VMRS            APSR_nzcv, FPSCR
10ABCA:  BHI             loc_10AC04
10ABCC:  LDR             R0, [R6]
10ABCE:  VLDR            S16, [R8,#4]
10ABD2:  LDR             R2, [R0,#0x10]
10ABD4:  ADD             R0, SP, #0x40+var_30
10ABD6:  MOV             R1, R6
10ABD8:  BLX             R2
10ABDA:  VLDR            S0, [SP,#0x40+var_2C]
10ABDE:  VCMP.F32        S16, S0
10ABE2:  VMRS            APSR_nzcv, FPSCR
10ABE6:  BLT             loc_10AC04
10ABE8:  LDR             R0, [R6]
10ABEA:  VLDR            S16, [R8,#4]
10ABEE:  LDR             R2, [R0,#0x10]
10ABF0:  MOV             R0, SP
10ABF2:  MOV             R1, R6
10ABF4:  BLX             R2
10ABF6:  VLDR            S0, [SP,#0x40+var_34]
10ABFA:  VCMP.F32        S16, S0
10ABFE:  VMRS            APSR_nzcv, FPSCR
10AC02:  BLS             loc_10AC54
10AC04:  MOVS            R5, #0
10AC06:  ADDS            R0, R4, #4
10AC08:  DMB.W           ISH
10AC0C:  LDREX.W         R1, [R0]
10AC10:  SUBS            R2, R1, #1
10AC12:  STREX.W         R3, R2, [R0]
10AC16:  CMP             R3, #0
10AC18:  BNE             loc_10AC0C
10AC1A:  DMB.W           ISH
10AC1E:  CBNZ            R1, loc_10AC46
10AC20:  LDR             R0, [R4]
10AC22:  LDR             R1, [R0,#8]
10AC24:  MOV             R0, R4
10AC26:  BLX             R1
10AC28:  MOV             R0, R4; this
10AC2A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10AC2E:  B               loc_10AC46
10AC30:  CBZ             R3, loc_10AC44
10AC32:  MOV             R1, R8
10AC34:  ADD             SP, SP, #0x28 ; '('
10AC36:  VPOP            {D8}
10AC3A:  POP.W           {R8}
10AC3E:  POP.W           {R4-R7,LR}
10AC42:  BX              R3
10AC44:  MOVS            R5, #0
10AC46:  MOV             R0, R5
10AC48:  ADD             SP, SP, #0x28 ; '('
10AC4A:  VPOP            {D8}
10AC4E:  POP.W           {R8}
10AC52:  POP             {R4-R7,PC}
10AC54:  MOVS            R5, #1
10AC56:  B               loc_10AC06
