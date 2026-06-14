; =========================================================
; Game Engine Function: sub_89B34
; Address            : 0x89B34 - 0x89DF4
; =========================================================

89B34:  PUSH            {R4-R7,LR}
89B36:  ADD             R7, SP, #0xC
89B38:  PUSH.W          {R8}
89B3C:  VPUSH           {D8-D13}
89B40:  SUB             SP, SP, #0x30; float
89B42:  LDR             R5, =(dword_1ACF68 - 0x89B4A)
89B44:  LDR             R6, =(__stack_chk_guard_ptr - 0x89B50)
89B46:  ADD             R5, PC; dword_1ACF68
89B48:  VLDR            S16, [R7,#arg_8]
89B4C:  ADD             R6, PC; __stack_chk_guard_ptr
89B4E:  LDR             R6, [R6]; __stack_chk_guard
89B50:  LDR             R6, [R6]
89B52:  STR             R6, [SP,#0x70+var_44]
89B54:  LDR             R6, [R5]
89B56:  STRD.W          R0, R1, [SP,#0x70+var_4C]
89B5A:  MOVW            R0, #0x19AC
89B5E:  STRD.W          R2, R3, [SP,#0x70+var_54]
89B62:  MOVS            R1, #0xF
89B64:  LDR             R4, [R6,R0]
89B66:  ADD             R2, SP, #0x70+var_54; int
89B68:  LDR             R3, [R7,#arg_0]; int
89B6A:  LDR.W           R0, [R4,#0x27C]; int
89B6E:  STR             R1, [SP,#0x70+var_6C]; int
89B70:  ADD             R1, SP, #0x70+var_4C; int
89B72:  VSTR            S16, [SP,#0x70+var_70]
89B76:  BL              sub_9D624
89B7A:  LDR             R0, [R7,#arg_4]
89B7C:  CMP             R0, #0
89B7E:  BEQ.W           loc_89DD6
89B82:  MOVW            R0, #0x155C
89B86:  ADD             R0, R6
89B88:  VLDR            S18, [R0]
89B8C:  VCMP.F32        S18, #0.0
89B90:  VMRS            APSR_nzcv, FPSCR
89B94:  BLE.W           loc_89DD6
89B98:  VMOV.F32        S20, #1.0
89B9C:  VLDR            S0, [SP,#0x70+var_4C]
89BA0:  VLDR            S2, [SP,#0x70+var_48]
89BA4:  MOVW            R8, #0x1518
89BA8:  VLDR            S4, [SP,#0x70+var_54]
89BAC:  VMOV.F32        S22, #0.5
89BB0:  VLDR            S6, [SP,#0x70+var_50]
89BB4:  MOVS            R6, #0xF
89BB6:  LDR             R1, [R5]
89BB8:  LDR.W           R0, [R4,#0x27C]; int
89BBC:  ADD             R1, R8
89BBE:  VLDR            S24, =0.0
89BC2:  VADD.F32        S2, S2, S20
89BC6:  VLDR            S26, =255.0
89BCA:  VADD.F32        S0, S0, S20
89BCE:  VADD.F32        S6, S6, S20
89BD2:  VADD.F32        S4, S4, S20
89BD6:  VSTR            S2, [SP,#0x70+var_58]
89BDA:  VSTR            S0, [SP,#0x70+var_5C]
89BDE:  VLDR            S0, [R1]
89BE2:  VSTR            S6, [SP,#0x70+var_60]
89BE6:  VSTR            S4, [SP,#0x70+var_64]
89BEA:  VLDR            S8, [R1,#0x118]
89BEE:  VLDR            S4, [R1,#0x110]
89BF2:  VMUL.F32        S0, S8, S0
89BF6:  VLDR            S2, [R1,#0x10C]
89BFA:  VLDR            S6, [R1,#0x114]
89BFE:  VCMP.F32        S4, S20
89C02:  VMRS            APSR_nzcv, FPSCR
89C06:  VMOV.F32        S8, S4
89C0A:  VCMP.F32        S2, S20
89C0E:  IT GT
89C10:  VMOVGT.F32      S8, S20
89C14:  VMRS            APSR_nzcv, FPSCR
89C18:  VMOV.F32        S10, S2
89C1C:  VCMP.F32        S6, S20
89C20:  IT GT
89C22:  VMOVGT.F32      S10, S20
89C26:  VMRS            APSR_nzcv, FPSCR
89C2A:  VMOV.F32        S12, S6
89C2E:  VCMP.F32        S0, S20
89C32:  IT GT
89C34:  VMOVGT.F32      S12, S20
89C38:  VMRS            APSR_nzcv, FPSCR
89C3C:  VMOV.F32        S14, S0
89C40:  VCMP.F32        S4, #0.0
89C44:  IT GT
89C46:  VMOVGT.F32      S14, S20
89C4A:  VMRS            APSR_nzcv, FPSCR
89C4E:  VCMP.F32        S2, #0.0
89C52:  IT MI
89C54:  VMOVMI.F32      S8, S24
89C58:  VMRS            APSR_nzcv, FPSCR
89C5C:  VCMP.F32        S6, #0.0
89C60:  IT MI
89C62:  VMOVMI.F32      S10, S24
89C66:  VMRS            APSR_nzcv, FPSCR
89C6A:  VCMP.F32        S0, #0.0
89C6E:  VMOV.F32        S0, S22
89C72:  IT MI
89C74:  VMOVMI.F32      S12, S24
89C78:  VMOV.F32        S2, S22
89C7C:  VMRS            APSR_nzcv, FPSCR
89C80:  VMOV.F32        S4, S22
89C84:  IT MI
89C86:  VMOVMI.F32      S14, S24
89C8A:  VMOV.F32        S6, S22
89C8E:  VSTR            S18, [SP,#0x70+var_68]
89C92:  STR             R6, [SP,#0x70+var_6C]; int
89C94:  VSTR            S16, [SP,#0x70+var_70]
89C98:  VMLA.F32        S0, S8, S26
89C9C:  VMLA.F32        S2, S10, S26
89CA0:  VMLA.F32        S4, S12, S26
89CA4:  VMLA.F32        S6, S14, S26
89CA8:  VCVT.S32.F32    S0, S0
89CAC:  VCVT.S32.F32    S2, S2
89CB0:  VCVT.S32.F32    S4, S4
89CB4:  VMOV            R1, S0
89CB8:  VMOV            R2, S2
89CBC:  VCVT.S32.F32    S0, S6
89CC0:  ORR.W           R1, R2, R1,LSL#8
89CC4:  VMOV            R2, S4
89CC8:  ORR.W           R1, R1, R2,LSL#16
89CCC:  VMOV            R2, S0
89CD0:  ORR.W           R3, R1, R2,LSL#24; int
89CD4:  ADD             R1, SP, #0x70+var_5C; int
89CD6:  ADD             R2, SP, #0x70+var_64; int
89CD8:  BL              sub_9D568
89CDC:  LDR             R0, [R5]
89CDE:  ADD             R0, R8
89CE0:  VLDR            S0, [R0]
89CE4:  VLDR            S8, [R0,#0x108]
89CE8:  VLDR            S4, [R0,#0x100]
89CEC:  VMUL.F32        S0, S8, S0
89CF0:  VLDR            S2, [R0,#0xFC]
89CF4:  VLDR            S6, [R0,#0x104]
89CF8:  VCMP.F32        S4, S20
89CFC:  VMRS            APSR_nzcv, FPSCR
89D00:  VMOV.F32        S8, S4
89D04:  VCMP.F32        S2, S20
89D08:  IT GT
89D0A:  VMOVGT.F32      S8, S20
89D0E:  VMRS            APSR_nzcv, FPSCR
89D12:  VMOV.F32        S10, S2
89D16:  VCMP.F32        S6, S20
89D1A:  IT GT
89D1C:  VMOVGT.F32      S10, S20
89D20:  VMRS            APSR_nzcv, FPSCR
89D24:  VMOV.F32        S12, S6
89D28:  VCMP.F32        S0, S20
89D2C:  IT GT
89D2E:  VMOVGT.F32      S12, S20
89D32:  VMRS            APSR_nzcv, FPSCR
89D36:  VMOV.F32        S14, S0
89D3A:  VCMP.F32        S4, #0.0
89D3E:  IT GT
89D40:  VMOVGT.F32      S14, S20
89D44:  VMRS            APSR_nzcv, FPSCR
89D48:  VCMP.F32        S2, #0.0
89D4C:  IT MI
89D4E:  VMOVMI.F32      S8, S24
89D52:  VMRS            APSR_nzcv, FPSCR
89D56:  VCMP.F32        S6, #0.0
89D5A:  IT MI
89D5C:  VMOVMI.F32      S10, S24
89D60:  VMRS            APSR_nzcv, FPSCR
89D64:  VCMP.F32        S0, #0.0
89D68:  VMOV.F32        S0, S22
89D6C:  IT MI
89D6E:  VMOVMI.F32      S12, S24
89D72:  VMOV.F32        S2, S22
89D76:  VMRS            APSR_nzcv, FPSCR
89D7A:  VMOV.F32        S4, S22
89D7E:  IT MI
89D80:  VMOVMI.F32      S14, S24
89D84:  VMLA.F32        S22, S14, S26
89D88:  LDR.W           R0, [R4,#0x27C]; int
89D8C:  VSTR            S18, [SP,#0x70+var_68]
89D90:  STR             R6, [SP,#0x70+var_6C]; int
89D92:  VMLA.F32        S0, S8, S26
89D96:  VSTR            S16, [SP,#0x70+var_70]
89D9A:  VMLA.F32        S2, S10, S26
89D9E:  VMLA.F32        S4, S12, S26
89DA2:  VCVT.S32.F32    S0, S0
89DA6:  VCVT.S32.F32    S2, S2
89DAA:  VCVT.S32.F32    S4, S4
89DAE:  VMOV            R1, S0
89DB2:  VMOV            R2, S2
89DB6:  VCVT.S32.F32    S0, S22
89DBA:  ORR.W           R1, R2, R1,LSL#8
89DBE:  VMOV            R2, S4
89DC2:  ORR.W           R1, R1, R2,LSL#16
89DC6:  VMOV            R2, S0
89DCA:  ORR.W           R3, R1, R2,LSL#24; int
89DCE:  ADD             R1, SP, #0x70+var_4C; int
89DD0:  ADD             R2, SP, #0x70+var_54; int
89DD2:  BL              sub_9D568
89DD6:  LDR             R0, [SP,#0x70+var_44]
89DD8:  LDR             R1, =(__stack_chk_guard_ptr - 0x89DDE)
89DDA:  ADD             R1, PC; __stack_chk_guard_ptr
89DDC:  LDR             R1, [R1]; __stack_chk_guard
89DDE:  LDR             R1, [R1]
89DE0:  CMP             R1, R0
89DE2:  ITTTT EQ
89DE4:  ADDEQ           SP, SP, #0x30 ; '0'
89DE6:  VPOPEQ          {D8-D13}
89DEA:  POPEQ.W         {R8}
89DEE:  POPEQ           {R4-R7,PC}
89DF0:  BLX             __stack_chk_fail
