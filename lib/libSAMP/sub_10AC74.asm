; =========================================================
; Game Engine Function: sub_10AC74
; Address            : 0x10AC74 - 0x10AD80
; =========================================================

10AC74:  PUSH            {R4-R7,LR}
10AC76:  ADD             R7, SP, #0xC
10AC78:  PUSH.W          {R8,R9,R11}
10AC7C:  SUB             SP, SP, #8
10AC7E:  MOV             R8, R0
10AC80:  LDR             R0, =(off_23494C - 0x10AC8C)
10AC82:  LDR             R4, =(off_263054 - 0x10AC92)
10AC84:  MOVW            R2, #:lower16:unk_2BCC89
10AC88:  ADD             R0, PC; off_23494C
10AC8A:  MOVT            R2, #:upper16:unk_2BCC89
10AC8E:  ADD             R4, PC; off_263054
10AC90:  LDR             R5, [R0]; dword_23DF24
10AC92:  LDR             R0, =(byte_26308C - 0x10AC9A)
10AC94:  LDR             R1, [R5]
10AC96:  ADD             R0, PC; byte_26308C
10AC98:  ADD             R1, R2
10AC9A:  STR             R1, [R4]
10AC9C:  LDRB            R0, [R0]
10AC9E:  DMB.W           ISH
10ACA2:  LSLS            R0, R0, #0x1F
10ACA4:  BEQ             loc_10AD58
10ACA6:  LDR             R6, =(dword_263080 - 0x10ACAC)
10ACA8:  ADD             R6, PC; dword_263080
10ACAA:  LDR             R0, [R6,#(dword_263084 - 0x263080)]; this
10ACAC:  CMP             R0, #0
10ACAE:  BEQ             loc_10AD3E
10ACB0:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
10ACB4:  CMP             R0, #0
10ACB6:  STR             R0, [SP,#0x20+var_1C]
10ACB8:  BEQ             loc_10AD3E
10ACBA:  LDR             R6, [R6]
10ACBC:  MOV             R5, R0
10ACBE:  STR             R6, [SP,#0x20+var_20]
10ACC0:  CBZ             R6, loc_10AD16
10ACC2:  BL              sub_10B314
10ACC6:  CBZ             R0, loc_10AD16
10ACC8:  BL              sub_10B380
10ACCC:  CBZ             R0, loc_10AD16
10ACCE:  LDR             R0, =(off_263088 - 0x10ACD4)
10ACD0:  ADD             R0, PC; off_263088
10ACD2:  LDR             R1, [R0]
10ACD4:  MOV             R9, R0
10ACD6:  MOVS            R0, #1
10ACD8:  BLX             R1
10ACDA:  BL              sub_10B4A0
10ACDE:  LDR             R0, =(off_234B14 - 0x10ACE8)
10ACE0:  MOVS            R3, #0; s2d
10ACE2:  LDR             R1, =(_ZTI10ICustomHud - 0x10ACEA); `typeinfo for'ICustomHud ...
10ACE4:  ADD             R0, PC; off_234B14
10ACE6:  ADD             R1, PC; lpstype
10ACE8:  LDR             R2, [R0]; lpdtype
10ACEA:  MOV             R0, R6; lpsrc
10ACEC:  BLX             j___dynamic_cast
10ACF0:  CBZ             R0, loc_10ACF8
10ACF2:  LDR             R1, [R0]
10ACF4:  LDR             R1, [R1,#0x54]
10ACF6:  BLX             R1
10ACF8:  BL              sub_10B4E4
10ACFC:  LDR             R0, [R6]
10ACFE:  LDR             R2, [R0,#0x28]
10AD00:  LDR             R1, =(unk_263090 - 0x10AD06)
10AD02:  ADD             R1, PC; unk_263090
10AD04:  MOV             R0, R6
10AD06:  BLX             R2
10AD08:  MOVS            R0, #0
10AD0A:  BL              sub_163C8C
10AD0E:  LDR.W           R1, [R9]
10AD12:  MOVS            R0, #0
10AD14:  BLX             R1
10AD16:  ADDS            R0, R5, #4
10AD18:  DMB.W           ISH
10AD1C:  LDREX.W         R1, [R0]
10AD20:  SUBS            R2, R1, #1
10AD22:  STREX.W         R3, R2, [R0]
10AD26:  CMP             R3, #0
10AD28:  BNE             loc_10AD1C
10AD2A:  DMB.W           ISH
10AD2E:  CBNZ            R1, loc_10AD3E
10AD30:  LDR             R0, [R5]
10AD32:  LDR             R1, [R0,#8]
10AD34:  MOV             R0, R5
10AD36:  BLX             R1
10AD38:  MOV             R0, R5; this
10AD3A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10AD3E:  LDR             R1, [R4]
10AD40:  CBZ             R1, loc_10AD50
10AD42:  MOV             R0, R8
10AD44:  ADD             SP, SP, #8
10AD46:  POP.W           {R8,R9,R11}
10AD4A:  POP.W           {R4-R7,LR}
10AD4E:  BX              R1
10AD50:  ADD             SP, SP, #8
10AD52:  POP.W           {R8,R9,R11}
10AD56:  POP             {R4-R7,PC}
10AD58:  LDR             R0, =(byte_26308C - 0x10AD5E)
10AD5A:  ADD             R0, PC; byte_26308C ; __guard *
10AD5C:  BLX             j___cxa_guard_acquire
10AD60:  CMP             R0, #0
10AD62:  BEQ             loc_10ACA6
10AD64:  LDR             R1, =(off_263088 - 0x10AD76)
10AD66:  MOVW            R3, #:lower16:(loc_1C07D0+1)
10AD6A:  LDR             R0, =(byte_26308C - 0x10AD78)
10AD6C:  MOVT            R3, #:upper16:(loc_1C07D0+1)
10AD70:  LDR             R2, [R5]
10AD72:  ADD             R1, PC; off_263088
10AD74:  ADD             R0, PC; byte_26308C ; __guard *
10AD76:  ADD             R2, R3
10AD78:  STR             R2, [R1]
10AD7A:  BLX             j___cxa_guard_release
10AD7E:  B               loc_10ACA6
