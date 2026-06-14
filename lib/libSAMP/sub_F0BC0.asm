; =========================================================
; Game Engine Function: sub_F0BC0
; Address            : 0xF0BC0 - 0xF0CEA
; =========================================================

F0BC0:  PUSH            {R4-R7,LR}
F0BC2:  ADD             R7, SP, #0xC
F0BC4:  PUSH.W          {R11}
F0BC8:  SUB             SP, SP, #0x30
F0BCA:  LDR             R0, =(off_234A34 - 0xF0BD0)
F0BCC:  ADD             R0, PC; off_234A34
F0BCE:  LDR             R4, [R0]; dword_2636B4
F0BD0:  LDR             R0, [R4]
F0BD2:  LDRD.W          R3, R0, [R0,#4]
F0BD6:  LDR             R1, =(aAxl - 0xF0BDE); "AXL" ...
F0BD8:  LDR             R2, =(aResolutionIXI - 0xF0BE0); "Resolution: %i x %i" ...
F0BDA:  ADD             R1, PC; "AXL"
F0BDC:  ADD             R2, PC; "Resolution: %i x %i"
F0BDE:  STR             R0, [SP,#0x40+var_40]
F0BE0:  MOVS            R0, #4; prio
F0BE2:  BLX             __android_log_print
F0BE6:  BL              sub_F97EC
F0BEA:  MOV             R1, R0; s
F0BEC:  ADD             R0, SP, #0x40+var_3C; int
F0BEE:  BL              sub_DC6DC
F0BF2:  LDR             R1, =(aFonts - 0xF0BF8); "fonts/" ...
F0BF4:  ADD             R1, PC; "fonts/"
F0BF6:  ADD             R0, SP, #0x40+var_3C; int
F0BF8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
F0BFC:  VLDR            D16, [R0]
F0C00:  MOVS            R5, #0
F0C02:  LDR             R2, [R0,#8]
F0C04:  LDR             R1, =(aArialBoldTtf - 0xF0C0C); "arial_bold.ttf" ...
F0C06:  STR             R2, [SP,#0x40+var_28]
F0C08:  ADD             R1, PC; "arial_bold.ttf"
F0C0A:  VSTR            D16, [SP,#0x40+var_30]
F0C0E:  STRD.W          R5, R5, [R0]
F0C12:  STR             R5, [R0,#8]
F0C14:  ADD             R0, SP, #0x40+var_30; int
F0C16:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
F0C1A:  VLDR            D16, [R0]
F0C1E:  LDR             R1, [R0,#8]
F0C20:  STR             R1, [SP,#0x40+var_18]
F0C22:  VSTR            D16, [SP,#0x40+var_20]
F0C26:  STRD.W          R5, R5, [R0]
F0C2A:  STR             R5, [R0,#8]
F0C2C:  LDRB.W          R0, [SP,#0x40+var_30]
F0C30:  LSLS            R0, R0, #0x1F
F0C32:  ITT NE
F0C34:  LDRNE           R0, [SP,#0x40+var_28]; void *
F0C36:  BLXNE           j__ZdlPv; operator delete(void *)
F0C3A:  LDRB.W          R0, [SP,#0x40+var_3C]
F0C3E:  LSLS            R0, R0, #0x1F
F0C40:  ITT NE
F0C42:  LDRNE           R0, [SP,#0x40+var_34]; void *
F0C44:  BLXNE           j__ZdlPv; operator delete(void *)
F0C48:  MOVS            R0, #0x88; unsigned int
F0C4A:  BLX             j__Znwj; operator new(uint)
F0C4E:  MOV             R6, R0
F0C50:  LDR             R0, [R4]
F0C52:  VLDR            S0, [R0,#4]
F0C56:  VLDR            S2, [R0,#8]
F0C5A:  VCVT.F32.S32    S0, S0
F0C5E:  VCVT.F32.S32    S2, S2
F0C62:  VSTR            S0, [SP,#0x40+var_30]
F0C66:  VSTR            S2, [SP,#0x40+var_30+4]
F0C6A:  ADD             R1, SP, #0x40+var_30
F0C6C:  ADD             R2, SP, #0x40+var_20
F0C6E:  MOV             R0, R6
F0C70:  BL              sub_129E70
F0C74:  LDR             R4, =(dword_23DEEC - 0xF0C7C)
F0C76:  LDR             R0, [R6]
F0C78:  ADD             R4, PC; dword_23DEEC
F0C7A:  LDR             R1, [R0,#0x30]
F0C7C:  STR             R6, [R4]
F0C7E:  MOV             R0, R6
F0C80:  BLX             R1
F0C82:  LDR             R0, [R4]
F0C84:  LDR             R1, [R0]
F0C86:  LDR             R1, [R1,#8]
F0C88:  BLX             R1
F0C8A:  LDRB.W          R0, [SP,#0x40+var_20]
F0C8E:  LSLS            R0, R0, #0x1F
F0C90:  ITT NE
F0C92:  LDRNE           R0, [SP,#0x40+var_18]; void *
F0C94:  BLXNE           j__ZdlPv; operator delete(void *)
F0C98:  LDR             R0, =(off_2349A8 - 0xF0C9E)
F0C9A:  ADD             R0, PC; off_2349A8
F0C9C:  LDR             R0, [R0]; dword_381BF4
F0C9E:  LDR             R0, [R0]
F0CA0:  BL              sub_17C21C
F0CA4:  MOVS            R0, #0xC; unsigned int
F0CA6:  BLX             j__Znwj; operator new(uint)
F0CAA:  MOV             R4, R0
F0CAC:  BL              sub_F1414
F0CB0:  LDR             R0, =(dword_23DEF8 - 0xF0CB6)
F0CB2:  ADD             R0, PC; dword_23DEF8
F0CB4:  STR             R4, [R0]
F0CB6:  MOVS            R0, #1; unsigned int
F0CB8:  BLX             j__Znwj; operator new(uint)
F0CBC:  MOV             R4, R0
F0CBE:  BL              sub_F1F46
F0CC2:  LDR             R0, =(dword_23DF10 - 0xF0CC8)
F0CC4:  ADD             R0, PC; dword_23DF10
F0CC6:  STR             R4, [R0]
F0CC8:  MOVS            R0, #0x2C ; ','; unsigned int
F0CCA:  BLX             j__Znwj; operator new(uint)
F0CCE:  MOV             R4, R0
F0CD0:  BL              sub_10E584
F0CD4:  LDR             R0, =(dword_23DF14 - 0xF0CDA)
F0CD6:  ADD             R0, PC; dword_23DF14
F0CD8:  STR             R4, [R0]
F0CDA:  BL              sub_F421C
F0CDE:  BL              sub_F5398
F0CE2:  ADD             SP, SP, #0x30 ; '0'
F0CE4:  POP.W           {R11}
F0CE8:  POP             {R4-R7,PC}
