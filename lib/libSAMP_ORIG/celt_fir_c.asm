; =========================================================
; Game Engine Function: celt_fir_c
; Address            : 0xC2F84 - 0xC30E6
; =========================================================

C2F84:  PUSH            {R4-R7,LR}
C2F86:  ADD             R7, SP, #0xC
C2F88:  PUSH.W          {R8-R11}
C2F8C:  SUB             SP, SP, #0x24
C2F8E:  MOV             R11, R0
C2F90:  LDR             R0, =(__stack_chk_guard_ptr - 0xC2F9A)
C2F92:  LDR             R4, [R7,#arg_0]
C2F94:  MOV             R9, R2
C2F96:  ADD             R0, PC; __stack_chk_guard_ptr
C2F98:  LDR             R0, [R0]; __stack_chk_guard
C2F9A:  LDR             R0, [R0]
C2F9C:  STR.W           R0, [R7,#var_24]
C2FA0:  MOVS            R0, #7
C2FA2:  ADD.W           R0, R0, R4,LSL#1
C2FA6:  BIC.W           R0, R0, #7
C2FAA:  SUB.W           R6, SP, R0
C2FAE:  MOV             SP, R6
C2FB0:  CMP             R4, #1
C2FB2:  BLT             loc_C2FC6
C2FB4:  SUBS            R0, R1, #2
C2FB6:  MOV             R1, R6
C2FB8:  MOV             R2, R4
C2FBA:  LDRH.W          R5, [R0,R2,LSL#1]
C2FBE:  SUBS            R2, #1
C2FC0:  STRH.W          R5, [R1],#2
C2FC4:  BNE             loc_C2FBA
C2FC6:  NEGS            R0, R4
C2FC8:  CMP             R3, #4
C2FCA:  STRD.W          R0, R3, [R7,#var_40]
C2FCE:  BLT             loc_C3066
C2FD0:  ADD.W           R5, R11, R0,LSL#1
C2FD4:  MOV.W           R10, #0
C2FD8:  MOV.W           R8, #0
C2FDC:  SUBS            R1, R3, #3
C2FDE:  STR.W           R1, [R7,#var_38]
C2FE2:  LDRSH.W         R0, [R11,R10]
C2FE6:  SUB.W           R2, R7, #-var_34
C2FEA:  MOV             R3, R4
C2FEC:  LSLS            R0, R0, #0xC
C2FEE:  STR.W           R0, [R7,#var_34]
C2FF2:  ADD.W           R0, R11, R10
C2FF6:  LDRSH.W         R1, [R0,#2]
C2FFA:  LSLS            R1, R1, #0xC
C2FFC:  STR.W           R1, [R7,#var_30]
C3000:  LDRSH.W         R1, [R0,#4]
C3004:  LSLS            R1, R1, #0xC
C3006:  STR.W           R1, [R7,#var_2C]
C300A:  ADD.W           R1, R5, R10
C300E:  LDRSH.W         R0, [R0,#6]
C3012:  LSLS            R0, R0, #0xC
C3014:  STR.W           R0, [R7,#var_28]
C3018:  MOV             R0, R6
C301A:  BL              sub_C30F0
C301E:  LDR.W           R0, [R7,#var_34]
C3022:  ADD.W           R1, R9, R10
C3026:  ADD.W           R8, R8, #4
C302A:  ADD.W           R0, R0, #0x800
C302E:  LSRS            R0, R0, #0xC
C3030:  STRH.W          R0, [R9,R10]
C3034:  ADD.W           R10, R10, #8
C3038:  LDR.W           R0, [R7,#var_30]
C303C:  ADD.W           R0, R0, #0x800
C3040:  LSRS            R0, R0, #0xC
C3042:  STRH            R0, [R1,#2]
C3044:  LDR.W           R0, [R7,#var_2C]
C3048:  ADD.W           R0, R0, #0x800
C304C:  LSRS            R0, R0, #0xC
C304E:  STRH            R0, [R1,#4]
C3050:  LDR.W           R0, [R7,#var_28]
C3054:  ADD.W           R0, R0, #0x800
C3058:  LSRS            R0, R0, #0xC
C305A:  STRH            R0, [R1,#6]
C305C:  LDR.W           R0, [R7,#var_38]
C3060:  CMP             R8, R0
C3062:  BLT             loc_C2FE2
C3064:  B               loc_C306A
C3066:  MOV.W           R8, #0
C306A:  LDR.W           R12, [R7,#var_3C]
C306E:  LDR.W           LR, [R7,#var_40]
C3072:  CMP             R8, R12
C3074:  BGE             loc_C30C6
C3076:  CMP             R4, #0
C3078:  BLE             loc_C30AE
C307A:  ADD.W           R0, R11, R8,LSL#1
C307E:  LDRSH.W         R1, [R11,R8,LSL#1]
C3082:  MOV             R2, R6
C3084:  MOV             R3, LR
C3086:  LSLS            R1, R1, #0xC
C3088:  LDRSH.W         R5, [R0,R3,LSL#1]
C308C:  ADDS            R3, #1
C308E:  LDRSH.W         R4, [R2],#2
C3092:  SMLABB.W        R1, R5, R4, R1
C3096:  BNE             loc_C3088
C3098:  ADD.W           R1, R1, #0x800
C309C:  ADDS            R0, #2
C309E:  LSRS            R1, R1, #0xC
C30A0:  STRH.W          R1, [R9,R8,LSL#1]
C30A4:  ADD.W           R8, R8, #1
C30A8:  CMP             R8, R12
C30AA:  BNE             loc_C307E
C30AC:  B               loc_C30C6
C30AE:  SUB.W           R0, R12, R8
C30B2:  ADD.W           R1, R9, R8,LSL#1
C30B6:  ADD.W           R2, R11, R8,LSL#1
C30BA:  LDRH.W          R3, [R2],#2
C30BE:  SUBS            R0, #1
C30C0:  STRH.W          R3, [R1],#2
C30C4:  BNE             loc_C30BA
C30C6:  LDR             R0, =(__stack_chk_guard_ptr - 0xC30D0)
C30C8:  LDR.W           R1, [R7,#var_24]
C30CC:  ADD             R0, PC; __stack_chk_guard_ptr
C30CE:  LDR             R0, [R0]; __stack_chk_guard
C30D0:  LDR             R0, [R0]
C30D2:  SUBS            R0, R0, R1
C30D4:  ITTTT EQ
C30D6:  SUBEQ.W         R4, R7, #-var_1C
C30DA:  MOVEQ           SP, R4
C30DC:  POPEQ.W         {R8-R11}
C30E0:  POPEQ           {R4-R7,PC}
C30E2:  BLX             __stack_chk_fail
