; =========================================================
; Game Engine Function: sub_FBD6C
; Address            : 0xFBD6C - 0xFC2B0
; =========================================================

FBD6C:  PUSH            {R4-R7,LR}
FBD6E:  ADD             R7, SP, #0xC
FBD70:  PUSH.W          {R8-R11}
FBD74:  SUB             SP, SP, #0x2C
FBD76:  LDR             R1, =(aAxl - 0xFBD80); "AXL" ...
FBD78:  MOVS            R0, #4; prio
FBD7A:  LDR             R2, =(aGtaPoolsInitia - 0xFBD82); "GTA pools initializing.." ...
FBD7C:  ADD             R1, PC; "AXL"
FBD7E:  ADD             R2, PC; "GTA pools initializing.."
FBD80:  BLX             __android_log_print
FBD84:  LDR             R0, =(byte_247424 - 0xFBD8A)
FBD86:  ADD             R0, PC; byte_247424
FBD88:  LDRB            R0, [R0]
FBD8A:  DMB.W           ISH
FBD8E:  LSLS            R0, R0, #0x1F
FBD90:  LDR             R0, =(dword_247420 - 0xFBD96)
FBD92:  ADD             R0, PC; dword_247420
FBD94:  MOV             R8, R0
FBD96:  BEQ.W           loc_FBF76
FBD9A:  LDR             R0, =(byte_24742C - 0xFBDA0)
FBD9C:  ADD             R0, PC; byte_24742C
FBD9E:  LDRB            R0, [R0]
FBDA0:  DMB.W           ISH
FBDA4:  LSLS            R0, R0, #0x1F
FBDA6:  LDR             R0, =(dword_247428 - 0xFBDAC)
FBDA8:  ADD             R0, PC; dword_247428
FBDAA:  MOV             R9, R0
FBDAC:  BEQ.W           loc_FBFA2
FBDB0:  LDR             R0, =(byte_247434 - 0xFBDB6)
FBDB2:  ADD             R0, PC; byte_247434
FBDB4:  LDRB            R0, [R0]
FBDB6:  DMB.W           ISH
FBDBA:  LSLS            R0, R0, #0x1F
FBDBC:  LDR             R0, =(dword_247430 - 0xFBDC2)
FBDBE:  ADD             R0, PC; dword_247430
FBDC0:  MOV             R10, R0
FBDC2:  BEQ.W           loc_FBFCA
FBDC6:  LDR             R0, =(byte_24743C - 0xFBDCC)
FBDC8:  ADD             R0, PC; byte_24743C
FBDCA:  LDRB            R0, [R0]
FBDCC:  DMB.W           ISH
FBDD0:  LSLS            R0, R0, #0x1F
FBDD2:  LDR             R0, =(dword_247438 - 0xFBDD8)
FBDD4:  ADD             R0, PC; dword_247438
FBDD6:  MOV             R11, R0
FBDD8:  BEQ.W           loc_FBFF2
FBDDC:  LDR             R0, =(byte_247444 - 0xFBDE2)
FBDDE:  ADD             R0, PC; byte_247444
FBDE0:  LDRB            R0, [R0]
FBDE2:  DMB.W           ISH
FBDE6:  LSLS            R0, R0, #0x1F
FBDE8:  LDR             R0, =(unk_247440 - 0xFBDEE)
FBDEA:  ADD             R0, PC; unk_247440
FBDEC:  STR             R0, [SP,#0x48+var_20]
FBDEE:  BEQ.W           loc_FC01A
FBDF2:  LDR             R0, =(byte_24744C - 0xFBDF8)
FBDF4:  ADD             R0, PC; byte_24744C
FBDF6:  LDRB            R0, [R0]
FBDF8:  DMB.W           ISH
FBDFC:  LSLS            R0, R0, #0x1F
FBDFE:  LDR             R0, =(unk_247448 - 0xFBE04)
FBE00:  ADD             R0, PC; unk_247448
FBE02:  STR             R0, [SP,#0x48+var_24]
FBE04:  BEQ.W           loc_FC044
FBE08:  LDR             R0, =(byte_247454 - 0xFBE0E)
FBE0A:  ADD             R0, PC; byte_247454
FBE0C:  LDRB            R0, [R0]
FBE0E:  DMB.W           ISH
FBE12:  LSLS            R0, R0, #0x1F
FBE14:  LDR             R0, =(unk_247450 - 0xFBE1A)
FBE16:  ADD             R0, PC; unk_247450
FBE18:  STR             R0, [SP,#0x48+var_28]
FBE1A:  BEQ.W           loc_FC06C
FBE1E:  LDR             R0, =(byte_24745C - 0xFBE24)
FBE20:  ADD             R0, PC; byte_24745C
FBE22:  LDRB            R0, [R0]
FBE24:  DMB.W           ISH
FBE28:  LSLS            R0, R0, #0x1F
FBE2A:  LDR             R0, =(unk_247458 - 0xFBE30)
FBE2C:  ADD             R0, PC; unk_247458
FBE2E:  STR             R0, [SP,#0x48+var_2C]
FBE30:  BEQ.W           loc_FC096
FBE34:  LDR             R0, =(byte_247464 - 0xFBE3A)
FBE36:  ADD             R0, PC; byte_247464
FBE38:  LDRB            R0, [R0]
FBE3A:  DMB.W           ISH
FBE3E:  LSLS            R0, R0, #0x1F
FBE40:  LDR             R0, =(unk_247460 - 0xFBE46)
FBE42:  ADD             R0, PC; unk_247460
FBE44:  STR             R0, [SP,#0x48+var_30]
FBE46:  BEQ.W           loc_FC0BE
FBE4A:  LDR             R0, =(byte_24746C - 0xFBE50)
FBE4C:  ADD             R0, PC; byte_24746C
FBE4E:  LDRB            R0, [R0]
FBE50:  DMB.W           ISH
FBE54:  LSLS            R0, R0, #0x1F
FBE56:  LDR             R0, =(unk_247468 - 0xFBE5C)
FBE58:  ADD             R0, PC; unk_247468
FBE5A:  STR             R0, [SP,#0x48+var_34]
FBE5C:  BEQ.W           loc_FC0E6
FBE60:  LDR             R0, =(byte_247474 - 0xFBE66)
FBE62:  ADD             R0, PC; byte_247474
FBE64:  LDRB            R0, [R0]
FBE66:  DMB.W           ISH
FBE6A:  LSLS            R0, R0, #0x1F
FBE6C:  LDR             R0, =(unk_247470 - 0xFBE72)
FBE6E:  ADD             R0, PC; unk_247470
FBE70:  STR             R0, [SP,#0x48+var_38]
FBE72:  BEQ.W           loc_FC10E
FBE76:  LDR             R0, =(byte_24747C - 0xFBE7C)
FBE78:  ADD             R0, PC; byte_24747C
FBE7A:  LDRB            R0, [R0]
FBE7C:  DMB.W           ISH
FBE80:  LSLS            R0, R0, #0x1F
FBE82:  LDR             R0, =(unk_247478 - 0xFBE88)
FBE84:  ADD             R0, PC; unk_247478
FBE86:  STR             R0, [SP,#0x48+var_3C]
FBE88:  BEQ.W           loc_FC1CC
FBE8C:  LDR             R0, =(byte_247484 - 0xFBE92)
FBE8E:  ADD             R0, PC; byte_247484
FBE90:  LDRB            R0, [R0]
FBE92:  DMB.W           ISH
FBE96:  LSLS            R0, R0, #0x1F
FBE98:  LDR             R0, =(unk_247480 - 0xFBE9E)
FBE9A:  ADD             R0, PC; unk_247480
FBE9C:  STR             R0, [SP,#0x48+var_40]
FBE9E:  BEQ.W           loc_FC1F2
FBEA2:  LDR             R0, =(byte_24748C - 0xFBEA8)
FBEA4:  ADD             R0, PC; byte_24748C
FBEA6:  LDRB            R0, [R0]
FBEA8:  DMB.W           ISH
FBEAC:  LSLS            R0, R0, #0x1F
FBEAE:  LDR             R0, =(unk_247488 - 0xFBEB4)
FBEB0:  ADD             R0, PC; unk_247488
FBEB2:  STR             R0, [SP,#0x48+var_44]
FBEB4:  BEQ.W           loc_FC21A
FBEB8:  LDR             R0, =(byte_247494 - 0xFBEBE)
FBEBA:  ADD             R0, PC; byte_247494
FBEBC:  LDRB            R0, [R0]
FBEBE:  DMB.W           ISH
FBEC2:  LDR             R6, =(dword_247490 - 0xFBEC8)
FBEC4:  ADD             R6, PC; dword_247490
FBEC6:  LSLS            R0, R0, #0x1F
FBEC8:  BEQ.W           loc_FC240
FBECC:  LDR             R0, =(byte_24749C - 0xFBED2)
FBECE:  ADD             R0, PC; byte_24749C
FBED0:  LDRB            R0, [R0]
FBED2:  DMB.W           ISH
FBED6:  LDR             R4, =(dword_247498 - 0xFBEDC)
FBED8:  ADD             R4, PC; dword_247498
FBEDA:  LSLS            R0, R0, #0x1F
FBEDC:  BEQ.W           loc_FC266
FBEE0:  LDR             R0, =(byte_2474A4 - 0xFBEE6)
FBEE2:  ADD             R0, PC; byte_2474A4
FBEE4:  LDRB            R0, [R0]
FBEE6:  DMB.W           ISH
FBEEA:  LDR             R5, =(dword_2474A0 - 0xFBEF0)
FBEEC:  ADD             R5, PC; dword_2474A0
FBEEE:  LSLS            R0, R0, #0x1F
FBEF0:  BEQ.W           loc_FC28C
FBEF4:  LDR             R0, =(off_23494C - 0xFBEFE)
FBEF6:  LDR.W           R1, [R8]
FBEFA:  ADD             R0, PC; off_23494C
FBEFC:  LDR             R0, [R0]; dword_23DF24
FBEFE:  LDR             R0, [R0]
FBF00:  ADD.W           R0, R0, #0x940000
FBF04:  ADD.W           R0, R0, #0x1AC00
FBF08:  STR             R1, [R0,#0x38]
FBF0A:  LDR.W           R1, [R9]
FBF0E:  STR             R1, [R0,#0x3C]
FBF10:  LDR.W           R1, [R10]
FBF14:  STR             R1, [R0,#0x40]
FBF16:  LDR.W           R1, [R11]
FBF1A:  STR             R1, [R0,#0x44]
FBF1C:  LDR             R1, [SP,#0x48+var_20]
FBF1E:  LDR             R1, [R1]
FBF20:  STR             R1, [R0,#0x48]
FBF22:  LDR             R1, [SP,#0x48+var_24]
FBF24:  LDR             R1, [R1]
FBF26:  STR             R1, [R0,#0x4C]
FBF28:  LDR             R1, [SP,#0x48+var_28]
FBF2A:  LDR             R1, [R1]
FBF2C:  STR             R1, [R0,#0x50]
FBF2E:  LDR             R1, [SP,#0x48+var_2C]
FBF30:  LDR             R1, [R1]
FBF32:  STR             R1, [R0,#0x54]
FBF34:  LDR             R1, [SP,#0x48+var_30]
FBF36:  LDR             R1, [R1]
FBF38:  STR             R1, [R0,#0x58]
FBF3A:  LDR             R1, [SP,#0x48+var_34]
FBF3C:  LDR             R1, [R1]
FBF3E:  STR             R1, [R0,#0x5C]
FBF40:  LDR             R1, [SP,#0x48+var_38]
FBF42:  LDR             R1, [R1]
FBF44:  STR             R1, [R0,#0x60]
FBF46:  LDR             R1, [SP,#0x48+var_3C]
FBF48:  LDR             R1, [R1]
FBF4A:  STR             R1, [R0,#0x64]
FBF4C:  LDR             R1, [SP,#0x48+var_40]
FBF4E:  LDR             R1, [R1]
FBF50:  STR             R1, [R0,#0x68]
FBF52:  LDR             R1, [SP,#0x48+var_44]
FBF54:  LDR             R1, [R1]
FBF56:  STR             R1, [R0,#0x6C]
FBF58:  LDR             R1, [R6]
FBF5A:  STR             R1, [R0,#0x70]
FBF5C:  LDR             R1, [R4]
FBF5E:  STR             R1, [R0,#0x74]
FBF60:  LDR             R1, [R5]
FBF62:  STR             R1, [R0,#0x78]
FBF64:  ADD.W           R1, R0, #0xFF
FBF68:  ADD             SP, SP, #0x2C ; ','
FBF6A:  POP.W           {R8-R11}
FBF6E:  POP.W           {R4-R7,LR}
FBF72:  B.W             sub_164190
FBF76:  LDR             R0, =(byte_247424 - 0xFBF7C)
FBF78:  ADD             R0, PC; byte_247424 ; __guard *
FBF7A:  BLX             j___cxa_guard_acquire
FBF7E:  CMP             R0, #0
FBF80:  BEQ.W           loc_FBD9A
FBF84:  MOVW            R0, #:lower16:aFire; "FIRE"
FBF88:  MOVS            R1, #8
FBF8A:  MOVT            R0, #:upper16:aFire; "FIRE"
FBF8E:  BL              sub_F613C
FBF92:  LDR             R1, =(byte_247424 - 0xFBF9C)
FBF94:  STR.W           R0, [R8]
FBF98:  ADD             R1, PC; byte_247424
FBF9A:  MOV             R0, R1; __guard *
FBF9C:  BLX             j___cxa_guard_release
FBFA0:  B               loc_FBD9A
FBFA2:  LDR             R0, =(byte_24742C - 0xFBFA8)
FBFA4:  ADD             R0, PC; byte_24742C ; __guard *
FBFA6:  BLX             j___cxa_guard_acquire
FBFAA:  CMP             R0, #0
FBFAC:  BEQ.W           loc_FBDB0
FBFB0:  MOV.W           R0, #0x7D00
FBFB4:  MOVS            R1, #0xC
FBFB6:  BL              sub_F613C
FBFBA:  LDR             R1, =(byte_24742C - 0xFBFC4)
FBFBC:  STR.W           R0, [R9]
FBFC0:  ADD             R1, PC; byte_24742C
FBFC2:  MOV             R0, R1; __guard *
FBFC4:  BLX             j___cxa_guard_release
FBFC8:  B               loc_FBDB0
FBFCA:  LDR             R0, =(byte_247434 - 0xFBFD0)
FBFCC:  ADD             R0, PC; byte_247434 ; __guard *
FBFCE:  BLX             j___cxa_guard_acquire
FBFD2:  CMP             R0, #0
FBFD4:  BEQ.W           loc_FBDC6
FBFD8:  MOVW            R0, #0x4E20
FBFDC:  MOVS            R1, #0x14
FBFDE:  BL              sub_F613C
FBFE2:  LDR             R1, =(byte_247434 - 0xFBFEC)
FBFE4:  STR.W           R0, [R10]
FBFE8:  ADD             R1, PC; byte_247434
FBFEA:  MOV             R0, R1; __guard *
FBFEC:  BLX             j___cxa_guard_release
FBFF0:  B               loc_FBDC6
FBFF2:  LDR             R0, =(byte_24743C - 0xFBFF8)
FBFF4:  ADD             R0, PC; byte_24743C ; __guard *
FBFF6:  BLX             j___cxa_guard_acquire
FBFFA:  CMP             R0, #0
FBFFC:  BEQ.W           loc_FBDDC
FC000:  MOVS            R0, #0xF0
FC002:  MOVW            R1, #0x7CC
FC006:  BL              sub_F613C
FC00A:  LDR             R1, =(byte_24743C - 0xFC014)
FC00C:  STR.W           R0, [R11]
FC010:  ADD             R1, PC; byte_24743C
FC012:  MOV             R0, R1; __guard *
FC014:  BLX             j___cxa_guard_release
FC018:  B               loc_FBDDC
FC01A:  LDR             R0, =(byte_247444 - 0xFC020)
FC01C:  ADD             R0, PC; byte_247444 ; __guard *
FC01E:  BLX             j___cxa_guard_acquire
FC022:  CMP             R0, #0
FC024:  BEQ.W           loc_FBDF2
FC028:  MOV.W           R0, #0x7D0
FC02C:  MOVW            R1, #0xA2C
FC030:  BL              sub_F613C
FC034:  LDR             R1, =(byte_247444 - 0xFC03C)
FC036:  LDR             R2, [SP,#0x48+var_20]
FC038:  ADD             R1, PC; byte_247444
FC03A:  STR             R0, [R2]
FC03C:  MOV             R0, R1; __guard *
FC03E:  BLX             j___cxa_guard_release
FC042:  B               loc_FBDF2
FC044:  LDR             R0, =(byte_24744C - 0xFC04A)
FC046:  ADD             R0, PC; byte_24744C ; __guard *
FC048:  BLX             j___cxa_guard_acquire
FC04C:  CMP             R0, #0
FC04E:  BEQ.W           loc_FBE08
FC052:  MOVW            R0, #0x88B8
FC056:  MOVS            R1, #0x3C ; '<'
FC058:  BL              sub_F613C
FC05C:  LDR             R1, =(byte_24744C - 0xFC064)
FC05E:  LDR             R2, [SP,#0x48+var_24]
FC060:  ADD             R1, PC; byte_24744C
FC062:  STR             R0, [R2]
FC064:  MOV             R0, R1; __guard *
FC066:  BLX             j___cxa_guard_release
FC06A:  B               loc_FBE08
FC06C:  LDR             R0, =(byte_247454 - 0xFC072)
FC06E:  ADD             R0, PC; byte_247454 ; __guard *
FC070:  BLX             j___cxa_guard_acquire
FC074:  CMP             R0, #0
FC076:  BEQ.W           loc_FBE1E
FC07A:  MOVW            R0, #0x2710
FC07E:  MOV.W           R1, #0x1A4
FC082:  BL              sub_F613C
FC086:  LDR             R1, =(byte_247454 - 0xFC08E)
FC088:  LDR             R2, [SP,#0x48+var_28]
FC08A:  ADD             R1, PC; byte_247454
FC08C:  STR             R0, [R2]
FC08E:  MOV             R0, R1; __guard *
FC090:  BLX             j___cxa_guard_release
FC094:  B               loc_FBE1E
FC096:  LDR             R0, =(byte_24745C - 0xFC09C)
FC098:  ADD             R0, PC; byte_24745C ; __guard *
FC09A:  BLX             j___cxa_guard_acquire
FC09E:  CMP             R0, #0
FC0A0:  BEQ.W           loc_FBE34
FC0A4:  MOVW            R0, #0xC350
FC0A8:  MOVS            R1, #0x3C ; '<'
FC0AA:  BL              sub_F613C
FC0AE:  LDR             R1, =(byte_24745C - 0xFC0B6)
FC0B0:  LDR             R2, [SP,#0x48+var_2C]
FC0B2:  ADD             R1, PC; byte_24745C
FC0B4:  STR             R0, [R2]
FC0B6:  MOV             R0, R1; __guard *
FC0B8:  BLX             j___cxa_guard_release
FC0BC:  B               loc_FBE34
FC0BE:  LDR             R0, =(byte_247464 - 0xFC0C4)
FC0C0:  ADD             R0, PC; byte_247464 ; __guard *
FC0C2:  BLX             j___cxa_guard_acquire
FC0C6:  CMP             R0, #0
FC0C8:  BEQ.W           loc_FBE4A
FC0CC:  MOVW            R0, #0xC350
FC0D0:  MOVS            R1, #0x30 ; '0'
FC0D2:  BL              sub_F613C
FC0D6:  LDR             R1, =(byte_247464 - 0xFC0DE)
FC0D8:  LDR             R2, [SP,#0x48+var_30]
FC0DA:  ADD             R1, PC; byte_247464
FC0DC:  STR             R0, [R2]
FC0DE:  MOV             R0, R1; __guard *
FC0E0:  BLX             j___cxa_guard_release
FC0E4:  B               loc_FBE4A
FC0E6:  LDR             R0, =(byte_24746C - 0xFC0EC)
FC0E8:  ADD             R0, PC; byte_24746C ; __guard *
FC0EA:  BLX             j___cxa_guard_acquire
FC0EE:  CMP             R0, #0
FC0F0:  BEQ.W           loc_FBE60
FC0F4:  MOVW            R0, #0x2710
FC0F8:  MOVS            R1, #0x80
FC0FA:  BL              sub_F613C
FC0FE:  LDR             R1, =(byte_24746C - 0xFC106)
FC100:  LDR             R2, [SP,#0x48+var_34]
FC102:  ADD             R1, PC; byte_24746C
FC104:  STR             R0, [R2]
FC106:  MOV             R0, R1; __guard *
FC108:  BLX             j___cxa_guard_release
FC10C:  B               loc_FBE60
FC10E:  LDR             R0, =(byte_247474 - 0xFC114)
FC110:  ADD             R0, PC; byte_247474 ; __guard *
FC112:  BLX             j___cxa_guard_acquire
FC116:  CMP             R0, #0
FC118:  BEQ.W           loc_FBE76
FC11C:  MOV.W           R0, #0x7D0
FC120:  MOVS            R1, #0x44 ; 'D'
FC122:  BL              sub_F613C
FC126:  LDR             R1, =(byte_247474 - 0xFC12E)
FC128:  LDR             R2, [SP,#0x48+var_38]
FC12A:  ADD             R1, PC; byte_247474
FC12C:  STR             R0, [R2]
FC12E:  MOV             R0, R1; __guard *
FC130:  BLX             j___cxa_guard_release
FC134:  B               loc_FBE76
FC136:  ALIGN 4
FC138:  DCD aAxl - 0xFBD80
FC13C:  DCD aGtaPoolsInitia - 0xFBD82
FC140:  DCD byte_247424 - 0xFBD8A
FC144:  DCD dword_247420 - 0xFBD96
FC148:  DCD byte_24742C - 0xFBDA0
FC14C:  DCD dword_247428 - 0xFBDAC
FC150:  DCD byte_247434 - 0xFBDB6
FC154:  DCD dword_247430 - 0xFBDC2
FC158:  DCD byte_24743C - 0xFBDCC
FC15C:  DCD dword_247438 - 0xFBDD8
FC160:  DCD byte_247444 - 0xFBDE2
FC164:  DCD unk_247440 - 0xFBDEE
FC168:  DCD byte_24744C - 0xFBDF8
FC16C:  DCD unk_247448 - 0xFBE04
FC170:  DCD byte_247454 - 0xFBE0E
FC174:  DCD unk_247450 - 0xFBE1A
FC178:  DCD byte_24745C - 0xFBE24
FC17C:  DCD unk_247458 - 0xFBE30
FC180:  DCD byte_247464 - 0xFBE3A
FC184:  DCD unk_247460 - 0xFBE46
FC188:  DCD byte_24746C - 0xFBE50
FC18C:  DCD unk_247468 - 0xFBE5C
FC190:  DCD byte_247474 - 0xFBE66
FC194:  DCD unk_247470 - 0xFBE72
FC198:  DCD byte_24747C - 0xFBE7C
FC19C:  DCD unk_247478 - 0xFBE88
FC1A0:  DCD byte_247484 - 0xFBE92
FC1A4:  DCD unk_247480 - 0xFBE9E
FC1A8:  DCD byte_24748C - 0xFBEA8
FC1AC:  DCD unk_247488 - 0xFBEB4
FC1B0:  DCD byte_247494 - 0xFBEBE
FC1B4:  DCD dword_247490 - 0xFBEC8
FC1B8:  DCD byte_24749C - 0xFBED2
FC1BC:  DCD dword_247498 - 0xFBEDC
FC1C0:  DCD byte_2474A4 - 0xFBEE6
FC1C4:  DCD dword_2474A0 - 0xFBEF0
FC1C8:  DCD off_23494C - 0xFBEFE
FC1CC:  LDR             R0, =(byte_24747C - 0xFC1D2)
FC1CE:  ADD             R0, PC; byte_24747C ; __guard *
FC1D0:  BLX             j___cxa_guard_acquire
FC1D4:  CMP             R0, #0
FC1D6:  BEQ.W           loc_FBE8C
FC1DA:  MOVS            R0, #0xC8
FC1DC:  MOVS            R1, #0x64 ; 'd'
FC1DE:  BL              sub_F613C
FC1E2:  LDR             R1, =(byte_24747C - 0xFC1EA)
FC1E4:  LDR             R2, [SP,#0x48+var_3C]
FC1E6:  ADD             R1, PC; byte_24747C
FC1E8:  STR             R0, [R2]
FC1EA:  MOV             R0, R1; __guard *
FC1EC:  BLX             j___cxa_guard_release
FC1F0:  B               loc_FBE8C
FC1F2:  LDR             R0, =(byte_247484 - 0xFC1F8)
FC1F4:  ADD             R0, PC; byte_247484 ; __guard *
FC1F6:  BLX             j___cxa_guard_acquire
FC1FA:  CMP             R0, #0
FC1FC:  BEQ.W           loc_FBEA2
FC200:  MOVS            R0, #0xC8
FC202:  MOV.W           R1, #0x1A4
FC206:  BL              sub_F613C
FC20A:  LDR             R1, =(byte_247484 - 0xFC212)
FC20C:  LDR             R2, [SP,#0x48+var_40]
FC20E:  ADD             R1, PC; byte_247484
FC210:  STR             R0, [R2]
FC212:  MOV             R0, R1; __guard *
FC214:  BLX             j___cxa_guard_release
FC218:  B               loc_FBEA2
FC21A:  LDR             R0, =(byte_24748C - 0xFC220)
FC21C:  ADD             R0, PC; byte_24748C ; __guard *
FC21E:  BLX             j___cxa_guard_acquire
FC222:  CMP             R0, #0
FC224:  BEQ.W           loc_FBEB8
FC228:  MOVS            R0, #0xC8
FC22A:  MOVS            R1, #0x24 ; '$'
FC22C:  BL              sub_F613C
FC230:  LDR             R1, =(byte_24748C - 0xFC238)
FC232:  LDR             R2, [SP,#0x48+var_44]
FC234:  ADD             R1, PC; byte_24748C
FC236:  STR             R0, [R2]
FC238:  MOV             R0, R1; __guard *
FC23A:  BLX             j___cxa_guard_release
FC23E:  B               loc_FBEB8
FC240:  LDR             R0, =(byte_247494 - 0xFC246)
FC242:  ADD             R0, PC; byte_247494 ; __guard *
FC244:  BLX             j___cxa_guard_acquire
FC248:  CMP             R0, #0
FC24A:  BEQ.W           loc_FBECC
FC24E:  MOVW            R0, #0xBB8
FC252:  MOVS            R1, #0x20 ; ' '
FC254:  BL              sub_F613C
FC258:  LDR             R1, =(byte_247494 - 0xFC260)
FC25A:  STR             R0, [R6]
FC25C:  ADD             R1, PC; byte_247494
FC25E:  MOV             R0, R1; __guard *
FC260:  BLX             j___cxa_guard_release
FC264:  B               loc_FBECC
FC266:  LDR             R0, =(byte_24749C - 0xFC26C)
FC268:  ADD             R0, PC; byte_24749C ; __guard *
FC26A:  BLX             j___cxa_guard_acquire
FC26E:  CMP             R0, #0
FC270:  BEQ.W           loc_FBEE0
FC274:  MOVS            R0, #0xF0
FC276:  MOV.W           R1, #0x298
FC27A:  BL              sub_F613C
FC27E:  LDR             R1, =(byte_24749C - 0xFC286)
FC280:  STR             R0, [R4]
FC282:  ADD             R1, PC; byte_24749C
FC284:  MOV             R0, R1; __guard *
FC286:  BLX             j___cxa_guard_release
FC28A:  B               loc_FBEE0
FC28C:  LDR             R0, =(byte_2474A4 - 0xFC292)
FC28E:  ADD             R0, PC; byte_2474A4 ; __guard *
FC290:  BLX             j___cxa_guard_acquire
FC294:  CMP             R0, #0
FC296:  BEQ.W           loc_FBEF4
FC29A:  MOVS            R0, #0xC8
FC29C:  MOVS            R1, #0xEC
FC29E:  BL              sub_F613C
FC2A2:  LDR             R1, =(byte_2474A4 - 0xFC2AA)
FC2A4:  STR             R0, [R5]
FC2A6:  ADD             R1, PC; byte_2474A4
FC2A8:  MOV             R0, R1; __guard *
FC2AA:  BLX             j___cxa_guard_release
FC2AE:  B               loc_FBEF4
