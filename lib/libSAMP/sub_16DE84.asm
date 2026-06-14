; =========================================================
; Game Engine Function: sub_16DE84
; Address            : 0x16DE84 - 0x16E32C
; =========================================================

16DE84:  PUSH            {R4-R7,LR}
16DE86:  ADD             R7, SP, #0xC
16DE88:  PUSH.W          {R8-R11}
16DE8C:  SUB             SP, SP, #0x14
16DE8E:  LDR             R0, =(dword_381B58 - 0x16DE98)
16DE90:  MOVW            R1, #0x1964
16DE94:  ADD             R0, PC; dword_381B58
16DE96:  STR             R0, [SP,#0x30+var_28]
16DE98:  LDR.W           R9, [R0]
16DE9C:  MOV.W           R0, #0x1960
16DEA0:  LDR.W           R0, [R9,R0]
16DEA4:  LDR.W           R1, [R9,R1]
16DEA8:  CMP             R1, R0
16DEAA:  BEQ.W           loc_16E324
16DEAE:  LDR.W           R2, [R9,#0xD4]
16DEB2:  MOVW            R0, #0x1984
16DEB6:  ADD.W           R4, R9, R0
16DEBA:  CBZ             R2, loc_16DF28
16DEBC:  MOVW            R0, #0x2CE4
16DEC0:  ADD.W           R6, R9, R0
16DEC4:  MOVW            R0, #0x2CEC
16DEC8:  ADD.W           R5, R9, R0
16DECC:  VLDR            S2, =3.4028e38
16DED0:  VLDR            S4, [R5]
16DED4:  VLDR            S0, [R6]
16DED8:  VCMP.F32        S4, S2
16DEDC:  VMRS            APSR_nzcv, FPSCR
16DEE0:  BNE             loc_16DEE8
16DEE2:  VLDR            S2, [R6,#4]
16DEE6:  B               loc_16DF0E
16DEE8:  VLDR            S2, [R6,#4]
16DEEC:  VSUB.F32        S4, S4, S0
16DEF0:  VLDR            S6, [R5,#4]
16DEF4:  VSUB.F32        S6, S6, S2
16DEF8:  VMUL.F32        S6, S6, S6
16DEFC:  VMLA.F32        S6, S4, S4
16DF00:  VLDR            S4, =0.0001
16DF04:  VCMP.F32        S6, S4
16DF08:  VMRS            APSR_nzcv, FPSCR
16DF0C:  BLE             loc_16DF28
16DF0E:  VCVT.S32.F32    S0, S0
16DF12:  VCVT.S32.F32    S2, S2
16DF16:  VMOV            R0, S0
16DF1A:  VMOV            R1, S2
16DF1E:  BLX             R2
16DF20:  LDRD.W          R0, R1, [R6]
16DF24:  STRD.W          R0, R1, [R5]
16DF28:  LDR             R0, [R4,#0xC]
16DF2A:  CMP             R0, #2
16DF2C:  BLT             loc_16DF38
16DF2E:  BL              sub_16E36C
16DF32:  LDR             R0, [R4,#0xC]
16DF34:  CMP             R0, #1
16DF36:  BGT             loc_16DF2E
16DF38:  LDR             R1, [R4,#0x28]
16DF3A:  MOVS            R2, #0
16DF3C:  MOVW            R0, #0x1508
16DF40:  STRB.W          R2, [R9,#2]
16DF44:  CBZ             R1, loc_16DF52
16DF46:  LDRB.W          R2, [R1,#0x7C]
16DF4A:  CBNZ            R2, loc_16DF52
16DF4C:  MOVS            R2, #0
16DF4E:  STRB.W          R2, [R1,#0x7A]
16DF52:  ADD.W           R5, R9, R0
16DF56:  BL              sub_16E36C
16DF5A:  LDR.W           R0, [R4,#0x170]
16DF5E:  CMP             R0, #0
16DF60:  BEQ.W           loc_16E0FC
16DF64:  LDR             R0, [SP,#0x30+var_28]
16DF66:  VLDR            S0, =0.15
16DF6A:  LDR             R6, [R0]
16DF6C:  ADD.W           R0, R6, #0x1B00
16DF70:  VLDR            S2, [R0]
16DF74:  VCMP.F32        S2, S0
16DF78:  VMRS            APSR_nzcv, FPSCR
16DF7C:  BMI.W           loc_16E0FC
16DF80:  MOVW            R0, #0x151C
16DF84:  STR.W           R9, [SP,#0x30+var_2C]
16DF88:  ADD.W           R9, R6, R0
16DF8C:  MOVW            R0, #0x1A28
16DF90:  ADD.W           R8, R6, R0
16DF94:  MOVW            R0, #0x1A4C
16DF98:  ADD.W           R10, R6, R0
16DF9C:  ADD.W           R11, R6, #0x1A20
16DFA0:  LDR.W           R0, [R10,#0xB0]
16DFA4:  CBNZ            R0, loc_16DFC2
16DFA6:  LDR             R0, =(aNavwindowingli - 0x16DFB0); "###NavWindowingList" ...
16DFA8:  MOVS            R1, #0
16DFAA:  MOVS            R2, #0
16DFAC:  ADD             R0, PC; "###NavWindowingList"
16DFAE:  BL              sub_16560C
16DFB2:  MOV             R1, R0
16DFB4:  MOVW            R0, #0x199C
16DFB8:  ADD             R0, R6
16DFBA:  BL              sub_1658B8
16DFBE:  STR.W           R0, [R10,#0xB0]
16DFC2:  VMOV.F32        S0, #0.5
16DFC6:  VLDR            S2, =0.2
16DFCA:  VLDR            S6, [R6,#0x14]
16DFCE:  MOVW            R0, #0xFFFF
16DFD2:  VLDR            S4, [R6,#0x10]
16DFD6:  MOVT            R0, #0x7F7F
16DFDA:  VMUL.F32        S8, S6, S2
16DFDE:  STRD.W          R0, R0, [R10]
16DFE2:  VMUL.F32        S2, S4, S2
16DFE6:  MOV.W           R0, #0x3F000000
16DFEA:  MOVS            R1, #0
16DFEC:  STRD.W          R0, R0, [R8]
16DFF0:  LDR.W           R0, [R9,#0x4F4]
16DFF4:  VMUL.F32        S6, S6, S0
16DFF8:  STRD.W          R1, R1, [R10,#8]
16DFFC:  VMUL.F32        S0, S4, S0
16E000:  MOVS            R1, #1
16E002:  ORR.W           R0, R0, #0x11
16E006:  STR.W           R1, [R9,#0x4F8]
16E00A:  ADD             R1, SP, #0x30+var_24
16E00C:  STR.W           R0, [R9,#0x4F4]
16E010:  VSTR            S2, [R8,#0x1C]
16E014:  MOVS            R0, #1
16E016:  VLDR            S2, [R9,#4]
16E01A:  VSTR            S8, [R8,#0x20]
16E01E:  VADD.F32        S2, S2, S2
16E022:  VSTR            S6, [R11,#4]
16E026:  VSTR            S0, [R11]
16E02A:  VLDR            S0, [R9]
16E02E:  VADD.F32        S0, S0, S0
16E032:  VSTR            S2, [SP,#0x30+var_20]
16E036:  VSTR            S0, [SP,#0x30+var_24]
16E03A:  BL              sub_16ECA8
16E03E:  LDR             R0, =(aNavwindowingli - 0x16E04E); "###NavWindowingList" ...
16E040:  MOV             R2, #unk_C1347
16E048:  MOVS            R1, #0
16E04A:  ADD             R0, PC; "###NavWindowingList"
16E04C:  BL              sub_16A980
16E050:  LDR.W           R11, [R9,#0x45C]
16E054:  CMP.W           R11, #1
16E058:  BLT             loc_16E0EE
16E05A:  MOV             R6, R10
16E05C:  LDR.W           R0, [R9,#0x464]
16E060:  MOV             R8, R11
16E062:  SUB.W           R11, R11, #1
16E066:  LDR.W           R10, [R0,R11,LSL#2]
16E06A:  LDRB.W          R0, [R10,#0x7A]
16E06E:  CBZ             R0, loc_16E0E0
16E070:  LDR.W           R0, [R10,#0x2FC]
16E074:  CMP             R0, R10
16E076:  BNE             loc_16E0E0
16E078:  LDR.W           R1, [R10,#8]
16E07C:  LSLS            R0, R1, #0xC
16E07E:  BMI             loc_16E0E0
16E080:  LDR.W           R0, [R10]; s1
16E084:  ADDS            R2, R0, #1
16E086:  BEQ             loc_16E0A8
16E088:  MOV             R2, R0
16E08A:  LDRB            R3, [R2]
16E08C:  CMP             R3, #0x23 ; '#'
16E08E:  BEQ             loc_16E094
16E090:  CBNZ            R3, loc_16E09A
16E092:  B               loc_16E0A4
16E094:  LDRB            R3, [R2,#1]
16E096:  CMP             R3, #0x23 ; '#'
16E098:  BEQ             loc_16E0A4
16E09A:  ADDS            R2, #1
16E09C:  ADDS            R3, R2, #1
16E09E:  BNE             loc_16E08A
16E0A0:  MOV.W           R2, #0xFFFFFFFF
16E0A4:  CMP             R0, R2
16E0A6:  BNE             loc_16E0C4
16E0A8:  LSLS            R2, R1, #5
16E0AA:  BMI             loc_16E0C0
16E0AC:  LSLS            R1, R1, #0x15
16E0AE:  BPL             loc_16E0BA
16E0B0:  LDR             R1, =(aMainmenubar - 0x16E0B6); "##MainMenuBar" ...
16E0B2:  ADD             R1, PC; "##MainMenuBar"
16E0B4:  BLX             strcmp
16E0B8:  CBZ             R0, loc_16E0E8
16E0BA:  LDR             R0, =(aUntitled - 0x16E0C0); "(Untitled)" ...
16E0BC:  ADD             R0, PC; "(Untitled)"
16E0BE:  B               loc_16E0C4
16E0C0:  LDR             R0, =(aPopup - 0x16E0C6); "(Popup)" ...
16E0C2:  ADD             R0, PC; "(Popup)"
16E0C4:  LDR.W           R1, [R6,#0xA8]
16E0C8:  MOVS            R2, #0
16E0CA:  ADD             R3, SP, #0x30+var_24
16E0CC:  STRD.W          R2, R2, [SP,#0x30+var_24]
16E0D0:  SUB.W           R1, R1, R10
16E0D4:  MOVS            R2, #0
16E0D6:  CLZ.W           R1, R1
16E0DA:  LSRS            R1, R1, #5
16E0DC:  BL              sub_17B9EC
16E0E0:  CMP.W           R8, #1
16E0E4:  BGT             loc_16E05C
16E0E6:  B               loc_16E0EE
16E0E8:  LDR             R0, =(aMainMenuBar - 0x16E0EE); "(Main menu bar)" ...
16E0EA:  ADD             R0, PC; "(Main menu bar)"
16E0EC:  B               loc_16E0C4
16E0EE:  BL              sub_16E36C
16E0F2:  MOVS            R0, #1
16E0F4:  BL              sub_16EDC4
16E0F8:  LDR.W           R9, [SP,#0x30+var_2C]
16E0FC:  LDRB.W          R0, [R4,#0x394]
16E100:  CBZ             R0, loc_16E178
16E102:  LDR.W           R1, [R4,#0x3B4]
16E106:  LDRB.W          R0, [R4,#0x3DA]
16E10A:  LDR.W           R2, [R5,#0x458]
16E10E:  ADDS            R1, #1
16E110:  CMP             R1, R2
16E112:  BGE             loc_16E148
16E114:  LDRB.W          R1, [R4,#0x398]
16E118:  LSLS            R1, R1, #0x1A
16E11A:  BMI             loc_16E14E
16E11C:  LDR             R2, [SP,#0x30+var_28]
16E11E:  LDR.W           R1, [R4,#0x3A0]
16E122:  LDR             R2, [R2]
16E124:  ADD             R1, R2
16E126:  LDRB.W          R1, [R1,#0xE8]
16E12A:  CLZ.W           R1, R1
16E12E:  LSRS            R1, R1, #5
16E130:  B               loc_16E14A
16E132:  ALIGN 4
16E134:  DCD dword_381B58 - 0x16DE98
16E138:  DCFS 3.4028e38
16E13C:  DCFS 0.0001
16E140:  DCFS 0.15
16E144:  DCD aNavwindowingli - 0x16DFB0
16E148:  MOVS            R1, #0
16E14A:  CBNZ            R0, loc_16E14E
16E14C:  CBZ             R1, loc_16E158
16E14E:  BL              sub_16E404
16E152:  LDRB.W          R0, [R4,#0x394]
16E156:  CBZ             R0, loc_16E178
16E158:  LDR.W           R0, [R5,#0x458]
16E15C:  LDR.W           R1, [R4,#0x39C]
16E160:  CMP             R1, R0
16E162:  BGE             loc_16E178
16E164:  LDR             R0, =(asc_8CB3B - 0x16E170); "..." ...
16E166:  MOVS            R1, #1
16E168:  STRB.W          R1, [R4,#0x395]
16E16C:  ADD             R0, PC; "..."
16E16E:  BL              sub_16E490
16E172:  MOVS            R0, #0
16E174:  STRB.W          R0, [R4,#0x395]
16E178:  MOV.W           R10, #0
16E17C:  LDR.W           R0, [R5,#0x458]
16E180:  STRB.W          R10, [R9,#1]
16E184:  STR.W           R0, [R5,#0x45C]
16E188:  BL              sub_168290
16E18C:  LDR             R6, [R4,#4]
16E18E:  CMP.W           R6, #0xFFFFFFFF
16E192:  BGT             loc_16E1EC
16E194:  LDR             R0, [SP,#0x30+var_28]
16E196:  LDR             R0, [R0]
16E198:  CBZ             R0, loc_16E1A4
16E19A:  LDR.W           R1, [R0,#0x370]
16E19E:  ADDS            R1, #1
16E1A0:  STR.W           R1, [R0,#0x370]
16E1A4:  LDR             R1, =(dword_381B60 - 0x16E1AE)
16E1A6:  MOVS            R6, #0
16E1A8:  LDR             R0, =(off_2390AC - 0x16E1B0)
16E1AA:  ADD             R1, PC; dword_381B60
16E1AC:  ADD             R0, PC; off_2390AC
16E1AE:  MOV             R11, R1
16E1B0:  LDR             R1, [R1]
16E1B2:  LDR             R2, [R0]; sub_171190
16E1B4:  MOVS            R0, #0
16E1B6:  BLX             R2; sub_171190
16E1B8:  LDR             R1, [R4,#8]; src
16E1BA:  MOV             R8, R0
16E1BC:  CBZ             R1, loc_16E1E8
16E1BE:  LDR             R0, [R4]
16E1C0:  LSLS            R2, R0, #2; n
16E1C2:  MOV             R0, R8; dest
16E1C4:  BLX             j_memcpy
16E1C8:  LDR             R0, [R4,#8]
16E1CA:  CBZ             R0, loc_16E1DC
16E1CC:  LDR             R1, [SP,#0x30+var_28]
16E1CE:  LDR             R1, [R1]
16E1D0:  CBZ             R1, loc_16E1DC
16E1D2:  LDR.W           R2, [R1,#0x370]
16E1D6:  SUBS            R2, #1
16E1D8:  STR.W           R2, [R1,#0x370]
16E1DC:  LDR             R2, =(off_2390B0 - 0x16E1E6)
16E1DE:  LDR.W           R1, [R11]
16E1E2:  ADD             R2, PC; off_2390B0
16E1E4:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16E1E6:  BLX             R2; j_opus_decoder_destroy_0
16E1E8:  STRD.W          R6, R8, [R4,#4]
16E1EC:  LDR.W           R11, [R5,#0x464]
16E1F0:  STR.W           R10, [R4]
16E1F4:  CMP             R6, R11
16E1F6:  BGE             loc_16E254
16E1F8:  LDR             R0, [SP,#0x30+var_28]
16E1FA:  LDR             R1, [R0]
16E1FC:  MOV.W           R0, R11,LSL#2
16E200:  CBZ             R1, loc_16E20C
16E202:  LDR.W           R2, [R1,#0x370]
16E206:  ADDS            R2, #1
16E208:  STR.W           R2, [R1,#0x370]
16E20C:  LDR             R6, =(dword_381B60 - 0x16E214)
16E20E:  LDR             R2, =(off_2390AC - 0x16E216)
16E210:  ADD             R6, PC; dword_381B60
16E212:  ADD             R2, PC; off_2390AC
16E214:  LDR             R1, [R6]
16E216:  LDR             R2, [R2]; sub_171190
16E218:  BLX             R2; sub_171190
16E21A:  LDR             R1, [R4,#8]; src
16E21C:  MOV             R8, R0
16E21E:  CBZ             R1, loc_16E248
16E220:  LDR             R0, [R4]
16E222:  LSLS            R2, R0, #2; n
16E224:  MOV             R0, R8; dest
16E226:  BLX             j_memcpy
16E22A:  LDR             R0, [R4,#8]
16E22C:  CBZ             R0, loc_16E23E
16E22E:  LDR             R1, [SP,#0x30+var_28]
16E230:  LDR             R1, [R1]
16E232:  CBZ             R1, loc_16E23E
16E234:  LDR.W           R2, [R1,#0x370]
16E238:  SUBS            R2, #1
16E23A:  STR.W           R2, [R1,#0x370]
16E23E:  LDR             R2, =(off_2390B0 - 0x16E246)
16E240:  LDR             R1, [R6]
16E242:  ADD             R2, PC; off_2390B0
16E244:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16E246:  BLX             R2; j_opus_decoder_destroy_0
16E248:  LDR.W           R0, [R5,#0x464]
16E24C:  MOV             R6, R11
16E24E:  STRD.W          R11, R8, [R4,#4]
16E252:  B               loc_16E256
16E254:  MOV             R0, R11
16E256:  MOV.W           R8, #0
16E25A:  CBZ             R0, loc_16E286
16E25C:  MOVS            R6, #0
16E25E:  LDR.W           R1, [R5,#0x46C]
16E262:  LDR.W           R1, [R1,R6,LSL#2]
16E266:  LDRB.W          R2, [R1,#0x7A]
16E26A:  CBZ             R2, loc_16E272
16E26C:  LDRB            R2, [R1,#0xB]
16E26E:  LSLS            R2, R2, #0x1F
16E270:  BNE             loc_16E27C
16E272:  MOV             R0, R4
16E274:  BL              sub_16E4B4
16E278:  LDR.W           R0, [R5,#0x464]
16E27C:  ADDS            R6, #1
16E27E:  CMP             R6, R0
16E280:  BNE             loc_16E25E
16E282:  LDR             R6, [R4,#4]
16E284:  B               loc_16E288
16E286:  MOVS            R0, #0
16E288:  LDR             R1, [R4]
16E28A:  STR.W           R1, [R5,#0x464]
16E28E:  LDR             R1, [R5,#4]
16E290:  LDR.W           R3, [R9,#0x94]
16E294:  LDR.W           LR, [R4,#0x24]
16E298:  CMP.W           R1, #0xFFFFFFFF
16E29C:  LDR.W           R12, [R4,#8]
16E2A0:  LDR.W           R2, [R5,#0x468]
16E2A4:  STR.W           R6, [R5,#0x468]
16E2A8:  LDR.W           R6, [R5,#0x46C]
16E2AC:  STRD.W          R8, R8, [R9,#0xF0]
16E2B0:  STM             R4!, {R0,R2,R6}
16E2B2:  STR.W           R12, [R5,#0x46C]
16E2B6:  STR.W           LR, [R9,#0x36C]
16E2BA:  STRB.W          R8, [R3]
16E2BE:  BGT             loc_16E316
16E2C0:  LDR             R0, [SP,#0x30+var_28]
16E2C2:  LDR             R0, [R0]
16E2C4:  CBZ             R0, loc_16E2D0
16E2C6:  LDR.W           R1, [R0,#0x370]
16E2CA:  ADDS            R1, #1
16E2CC:  STR.W           R1, [R0,#0x370]
16E2D0:  LDR             R6, =(dword_381B60 - 0x16E2DC)
16E2D2:  MOV.W           R8, #0
16E2D6:  LDR             R0, =(off_2390AC - 0x16E2DE)
16E2D8:  ADD             R6, PC; dword_381B60
16E2DA:  ADD             R0, PC; off_2390AC
16E2DC:  LDR             R1, [R6]
16E2DE:  LDR             R2, [R0]; sub_171190
16E2E0:  MOVS            R0, #0
16E2E2:  BLX             R2; sub_171190
16E2E4:  LDR             R1, [R5,#8]; src
16E2E6:  MOV             R4, R0
16E2E8:  CBZ             R1, loc_16E312
16E2EA:  LDR             R0, [R5]
16E2EC:  LSLS            R2, R0, #1; n
16E2EE:  MOV             R0, R4; dest
16E2F0:  BLX             j_memcpy
16E2F4:  LDR             R0, [R5,#8]
16E2F6:  CBZ             R0, loc_16E308
16E2F8:  LDR             R1, [SP,#0x30+var_28]
16E2FA:  LDR             R1, [R1]
16E2FC:  CBZ             R1, loc_16E308
16E2FE:  LDR.W           R2, [R1,#0x370]
16E302:  SUBS            R2, #1
16E304:  STR.W           R2, [R1,#0x370]
16E308:  LDR             R2, =(off_2390B0 - 0x16E310)
16E30A:  LDR             R1, [R6]
16E30C:  ADD             R2, PC; off_2390B0
16E30E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
16E310:  BLX             R2; j_opus_decoder_destroy_0
16E312:  STRD.W          R8, R4, [R5,#4]
16E316:  MOVS            R0, #0
16E318:  MOVS            R1, #0x58 ; 'X'; n
16E31A:  STR             R0, [R5]
16E31C:  ADD.W           R0, R9, #0x2FC; int
16E320:  BLX             sub_22178C
16E324:  ADD             SP, SP, #0x14
16E326:  POP.W           {R8-R11}
16E32A:  POP             {R4-R7,PC}
