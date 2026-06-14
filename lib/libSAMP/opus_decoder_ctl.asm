; =========================================================
; Game Engine Function: opus_decoder_ctl
; Address            : 0x18FF2C - 0x1900A6
; =========================================================

18FF2C:  SUB             SP, SP, #8
18FF2E:  PUSH            {R4-R7,LR}
18FF30:  ADD             R7, SP, #0xC
18FF32:  PUSH.W          {R11}
18FF36:  SUB             SP, SP, #8
18FF38:  MOV             R4, R0
18FF3A:  LDR             R0, =(__stack_chk_guard_ptr - 0x18FF46)
18FF3C:  STR             R3, [R7,#var_sC]
18FF3E:  SUBW            R1, R1, #0xFA9; switch 39 cases
18FF42:  ADD             R0, PC; __stack_chk_guard_ptr
18FF44:  MOV             R5, #0xFFFFFFFB
18FF48:  CMP             R1, #0x26 ; '&'
18FF4A:  LDR             R0, [R0]; __stack_chk_guard
18FF4C:  LDR             R0, [R0]
18FF4E:  STR             R2, [R7,#var_s8]
18FF50:  ADD.W           R2, R7, #8
18FF54:  STR             R0, [SP,#0x18+var_14]
18FF56:  LDRD.W          R0, R6, [R4]
18FF5A:  STR             R2, [SP,#0x18+var_18]
18FF5C:  BHI.W           def_18FF62; jumptable 0018FF62 default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
18FF60:  ADD             R0, R4
18FF62:  TBB.W           [PC,R1]; switch jump
18FF66:  DCB 0x14; jump table for switch statement
18FF67:  DCB 0x8A
18FF68:  DCB 0x8A
18FF69:  DCB 0x8A
18FF6A:  DCB 0x8A
18FF6B:  DCB 0x8A
18FF6C:  DCB 0x8A
18FF6D:  DCB 0x8A
18FF6E:  DCB 0x8A
18FF6F:  DCB 0x8A
18FF70:  DCB 0x8A
18FF71:  DCB 0x8A
18FF72:  DCB 0x8A
18FF73:  DCB 0x8A
18FF74:  DCB 0x8A
18FF75:  DCB 0x8A
18FF76:  DCB 0x8A
18FF77:  DCB 0x8A
18FF78:  DCB 0x8A
18FF79:  DCB 0x1C
18FF7A:  DCB 0x3A
18FF7B:  DCB 0x8A
18FF7C:  DCB 0x42
18FF7D:  DCB 0x8A
18FF7E:  DCB 0x4A
18FF7F:  DCB 0x57
18FF80:  DCB 0x8A
18FF81:  DCB 0x8A
18FF82:  DCB 0x8A
18FF83:  DCB 0x8A
18FF84:  DCB 0x64
18FF85:  DCB 0x8A
18FF86:  DCB 0x8A
18FF87:  DCB 0x8A
18FF88:  DCB 0x8A
18FF89:  DCB 0x8A
18FF8A:  DCB 0x6B
18FF8B:  DCB 0x74
18FF8C:  DCB 0x7D
18FF8D:  ALIGN 2
18FF8E:  LDR             R0, [SP,#0x18+var_18]; jumptable 0018FF62 case 4009
18FF90:  ADDS            R1, R0, #4
18FF92:  STR             R1, [SP,#0x18+var_18]
18FF94:  LDR             R0, [R0]
18FF96:  CMP             R0, #0
18FF98:  BEQ             loc_190076
18FF9A:  LDR             R1, [R4,#0x34]
18FF9C:  B               loc_190048
18FF9E:  MOVS            R5, #0; jumptable 0018FF62 case 4028
18FFA0:  MOVW            R1, #0xFBC
18FFA4:  STRD.W          R5, R5, [R4,#0x30]
18FFA8:  STRD.W          R5, R5, [R4,#0x38]
18FFAC:  STRD.W          R5, R5, [R4,#0x40]
18FFB0:  STRD.W          R5, R5, [R4,#0x48]
18FFB4:  BLX             j_opus_custom_decoder_ctl
18FFB8:  ADDS            R0, R4, R6
18FFBA:  BLX             j_silk_InitDecoder
18FFBE:  MOVW            R2, #0x851F
18FFC2:  LDRD.W          R0, R1, [R4,#8]
18FFC6:  MOVT            R2, #0x51EB
18FFCA:  STR             R0, [R4,#0x30]
18FFCC:  SMMUL.W         R1, R1, R2
18FFD0:  ASRS            R0, R1, #7
18FFD2:  ADD.W           R0, R0, R1,LSR#31
18FFD6:  STR             R0, [R4,#0x40]
18FFD8:  B               def_18FF62; jumptable 0018FF62 default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
18FFDA:  LDR             R0, [SP,#0x18+var_18]; jumptable 0018FF62 case 4029
18FFDC:  ADDS            R1, R0, #4
18FFDE:  STR             R1, [SP,#0x18+var_18]
18FFE0:  LDR             R0, [R0]
18FFE2:  CMP             R0, #0
18FFE4:  BEQ             loc_190076
18FFE6:  LDR             R1, [R4,#0xC]
18FFE8:  B               loc_190048
18FFEA:  LDR             R0, [SP,#0x18+var_18]; jumptable 0018FF62 case 4031
18FFEC:  ADDS            R1, R0, #4
18FFEE:  STR             R1, [SP,#0x18+var_18]
18FFF0:  LDR             R0, [R0]
18FFF2:  CMP             R0, #0
18FFF4:  BEQ             loc_190076
18FFF6:  LDR             R1, [R4,#0x4C]
18FFF8:  B               loc_190048
18FFFA:  LDR             R1, [SP,#0x18+var_18]; jumptable 0018FF62 case 4033
18FFFC:  ADDS            R2, R1, #4
18FFFE:  STR             R2, [SP,#0x18+var_18]
190000:  LDR             R2, [R1]
190002:  CBZ             R2, loc_190076
190004:  LDR             R1, [R4,#0x3C]
190006:  MOVW            R3, #0x3EA
19000A:  CMP             R1, R3
19000C:  BNE             loc_19009E
19000E:  MOVW            R1, #0xFC1
190012:  B               loc_19006E
190014:  LDR             R0, [SP,#0x18+var_18]; jumptable 0018FF62 case 4034
190016:  MOVS            R2, #0
190018:  ADDS            R1, R0, #4
19001A:  STR             R1, [SP,#0x18+var_18]
19001C:  LDR             R0, [R0]
19001E:  ADD.W           R1, R0, #0x8000
190022:  CMP.W           R2, R1,LSR#16
190026:  BNE             loc_190076
190028:  STR             R0, [R4,#0x28]
19002A:  MOVS            R5, #0
19002C:  B               def_18FF62; jumptable 0018FF62 default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
19002E:  LDR             R0, [SP,#0x18+var_18]; jumptable 0018FF62 case 4039
190030:  ADDS            R1, R0, #4
190032:  STR             R1, [SP,#0x18+var_18]
190034:  LDR             R0, [R0]
190036:  CBZ             R0, loc_190076
190038:  LDR             R1, [R4,#0x48]
19003A:  B               loc_190048
19003C:  LDR             R0, [SP,#0x18+var_18]; jumptable 0018FF62 case 4045
19003E:  ADDS            R1, R0, #4
190040:  STR             R1, [SP,#0x18+var_18]
190042:  LDR             R0, [R0]
190044:  CBZ             R0, loc_190076
190046:  LDR             R1, [R4,#0x28]
190048:  STR             R1, [R0]
19004A:  MOVS            R5, #0
19004C:  B               def_18FF62; jumptable 0018FF62 default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
19004E:  LDR             R1, [SP,#0x18+var_18]; jumptable 0018FF62 case 4046
190050:  ADDS            R2, R1, #4
190052:  STR             R2, [SP,#0x18+var_18]
190054:  LDR             R2, [R1]
190056:  CMP             R2, #1
190058:  BHI             loc_190076
19005A:  MOVW            R1, #0xFCE
19005E:  B               loc_19006E
190060:  LDR             R1, [SP,#0x18+var_18]; jumptable 0018FF62 case 4047
190062:  ADDS            R2, R1, #4
190064:  STR             R2, [SP,#0x18+var_18]
190066:  LDR             R2, [R1]
190068:  CBZ             R2, loc_190076
19006A:  MOVW            R1, #0xFCF
19006E:  BLX             j_opus_custom_decoder_ctl
190072:  MOV             R5, R0
190074:  B               def_18FF62; jumptable 0018FF62 default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
190076:  MOV.W           R5, #0xFFFFFFFF
19007A:  LDR             R0, =(__stack_chk_guard_ptr - 0x190082); jumptable 0018FF62 default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
19007C:  LDR             R1, [SP,#0x18+var_14]
19007E:  ADD             R0, PC; __stack_chk_guard_ptr
190080:  LDR             R0, [R0]; __stack_chk_guard
190082:  LDR             R0, [R0]
190084:  SUBS            R0, R0, R1
190086:  ITTTT EQ
190088:  MOVEQ           R0, R5
19008A:  ADDEQ           SP, SP, #8
19008C:  POPEQ.W         {R11}
190090:  POPEQ.W         {R4-R7,LR}
190094:  ITT EQ
190096:  ADDEQ           SP, SP, #8
190098:  BXEQ            LR
19009A:  BLX             __stack_chk_fail
19009E:  LDR             R0, [R4,#0x24]
1900A0:  MOVS            R5, #0
1900A2:  STR             R0, [R2]
1900A4:  B               def_18FF62; jumptable 0018FF62 default case, cases 4010-4027,4030,4032,4035-4038,4040-4044
