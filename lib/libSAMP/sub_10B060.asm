; =========================================================
; Game Engine Function: sub_10B060
; Address            : 0x10B060 - 0x10B104
; =========================================================

10B060:  PUSH            {R4-R7,LR}
10B062:  ADD             R7, SP, #0xC
10B064:  PUSH.W          {R8}
10B068:  SUB             SP, SP, #0x28
10B06A:  LDR             R4, =(dword_263080 - 0x10B078)
10B06C:  MOV             R8, R1
10B06E:  MOV             R5, R0
10B070:  LDRD.W          R1, R0, [R7,#arg_0]
10B074:  ADD             R4, PC; dword_263080
10B076:  STR             R2, [SP,#0x38+var_20]
10B078:  STR             R0, [SP,#0x38+var_14]
10B07A:  LDR             R0, [R4,#(dword_263084 - 0x263080)]; this
10B07C:  STRD.W          R3, R1, [SP,#0x38+var_1C]
10B080:  CBZ             R0, loc_10B0DA
10B082:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
10B086:  STR             R0, [SP,#0x38+var_24]
10B088:  CBZ             R0, loc_10B0DA
10B08A:  LDR             R4, [R4]
10B08C:  MOV             R6, R0
10B08E:  STR             R4, [SP,#0x38+var_28]
10B090:  CBZ             R4, loc_10B0B2
10B092:  BL              sub_10B314
10B096:  CBZ             R0, loc_10B0B2
10B098:  BL              sub_10B380
10B09C:  CBZ             R0, loc_10B0B2
10B09E:  BL              sub_10B4A0
10B0A2:  LDR             R0, [R4]
10B0A4:  LDR             R2, [R0,#0x3C]
10B0A6:  ADD             R1, SP, #0x38+var_20
10B0A8:  MOV             R0, R4
10B0AA:  BLX             R2
10B0AC:  MOVS            R0, #0
10B0AE:  BL              sub_163C8C
10B0B2:  ADDS            R0, R6, #4
10B0B4:  DMB.W           ISH
10B0B8:  LDREX.W         R1, [R0]
10B0BC:  SUBS            R2, R1, #1
10B0BE:  STREX.W         R3, R2, [R0]
10B0C2:  CMP             R3, #0
10B0C4:  BNE             loc_10B0B8
10B0C6:  DMB.W           ISH
10B0CA:  CBNZ            R1, loc_10B0DA
10B0CC:  LDR             R0, [R6]
10B0CE:  LDR             R1, [R0,#8]
10B0D0:  MOV             R0, R6
10B0D2:  BLX             R1
10B0D4:  MOV             R0, R6; this
10B0D6:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10B0DA:  LDR             R0, =(off_263064 - 0x10B0E0)
10B0DC:  ADD             R0, PC; off_263064
10B0DE:  LDR             R6, [R0]
10B0E0:  CBZ             R6, loc_10B0FC
10B0E2:  LDRD.W          R2, R3, [SP,#0x38+var_20]
10B0E6:  LDRD.W          R0, R1, [SP,#0x38+var_18]
10B0EA:  VLDR            S0, [R7,#arg_8]
10B0EE:  STRD.W          R0, R1, [SP,#0x38+var_38]
10B0F2:  MOV             R0, R5
10B0F4:  MOV             R1, R8
10B0F6:  VSTR            S0, [SP,#0x38+var_30]
10B0FA:  BLX             R6
10B0FC:  ADD             SP, SP, #0x28 ; '('
10B0FE:  POP.W           {R8}
10B102:  POP             {R4-R7,PC}
