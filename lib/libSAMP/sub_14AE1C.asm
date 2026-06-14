; =========================================================
; Game Engine Function: sub_14AE1C
; Address            : 0x14AE1C - 0x14B17A
; =========================================================

14AE1C:  PUSH            {R4-R7,LR}
14AE1E:  ADD             R7, SP, #0xC
14AE20:  PUSH.W          {R8-R11}
14AE24:  SUB             SP, SP, #4
14AE26:  VPUSH           {D8}
14AE2A:  SUB             SP, SP, #0xB0
14AE2C:  MOV             R9, R1
14AE2E:  LDRH.W          R4, [R9],#2
14AE32:  CBZ             R4, loc_14AE44
14AE34:  MOV             R6, R0
14AE36:  MOVW            R0, #0xFFFF
14AE3A:  CMP             R4, R0
14AE3C:  ITT NE
14AE3E:  LDRNE           R0, [R6,#4]
14AE40:  CMPNE           R0, #0
14AE42:  BNE             loc_14AE52
14AE44:  ADD             SP, SP, #0xB0
14AE46:  VPOP            {D8}
14AE4A:  ADD             SP, SP, #4
14AE4C:  POP.W           {R8-R11}
14AE50:  POP             {R4-R7,PC}
14AE52:  LDR             R0, =(off_23496C - 0x14AE58)
14AE54:  ADD             R0, PC; off_23496C
14AE56:  LDR             R0, [R0]; dword_23DEF4
14AE58:  LDR             R0, [R0]
14AE5A:  LDR.W           R0, [R0,#0x3B0]
14AE5E:  LDR             R5, [R0,#4]
14AE60:  CMP             R5, #0
14AE62:  BEQ             loc_14AE44
14AE64:  LSRS            R0, R4, #4
14AE66:  CMP             R0, #0x7C ; '|'
14AE68:  BHI             loc_14AE44
14AE6A:  MOV             R8, R1
14AE6C:  MOV             R0, R5
14AE6E:  MOV             R1, R4
14AE70:  BL              sub_F2396
14AE74:  CMP             R0, #0
14AE76:  BEQ             loc_14AE44
14AE78:  LDR.W           R4, [R5,R4,LSL#2]
14AE7C:  CMP             R4, #0
14AE7E:  BEQ             loc_14AE44
14AE80:  MOV             R0, R4
14AE82:  BL              sub_109F60
14AE86:  CBNZ            R0, loc_14AE92
14AE88:  MOV             R0, R4
14AE8A:  BL              sub_109FC4
14AE8E:  CMP             R0, #0
14AE90:  BEQ             loc_14AE44
14AE92:  LDR             R0, [R6,#4]
14AE94:  BL              sub_109E00
14AE98:  CMP             R0, R4
14AE9A:  BEQ             loc_14AEAA
14AE9C:  LDR             R0, [R6,#4]
14AE9E:  MOV             R1, R4
14AEA0:  BL              sub_109C00
14AEA4:  LDR             R0, [R6,#4]
14AEA6:  BL              sub_10A0B8
14AEAA:  ADD             R1, SP, #0xD8+var_68
14AEAC:  MOV             R0, R4
14AEAE:  BL              sub_F8910
14AEB2:  ADD.W           R0, R8, #0xE
14AEB6:  ADD             R6, SP, #0xD8+var_78
14AEB8:  VLD1.8          {D16-D17}, [R0]
14AEBC:  VCEQ.F32        Q9, Q8, #0.0
14AEC0:  VST1.64         {D16-D17}, [R6]
14AEC4:  VMVN            Q9, Q9
14AEC8:  VMOVN.I32       D18, Q9
14AECC:  VMOV.U16        R0, D18[1]
14AED0:  VMOV.U16        R1, D18[0]
14AED4:  VMOV.U16        R2, D18[2]
14AED8:  VMOV.U16        R3, D18[3]
14AEDC:  AND.W           R0, R0, #1
14AEE0:  AND.W           R1, R1, #1
14AEE4:  ORR.W           R0, R1, R0,LSL#1
14AEE8:  AND.W           R1, R2, #1
14AEEC:  ORR.W           R0, R0, R1,LSL#2
14AEF0:  ORR.W           R0, R0, R3,LSL#3
14AEF4:  LSLS            R0, R0, #0x1C
14AEF6:  BEQ             loc_14AFF2
14AEF8:  ADD             R0, SP, #0xD8+var_78
14AEFA:  ADD             R1, SP, #0xD8+var_68
14AEFC:  BL              sub_17D238
14AF00:  LDR.W           R0, [R9]
14AF04:  LDR             R1, [SP,#0xD8+var_38]
14AF06:  BL              sub_108700
14AF0A:  VMOV.F32        S16, #0.5
14AF0E:  VMOV            S0, R0
14AF12:  VCMP.F32        S0, S16
14AF16:  VMRS            APSR_nzcv, FPSCR
14AF1A:  BHI             loc_14AF4E
14AF1C:  LDR             R1, [SP,#0xD8+var_34]
14AF1E:  LDR.W           R0, [R9,#4]
14AF22:  BL              sub_108700
14AF26:  VMOV            S0, R0
14AF2A:  VCMP.F32        S0, S16
14AF2E:  VMRS            APSR_nzcv, FPSCR
14AF32:  BHI             loc_14AF4E
14AF34:  LDR             R1, [SP,#0xD8+var_30]
14AF36:  LDR.W           R0, [R9,#8]
14AF3A:  BL              sub_108700
14AF3E:  VMOV            S0, R0
14AF42:  VCMP.F32        S0, S16
14AF46:  VMRS            APSR_nzcv, FPSCR
14AF4A:  BLS.W           loc_14AE44
14AF4E:  LDR             R1, [SP,#0xD8+var_38]
14AF50:  LDR.W           R0, [R9]
14AF54:  BL              sub_108700
14AF58:  VMOV.F32        S16, #6.0
14AF5C:  VMOV            S0, R0
14AF60:  VCMP.F32        S0, S16
14AF64:  VMRS            APSR_nzcv, FPSCR
14AF68:  BLE             loc_14B00C
14AF6A:  LDR             R1, [SP,#0xD8+var_68]
14AF6C:  ADD.W           R11, SP, #0xD8+var_54
14AF70:  STR             R1, [SP,#0xD8+var_90]
14AF72:  LDR             R1, [SP,#0xD8+var_64]
14AF74:  STR             R1, [SP,#0xD8+var_94]
14AF76:  LDR             R1, [SP,#0xD8+var_60]
14AF78:  STR             R1, [SP,#0xD8+var_98]
14AF7A:  LDR             R1, [SP,#0xD8+var_48]
14AF7C:  STR             R1, [SP,#0xD8+var_9C]
14AF7E:  LDR             R1, [SP,#0xD8+var_44]
14AF80:  LDR.W           R0, [R9]
14AF84:  LDR.W           R6, [R9,#4]
14AF88:  LDR.W           R5, [R9,#8]
14AF8C:  STR             R1, [SP,#0xD8+var_A0]
14AF8E:  LDRD.W          R3, R1, [SP,#0xD8+var_40]
14AF92:  LDM.W           R11, {R9-R11}
14AF96:  STRD.W          R1, R0, [SP,#0xD8+var_B8]
14AF9A:  STRD.W          R0, R6, [SP,#0xD8+var_38]
14AF9E:  ADD             R0, SP, #0xD8+var_D0
14AFA0:  STM.W           R0, {R9-R11}
14AFA4:  LDR             R0, [SP,#0xD8+var_9C]
14AFA6:  LDR             R2, [SP,#0xD8+var_2C]
14AFA8:  STR             R0, [SP,#0xD8+var_C4]
14AFAA:  LDR             R0, [SP,#0xD8+var_A0]
14AFAC:  STRD.W          R0, R3, [SP,#0xD8+var_C0]
14AFB0:  MOV             R0, R4
14AFB2:  STR             R2, [SP,#0xD8+var_A8]
14AFB4:  LDR             R1, [SP,#0xD8+var_90]
14AFB6:  LDRD.W          R3, R2, [SP,#0xD8+var_98]
14AFBA:  LDRD.W          R12, LR, [SP,#0xD8+var_5C]
14AFBE:  STR             R5, [SP,#0xD8+var_30]
14AFC0:  STRD.W          R6, R5, [SP,#0xD8+var_B0]
14AFC4:  STRD.W          R12, LR, [SP,#0xD8+var_D8]
14AFC8:  BL              sub_F894A
14AFCC:  LDR.W           R1, [R8,#0x1E]
14AFD0:  MOV             R0, R4
14AFD2:  LDR.W           R2, [R8,#0x22]
14AFD6:  LDR.W           R3, [R8,#0x26]
14AFDA:  BL              sub_F89BC
14AFDE:  LDR.W           R1, [R8,#0x2A]
14AFE2:  MOV             R0, R4
14AFE4:  LDR.W           R2, [R8,#0x2E]
14AFE8:  LDR.W           R3, [R8,#0x32]
14AFEC:  BL              sub_F8A08
14AFF0:  B               loc_14AE44
14AFF2:  LDR             R1, =(aAxl - 0x14B000); "AXL" ...
14AFF4:  MOV.W           R0, #0x384
14AFF8:  LDR             R2, =(aBadCquaternion - 0x14B002); "Bad CQuaternion: File: %s - Line: %i" ...
14AFFA:  LDR             R3, =(aRemoteplayerCp - 0x14B006); "remoteplayer.cpp" ...
14AFFC:  ADD             R1, PC; "AXL"
14AFFE:  ADD             R2, PC; "Bad CQuaternion: File: %s - Line: %i"
14B000:  STR             R0, [SP,#0xD8+var_D8]
14B002:  ADD             R3, PC; "remoteplayer.cpp"
14B004:  MOVS            R0, #4; prio
14B006:  BLX             __android_log_print
14B00A:  B               loc_14AE44
14B00C:  LDR             R1, [SP,#0xD8+var_34]
14B00E:  LDR.W           R0, [R9,#4]
14B012:  BL              sub_108700
14B016:  VMOV            S0, R0
14B01A:  VCMP.F32        S0, S16
14B01E:  VMRS            APSR_nzcv, FPSCR
14B022:  BLE             loc_14B040
14B024:  LDR             R1, [SP,#0xD8+var_30]
14B026:  LDR.W           R0, [R9,#8]
14B02A:  BL              sub_108700
14B02E:  VMOV.F32        S0, #3.0
14B032:  VMOV            S2, R0
14B036:  VCMP.F32        S2, S0
14B03A:  VMRS            APSR_nzcv, FPSCR
14B03E:  BGT             loc_14AF6A
14B040:  LDR             R0, [SP,#0xD8+var_68]
14B042:  ADD.W           R12, SP, #0xD8+var_3C
14B046:  STR             R0, [SP,#0xD8+var_90]
14B048:  LDR             R0, [SP,#0xD8+var_64]
14B04A:  STR             R0, [SP,#0xD8+var_94]
14B04C:  LDR             R0, [SP,#0xD8+var_60]
14B04E:  STR             R0, [SP,#0xD8+var_98]
14B050:  LDR             R0, [SP,#0xD8+var_5C]
14B052:  STR             R0, [SP,#0xD8+var_9C]
14B054:  LDR             R0, [SP,#0xD8+var_50]
14B056:  STR             R0, [SP,#0xD8+var_A0]
14B058:  LDRD.W          R11, R0, [SP,#0xD8+var_44]
14B05C:  LDRD.W          R6, R5, [SP,#0xD8+var_58]
14B060:  LDRD.W          LR, R10, [SP,#0xD8+var_4C]
14B064:  STR             R0, [SP,#0xD8+var_A4]
14B066:  LDM.W           R12, {R0-R3,R12}
14B06A:  STR             R0, [SP,#0xD8+var_B8]
14B06C:  LDR             R0, [SP,#0xD8+var_9C]
14B06E:  STR             R1, [SP,#0xD8+var_B4]
14B070:  STRD.W          R0, R6, [SP,#0xD8+var_D8]
14B074:  LDR             R0, [SP,#0xD8+var_A0]
14B076:  STR             R2, [SP,#0xD8+var_B0]
14B078:  STR             R3, [SP,#0xD8+var_AC]
14B07A:  LDR             R1, [SP,#0xD8+var_90]
14B07C:  LDRD.W          R3, R2, [SP,#0xD8+var_98]
14B080:  STRD.W          R0, LR, [SP,#0xD8+var_CC]
14B084:  LDR             R0, [SP,#0xD8+var_A4]
14B086:  STR             R0, [SP,#0xD8+var_BC]
14B088:  MOV             R0, R4
14B08A:  STR.W           R12, [SP,#0xD8+var_A8]
14B08E:  STR             R5, [SP,#0xD8+var_D0]
14B090:  STRD.W          R10, R11, [SP,#0xD8+var_C4]
14B094:  BL              sub_F894A
14B098:  LDR.W           R1, [R8,#0x2A]
14B09C:  MOV             R0, R4
14B09E:  LDR.W           R2, [R8,#0x2E]
14B0A2:  LDR.W           R3, [R8,#0x32]
14B0A6:  BL              sub_F8A08
14B0AA:  MOVS            R0, #0
14B0AC:  ADD             R1, SP, #0xD8+var_88
14B0AE:  STRD.W          R0, R0, [SP,#0xD8+var_88]
14B0B2:  STR             R0, [SP,#0xD8+var_80]
14B0B4:  MOV             R0, R4
14B0B6:  BL              sub_F8994
14B0BA:  LDR.W           R0, [R9]
14B0BE:  LDR             R1, [SP,#0xD8+var_38]
14B0C0:  BL              sub_108700
14B0C4:  VLDR            S16, =0.05
14B0C8:  VMOV            S0, R0
14B0CC:  VCMP.F32        S0, S16
14B0D0:  VMRS            APSR_nzcv, FPSCR
14B0D4:  BLE             loc_14B0F6
14B0D6:  LDR.W           R0, [R9]
14B0DA:  VLDR            S0, [SP,#0xD8+var_38]
14B0DE:  VLDR            S4, [SP,#0xD8+var_88]
14B0E2:  VMOV            S2, R0
14B0E6:  VSUB.F32        S0, S2, S0
14B0EA:  VLDR            S2, =0.025
14B0EE:  VMLA.F32        S4, S0, S2
14B0F2:  VSTR            S4, [SP,#0xD8+var_88]
14B0F6:  LDR             R1, [SP,#0xD8+var_34]
14B0F8:  LDR.W           R0, [R9,#4]
14B0FC:  BL              sub_108700
14B100:  VMOV            S0, R0
14B104:  VCMP.F32        S0, S16
14B108:  VMRS            APSR_nzcv, FPSCR
14B10C:  BLE             loc_14B12E
14B10E:  LDR.W           R0, [R9,#4]
14B112:  VLDR            S0, [SP,#0xD8+var_34]
14B116:  VLDR            S4, [SP,#0xD8+var_84]
14B11A:  VMOV            S2, R0
14B11E:  VSUB.F32        S0, S2, S0
14B122:  VLDR            S2, =0.025
14B126:  VMLA.F32        S4, S0, S2
14B12A:  VSTR            S4, [SP,#0xD8+var_84]
14B12E:  LDR             R1, [SP,#0xD8+var_30]
14B130:  LDR.W           R0, [R9,#8]
14B134:  BL              sub_108700
14B138:  VMOV            S0, R0
14B13C:  VCMP.F32        S0, S16
14B140:  VMRS            APSR_nzcv, FPSCR
14B144:  BLE             loc_14B16C
14B146:  LDR.W           R0, [R9,#8]
14B14A:  VLDR            S0, [SP,#0xD8+var_30]
14B14E:  VLDR            S4, [SP,#0xD8+var_80]
14B152:  VMOV            S2, R0
14B156:  VSUB.F32        S0, S2, S0
14B15A:  VLDR            S2, =0.025
14B15E:  VMLA.F32        S4, S0, S2
14B162:  VMOV            R3, S4
14B166:  VSTR            S4, [SP,#0xD8+var_80]
14B16A:  B               loc_14B16E
14B16C:  LDR             R3, [SP,#0xD8+var_80]
14B16E:  LDRD.W          R1, R2, [SP,#0xD8+var_88]
14B172:  MOV             R0, R4
14B174:  BL              sub_F89BC
14B178:  B               loc_14AE44
