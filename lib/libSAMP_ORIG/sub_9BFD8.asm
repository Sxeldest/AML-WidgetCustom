; =========================================================
; Game Engine Function: sub_9BFD8
; Address            : 0x9BFD8 - 0x9C104
; =========================================================

9BFD8:  PUSH            {R4-R7,LR}
9BFDA:  ADD             R7, SP, #0xC
9BFDC:  PUSH.W          {R11}
9BFE0:  SUB             SP, SP, #0x18
9BFE2:  MOV             R4, R0
9BFE4:  VLDR            S0, [R7,#arg_0]
9BFE8:  LDR             R0, =(__stack_chk_guard_ptr - 0x9BFF6)
9BFEA:  VMOV            S2, R3
9BFEE:  VMOV            S6, R2
9BFF2:  ADD             R0, PC; __stack_chk_guard_ptr
9BFF4:  VMOV            S4, R1
9BFF8:  LDR             R0, [R0]; __stack_chk_guard
9BFFA:  LDR             R0, [R0]
9BFFC:  STR             R0, [SP,#0x28+var_14]
9BFFE:  LDR             R6, [R7,#arg_4]
9C000:  LDR             R0, [R4,#0x40]
9C002:  STRD.W          R1, R2, [SP,#0x28+var_28]
9C006:  CBZ             R6, loc_9C064
9C008:  CBZ             R0, loc_9C062
9C00A:  LDR             R1, [R4,#0x48]
9C00C:  ADD.W           R1, R1, R0,LSL#4
9C010:  VLDR            S10, [R1,#-0x10]
9C014:  VLDR            S8, [R1,#-0xC]
9C018:  VCMP.F32        S10, S4
9C01C:  VMRS            APSR_nzcv, FPSCR
9C020:  ITT GT
9C022:  VSTRGT          S10, [SP,#0x28+var_28]
9C026:  VMOVGT.F32      S4, S10
9C02A:  VLDR            S12, [R1,#-8]
9C02E:  VCMP.F32        S8, S6
9C032:  VLDR            S10, [R1,#-4]
9C036:  VMRS            APSR_nzcv, FPSCR
9C03A:  VCMP.F32        S12, S2
9C03E:  ITT GT
9C040:  VSTRGT          S8, [SP,#0x28+var_24]
9C044:  VMOVGT.F32      S6, S8
9C048:  VMRS            APSR_nzcv, FPSCR
9C04C:  VCMP.F32        S10, S0
9C050:  IT MI
9C052:  VMOVMI.F32      S2, S12
9C056:  VMRS            APSR_nzcv, FPSCR
9C05A:  IT MI
9C05C:  VMOVMI.F32      S0, S10
9C060:  B               loc_9C064
9C062:  MOVS            R0, #0
9C064:  VCMP.F32        S6, S0
9C068:  VMRS            APSR_nzcv, FPSCR
9C06C:  VCMP.F32        S4, S2
9C070:  IT GE
9C072:  VMOVGE.F32      S0, S6
9C076:  VMRS            APSR_nzcv, FPSCR
9C07A:  IT GE
9C07C:  VMOVGE.F32      S2, S4
9C080:  LDR             R1, [R4,#0x44]
9C082:  VSTR            S0, [SP,#0x28+var_1C]
9C086:  CMP             R0, R1
9C088:  VSTR            S2, [SP,#0x28+var_20]
9C08C:  BNE             loc_9C0CC
9C08E:  CMP             R0, #0
9C090:  ADD.W           R6, R0, #1
9C094:  ITTE NE
9C096:  ADDNE.W         R1, R0, R0,LSR#31
9C09A:  ADDNE.W         R1, R0, R1,ASR#1
9C09E:  MOVEQ           R1, #8
9C0A0:  CMP             R1, R6
9C0A2:  IT GT
9C0A4:  MOVGT           R6, R1
9C0A6:  CMP             R0, R6
9C0A8:  BGE             loc_9C0CC
9C0AA:  LSLS            R0, R6, #4
9C0AC:  BL              sub_885E4
9C0B0:  LDR             R1, [R4,#0x48]; src
9C0B2:  MOV             R5, R0
9C0B4:  CBZ             R1, loc_9C0C6
9C0B6:  LDR             R0, [R4,#0x40]
9C0B8:  LSLS            R2, R0, #4; n
9C0BA:  MOV             R0, R5; dest
9C0BC:  BLX             j_memcpy
9C0C0:  LDR             R0, [R4,#0x48]
9C0C2:  BL              sub_88614
9C0C6:  LDR             R0, [R4,#0x40]
9C0C8:  STRD.W          R6, R5, [R4,#0x44]
9C0CC:  LDR             R1, [R4,#0x48]
9C0CE:  MOV             R2, SP
9C0D0:  VLD1.64         {D16-D17}, [R2,#0x28+var_28]
9C0D4:  ADD.W           R0, R1, R0,LSL#4
9C0D8:  VST1.8          {D16-D17}, [R0]
9C0DC:  LDR             R0, [R4,#0x40]
9C0DE:  ADDS            R0, #1
9C0E0:  STR             R0, [R4,#0x40]
9C0E2:  LDR             R0, [SP,#0x28+var_14]
9C0E4:  LDR             R1, =(__stack_chk_guard_ptr - 0x9C0EA)
9C0E6:  ADD             R1, PC; __stack_chk_guard_ptr
9C0E8:  LDR             R1, [R1]; __stack_chk_guard
9C0EA:  LDR             R1, [R1]
9C0EC:  CMP             R1, R0
9C0EE:  IT NE
9C0F0:  BLXNE           __stack_chk_fail
9C0F4:  MOV             R0, R4
9C0F6:  ADD             SP, SP, #0x18
9C0F8:  POP.W           {R11}
9C0FC:  POP.W           {R4-R7,LR}
9C100:  B.W             sub_9BE2C
