; =========================================================
; Game Engine Function: sub_DEFC8
; Address            : 0xDEFC8 - 0xDF296
; =========================================================

DEFC8:  PUSH            {R4-R7,LR}
DEFCA:  ADD             R7, SP, #0xC
DEFCC:  PUSH.W          {R8-R11}
DEFD0:  SUB             SP, SP, #0x74
DEFD2:  LDR             R6, [R7,#arg_0]
DEFD4:  MOV             R12, R2
DEFD6:  LDRD.W          R9, R8, [R1]
DEFDA:  MOV             R11, R1
DEFDC:  CMP.W           R8, #0
DEFE0:  MOV             LR, R0
DEFE2:  STRD.W          R3, R6, [SP,#0x90+var_28]
DEFE6:  ORR.W           R3, R9, #1
DEFEA:  CLZ.W           R3, R3
DEFEE:  LDR             R1, =(unk_91C38 - 0xDF000)
DEFF0:  LDR             R2, =(unk_91BF8 - 0xDF002)
DEFF2:  ADD.W           R3, R3, #0x20 ; ' '
DEFF6:  IT NE
DEFF8:  CLZNE.W         R3, R8
DEFFC:  ADD             R1, PC; unk_91C38
DEFFE:  ADD             R2, PC; unk_91BF8
DF000:  EOR.W           R3, R3, #0x3F ; '?'
DF004:  LDR             R0, [R7,#arg_4]; std::locale *
DF006:  UBFX.W          R10, R6, #8, #8
DF00A:  LDRB            R5, [R2,R3]
DF00C:  STRD.W          R9, R8, [SP,#0x90+var_30]
DF010:  LDR.W           R2, [R1,R5,LSL#3]
DF014:  ADD.W           R1, R1, R5,LSL#3
DF018:  LDR             R1, [R1,#4]
DF01A:  SUBS.W          R2, R9, R2
DF01E:  SBCS.W          R1, R8, R1
DF022:  IT CC
DF024:  SUBCC           R5, #1
DF026:  MOVS            R1, #0x30 ; '0'
DF028:  CMP.W           R10, #0
DF02C:  STRB.W          R1, [R7,#var_35]
DF030:  MOV             R1, R5
DF032:  STR             R5, [SP,#0x90+var_34]
DF034:  STR.W           R10, [SP,#0x90+var_3C]
DF038:  IT NE
DF03A:  ADDNE           R1, #1
DF03C:  LSLS            R2, R6, #0xE
DF03E:  STRD.W          R1, LR, [SP,#0x90+var_88]
DF042:  BMI             loc_DF048
DF044:  MOVS            R0, #0x2E ; '.'
DF046:  B               loc_DF050
DF048:  MOV             R4, R12
DF04A:  BLX             j__ZN3fmt2v86detail18decimal_point_implIcEET_NS1_10locale_refE; fmt::v8::detail::decimal_point_impl<char>(fmt::v8::detail::locale_ref)
DF04E:  MOV             R12, R4
DF050:  LDR.W           R2, [R11,#8]
DF054:  LDRD.W          R6, LR, [SP,#0x90+var_28]
DF058:  ADDS            R4, R5, R2
DF05A:  UXTB.W          R3, LR
DF05E:  CMP             R3, #1
DF060:  STRB.W          R0, [R7,#var_3D]
DF064:  BEQ             loc_DF0B6
DF066:  CBNZ            R3, loc_DF07A
DF068:  CMP             R6, #0
DF06A:  MOV             R3, R6
DF06C:  IT LE
DF06E:  MOVLE           R3, #0x10
DF070:  CMN.W           R4, #3
DF074:  BLT             loc_DF0B6
DF076:  CMP             R4, R3
DF078:  BGT             loc_DF0B6
DF07A:  CMP             R2, #0
DF07C:  STR             R4, [SP,#0x90+var_6C]
DF07E:  BMI             loc_DF144
DF080:  LDR             R3, [SP,#0x90+var_88]
DF082:  SUBS            R0, R6, R4
DF084:  LDR.W           R10, [SP,#0x90+var_84]
DF088:  MOV             R9, R12
DF08A:  LDR             R1, [R7,#arg_4]
DF08C:  ADD.W           R8, R2, R3
DF090:  MOVS.W          R2, LR,LSL#12
DF094:  STR             R0, [SP,#0x90+var_70]
DF096:  BPL.W           loc_DF1BC
DF09A:  ADD.W           R8, R8, #1
DF09E:  CMP             R0, #0
DF0A0:  BGT.W           loc_DF1B6
DF0A4:  UXTB.W          R2, LR
DF0A8:  CMP             R2, #2
DF0AA:  BEQ.W           loc_DF1B6
DF0AE:  MOVS            R0, #1
DF0B0:  ADD             R8, R0
DF0B2:  STR             R0, [SP,#0x90+var_70]
DF0B4:  B               loc_DF1BC
DF0B6:  SUBS            R2, R4, #1
DF0B8:  MOVS.W          R3, LR,LSL#12
DF0BC:  BMI             loc_DF0CE
DF0BE:  MOVS            R3, #0
DF0C0:  CMP             R5, #1
DF0C2:  ITT EQ
DF0C4:  STRBEQ.W        R3, [R7,#var_3D]
DF0C8:  MOVEQ           R0, #0
DF0CA:  LDR             R6, [SP,#0x90+var_88]
DF0CC:  B               loc_DF0D8
DF0CE:  SUBS            R3, R6, R5
DF0D0:  LDR             R6, [SP,#0x90+var_88]
DF0D2:  BIC.W           R3, R3, R3,ASR#31
DF0D6:  ADD             R6, R3
DF0D8:  MOVS.W          R1, LR,LSL#15
DF0DC:  STR.W           R9, [SP,#0x90+var_60]
DF0E0:  MOV.W           R1, #0x45 ; 'E'
DF0E4:  STR             R2, [SP,#0x90+var_48]
DF0E6:  IT PL
DF0E8:  MOVPL           R1, #0x65 ; 'e'
DF0EA:  STRB.W          R1, [SP,#0x90+var_4C+1]
DF0EE:  MOVS            R1, #0x30 ; '0'
DF0F0:  CMP             R4, #0
DF0F2:  STRB.W          R1, [SP,#0x90+var_4C]
DF0F6:  LDR.W           R1, [R12]
DF0FA:  STR             R3, [SP,#0x90+var_50]
DF0FC:  STRB.W          R0, [SP,#0x90+var_54]
DF100:  STR             R5, [SP,#0x90+var_58]
DF102:  STR.W           R10, [SP,#0x90+var_68]
DF106:  STR.W           R8, [SP,#0x90+var_5C]
DF10A:  IT LE
DF10C:  RSBLE.W         R2, R4, #1
DF110:  CMP             R1, #1
DF112:  BLT             loc_DF1AC
DF114:  ADD             R1, SP, #0x90+var_68
DF116:  STR             R1, [SP,#0x90+var_90]
DF118:  CMP             R0, #0
DF11A:  MOV.W           R0, #3
DF11E:  MOV.W           R1, #3
DF122:  IT EQ
DF124:  MOVEQ           R0, #2
DF126:  CMP.W           R2, #0x3E8
DF12A:  IT GE
DF12C:  MOVGE           R1, #4
DF12E:  CMP             R2, #0x63 ; 'c'
DF130:  IT LE
DF132:  MOVLE           R1, #2
DF134:  ADD             R1, R6
DF136:  ADDS            R2, R1, R0
DF138:  LDR             R0, [SP,#0x90+var_84]
DF13A:  MOV             R1, R12
DF13C:  MOV             R3, R2
DF13E:  BL              sub_DF400
DF142:  B               loc_DF28A
DF144:  CMP             R4, #1
DF146:  BLT             loc_DF216
DF148:  SUBS            R0, R6, R5
DF14A:  MOV.W           R2, LR,LSL#12
DF14E:  ADD             R4, SP, #0x90+var_80
DF150:  LDR             R1, [R7,#arg_4]
DF152:  AND.W           R6, R0, R2,ASR#31
DF156:  UBFX.W          R2, LR, #0x11, #1
DF15A:  MOV             R0, R4
DF15C:  LDR.W           R9, [SP,#0x90+var_84]
DF160:  MOV             R8, R12
DF162:  STR             R6, [SP,#0x90+var_70]
DF164:  BL              sub_DD758
DF168:  MOV             R1, R5
DF16A:  BL              sub_DD86C
DF16E:  SUB.W           R1, R7, #-var_35
DF172:  STR             R1, [SP,#0x90+var_4C]
DF174:  ADD             R1, SP, #0x90+var_70
DF176:  STRD.W          R4, R1, [SP,#0x90+var_54]
DF17A:  SUB.W           R1, R7, #-var_3D
DF17E:  STR             R1, [SP,#0x90+var_58]
DF180:  ADD             R1, SP, #0x90+var_6C
DF182:  STR             R1, [SP,#0x90+var_5C]
DF184:  ADD             R1, SP, #0x90+var_34
DF186:  STR             R1, [SP,#0x90+var_60]
DF188:  ADD             R1, SP, #0x90+var_30
DF18A:  STR             R1, [SP,#0x90+var_64]
DF18C:  ADD             R1, SP, #0x90+var_3C
DF18E:  STR             R1, [SP,#0x90+var_68]
DF190:  ADD             R1, SP, #0x90+var_68
DF192:  STR             R1, [SP,#0x90+var_90]
DF194:  LDR             R1, [SP,#0x90+var_88]
DF196:  CMP             R6, #0
DF198:  IT GT
DF19A:  ADDGT           R1, R6
DF19C:  ADD             R0, R1
DF19E:  ADDS            R2, R0, #1
DF1A0:  MOV             R0, R9
DF1A2:  MOV             R1, R8
DF1A4:  MOV             R3, R2
DF1A6:  BL              sub_DF618
DF1AA:  B               loc_DF204
DF1AC:  LDR             R1, [SP,#0x90+var_84]
DF1AE:  ADD             R0, SP, #0x90+var_68
DF1B0:  BL              sub_DF2B8
DF1B4:  B               loc_DF28A
DF1B6:  CMP             R0, #1
DF1B8:  IT GE
DF1BA:  ADDGE           R8, R0
DF1BC:  ADD             R5, SP, #0x90+var_80
DF1BE:  UBFX.W          R2, LR, #0x11, #1
DF1C2:  MOV             R0, R5
DF1C4:  BL              sub_DD758
DF1C8:  MOV             R1, R4
DF1CA:  BL              sub_DD86C
DF1CE:  SUB.W           R1, R7, #-var_35
DF1D2:  STR             R1, [SP,#0x90+var_48]
DF1D4:  ADD             R1, SP, #0x90+var_70
DF1D6:  STR             R1, [SP,#0x90+var_4C]
DF1D8:  SUB.W           R1, R7, #-var_3D
DF1DC:  STR             R1, [SP,#0x90+var_50]
DF1DE:  ADD             R1, SP, #0x90+var_28
DF1E0:  STR             R1, [SP,#0x90+var_54]
DF1E2:  ADD             R1, SP, #0x90+var_34
DF1E4:  STR             R1, [SP,#0x90+var_60]
DF1E6:  ADD             R1, SP, #0x90+var_30
DF1E8:  STR             R1, [SP,#0x90+var_64]
DF1EA:  ADD             R1, SP, #0x90+var_3C
DF1EC:  STRD.W          R11, R5, [SP,#0x90+var_5C]
DF1F0:  STR             R1, [SP,#0x90+var_68]
DF1F2:  ADD.W           R2, R0, R8
DF1F6:  ADD             R1, SP, #0x90+var_68
DF1F8:  STR             R1, [SP,#0x90+var_90]
DF1FA:  MOV             R0, R10
DF1FC:  MOV             R1, R9
DF1FE:  MOV             R3, R2
DF200:  BL              sub_DF460
DF204:  MOV             R4, R0
DF206:  LDRB.W          R0, [SP,#0x90+var_80]
DF20A:  LSLS            R0, R0, #0x1F
DF20C:  BEQ             loc_DF28C
DF20E:  LDR             R0, [SP,#0x90+var_78]; void *
DF210:  BLX             j__ZdlPv; operator delete(void *)
DF214:  B               loc_DF28C
DF216:  NEGS            R2, R4
DF218:  CMP             R6, R2
DF21A:  MOV             R4, R2
DF21C:  IT LT
DF21E:  MOVLT           R4, R6
DF220:  CMP.W           R6, #0xFFFFFFFF
DF224:  IT LE
DF226:  MOVLE           R4, R2
DF228:  CMP             R5, #0
DF22A:  IT NE
DF22C:  MOVNE           R4, R2
DF22E:  ORRS.W          R2, R4, R5
DF232:  STR             R4, [SP,#0x90+var_80]
DF234:  BEQ             loc_DF242
DF236:  LDRD.W          R3, R0, [SP,#0x90+var_88]
DF23A:  MOVS            R1, #1
DF23C:  STRB.W          R1, [SP,#0x90+var_70]
DF240:  B               loc_DF258
DF242:  LDRD.W          R3, R0, [SP,#0x90+var_88]
DF246:  TST.W           LR, #0x80000
DF24A:  UBFX.W          R2, LR, #0x13, #1
DF24E:  STRB.W          R2, [SP,#0x90+var_70]
DF252:  BNE             loc_DF258
DF254:  MOVS            R1, #1
DF256:  B               loc_DF25A
DF258:  MOVS            R1, #2
DF25A:  ADD             R2, SP, #0x90+var_34
DF25C:  STR             R2, [SP,#0x90+var_50]
DF25E:  ADD             R2, SP, #0x90+var_30
DF260:  STR             R2, [SP,#0x90+var_54]
DF262:  ADD             R2, SP, #0x90+var_80
DF264:  STR             R2, [SP,#0x90+var_58]
DF266:  SUB.W           R2, R7, #-var_3D
DF26A:  STR             R2, [SP,#0x90+var_5C]
DF26C:  ADD             R2, SP, #0x90+var_70
DF26E:  STR             R2, [SP,#0x90+var_60]
DF270:  SUB.W           R2, R7, #-var_35
DF274:  STR             R2, [SP,#0x90+var_64]
DF276:  ADD             R2, SP, #0x90+var_3C
DF278:  STR             R2, [SP,#0x90+var_68]
DF27A:  ADD             R2, SP, #0x90+var_68
DF27C:  STR             R2, [SP,#0x90+var_90]
DF27E:  ADDS            R2, R4, R3
DF280:  ADD             R2, R1
DF282:  MOV             R1, R12
DF284:  MOV             R3, R2
DF286:  BL              sub_DF8D4
DF28A:  MOV             R4, R0
DF28C:  MOV             R0, R4
DF28E:  ADD             SP, SP, #0x74 ; 't'
DF290:  POP.W           {R8-R11}
DF294:  POP             {R4-R7,PC}
