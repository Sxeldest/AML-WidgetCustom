; =========================================================
; Game Engine Function: sub_AB8BC
; Address            : 0xAB8BC - 0xAD8D2
; =========================================================

AB8BC:  PUSH            {R4-R7,LR}
AB8BE:  ADD             R7, SP, #0xC
AB8C0:  PUSH.W          {R8-R11}
AB8C4:  SUB             SP, SP, #4
AB8C6:  VPUSH           {D8-D15}
AB8CA:  SUB             SP, SP, #0x110
AB8CC:  MOV             R8, R0
AB8CE:  LDR             R0, =(off_114D5C - 0xAB8D4)
AB8D0:  ADD             R0, PC; off_114D5C
AB8D2:  LDR.W           R11, [R0]; dword_1ACF68
AB8D6:  LDR.W           R6, [R11]
AB8DA:  LDR             R0, =(__stack_chk_guard_ptr - 0xAB8E0)
AB8DC:  ADD             R0, PC; __stack_chk_guard_ptr
AB8DE:  LDR             R0, [R0]; __stack_chk_guard
AB8E0:  LDR             R0, [R0]
AB8E2:  STR             R0, [SP,#0x170+var_64]
AB8E4:  MOVW            R0, #0x19AC
AB8E8:  LDR.W           R9, [R6,R0]
AB8EC:  MOVS            R0, #1
AB8EE:  STRB.W          R0, [R9,#0x7C]
AB8F2:  LDRB.W          R0, [R9,#0x7F]
AB8F6:  CBZ             R0, loc_AB920
AB8F8:  MOV.W           R8, #0
AB8FC:  LDR             R0, [SP,#0x170+var_64]
AB8FE:  LDR             R1, =(__stack_chk_guard_ptr - 0xAB904)
AB900:  ADD             R1, PC; __stack_chk_guard_ptr
AB902:  LDR             R1, [R1]; __stack_chk_guard
AB904:  LDR             R1, [R1]
AB906:  CMP             R1, R0
AB908:  ITTTT EQ
AB90A:  MOVEQ           R0, R8
AB90C:  ADDEQ           SP, SP, #0x110
AB90E:  VPOPEQ          {D8-D15}
AB912:  ADDEQ           SP, SP, #4
AB914:  ITT EQ
AB916:  POPEQ.W         {R8-R11}
AB91A:  POPEQ           {R4-R7,PC}
AB91C:  BLX             __stack_chk_fail
AB920:  MOVW            R0, #0x1550
AB924:  ADD.W           R10, R6, R0
AB928:  LDRD.W          R5, R0, [R7,#arg_0]
AB92C:  ANDS.W          R0, R0, #0x100000
AB930:  STRD.W          R1, R3, [SP,#0x170+var_10C]
AB934:  STR             R2, [SP,#0x170+s]
AB936:  STR             R6, [SP,#0x170+var_F8]
AB938:  STR             R0, [SP,#0x170+var_EC]
AB93A:  IT NE
AB93C:  BLNE            sub_97DC8
AB940:  MOV             R0, R9
AB942:  MOV             R1, R8
AB944:  MOVS            R2, #0
AB946:  BL              sub_8AAD4
AB94A:  STR             R0, [SP,#0x170+var_F0]
AB94C:  MOVS            R0, #0xBF800000
AB952:  MOV             R1, R8; int
AB954:  STR             R0, [SP,#0x170+var_170]; float
AB956:  ADD             R0, SP, #0x170+var_6C; int
AB958:  MOVS            R2, #0; int
AB95A:  MOVS            R3, #1; int
AB95C:  BL              sub_899BC
AB960:  LDRD.W          R4, R5, [R5]
AB964:  BL              sub_97224
AB968:  MOV             R6, R0
AB96A:  LDR             R0, [SP,#0x170+var_EC]
AB96C:  CBZ             R0, loc_AB980
AB96E:  BL              sub_97894
AB972:  VMOV.F32        S0, #8.0
AB976:  VMOV            S2, R0
AB97A:  VMUL.F32        S0, S2, S0
AB97E:  B               loc_AB984
AB980:  VLDR            S0, [SP,#0x170+var_68]
AB984:  VLDR            S2, [R10,#4]
AB988:  ADD             R0, SP, #0x170+var_74; int
AB98A:  MOV             R1, R4; int
AB98C:  MOV             R2, R5; int
AB98E:  VADD.F32        S2, S2, S2
AB992:  MOV             R3, R6; int
AB994:  VADD.F32        S0, S2, S0
AB998:  VSTR            S0, [SP,#0x170+var_170]
AB99C:  BL              sub_972C4
AB9A0:  VLDR            S2, [SP,#0x170+var_74]
AB9A4:  VLDR            S4, [R9,#0xC8]
AB9A8:  VLDR            S0, [SP,#0x170+var_70]
AB9AC:  VLDR            S6, [R9,#0xCC]
AB9B0:  VADD.F32        S2, S4, S2
AB9B4:  VLDR            S4, =0.0
AB9B8:  VADD.F32        S0, S6, S0
AB9BC:  VLDR            S6, [SP,#0x170+var_6C]
AB9C0:  LDRD.W          R0, R1, [R9,#0xC8]
AB9C4:  VMOV.F32        S8, S4
AB9C8:  VCMP.F32        S6, #0.0
AB9CC:  STRD.W          R0, R1, [SP,#0x170+var_88]
AB9D0:  VMRS            APSR_nzcv, FPSCR
AB9D4:  VSTR            S2, [SP,#0x170+var_80]
AB9D8:  VSTR            S0, [SP,#0x170+var_7C]
AB9DC:  VADD.F32        S0, S0, S4
AB9E0:  ITT GT
AB9E2:  VLDRGT          S8, [R10,#0x18]
AB9E6:  VADDGT.F32      S8, S6, S8
AB9EA:  VADD.F32        S2, S8, S2
AB9EE:  STRD.W          R0, R1, [SP,#0x170+var_98]
AB9F2:  LDR             R0, [SP,#0x170+var_EC]
AB9F4:  LDR             R5, [SP,#0x170+var_F0]
AB9F6:  VSTR            S0, [SP,#0x170+var_8C]
AB9FA:  VSTR            S2, [SP,#0x170+var_90]
AB9FE:  CBZ             R0, loc_ABA6E
ABA00:  ADD             R0, SP, #0x170+var_98
ABA02:  ADD             R2, SP, #0x170+var_88
ABA04:  MOV             R1, R5
ABA06:  BL              sub_8B314
ABA0A:  CMP             R0, #0
ABA0C:  BEQ             loc_ABADE
ABA0E:  VLDR            S0, [SP,#0x170+var_88]
ABA12:  ADD             R1, SP, #0x170+var_C8
ABA14:  VLDR            S4, [SP,#0x170+var_80]
ABA18:  MOV             R0, R5
ABA1A:  VLDR            S2, [SP,#0x170+var_84]
ABA1E:  MOVS            R2, #0
ABA20:  VLDR            S6, [SP,#0x170+var_7C]
ABA24:  VSUB.F32        S0, S4, S0
ABA28:  VSUB.F32        S2, S6, S2
ABA2C:  VSTR            S0, [SP,#0x170+var_C8]
ABA30:  VSTR            S2, [SP,#0x170+var_C4]
ABA34:  BL              sub_95C50
ABA38:  CMP             R0, #0
ABA3A:  BEQ             loc_ABAEA
ABA3C:  LDR.W           R0, [R11]
ABA40:  MOVW            R1, #0x19AC
ABA44:  VLDR            S0, [SP,#0x170+var_74]
ABA48:  MOVS            R2, #1
ABA4A:  LDR             R3, [R0,R1]
ABA4C:  STR             R3, [SP,#0x170+var_110]
ABA4E:  VLDR            S2, [R3,#0x70]
ABA52:  LDR.W           R0, [R3,#0x134]
ABA56:  VSUB.F32        S0, S0, S2
ABA5A:  LDR.W           R1, [R3,#0x13C]
ABA5E:  STRB.W          R2, [R3,#0x7C]
ABA62:  ORRS            R0, R1
ABA64:  STR.W           R0, [R3,#0x13C]
ABA68:  VSTR            S0, [SP,#0x170+var_74]
ABA6C:  B               loc_ABA8E
ABA6E:  ADD             R4, SP, #0x170+var_98
ABA70:  LDR.W           R1, [R10,#4]
ABA74:  MOV             R0, R4
ABA76:  BL              sub_8B2C0
ABA7A:  ADD             R2, SP, #0x170+var_88
ABA7C:  MOV             R0, R4
ABA7E:  MOV             R1, R5
ABA80:  BL              sub_8B314
ABA84:  CMP             R0, #0
ABA86:  STR.W           R9, [SP,#0x170+var_110]
ABA8A:  BEQ.W           loc_AB8F8
ABA8E:  LDR             R1, [SP,#0x170+var_F8]
ABA90:  MOVW            R0, #0x1DDC
ABA94:  STR.W           R8, [SP,#0x170+var_144]
ABA98:  ADDS            R6, R1, R0
ABA9A:  ADD             R0, SP, #0x170+var_88
ABA9C:  MOV             R1, R5
ABA9E:  BL              sub_8B914
ABAA2:  MOV             R1, R0
ABAA4:  STR             R0, [SP,#0x170+var_128]
ABAA6:  CMP             R0, #0
ABAA8:  ITT NE
ABAAA:  MOVNE           R0, #1
ABAAC:  STRNE.W         R0, [R10,#0x7C4]
ABAB0:  LDR             R0, [R6]
ABAB2:  MOV             R8, R6
ABAB4:  STR             R0, [SP,#0x170+var_104]
ABAB6:  MOV             R1, R5
ABAB8:  CMP             R0, R5
ABABA:  MOV             R0, R9
ABABC:  STR.W           R10, [SP,#0x170+var_F4]
ABAC0:  MOV.W           R4, #0
ABAC4:  IT NE
ABAC6:  MOVNE           R8, R4
ABAC8:  BL              sub_8BA6C
ABACC:  MOV             R12, R0
ABACE:  CBZ             R0, loc_ABB04
ABAD0:  LDR             R1, [SP,#0x170+var_F4]
ABAD2:  LDR.W           R0, [R1,#0x670]
ABAD6:  CMP             R0, R9
ABAD8:  BEQ             loc_ABAF4
ABADA:  MOVS            R4, #0
ABADC:  B               loc_ABB04
ABADE:  LDR.W           R1, [R10,#4]
ABAE2:  ADD             R0, SP, #0x170+var_98
ABAE4:  BL              sub_8B2C0
ABAE8:  B               loc_ABAEE
ABAEA:  BL              sub_96284
ABAEE:  BL              sub_97F20
ABAF2:  B               loc_AB8F8
ABAF4:  LDR.W           R0, [R9,#0x164]
ABAF8:  LDR.W           R1, [R1,#0x678]
ABAFC:  SUBS            R0, R1, R0
ABAFE:  CLZ.W           R0, R0
ABB02:  LSRS            R4, R0, #5
ABB04:  LDR             R0, [SP,#0x170+var_128]
ABB06:  STR             R6, [SP,#0x170+var_100]
ABB08:  CBZ             R0, loc_ABB18
ABB0A:  LDR             R0, [SP,#0x170+var_F8]
ABB0C:  LDRB.W          R3, [R0,#0x3D8]
ABB10:  CMP             R3, #0
ABB12:  IT NE
ABB14:  MOVNE           R3, #1
ABB16:  B               loc_ABB1A
ABB18:  MOVS            R3, #0
ABB1A:  LDR             R2, [SP,#0x170+var_F4]
ABB1C:  MOVW            R0, #0x2C3C
ABB20:  STR             R4, [SP,#0x170+var_11C]
ABB22:  LDR.W           R6, [R2,#0x480]
ABB26:  CMP             R6, R5
ABB28:  BEQ             loc_ABB50
ABB2A:  LDR.W           R1, [R2,#0x578]
ABB2E:  CMP             R1, R5
ABB30:  BNE             loc_ABB38
ABB32:  MOV.W           R10, #1
ABB36:  B               loc_ABB54
ABB38:  LDR.W           R1, [R2,#0x56C]
ABB3C:  CMP             R1, R5
ABB3E:  BNE             loc_ABB50
ABB40:  LDR.W           R1, [R2,#0x58C]
ABB44:  SUBS            R1, #3
ABB46:  CLZ.W           R1, R1
ABB4A:  MOV.W           R10, R1,LSR#5
ABB4E:  B               loc_ABB54
ABB50:  MOV.W           R10, #0
ABB54:  LDR             R1, [SP,#0x170+var_F8]
ABB56:  MOVS            R5, #0
ABB58:  STR.W           R11, [SP,#0x170+var_114]
ABB5C:  ADD             R0, R1
ABB5E:  STR             R0, [SP,#0x170+var_140]
ABB60:  LDR             R0, [SP,#0x170+var_EC]
ABB62:  STR.W           R10, [SP,#0x170+var_13C]
ABB66:  CBZ             R0, loc_ABB84
ABB68:  LDR             R0, [SP,#0x170+var_F0]
ABB6A:  LDR             R1, [SP,#0x170+var_104]
ABB6C:  CMP             R1, R0
ABB6E:  BNE             loc_ABB84
ABB70:  MOV             R4, R3
ABB72:  STR.W           R12, [SP,#0x170+var_118]
ABB76:  CBZ             R6, loc_ABB88
ABB78:  MOVS            R5, #0
ABB7A:  LDR.W           R11, [SP,#0x170+var_F4]
ABB7E:  LDR.W           R10, [SP,#0x170+var_110]
ABB82:  B               loc_ABBAC
ABB84:  MOVS            R2, #0
ABB86:  B               loc_ABBCE
ABB88:  LDR             R1, =(aScrolly - 0xABB98); "#SCROLLY" ...
ABB8A:  MOVS            R2, #0
ABB8C:  LDR.W           R10, [SP,#0x170+var_110]
ABB90:  LDR.W           R11, [SP,#0x170+var_F4]
ABB94:  ADD             R1, PC; "#SCROLLY"
ABB96:  MOV             R0, R10
ABB98:  LDR.W           R5, [R11,#0x4AC]
ABB9C:  BL              sub_8AEAC
ABBA0:  SUBS            R0, R5, R0
ABBA2:  LDR.W           R6, [R11,#0x480]
ABBA6:  CLZ.W           R0, R0
ABBAA:  LSRS            R5, R0, #5
ABBAC:  LDR             R1, =(aScrolly - 0xABBB6); "#SCROLLY" ...
ABBAE:  MOV             R0, R10
ABBB0:  MOVS            R2, #0
ABBB2:  ADD             R1, PC; "#SCROLLY"
ABBB4:  BL              sub_8AEAC
ABBB8:  SUBS            R0, R6, R0
ABBBA:  LDR.W           R6, [R11,#0x480]
ABBBE:  CLZ.W           R0, R0
ABBC2:  LDR.W           R10, [SP,#0x170+var_13C]
ABBC6:  LDR.W           R12, [SP,#0x170+var_118]
ABBCA:  MOV             R3, R4
ABBCC:  LSRS            R2, R0, #5
ABBCE:  LDR             R0, [SP,#0x170+var_F0]
ABBD0:  CMP             R6, R0
ABBD2:  BNE             loc_ABC00
ABBD4:  ORR.W           R0, R12, R3
ABBD8:  MOV             R1, R8
ABBDA:  ORRS            R0, R5
ABBDC:  MOVS            R6, #0
ABBDE:  ORR.W           R0, R0, R10
ABBE2:  ORR.W           R11, R0, R2
ABBE6:  B               loc_ABD8C
ABBE8:  DCD off_114D5C - 0xAB8D4
ABBEC:  DCD __stack_chk_guard_ptr - 0xAB8E0
ABBF0:  DCD __stack_chk_guard_ptr - 0xAB904
ABBF4:  DCFS 0.0
ABBF8:  DCD aScrolly - 0xABB98
ABBFC:  DCD aScrolly - 0xABBB6
ABC00:  LDR             R0, [R7,#arg_4]
ABC02:  LDR             R1, [SP,#0x170+var_EC]
ABC04:  CLZ.W           R1, R1
ABC08:  ORR.W           R0, R10, R0,LSR#4
ABC0C:  LSRS            R4, R1, #5
ABC0E:  AND.W           R6, R0, R4
ABC12:  ORR.W           R0, R12, R3
ABC16:  ORRS            R0, R5
ABC18:  ORR.W           R1, R0, R10
ABC1C:  ORR.W           R0, R1, R2
ABC20:  CMP             R0, #1
ABC22:  BNE.W           loc_ABD86
ABC26:  STR             R2, [SP,#0x170+var_104]
ABC28:  MOVW            R0, #0x1DE8
ABC2C:  LDR             R2, [SP,#0x170+var_F8]
ABC2E:  STRD.W          R1, R3, [SP,#0x170+var_124]
ABC32:  MOVW            R1, #0x1DF4
ABC36:  ADD.W           R8, R2, R1
ABC3A:  LDR             R1, [SP,#0x170+var_140]
ABC3C:  STR             R6, [SP,#0x170+var_138]
ABC3E:  ADDS            R6, R2, R0
ABC40:  MOVW            R0, #0x999A
ABC44:  STR             R4, [SP,#0x170+var_12C]
ABC46:  MOVT            R0, #0xBE99
ABC4A:  STR.W           R12, [SP,#0x170+var_118]
ABC4E:  STR             R0, [R1]
ABC50:  ADD.W           R11, R2, #0x1E00
ABC54:  LDR             R0, [SP,#0x170+s]; s
ABC56:  BLX             strlen
ABC5A:  LDR.W           R1, [R11,#4]
ABC5E:  ADDS            R5, R0, #1
ABC60:  MOV             R4, R5
ABC62:  CMP             R1, R0
ABC64:  BGT             loc_ABCA4
ABC66:  CMP             R1, #0
ABC68:  ITTE NE
ABC6A:  ADDNE.W         R0, R1, R1,LSR#31
ABC6E:  ADDNE.W         R0, R1, R0,ASR#1
ABC72:  MOVEQ           R0, #8
ABC74:  CMP             R0, R5
ABC76:  IT GT
ABC78:  MOVGT           R5, R0
ABC7A:  CMP             R1, R5
ABC7C:  BGE             loc_ABCA4
ABC7E:  MOV             R0, R5
ABC80:  BL              sub_885E4
ABC84:  LDR.W           R1, [R11,#8]; src
ABC88:  CBZ             R1, loc_ABCA0
ABC8A:  STR             R0, [SP,#0x170+dest]
ABC8C:  LDR.W           R2, [R11]; n
ABC90:  LDR             R0, [SP,#0x170+dest]; dest
ABC92:  BLX             j_memcpy
ABC96:  LDR.W           R0, [R11,#8]
ABC9A:  BL              sub_88614
ABC9E:  LDR             R0, [SP,#0x170+dest]
ABCA0:  STRD.W          R5, R0, [R11,#4]
ABCA4:  LDR.W           R0, [R11,#8]; dest
ABCA8:  MOV             R2, R4; n
ABCAA:  LDR             R1, [SP,#0x170+s]; src
ABCAC:  STR.W           R4, [R11]
ABCB0:  BLX             j_memcpy
ABCB4:  MOVS            R0, #0
ABCB6:  LDR             R1, [SP,#0x170+var_108]
ABCB8:  STR             R0, [SP,#0x170+var_C8]
ABCBA:  LDR             R0, [R6,#4]
ABCBC:  ADDS            R4, R1, #1
ABCBE:  CMP             R0, R1
ABCC0:  BGT             loc_ABCFC
ABCC2:  CMP             R0, #0
ABCC4:  ITTE NE
ABCC6:  ADDNE.W         R1, R0, R0,LSR#31
ABCCA:  ADDNE.W         R1, R0, R1,ASR#1
ABCCE:  MOVEQ           R1, #8
ABCD0:  CMP             R1, R4
ABCD2:  MOV             R5, R4
ABCD4:  IT GT
ABCD6:  MOVGT           R5, R1
ABCD8:  CMP             R0, R5
ABCDA:  BGE             loc_ABCFC
ABCDC:  LSLS            R0, R5, #1
ABCDE:  BL              sub_885E4
ABCE2:  LDR             R1, [R6,#8]; src
ABCE4:  CBZ             R1, loc_ABCF8
ABCE6:  LDR             R2, [R6]
ABCE8:  STR             R0, [SP,#0x170+dest]
ABCEA:  LSLS            R2, R2, #1; n
ABCEC:  BLX             j_memcpy
ABCF0:  LDR             R0, [R6,#8]
ABCF2:  BL              sub_88614
ABCF6:  LDR             R0, [SP,#0x170+dest]
ABCF8:  STRD.W          R5, R0, [R6,#4]
ABCFC:  LDR.W           R0, [R8,#4]
ABD00:  STR             R4, [R6]
ABD02:  CMP.W           R0, #0xFFFFFFFF
ABD06:  BGT             loc_ABD2E
ABD08:  MOVS            R0, #0
ABD0A:  MOVS            R5, #0
ABD0C:  BL              sub_885E4
ABD10:  LDR.W           R1, [R8,#8]; src
ABD14:  MOV             R4, R0
ABD16:  CBZ             R1, loc_ABD2A
ABD18:  LDR.W           R2, [R8]; n
ABD1C:  MOV             R0, R4; dest
ABD1E:  BLX             j_memcpy
ABD22:  LDR.W           R0, [R8,#8]
ABD26:  BL              sub_88614
ABD2A:  STRD.W          R5, R4, [R8,#4]
ABD2E:  MOVS            R4, #0
ABD30:  LDR             R5, [SP,#0x170+s]
ABD32:  ADD             R1, SP, #0x170+var_C8
ABD34:  STRB.W          R4, [R11,#0xC]
ABD38:  LDR             R0, [R6,#8]
ABD3A:  MOVS            R3, #0
ABD3C:  STR.W           R4, [R8]
ABD40:  MOV             R2, R5
ABD42:  STR             R1, [SP,#0x170+var_170]
ABD44:  LDR             R1, [SP,#0x170+var_108]
ABD46:  BL              sub_88838
ABD4A:  LDR             R3, [SP,#0x170+var_100]
ABD4C:  LDR             R1, [SP,#0x170+var_C8]
ABD4E:  LDR.W           R8, [SP,#0x170+var_F0]
ABD52:  LDR             R2, [R3]
ABD54:  SUBS            R1, R1, R5
ABD56:  CMP             R2, R8
ABD58:  STRD.W          R0, R1, [R3,#4]
ABD5C:  BNE             loc_ABDBE
ABD5E:  ADD.W           R3, R11, #0x18
ABD62:  LDM             R3, {R1-R3}
ABD64:  CMP             R1, R0
ABD66:  IT GE
ABD68:  MOVGE           R1, R0
ABD6A:  CMP             R2, R0
ABD6C:  IT GE
ABD6E:  MOVGE           R2, R0
ABD70:  CMP             R3, R0
ABD72:  IT LT
ABD74:  MOVLT           R0, R3
ABD76:  STRD.W          R1, R2, [R11,#0x18]
ABD7A:  STR.W           R0, [R11,#0x20]
ABD7E:  LDR             R2, [SP,#0x170+var_104]
ABD80:  LDR             R3, [SP,#0x170+var_120]
ABD82:  LDR             R6, [SP,#0x170+var_138]
ABD84:  B               loc_ABE00
ABD86:  MOV             R1, R8
ABD88:  MOV.W           R11, #0
ABD8C:  LDR             R4, [SP,#0x170+var_F4]
ABD8E:  LDR.W           R8, [SP,#0x170+var_F0]
ABD92:  LDR.W           R10, [R7,#arg_4]
ABD96:  LDR.W           R0, [R4,#0x480]
ABD9A:  CMP             R0, R8
ABD9C:  BNE             loc_ABDBA
ABD9E:  LDR             R3, [SP,#0x170+var_104]
ABDA0:  CMP             R3, R8
ABDA2:  BEQ             loc_ABDBA
ABDA4:  MOV             R5, R6
ABDA6:  MOV             R6, R4
ABDA8:  MOV             R4, R2
ABDAA:  BL              sub_8B080
ABDAE:  MOV             R2, R4
ABDB0:  MOV             R4, R6
ABDB2:  MOV             R6, R5
ABDB4:  MOVS            R0, #0
ABDB6:  STR             R0, [SP,#0x170+var_100]
ABDB8:  B               loc_ABE90
ABDBA:  STR             R1, [SP,#0x170+var_100]
ABDBC:  B               loc_ABE94
ABDBE:  MOVW            R0, #0x3E7
ABDC2:  LDR             R6, [SP,#0x170+var_138]
ABDC4:  STR.W           R0, [R11,#0xE38]
ABDC8:  MOV.W           R0, #0x630000
ABDCC:  STR.W           R0, [R11,#0xE2E]
ABDD0:  LDR             R0, [SP,#0x170+var_12C]
ABDD2:  STRB.W          R0, [R11,#0x28]
ABDD6:  MOV.W           R0, #0x10000
ABDDA:  STR.W           R0, [R11,#0x24]
ABDDE:  LDR             R0, [SP,#0x170+var_EC]
ABDE0:  STR.W           R8, [R3]
ABDE4:  CMP             R0, #0
ABDE6:  STR.W           R4, [R11,#0xE34]
ABDEA:  STR.W           R4, [R11,#0x2C]
ABDEE:  STRD.W          R4, R4, [R11,#0x14]
ABDF2:  STRD.W          R4, R4, [R11,#0x1C]
ABDF6:  LDR             R0, [SP,#0x170+var_11C]
ABDF8:  IT EQ
ABDFA:  ORREQ           R6, R0
ABDFC:  LDR             R2, [SP,#0x170+var_104]
ABDFE:  LDR             R3, [SP,#0x170+var_120]
ABE00:  LDR             R0, [R7,#arg_4]
ABE02:  LDR             R1, [SP,#0x170+var_118]
ABE04:  LSLS            R0, R0, #0x12
ABE06:  ITT MI
ABE08:  MOVMI           R0, #1
ABE0A:  STRBMI.W        R0, [R11,#0x24]
ABE0E:  LDR             R0, [SP,#0x170+var_EC]
ABE10:  CBZ             R0, loc_ABE16
ABE12:  LDR             R4, [SP,#0x170+var_F4]
ABE14:  B               loc_ABE34
ABE16:  LDR             R0, [SP,#0x170+var_11C]
ABE18:  LDR             R4, [SP,#0x170+var_F4]
ABE1A:  EOR.W           R0, R0, #1
ABE1E:  ANDS            R0, R1
ABE20:  BEQ             loc_ABE26
ABE22:  MOVS            R6, #1
ABE24:  B               loc_ABE34
ABE26:  CBZ             R3, loc_ABE34
ABE28:  LDR             R0, [SP,#0x170+var_F8]
ABE2A:  LDRB.W          R0, [R0,#0xF8]
ABE2E:  CMP             R0, #0
ABE30:  IT NE
ABE32:  MOVNE           R6, #1
ABE34:  LDR.W           R0, [R4,#0x480]
ABE38:  MOV.W           R11, #1
ABE3C:  CMP             R0, R8
ABE3E:  BEQ             loc_ABE8C
ABE40:  LDR             R0, [SP,#0x170+var_124]
ABE42:  LDR.W           R10, [R7,#arg_4]
ABE46:  EORS.W          R0, R0, #1
ABE4A:  BNE             loc_ABE90
ABE4C:  MOV             R0, R8
ABE4E:  MOV             R1, R9
ABE50:  BL              sub_8AF74
ABE54:  MOV             R0, R8
ABE56:  MOV             R1, R9
ABE58:  BL              sub_8AFEC
ABE5C:  MOV             R0, R9
ABE5E:  BL              sub_8C628
ABE62:  MOV.W           R0, #0x20002
ABE66:  TST.W           R10, #0x440
ABE6A:  IT EQ
ABE6C:  MOVEQ           R0, #2
ABE6E:  STR.W           R0, [R4,#0x498]
ABE72:  MOVS            R0, #:lower16:loc_100080
ABE74:  MOV.W           R11, #1
ABE78:  MOVT            R0, #:upper16:loc_100080
ABE7C:  TST.W           R10, R0
ABE80:  ITT EQ
ABE82:  MOVEQ           R0, #0xC
ABE84:  STREQ.W         R0, [R4,#0x494]
ABE88:  LDR             R2, [SP,#0x170+var_104]
ABE8A:  B               loc_ABE90
ABE8C:  LDR.W           R10, [R7,#arg_4]
ABE90:  LDR.W           R0, [R4,#0x480]
ABE94:  CMP             R0, R8
ABE96:  STR             R6, [SP,#0x170+var_138]
ABE98:  BNE             loc_ABEB6
ABE9A:  LDR             R0, [SP,#0x170+var_F8]
ABE9C:  EOR.W           R1, R11, #1
ABEA0:  LDRB.W          R0, [R0,#0x3D8]
ABEA4:  CMP             R0, #0
ABEA6:  IT NE
ABEA8:  MOVNE           R0, #1
ABEAA:  ANDS            R0, R1
ABEAC:  STR             R0, [SP,#0x170+var_12C]
ABEAE:  MOVS            R0, #1
ABEB0:  LDR             R6, [SP,#0x170+var_100]
ABEB2:  STR             R0, [SP,#0x170+var_104]
ABEB4:  B               loc_ABEC8
ABEB6:  LDR             R6, [SP,#0x170+var_100]
ABEB8:  CMP             R6, #0
ABEBA:  MOV             R0, R6
ABEBC:  IT NE
ABEBE:  MOVNE           R0, #1
ABEC0:  ANDS            R0, R2
ABEC2:  STR             R0, [SP,#0x170+var_104]
ABEC4:  MOVS            R0, #0
ABEC6:  STR             R0, [SP,#0x170+var_12C]
ABEC8:  AND.W           R9, R10, #0x4000
ABECC:  MOV             R11, R10
ABECE:  CMP             R6, #0
ABED0:  BEQ             loc_ABF8A
ABED2:  LDRD.W          R0, R1, [R6,#0x40]
ABED6:  SUBS            R0, R0, R1
ABED8:  IT NE
ABEDA:  MOVNE           R0, #1
ABEDC:  LDR             R1, [SP,#0x170+var_104]
ABEDE:  CMP.W           R9, #0
ABEE2:  AND.W           R10, R0, R1
ABEE6:  MOV             R0, R9
ABEE8:  IT NE
ABEEA:  MOVNE           R0, #1
ABEEC:  ANDS            R0, R1
ABEEE:  CMP             R0, #1
ABEF0:  BNE             loc_ABF8E
ABEF2:  LDR             R1, [SP,#0x170+var_108]
ABEF4:  MOVS            R0, #0
ABEF6:  STR             R0, [SP,#0x170+var_C8]
ABEF8:  MOV             R5, R6
ABEFA:  LDR             R0, [R6,#0x10]
ABEFC:  ADDS            R6, R1, #1
ABEFE:  MOV             R4, R6
ABF00:  CMP             R0, R1
ABF02:  BGT             loc_ABF3E
ABF04:  CMP             R0, #0
ABF06:  ITTE NE
ABF08:  ADDNE.W         R1, R0, R0,LSR#31
ABF0C:  ADDNE.W         R1, R0, R1,ASR#1
ABF10:  MOVEQ           R1, #8
ABF12:  CMP             R1, R6
ABF14:  IT GT
ABF16:  MOVGT           R6, R1
ABF18:  LDR             R5, [SP,#0x170+var_100]
ABF1A:  CMP             R0, R6
ABF1C:  BGE             loc_ABF3E
ABF1E:  LSLS            R0, R6, #1
ABF20:  BL              sub_885E4
ABF24:  LDR             R1, [R5,#0x14]; src
ABF26:  MOV             R8, R0
ABF28:  CBZ             R1, loc_ABF3A
ABF2A:  LDR             R0, [R5,#0xC]
ABF2C:  LSLS            R2, R0, #1; n
ABF2E:  MOV             R0, R8; dest
ABF30:  BLX             j_memcpy
ABF34:  LDR             R0, [R5,#0x14]
ABF36:  BL              sub_88614
ABF3A:  STRD.W          R6, R8, [R5,#0x10]
ABF3E:  ADD             R1, SP, #0x170+var_C8
ABF40:  LDR             R0, [R5,#0x14]
ABF42:  STR             R4, [R5,#0xC]
ABF44:  MOVS            R3, #0
ABF46:  STR             R1, [SP,#0x170+var_170]
ABF48:  MOV             R1, R4
ABF4A:  LDR             R4, [SP,#0x170+s]
ABF4C:  MOV             R2, R4
ABF4E:  BL              sub_88838
ABF52:  ADD.W           R3, R5, #0x3C ; '<'
ABF56:  LDR             R6, [SP,#0x170+var_C8]
ABF58:  LDM             R3, {R1-R3}
ABF5A:  SUBS            R6, R6, R4
ABF5C:  CMP             R1, R0
ABF5E:  STRD.W          R0, R6, [R5,#4]
ABF62:  IT GE
ABF64:  MOVGE           R1, R0
ABF66:  CMP             R2, R0
ABF68:  IT GE
ABF6A:  MOVGE           R2, R0
ABF6C:  CMP             R3, R0
ABF6E:  IT LT
ABF70:  MOVLT           R0, R3
ABF72:  STR             R0, [R5,#0x44]
ABF74:  SUBS            R0, R2, R0
ABF76:  STRD.W          R1, R2, [R5,#0x3C]
ABF7A:  IT NE
ABF7C:  MOVNE           R0, #1
ABF7E:  LDRD.W          R4, R8, [SP,#0x170+var_F4]
ABF82:  AND.W           R10, R10, R0
ABF86:  MOV             R6, R5
ABF88:  B               loc_ABF8E
ABF8A:  MOV.W           R10, #0
ABF8E:  LDR             R0, [SP,#0x170+var_104]
ABF90:  STR.W           R10, [SP,#0x170+var_118]
ABF94:  ORRS.W          R0, R0, R10
ABF98:  STR.W           R9, [SP,#0x170+var_11C]
ABF9C:  BNE             loc_ABFA6
ABF9E:  LDR.W           R0, [R4,#0x480]
ABFA2:  CMP             R0, R8
ABFA4:  BNE             loc_ABFBE
ABFA6:  MOVS            R1, #0
ABFA8:  CMP.W           R9, #0
ABFAC:  MOV             R10, R11
ABFAE:  BNE             loc_ABFC2
ABFB0:  CBZ             R6, loc_ABFC2
ABFB2:  LDRB.W          R1, [R6,#0x30]
ABFB6:  CMP             R1, #0
ABFB8:  IT NE
ABFBA:  MOVNE           R1, #1
ABFBC:  B               loc_ABFC2
ABFBE:  MOVS            R1, #0
ABFC0:  MOV             R10, R11
ABFC2:  LDR             R0, [SP,#0x170+var_F8]
ABFC4:  AND.W           R9, R10, #0x8000
ABFC8:  STR             R1, [SP,#0x170+var_134]
ABFCA:  ADD.W           R0, R0, #0x2C80
ABFCE:  STR             R0, [SP,#0x170+var_124]
ABFD0:  LDR             R0, [SP,#0x170+var_10C]
ABFD2:  CBZ             R0, loc_ABFE8
ABFD4:  LDR             R0, [SP,#0x170+s]
ABFD6:  CMP             R1, #0
ABFD8:  IT NE
ABFDA:  LDRNE           R0, [R6,#0x20]
ABFDC:  MOV             R11, R6
ABFDE:  LDRB            R0, [R0]
ABFE0:  CLZ.W           R0, R0
ABFE4:  LSRS            R1, R0, #5
ABFE6:  B               loc_ABFEC
ABFE8:  MOV             R11, R6
ABFEA:  MOVS            R1, #0
ABFEC:  CLZ.W           R0, R9
ABFF0:  MOV             R6, R8
ABFF2:  LDR.W           R8, [SP,#0x170+var_F8]
ABFF6:  LSRS            R0, R0, #5
ABFF8:  STR             R1, [SP,#0x170+var_120]
ABFFA:  STR             R0, [SP,#0x170+var_148]
ABFFC:  ORRS            R0, R1
ABFFE:  STR             R0, [SP,#0x170+dest]
AC000:  BNE             loc_AC042
AC002:  LDR             R4, [SP,#0x170+var_F4]
AC004:  MOVS            R1, #0x2A ; '*'
AC006:  LDR.W           R0, [R4,#0x374]
AC00A:  BL              sub_A37CC
AC00E:  LDR.W           R1, [R4,#0x374]
AC012:  LDR             R4, [SP,#0x170+var_140]
AC014:  LDR             R5, [SP,#0x170+var_124]
AC016:  LDR             R2, [R1,#0x10]
AC018:  STR             R2, [R4,#0x24]
AC01A:  LDR             R2, [R1,#0x44]
AC01C:  STR             R2, [R5,#0x14]
AC01E:  LDRD.W          R2, R3, [R1,#0x30]
AC022:  STRD.W          R2, R3, [R5]
AC026:  LDR             R3, [R1,#0x48]
AC028:  LDR             R2, [R1,#0x38]
AC02A:  STR             R3, [R5,#0x18]
AC02C:  LDR             R1, [R1,#0x4C]
AC02E:  STR             R0, [R4,#0x40]
AC030:  STR             R2, [R5,#8]
AC032:  STR             R1, [R5,#0x1C]
AC034:  LDR             R0, [R0,#4]
AC036:  STR             R0, [R4,#0x20]
AC038:  MOVW            R0, #0x2C50
AC03C:  ADD             R0, R8
AC03E:  BL              sub_973C4
AC042:  LDR             R2, [SP,#0x170+var_F4]
AC044:  LDRD.W          R1, R5, [R7,#arg_8]
AC048:  LDR.W           R0, [R2,#0x480]
AC04C:  CMP             R0, R6
AC04E:  BNE             loc_AC0A8
AC050:  LDR             R3, [SP,#0x170+var_124]
AC052:  LDR             R0, [SP,#0x170+var_108]
AC054:  VLDR            S2, [R8,#0xE0]
AC058:  VLDR            S4, [R2]
AC05C:  STR.W           R1, [R11,#0xE6C]
AC060:  MOVS            R1, #1
AC062:  STR.W           R10, [R11,#0xE68]
AC066:  STR.W           R5, [R11,#0xE70]
AC06A:  STR.W           R0, [R11,#0x34]
AC06E:  VLDR            S0, [SP,#0x170+var_88]
AC072:  VLDR            S6, [R11,#0x38]
AC076:  STR.W           R1, [R3,#0x2BC]
AC07A:  LDRB.W          R0, [R8,#0xE8]
AC07E:  LDR.W           R1, [R11,#8]
AC082:  STR             R1, [SP,#0x170+var_140]
AC084:  EOR.W           R1, R0, #1
AC088:  STRB.W          R1, [R2,#0x48D]
AC08C:  LDR             R1, [SP,#0x170+var_EC]
AC08E:  CBZ             R1, loc_AC0B2
AC090:  LDR             R1, [SP,#0x170+var_110]
AC092:  VLDR            S10, [R8,#0xE4]
AC096:  VLDR            S8, [R1,#0xCC]
AC09A:  VSUB.F32        S8, S10, S8
AC09E:  VLDR            S10, [R2,#4]
AC0A2:  VSUB.F32        S1, S8, S10
AC0A6:  B               loc_AC0BE
AC0A8:  MOVS            R0, #0
AC0AA:  MOV             R2, R6
AC0AC:  STR             R0, [SP,#0x170+var_140]
AC0AE:  MOV             R6, R11
AC0B0:  B               loc_AC25C
AC0B2:  VMOV.F32        S8, #0.5
AC0B6:  VLDR            S10, [R2,#0x378]
AC0BA:  VMUL.F32        S1, S10, S8
AC0BE:  LDR             R1, [SP,#0x170+var_138]
AC0C0:  LDRB.W          R4, [R8,#0xAD]
AC0C4:  CBNZ            R1, loc_AC0DA
AC0C6:  CLZ.W           R1, R4
AC0CA:  LDR             R2, [SP,#0x170+var_128]
AC0CC:  LSRS            R1, R1, #5
AC0CE:  ANDS            R2, R1
AC0D0:  CMP             R2, #1
AC0D2:  BNE             loc_AC146
AC0D4:  LDRB.W          R2, [R8,#0x3DD]
AC0D8:  CBZ             R2, loc_AC146
AC0DA:  MOVS            R0, #0
AC0DC:  LDR.W           R1, [R11,#4]
AC0E0:  MOVS            R2, #1
AC0E2:  STRB.W          R0, [R11,#0x4B]
AC0E6:  STRB.W          R2, [R11,#0xE65]
AC0EA:  STRD.W          R1, R0, [R11,#0x3C]
AC0EE:  STR.W           R1, [R11,#0x44]
AC0F2:  LDRB.W          R1, [R11,#0xE65]
AC0F6:  MOVW            R0, #0x1508
AC0FA:  CBZ             R1, loc_AC10A
AC0FC:  LDRB.W          R1, [R8,#0xE8]
AC100:  CMP             R1, #0
AC102:  ITT EQ
AC104:  MOVEQ           R1, #0
AC106:  STRBEQ.W        R1, [R11,#0xE65]
AC10A:  ADD.W           R5, R8, R0
AC10E:  LDRB.W          R0, [R8,#0xF8]
AC112:  CBZ             R0, loc_AC130
AC114:  LDRB.W          R0, [R8,#0xFA]
AC118:  CLZ.W           R1, R0
AC11C:  CMP             R0, #0
AC11E:  IT NE
AC120:  CMPNE           R4, #0
AC122:  MOV.W           R6, R1,LSR#5
AC126:  BNE             loc_AC134
AC128:  MOVS.W          R0, R10,LSL#21
AC12C:  BPL             loc_AC208
AC12E:  B               loc_AC1E0
AC130:  CMP             R4, #0
AC132:  BEQ             loc_AC1D8
AC134:  LDRB.W          R6, [R8,#0xFB]
AC138:  CMP             R6, #0
AC13A:  IT NE
AC13C:  MOVNE           R6, #1
AC13E:  MOVS.W          R0, R10,LSL#21
AC142:  BPL             loc_AC208
AC144:  B               loc_AC1E0
AC146:  LDR             R2, [SP,#0x170+var_128]
AC148:  EOR.W           R2, R2, #1
AC14C:  ORRS            R1, R2
AC14E:  BNE             loc_AC176
AC150:  LDRB.W          R1, [R8,#0x3DD]
AC154:  CBZ             R1, loc_AC176
AC156:  MOVS            R0, #0x10004
AC15C:  ADD.W           R1, R0, #8
AC160:  MOV             R0, R11
AC162:  BL              sub_AD8D4
AC166:  MOVS            R0, #0x3000C
AC16C:  ADDS            R1, R0, #1
AC16E:  MOV             R0, R11
AC170:  BL              sub_AD8D4
AC174:  B               loc_AC0F2
AC176:  VSUB.F32        S0, S2, S0
AC17A:  LDRB.W          R1, [R8,#0x3D8]
AC17E:  VSUB.F32        S0, S0, S4
AC182:  VADD.F32        S0, S0, S6
AC186:  CBZ             R1, loc_AC192
AC188:  LDRB.W          R1, [R11,#0xE65]
AC18C:  CMP             R1, #0
AC18E:  BEQ.W           loc_ACF22
AC192:  CMP             R0, #0
AC194:  BEQ             loc_AC0F2
AC196:  LDRB.W          R0, [R11,#0xE65]
AC19A:  CMP             R0, #0
AC19C:  BNE             loc_AC0F2
AC19E:  VLDR            S2, [R8,#0x374]
AC1A2:  VCMP.F32        S2, #0.0
AC1A6:  VMRS            APSR_nzcv, FPSCR
AC1AA:  BNE             loc_AC1BA
AC1AC:  VLDR            S2, [R8,#0x378]
AC1B0:  VCMP.F32        S2, #0.0
AC1B4:  VMRS            APSR_nzcv, FPSCR
AC1B8:  BEQ             loc_AC0F2
AC1BA:  ADD.W           R1, R11, #0x3C ; '<'
AC1BE:  MOV             R0, R11
AC1C0:  BL              sub_AE804
AC1C4:  MOVS            R0, #1
AC1C6:  STRB.W          R0, [R11,#0xE64]
AC1CA:  MOV             R0, #0xBE99999A
AC1D2:  STR.W           R0, [R11,#0xE60]
AC1D6:  B               loc_AC0F2
AC1D8:  MOVS            R6, #0
AC1DA:  MOVS.W          R0, R10,LSL#21
AC1DE:  BPL             loc_AC208
AC1E0:  LDR             R0, [SP,#0x170+var_114]
AC1E2:  LDR             R0, [R0]
AC1E4:  LDR             R0, [R0,#0x34]
AC1E6:  CMP             R0, #0
AC1E8:  BMI             loc_AC208
AC1EA:  MOVS            R1, #1
AC1EC:  BL              sub_95484
AC1F0:  EOR.W           R0, R0, #1
AC1F4:  ORRS            R0, R6
AC1F6:  BNE             loc_AC208
AC1F8:  LDR             R0, [SP,#0x170+var_11C]
AC1FA:  CMP             R0, #0
AC1FC:  ITT EQ
AC1FE:  LDRBEQ.W        R0, [R8,#0xF9]
AC202:  CMPEQ           R0, #0
AC204:  BEQ.W           loc_ACF62
AC208:  LDR             R0, [R5]
AC20A:  CMP             R0, #1
AC20C:  BLT             loc_AC256
AC20E:  LDR             R0, [SP,#0x170+var_11C]
AC210:  CMP             R0, #0
AC212:  IT NE
AC214:  MOVNE           R0, #1
AC216:  LDR             R1, [SP,#0x170+var_13C]
AC218:  ORRS            R0, R6
AC21A:  ORRS            R0, R1
AC21C:  BEQ.W           loc_AC380
AC220:  LDR             R0, [R5,#4]
AC222:  LDR             R6, [SP,#0x170+var_100]
AC224:  CMP.W           R0, #0xFFFFFFFF
AC228:  BGT             loc_AC24E
AC22A:  MOVS            R0, #0
AC22C:  MOVS            R6, #0
AC22E:  BL              sub_885E4
AC232:  LDR             R1, [R5,#8]; src
AC234:  MOV             R4, R0
AC236:  CBZ             R1, loc_AC248
AC238:  LDR             R0, [R5]
AC23A:  LSLS            R2, R0, #1; n
AC23C:  MOV             R0, R4; dest
AC23E:  BLX             j_memcpy
AC242:  LDR             R0, [R5,#8]
AC244:  BL              sub_88614
AC248:  STRD.W          R6, R4, [R5,#4]
AC24C:  LDR             R6, [SP,#0x170+var_100]
AC24E:  LDR             R2, [SP,#0x170+var_F0]
AC250:  MOVS            R0, #0
AC252:  STR             R0, [R5]
AC254:  B               loc_AC25A
AC256:  LDR             R2, [SP,#0x170+var_F0]
AC258:  LDR             R6, [SP,#0x170+var_100]
AC25A:  LDR             R5, [R7,#arg_C]
AC25C:  LDR             R1, [SP,#0x170+var_F4]
AC25E:  AND.W           R0, R10, #0x40000
AC262:  STR             R0, [SP,#0x170+var_13C]
AC264:  MOV             R10, R2
AC266:  LDR.W           R0, [R1,#0x480]
AC26A:  CMP             R0, R2
AC26C:  BNE             loc_AC27A
AC26E:  LDRB.W          R0, [R1,#0x48C]
AC272:  CBZ             R0, loc_AC2AE
AC274:  MOVS            R0, #0
AC276:  STR             R0, [SP,#0x170+var_138]
AC278:  B               loc_AC2BE
AC27A:  MOVS            R4, #0
AC27C:  MOV.W           R8, #0
AC280:  MOV             R11, R1
AC282:  LDR.W           R9, [SP,#0x170+var_11C]
AC286:  CMP             R0, R10
AC288:  BNE.W           loc_AD53A
AC28C:  CMP.W           R9, #0
AC290:  IT EQ
AC292:  EORSEQ.W        R0, R4, #1
AC296:  BEQ.W           loc_AC3BC
AC29A:  MOVS            R0, #0
AC29C:  CMP             R4, #0
AC29E:  MOV.W           R11, #0
AC2A2:  STR             R0, [SP,#0x170+var_138]
AC2A4:  BNE.W           loc_AC3D8
AC2A8:  MOV.W           R11, #0
AC2AC:  B               loc_AC2CA
AC2AE:  LDR             R0, [SP,#0x170+var_12C]
AC2B0:  CMP             R0, #0
AC2B2:  BEQ.W           loc_AC3F0
AC2B6:  MOVS            R0, #0
AC2B8:  STR             R0, [SP,#0x170+var_138]
AC2BA:  MOVS            R0, #1
AC2BC:  STR             R0, [SP,#0x170+var_12C]
AC2BE:  MOV.W           R11, #0
AC2C2:  MOV.W           R8, #0
AC2C6:  LDR.W           R9, [SP,#0x170+var_11C]
AC2CA:  CMP.W           R9, #0
AC2CE:  BNE             loc_AC334
AC2D0:  LDR             R1, [R6,#0xC]
AC2D2:  MOVS            R2, #1
AC2D4:  LDR             R0, [R6,#0x1C]
AC2D6:  STRB.W          R2, [R6,#0x30]
AC2DA:  LSLS            R1, R1, #2
AC2DC:  ADDS            R5, R1, #1
AC2DE:  CMP             R0, R5
AC2E0:  MOV             R4, R5
AC2E2:  BGE             loc_AC320
AC2E4:  CMP             R0, #0
AC2E6:  ITTE NE
AC2E8:  ADDNE.W         R1, R0, R0,LSR#31
AC2EC:  ADDNE.W         R1, R0, R1,ASR#1
AC2F0:  MOVEQ           R1, #8
AC2F2:  CMP             R1, R5
AC2F4:  IT GT
AC2F6:  MOVGT           R5, R1
AC2F8:  LDR             R6, [SP,#0x170+var_100]
AC2FA:  CMP             R0, R5
AC2FC:  BGE             loc_AC320
AC2FE:  MOV             R0, R5
AC300:  BL              sub_885E4
AC304:  LDR             R1, [R6,#0x20]; src
AC306:  MOV             R9, R0
AC308:  CBZ             R1, loc_AC318
AC30A:  LDR             R2, [R6,#0x18]; n
AC30C:  MOV             R0, R9; dest
AC30E:  BLX             j_memcpy
AC312:  LDR             R0, [R6,#0x20]
AC314:  BL              sub_88614
AC318:  STRD.W          R5, R9, [R6,#0x1C]
AC31C:  LDR.W           R9, [SP,#0x170+var_11C]
AC320:  LDR             R2, [R6,#0x14]
AC322:  MOV             R1, R4
AC324:  LDR             R0, [R6,#0x20]
AC326:  MOVS            R3, #0
AC328:  STR             R4, [R6,#0x18]
AC32A:  BL              sub_8892C
AC32E:  LDR.W           R10, [SP,#0x170+var_F0]
AC332:  LDR             R5, [R7,#arg_C]
AC334:  LDR             R0, [R7,#arg_4]
AC336:  TST.W           R0, #0x1C0
AC33A:  BEQ.W           loc_AC548
AC33E:  LDR             R0, [R7,#arg_4]
AC340:  LSLS            R0, R0, #0x19
AC342:  BPL             loc_AC35E
AC344:  LDR             R0, [SP,#0x170+var_114]
AC346:  LDR             R0, [R0]
AC348:  LDR             R0, [R0,#0x34]
AC34A:  CMP             R0, #0
AC34C:  BMI             loc_AC35E
AC34E:  MOVS            R1, #1
AC350:  BL              sub_95484
AC354:  CBZ             R0, loc_AC35E
AC356:  MOV.W           R12, #0
AC35A:  MOVS            R1, #0x40 ; '@'
AC35C:  B               loc_AC450
AC35E:  LDR             R0, [R7,#arg_4]
AC360:  LSLS            R0, R0, #0x18
AC362:  BPL             loc_AC440
AC364:  LDR             R0, [SP,#0x170+var_114]
AC366:  LDR             R1, [R0]
AC368:  LDR             R0, [R1,#0x40]
AC36A:  CMP             R0, #0
AC36C:  BMI             loc_AC42A
AC36E:  MOVS            R1, #1
AC370:  BL              sub_95484
AC374:  CMP             R0, #0
AC376:  BEQ             loc_AC426
AC378:  MOV.W           R12, #3
AC37C:  MOVS            R1, #0x80
AC37E:  B               loc_AC450
AC380:  ADD             R4, SP, #0x170+var_C8
AC382:  MOVS            R6, #0
AC384:  B               loc_AC396
AC386:  LDRB.W          R0, [R8,#0xF9]
AC38A:  CBZ             R0, loc_AC3A2
AC38C:  LDR             R0, [R5]
AC38E:  ADDS            R6, #1
AC390:  CMP             R6, R0
AC392:  BGE.W           loc_AC220
AC396:  LDR             R0, [R5,#8]
AC398:  LDRH.W          R0, [R0,R6,LSL#1]
AC39C:  STR             R0, [SP,#0x170+var_C8]
AC39E:  CMP             R0, #9
AC3A0:  BEQ             loc_AC386
AC3A2:  LDRD.W          R2, R3, [R7,#arg_8]
AC3A6:  MOV             R0, R4
AC3A8:  MOV             R1, R10
AC3AA:  BL              sub_AE838
AC3AE:  CMP             R0, #0
AC3B0:  BEQ             loc_AC38C
AC3B2:  LDR             R1, [SP,#0x170+var_C8]
AC3B4:  LDR             R0, [SP,#0x170+var_100]
AC3B6:  BL              sub_AD8D4
AC3BA:  B               loc_AC38C
AC3BC:  LDR             R1, [R6,#0x2C]; s2
AC3BE:  LDR             R0, [SP,#0x170+s]; s1
AC3C0:  STR             R1, [SP,#0x170+var_138]
AC3C2:  BLX             strcmp
AC3C6:  CMP             R0, #0
AC3C8:  BEQ.W           loc_AC29A
AC3CC:  LDR             R0, [R6,#0x24]
AC3CE:  CMP             R4, #0
AC3D0:  SUB.W           R11, R0, #1
AC3D4:  BEQ.W           loc_AC2CA
AC3D8:  LDR             R0, [R7,#arg_4]
AC3DA:  MOVS            R1, #1
AC3DC:  AND.W           R0, R0, #0x20 ; ' '
AC3E0:  EOR.W           R0, R1, R0,LSR#5
AC3E4:  EOR.W           R1, R8, #1
AC3E8:  ORRS            R0, R1
AC3EA:  BEQ.W           loc_AC2CA
AC3EE:  B               loc_AC562
AC3F0:  LDR.W           R10, [R7,#arg_4]
AC3F4:  LDR             R5, [SP,#0x170+var_F8]
AC3F6:  AND.W           R0, R10, #0x10000
AC3FA:  STR             R0, [SP,#0x170+var_12C]
AC3FC:  LDRB.W          R0, [R5,#0xAD]
AC400:  LDRB.W          R4, [R5,#0xF9]
AC404:  CMP             R0, #0
AC406:  STR             R0, [SP,#0x170+var_158]
AC408:  BEQ.W           loc_ACF0C
AC40C:  LDRB.W          R0, [R5,#0xFB]
AC410:  CMP             R0, #0
AC412:  BEQ.W           loc_ACF7A
AC416:  LDRB.W          R0, [R5,#0xF8]
AC41A:  CMP             R0, #0
AC41C:  BEQ.W           loc_ACF8E
AC420:  MOVS            R0, #0
AC422:  B.W             loc_ACF9A
AC426:  LDR             R0, [SP,#0x170+var_114]
AC428:  LDR             R1, [R0]
AC42A:  LDR             R0, [R1,#0x44]
AC42C:  CMP             R0, #0
AC42E:  BMI             loc_AC440
AC430:  MOVS            R1, #1
AC432:  BL              sub_95484
AC436:  CBZ             R0, loc_AC440
AC438:  MOV.W           R12, #4
AC43C:  MOVS            R1, #0x80
AC43E:  B               loc_AC450
AC440:  LDR             R0, [R7,#arg_4]
AC442:  LSLS            R0, R0, #0x17
AC444:  BPL.W           loc_AC548
AC448:  MOV.W           R12, #0x15
AC44C:  MOV.W           R1, #0x100
AC450:  VMOV.I32        Q8, #0
AC454:  ADD             R0, SP, #0x170+var_C8
AC456:  ADD.W           R4, R0, #0xC
AC45A:  LDR             R2, [R6,#0x34]
AC45C:  LDR             R3, [R6,#0x3C]
AC45E:  VST1.32         {D16-D17}, [R4]!
AC462:  MOV             R9, R4
AC464:  STR             R5, [SP,#0x170+var_C0]
AC466:  VST1.32         {D16-D17}, [R9]!
AC46A:  STR             R2, [R4]
AC46C:  MOVS            R2, #0
AC46E:  STR.W           R2, [R9]
AC472:  MOV             R4, R6
AC474:  LDR             R2, [R7,#arg_4]
AC476:  STR             R1, [SP,#0x170+var_C8]
AC478:  LDR             R1, [R4,#0x20]
AC47A:  STR             R2, [SP,#0x170+var_C4]
AC47C:  LDR             R2, [R6,#8]
AC47E:  LDR             R6, [R6,#0x14]
AC480:  STRD.W          R12, R1, [SP,#0x170+var_B8]
AC484:  ADD.W           R1, R6, R3,LSL#1
AC488:  STR             R2, [SP,#0x170+var_B0]
AC48A:  MOV             R0, R6
AC48C:  BL              sub_889DE
AC490:  MOV             R5, R0
AC492:  LDR             R0, [R4,#0x40]
AC494:  STR             R5, [SP,#0x170+var_A4]
AC496:  ADD.W           R1, R6, R0,LSL#1
AC49A:  MOV             R0, R6
AC49C:  BL              sub_889DE
AC4A0:  MOV             R10, R0
AC4A2:  LDR             R0, [R4,#0x44]
AC4A4:  STR.W           R10, [SP,#0x170+var_A0]
AC4A8:  ADD.W           R1, R6, R0,LSL#1
AC4AC:  MOV             R0, R6
AC4AE:  BL              sub_889DE
AC4B2:  LDR             R1, [R7,#arg_8]
AC4B4:  MOV             R6, R0
AC4B6:  STR.W           R0, [R9]
AC4BA:  ADD             R0, SP, #0x170+var_C8
AC4BC:  BLX             R1
AC4BE:  LDR             R1, [SP,#0x170+var_A4]
AC4C0:  CMP             R1, R5
AC4C2:  BEQ             loc_AC4D6
AC4C4:  LDR             R0, [SP,#0x170+var_B4]
AC4C6:  ADD             R1, R0
AC4C8:  BL              sub_888C4
AC4CC:  LDR             R2, [SP,#0x170+var_100]
AC4CE:  MOVS            R1, #1
AC4D0:  STRB.W          R1, [R2,#0xE64]
AC4D4:  STR             R0, [R2,#0x3C]
AC4D6:  LDR             R1, [SP,#0x170+var_A0]
AC4D8:  CMP             R1, R10
AC4DA:  BEQ             loc_AC4E8
AC4DC:  LDR             R0, [SP,#0x170+var_B4]
AC4DE:  ADD             R1, R0
AC4E0:  BL              sub_888C4
AC4E4:  LDR             R1, [SP,#0x170+var_100]
AC4E6:  STR             R0, [R1,#0x40]
AC4E8:  LDR             R1, [SP,#0x170+var_9C]
AC4EA:  LDR.W           R10, [SP,#0x170+var_F0]
AC4EE:  CMP             R1, R6
AC4F0:  LDR             R6, [SP,#0x170+var_100]
AC4F2:  LDR.W           R9, [SP,#0x170+var_11C]
AC4F6:  LDR             R5, [R7,#arg_C]
AC4F8:  BEQ             loc_AC504
AC4FA:  LDR             R0, [SP,#0x170+var_B4]
AC4FC:  ADD             R1, R0
AC4FE:  BL              sub_888C4
AC502:  STR             R0, [R6,#0x44]
AC504:  LDRB.W          R0, [SP,#0x170+var_A8]
AC508:  CBZ             R0, loc_AC548
AC50A:  LDR             R0, [SP,#0x170+var_13C]
AC50C:  CBZ             R0, loc_AC526
AC50E:  LDR             R1, [SP,#0x170+var_B0]
AC510:  LDR             R0, [SP,#0x170+var_140]
AC512:  CMP             R1, R0
AC514:  BLE             loc_AC526
AC516:  ADD.W           R0, R6, #0xC
AC51A:  LDR             R3, [SP,#0x170+var_140]
AC51C:  LDR             R2, [R0]
AC51E:  SUBS            R1, R1, R3
AC520:  ADD             R1, R2
AC522:  BL              sub_AE7B0
AC526:  LDR             R2, [SP,#0x170+var_B4]
AC528:  MOVS            R3, #0
AC52A:  LDR             R1, [R6,#0xC]
AC52C:  LDR             R0, [R6,#0x14]
AC52E:  STR             R3, [SP,#0x170+var_170]
AC530:  MOVS            R3, #0
AC532:  BL              sub_88838
AC536:  STR             R0, [R6,#4]
AC538:  MOVW            R1, #0x999A
AC53C:  LDR             R0, [SP,#0x170+var_B0]
AC53E:  MOVT            R1, #0xBE99
AC542:  STR.W           R1, [R6,#0xE60]
AC546:  STR             R0, [R6,#8]
AC548:  CMP.W           R9, #0
AC54C:  BNE             loc_AC562
AC54E:  LDR             R4, [R6,#0x20]
AC550:  LDR             R1, [SP,#0x170+s]; s2
AC552:  MOV             R0, R4; s1
AC554:  BLX             strcmp
AC558:  CMP             R0, #0
AC55A:  ITT NE
AC55C:  LDRNE.W         R11, [R6,#8]
AC560:  STRNE           R4, [SP,#0x170+var_138]
AC562:  MOV             R9, R6
AC564:  LDR             R6, [SP,#0x170+var_138]
AC566:  CMP             R6, #0
AC568:  MOV             R0, R6
AC56A:  IT NE
AC56C:  MOVNE           R0, #1
AC56E:  STR             R0, [SP,#0x170+var_128]
AC570:  BEQ             loc_AC584
AC572:  LDR             R0, [SP,#0x170+var_13C]
AC574:  CMP             R0, #0
AC576:  ITT NE
AC578:  LDRNE           R0, [SP,#0x170+var_140]
AC57A:  CMPNE           R0, R11
AC57C:  BNE             loc_AC58A
AC57E:  LDR             R0, [SP,#0x170+s]
AC580:  LDR             R2, [SP,#0x170+var_108]
AC582:  B               loc_AC5D8
AC584:  MOV             R4, R10
AC586:  LDR             R5, [SP,#0x170+var_12C]
AC588:  B               loc_AC5EE
AC58A:  VMOV.I32        Q8, #0
AC58E:  ADD             R0, SP, #0x170+var_C8
AC590:  ADD.W           R4, R0, #0xC
AC594:  LDR             R3, [SP,#0x170+var_108]
AC596:  ADD.W           R2, R11, #1
AC59A:  VST1.32         {D16-D17}, [R4]!
AC59E:  CMP             R2, R3
AC5A0:  MOV             R1, R4
AC5A2:  VST1.32         {D16-D17}, [R1]!
AC5A6:  IT GT
AC5A8:  MOVGT           R3, R2
AC5AA:  MOVS            R2, #0
AC5AC:  STR             R3, [R4]
AC5AE:  STR             R2, [R1]
AC5B0:  LDR             R1, [R7,#arg_4]
AC5B2:  STR             R1, [SP,#0x170+var_C4]
AC5B4:  MOV.W           R1, #0x40000
AC5B8:  STR             R1, [SP,#0x170+var_C8]
AC5BA:  LDR             R1, [SP,#0x170+s]
AC5BC:  STR             R1, [SP,#0x170+var_B4]
AC5BE:  LDR             R1, [R7,#arg_8]
AC5C0:  STR             R5, [SP,#0x170+var_C0]
AC5C2:  STR.W           R11, [SP,#0x170+var_B0]
AC5C6:  BLX             R1
AC5C8:  LDR             R2, [R4]
AC5CA:  LDRD.W          R0, R1, [SP,#0x170+var_B4]
AC5CE:  SUB.W           R11, R2, #1
AC5D2:  CMP             R1, R11
AC5D4:  IT LT
AC5D6:  MOVLT           R11, R1
AC5D8:  ADD.W           R1, R11, #1
AC5DC:  LDR             R5, [SP,#0x170+var_12C]
AC5DE:  CMP             R1, R2
AC5E0:  IT LT
AC5E2:  MOVLT           R2, R1
AC5E4:  MOV             R1, R6
AC5E6:  MOV             R4, R10
AC5E8:  STR             R0, [SP,#0x170+s]
AC5EA:  BL              sub_885C0
AC5EE:  MOVS            R0, #0
AC5F0:  MOV             R6, R9
AC5F2:  STR.W           R0, [R9,#0xE68]
AC5F6:  STR.W           R0, [R9,#0xE6C]
AC5FA:  STR.W           R0, [R9,#0xE70]
AC5FE:  LDR.W           R11, [SP,#0x170+var_F4]
AC602:  LDR.W           R10, [R7,#arg_4]
AC606:  CBZ             R5, loc_AC614
AC608:  LDR.W           R0, [R11,#0x480]
AC60C:  CMP             R0, R4
AC60E:  IT EQ
AC610:  BLEQ            sub_8B080
AC614:  LDR             R0, [SP,#0x170+var_EC]
AC616:  CBNZ            R0, loc_AC656
AC618:  ADD             R0, SP, #0x170+var_88
AC61A:  MOV             R1, R4
AC61C:  MOVS            R2, #1
AC61E:  MOV.W           R10, #1
AC622:  BL              sub_8A1F8
AC626:  ADD.W           R9, SP, #0x170+var_88
AC62A:  MOVS            R0, #7
AC62C:  MOV.W           R1, #0x3F800000
AC630:  LDM.W           R9, {R4-R6,R9}
AC634:  BL              sub_88C10
AC638:  LDR.W           R1, [R11,#8]
AC63C:  MOV             R2, R6; int
AC63E:  STRD.W          R0, R10, [SP,#0x170+var_170]; int
AC642:  MOV             R0, R4; int
AC644:  STR             R1, [SP,#0x170+var_168]; float
AC646:  MOV             R1, R5; int
AC648:  MOV             R3, R9; int
AC64A:  LDR.W           R10, [R7,#arg_4]
AC64E:  LDR             R4, [SP,#0x170+var_F0]
AC650:  LDR             R6, [SP,#0x170+var_100]
AC652:  BL              sub_89B34
AC656:  VLDR            S20, [SP,#0x170+var_88]
AC65A:  VLDR            S30, [SP,#0x170+var_74]
AC65E:  VLDR            S22, [SP,#0x170+var_84]
AC662:  VLDR            S0, [SP,#0x170+var_70]
AC666:  VADD.F32        S26, S20, S30
AC66A:  LDR             R0, [SP,#0x170+var_EC]
AC66C:  VADD.F32        S24, S22, S0
AC670:  VSTR            S22, [SP,#0x170+var_D4]
AC674:  VSTR            S20, [SP,#0x170+var_D8]
AC678:  VSTR            S26, [SP,#0x170+var_D0]
AC67C:  VSTR            S24, [SP,#0x170+var_CC]
AC680:  CBZ             R0, loc_AC696
AC682:  LDR             R1, [SP,#0x170+var_110]
AC684:  LDRD.W          R0, R1, [R1,#0xC8]
AC688:  VMOV            S18, R1
AC68C:  STRD.W          R0, R1, [SP,#0x170+var_E0]
AC690:  VMOV            S16, R0
AC694:  B               loc_AC6AE
AC696:  VLDR            S0, [R11]
AC69A:  VLDR            S2, [R11,#4]
AC69E:  VADD.F32        S16, S20, S0
AC6A2:  VADD.F32        S18, S22, S2
AC6A6:  VSTR            S16, [SP,#0x170+var_E0]
AC6AA:  VSTR            S18, [SP,#0x170+var_DC]
AC6AE:  LDR             R0, [SP,#0x170+var_134]
AC6B0:  CMP             R0, #0
AC6B2:  ITT NE
AC6B4:  LDRNE           R0, [R6,#0x20]
AC6B6:  STRNE           R0, [SP,#0x170+s]
AC6B8:  LDR             R0, [SP,#0x170+var_120]
AC6BA:  CBZ             R0, loc_AC6D4
AC6BC:  LDR             R5, [SP,#0x170+var_10C]
AC6BE:  MOV             R9, R4
AC6C0:  MOV             R0, R5; s
AC6C2:  BLX             strlen
AC6C6:  ADDS            R4, R5, R0
AC6C8:  LDR             R0, [SP,#0x170+var_104]
AC6CA:  LDR             R1, [SP,#0x170+var_118]
AC6CC:  ORRS            R0, R1
AC6CE:  BEQ             loc_AC700
AC6D0:  STR             R5, [SP,#0x170+s]
AC6D2:  B               loc_AC6E4
AC6D4:  LDR             R0, [SP,#0x170+var_104]
AC6D6:  LDR             R1, [SP,#0x170+var_118]
AC6D8:  ORRS            R0, R1
AC6DA:  CMP             R0, #1
AC6DC:  BNE             loc_AC70E
AC6DE:  LDR             R0, [R6,#8]
AC6E0:  LDR             R1, [SP,#0x170+s]
AC6E2:  ADDS            R4, R1, R0
AC6E4:  LDR             R0, [SP,#0x170+var_104]
AC6E6:  MOVW            R10, #0xFC18
AC6EA:  LDR             R3, [R6,#0x14]
AC6EC:  MOVT            R10, #0xFFFF
AC6F0:  CBZ             R0, loc_AC74C
AC6F2:  LDR             R0, [R6,#0x3C]
AC6F4:  MOV.W           R9, #0xFFFFFFFF
AC6F8:  ADD.W           R11, R3, R0,LSL#1
AC6FC:  MOVS            R0, #1
AC6FE:  B               loc_AC754
AC700:  LDR             R0, [SP,#0x170+var_EC]
AC702:  CMP             R0, #0
AC704:  BEQ             loc_AC7CA
AC706:  VLDR            S30, [SP,#0x170+var_74]
AC70A:  LDR             R5, [SP,#0x170+var_10C]
AC70C:  B               loc_AC718
AC70E:  LDR             R0, [SP,#0x170+var_EC]
AC710:  CMP             R0, #0
AC712:  BEQ             loc_AC7D2
AC714:  LDR             R5, [SP,#0x170+s]
AC716:  MOV             R9, R4
AC718:  LDR             R3, [SP,#0x170+var_120]
AC71A:  SUBS            R4, R5, #1
AC71C:  MOVS            R0, #0
AC71E:  LDRB.W          R2, [R4,#1]!
AC722:  ADDS            R1, R0, #1
AC724:  CMP             R2, #0xA
AC726:  IT EQ
AC728:  MOVEQ           R0, R1
AC72A:  CMP             R2, #0
AC72C:  BNE             loc_AC71E
AC72E:  VMOV            S0, R1
AC732:  VLDR            S2, [R11,#0x378]
AC736:  LDR             R0, [SP,#0x170+var_EC]
AC738:  VCVT.F32.S32    S0, S0
AC73C:  CMP             R0, #0
AC73E:  VMUL.F32        S28, S2, S0
AC742:  BEQ.W           loc_AC9C8
AC746:  MOV.W           R9, #0
AC74A:  B               loc_AC9D4
AC74C:  MOV.W           R11, #0
AC750:  MOV             R9, R10
AC752:  MOVS            R0, #0
AC754:  LDR             R1, [SP,#0x170+var_118]
AC756:  CBZ             R1, loc_AC76E
AC758:  LDRD.W          R1, R2, [R6,#0x40]
AC75C:  ADDS            R0, #1
AC75E:  MOV.W           R10, #0xFFFFFFFF
AC762:  CMP             R1, R2
AC764:  IT LT
AC766:  MOVLT           R2, R1
AC768:  ADD.W           R6, R3, R2,LSL#1
AC76C:  B               loc_AC770
AC76E:  MOVS            R6, #0
AC770:  LDR             R1, [SP,#0x170+var_EC]
AC772:  MOVS            R5, #0
AC774:  ADD.W           R0, R0, R1,LSR#20
AC778:  MOV             R1, R3
AC77A:  B               loc_AC780
AC77C:  CBZ             R2, loc_AC7EA
AC77E:  ADDS            R1, #2
AC780:  LDRH            R2, [R1]
AC782:  CMP             R2, #0xA
AC784:  BNE             loc_AC77C
AC786:  ADDS            R5, #1
AC788:  ADDS.W          R2, R9, #1
AC78C:  BEQ             loc_AC7A0
AC78E:  ADDS.W          R2, R10, #1
AC792:  BNE             loc_AC77E
AC794:  CMP             R1, R6
AC796:  BCS             loc_AC7C0
AC798:  MOV.W           R10, #0xFFFFFFFF
AC79C:  ADDS            R1, #2
AC79E:  B               loc_AC780
AC7A0:  CMP             R1, R11
AC7A2:  BCS             loc_AC7B0
AC7A4:  MOV.W           R9, #0xFFFFFFFF
AC7A8:  ADDS.W          R2, R10, #1
AC7AC:  BNE             loc_AC77E
AC7AE:  B               loc_AC794
AC7B0:  CMP             R0, #2
AC7B2:  BLT             loc_AC7E4
AC7B4:  SUBS            R0, #1
AC7B6:  MOV             R9, R5
AC7B8:  ADDS.W          R2, R10, #1
AC7BC:  BNE             loc_AC77E
AC7BE:  B               loc_AC794
AC7C0:  CMP             R0, #2
AC7C2:  BLT             loc_AC7E8
AC7C4:  SUBS            R0, #1
AC7C6:  MOV             R10, R5
AC7C8:  B               loc_AC77E
AC7CA:  VLDR            S28, =0.0
AC7CE:  LDR             R5, [SP,#0x170+var_10C]
AC7D0:  B               loc_AC9C2
AC7D2:  LDR.W           R0, [R11,#0x480]
AC7D6:  MOV             R9, R4
AC7D8:  CMP             R0, R4
AC7DA:  BNE.W           loc_AC9B4
AC7DE:  LDR             R0, [R6,#8]
AC7E0:  LDR             R5, [SP,#0x170+s]
AC7E2:  B               loc_AC9BC
AC7E4:  MOV             R9, R5
AC7E6:  B               loc_AC7EA
AC7E8:  MOV             R10, R5
AC7EA:  MOV             R0, R11
AC7EC:  MOV             R1, R3
AC7EE:  STR             R3, [SP,#0x170+var_108]
AC7F0:  BL              sub_88644
AC7F4:  LDR             R1, [SP,#0x170+var_114]
AC7F6:  MOVW            R3, #0x18C4
AC7FA:  LDR             R2, [R1]
AC7FC:  LDR.W           LR, [R2,R3]
AC800:  ADD             R2, R3
AC802:  VLDR            S0, [R2,#4]
AC806:  ADD.W           R12, LR, #0xC
AC80A:  VLDR            S2, [LR,#0x10]
AC80E:  VDIV.F32        S0, S0, S2
AC812:  VLDR            S2, =0.0
AC816:  VMOV.F32        S17, S2
AC81A:  VMOV.F32        S4, S2
AC81E:  CMP             R0, R11
AC820:  BCS             loc_AC862
AC822:  LDRH.W          R3, [R0],#2
AC826:  CMP             R3, #0xD
AC828:  BEQ             loc_AC81E
AC82A:  CMP             R3, #0xA
AC82C:  BNE             loc_AC846
AC82E:  VCMP.F32        S17, S4
AC832:  VMRS            APSR_nzcv, FPSCR
AC836:  IT GE
AC838:  VMOVGE.F32      S4, S17
AC83C:  VMOV.F32        S17, S4
AC840:  VMOV.F32        S4, S2
AC844:  B               loc_AC81E
AC846:  LDR.W           R2, [LR]
AC84A:  LDR.W           R1, [LR,#8]
AC84E:  CMP             R2, R3
AC850:  MOV             R2, R12
AC852:  IT GT
AC854:  ADDGT.W         R2, R1, R3,LSL#2
AC858:  VLDR            S6, [R2]
AC85C:  VMLA.F32        S4, S0, S6
AC860:  B               loc_AC81E
AC862:  ADDS.W          R0, R9, #1
AC866:  ADD.W           R11, R5, #1
AC86A:  IT EQ
AC86C:  MOVEQ           R9, R11
AC86E:  LDR             R0, [SP,#0x170+var_F4]
AC870:  VLDR            S28, =0.0
AC874:  VMOV            S0, R9
AC878:  VCMP.F32        S17, S4
AC87C:  VLDR            S19, [R0,#0x378]
AC880:  VCVT.F32.S32    S30, S0
AC884:  VMOV.F32        S29, S28
AC888:  VMRS            APSR_nzcv, FPSCR
AC88C:  VMOV.F32        S0, S19
AC890:  IT MI
AC892:  VMOVMI.F32      S17, S4
AC896:  VMOV.F32        S31, S28
AC89A:  ADDS.W          R0, R10, #1
AC89E:  IT EQ
AC8A0:  MOVEQ           R10, R11
AC8A2:  CMP.W           R10, #0
AC8A6:  BMI             loc_AC934
AC8A8:  LDR             R1, [SP,#0x170+var_108]
AC8AA:  MOV             R0, R6
AC8AC:  BL              sub_88644
AC8B0:  LDR             R1, [SP,#0x170+var_114]
AC8B2:  MOVW            R3, #0x18C4
AC8B6:  LDR             R2, [R1]
AC8B8:  LDR             R1, [R2,R3]
AC8BA:  ADD             R2, R3
AC8BC:  VLDR            S0, [R2,#4]
AC8C0:  ADD.W           R12, R1, #0xC
AC8C4:  VLDR            S2, [R1,#0x10]
AC8C8:  VDIV.F32        S0, S0, S2
AC8CC:  VLDR            S2, =0.0
AC8D0:  VMOV.F32        S29, S2
AC8D4:  VMOV.F32        S4, S2
AC8D8:  CMP             R0, R6
AC8DA:  BCS             loc_AC914
AC8DC:  LDRH.W          R3, [R0],#2
AC8E0:  CMP             R3, #0xD
AC8E2:  BEQ             loc_AC8D8
AC8E4:  CMP             R3, #0xA
AC8E6:  BEQ             loc_AC900
AC8E8:  LDR             R2, [R1]
AC8EA:  LDR             R5, [R1,#8]
AC8EC:  CMP             R2, R3
AC8EE:  MOV             R2, R12
AC8F0:  IT GT
AC8F2:  ADDGT.W         R2, R5, R3,LSL#2
AC8F6:  VLDR            S6, [R2]
AC8FA:  VMLA.F32        S4, S0, S6
AC8FE:  B               loc_AC8D8
AC900:  VCMP.F32        S29, S4
AC904:  VMRS            APSR_nzcv, FPSCR
AC908:  IT GE
AC90A:  VMOVGE.F32      S4, S29
AC90E:  VMOV.F32        S29, S4
AC912:  B               loc_AC8D4
AC914:  VMOV            S0, R10
AC918:  LDR             R0, [SP,#0x170+var_F4]
AC91A:  VCMP.F32        S29, S4
AC91E:  VCVT.F32.S32    S2, S0
AC922:  VMRS            APSR_nzcv, FPSCR
AC926:  VLDR            S0, [R0,#0x378]
AC92A:  IT MI
AC92C:  VMOVMI.F32      S29, S4
AC930:  VMUL.F32        S31, S0, S2
AC934:  VMOV            S2, R11
AC938:  LDR             R0, [SP,#0x170+var_EC]
AC93A:  VMUL.F32        S19, S19, S30
AC93E:  VLDR            S4, [SP,#0x170+var_74]
AC942:  VCVT.F32.S32    S2, S2
AC946:  CMP             R0, #0
AC948:  VMOV.F32        S30, S28
AC94C:  VMUL.F32        S2, S0, S2
AC950:  ITT NE
AC952:  VMOVNE.F32      S30, S4
AC956:  VMOVNE.F32      S28, S2
AC95A:  LDR             R0, [SP,#0x170+var_104]
AC95C:  CBZ             R0, loc_AC9A6
AC95E:  LDR             R2, [SP,#0x170+var_100]
AC960:  LDR             R3, [SP,#0x170+var_118]
AC962:  LDRB.W          R0, [R2,#0xE64]
AC966:  CMP             R0, #0
AC968:  BEQ.W           loc_ACA8A
AC96C:  LDR             R0, [R7,#arg_4]
AC96E:  LSLS            R0, R0, #0x13
AC970:  BMI             loc_AC9AC
AC972:  VMOV.F32        S2, #0.25
AC976:  VLDR            S4, [SP,#0x170+var_74]
AC97A:  VLDR            S6, [R2,#0x38]
AC97E:  LDR             R1, [SP,#0x170+var_110]
AC980:  VCMP.F32        S17, S6
AC984:  VMRS            APSR_nzcv, FPSCR
AC988:  VMUL.F32        S2, S4, S2
AC98C:  BPL             loc_ACA0A
AC98E:  VSUB.F32        S2, S17, S2
AC992:  VLDR            S4, =0.0
AC996:  VCMP.F32        S2, #0.0
AC99A:  VMRS            APSR_nzcv, FPSCR
AC99E:  IT LS
AC9A0:  VMOVLS.F32      S2, S4
AC9A4:  B               loc_ACA1C
AC9A6:  LDR             R2, [SP,#0x170+var_100]
AC9A8:  LDR             R3, [SP,#0x170+var_118]
AC9AA:  B               loc_ACA8A
AC9AC:  LDR             R1, [SP,#0x170+var_110]
AC9AE:  MOVS            R0, #0
AC9B0:  STR             R0, [R2,#0x38]
AC9B2:  B               loc_ACA28
AC9B4:  LDR             R5, [SP,#0x170+s]
AC9B6:  MOV             R0, R5; s
AC9B8:  BLX             strlen
AC9BC:  VLDR            S28, =0.0
AC9C0:  ADDS            R4, R5, R0
AC9C2:  VMOV.F32        S30, S28
AC9C6:  LDR             R3, [SP,#0x170+var_120]
AC9C8:  SUBS            R0, R4, R5
AC9CA:  CMP.W           R0, #0x200000
AC9CE:  BGE             loc_ACA04
AC9D0:  ADD.W           R9, SP, #0x170+var_D8
AC9D4:  MOV             R0, R3
AC9D6:  MOV.W           R1, #0x3F800000
AC9DA:  BL              sub_88C10
AC9DE:  LDR             R3, [SP,#0x170+var_110]
AC9E0:  LDRD.W          R1, R2, [R11,#0x374]; int
AC9E4:  STR             R5, [SP,#0x170+s]
AC9E6:  LDR.W           R6, [R3,#0x27C]
AC9EA:  MOVS            R3, #0
AC9EC:  STRD.W          R4, R3, [SP,#0x170+var_168]; int
AC9F0:  ADD             R3, SP, #0x170+var_E0; int
AC9F2:  STRD.W          R0, R5, [SP,#0x170+var_170]; int
AC9F6:  MOV             R0, R6; int
AC9F8:  STR.W           R9, [SP,#0x170+var_160]; int
AC9FC:  BL              sub_9D89C
ACA00:  LDR             R5, [SP,#0x170+var_F0]
ACA02:  B               loc_ACE26
ACA04:  STR             R5, [SP,#0x170+s]
ACA06:  MOV             R5, R9
ACA08:  B               loc_ACE92
ACA0A:  VSUB.F32        S4, S17, S4
ACA0E:  VCMP.F32        S4, S6
ACA12:  VMRS            APSR_nzcv, FPSCR
ACA16:  BLT             loc_ACA28
ACA18:  VADD.F32        S2, S4, S2
ACA1C:  VCVT.S32.F32    S2, S2
ACA20:  VCVT.F32.S32    S2, S2
ACA24:  VSTR            S2, [R2,#0x38]
ACA28:  LDR             R0, [SP,#0x170+var_EC]
ACA2A:  CBZ             R0, loc_ACA84
ACA2C:  VSUB.F32        S2, S19, S0
ACA30:  VLDR            S0, [R1,#0x54]
ACA34:  VCMP.F32        S2, S0
ACA38:  VMRS            APSR_nzcv, FPSCR
ACA3C:  BPL             loc_ACA52
ACA3E:  VCMP.F32        S2, #0.0
ACA42:  VLDR            S4, =0.0
ACA46:  VMRS            APSR_nzcv, FPSCR
ACA4A:  IT LS
ACA4C:  VMOVLS.F32      S2, S4
ACA50:  B               loc_ACA6C
ACA52:  VLDR            S2, [SP,#0x170+var_70]
ACA56:  VSUB.F32        S4, S19, S2
ACA5A:  VMOV.F32        S2, S0
ACA5E:  VCMP.F32        S4, S0
ACA62:  VMRS            APSR_nzcv, FPSCR
ACA66:  IT GE
ACA68:  VMOVGE.F32      S2, S4
ACA6C:  VSUB.F32        S0, S0, S2
ACA70:  VLDR            S4, [R1,#0xCC]
ACA74:  VSTR            S2, [R1,#0x54]
ACA78:  VADD.F32        S18, S4, S0
ACA7C:  VSTR            S18, [R1,#0xCC]
ACA80:  VSTR            S18, [SP,#0x170+var_DC]
ACA84:  MOVS            R0, #0
ACA86:  STRB.W          R0, [R2,#0xE64]
ACA8A:  VLDR            S21, [R2,#0x38]
ACA8E:  CMP             R3, #0
ACA90:  BEQ.W           loc_ACCAA
ACA94:  LDR             R0, [SP,#0x170+var_104]
ACA96:  VMOV.F32        S2, #1.0
ACA9A:  VLDR            S0, =0.6
ACA9E:  CMP             R0, #0
ACAA0:  IT NE
ACAA2:  VMOVNE.F32      S0, S2
ACAA6:  VMOV            R1, S0
ACAAA:  LDR             R0, [SP,#0x170+var_100]
ACAAC:  LDRD.W          R5, R6, [R0,#0x40]
ACAB0:  MOVS            R0, #0x2A ; '*'
ACAB2:  BL              sub_88C10
ACAB6:  MOV             R10, R0
ACAB8:  LDR             R0, [SP,#0x170+var_EC]
ACABA:  VMOV.F32        S23, #2.0
ACABE:  VLDR            S27, =0.0
ACAC2:  CMP             R0, #0
ACAC4:  VMOV.F32        S25, #-1.0
ACAC8:  ITT NE
ACACA:  VMOVNE.F32      S23, S27
ACACE:  VMOVNE.F32      S25, S27
ACAD2:  CMP             R5, R6
ACAD4:  MOV             R0, R5
ACAD6:  ITT LT
ACAD8:  MOVLT           R0, R6
ACADA:  MOVLT           R6, R5
ACADC:  CMP             R6, R0
ACADE:  BGE.W           loc_ACCAA
ACAE2:  LDR             R1, [SP,#0x170+var_108]
ACAE4:  VADD.F32        S2, S29, S16
ACAE8:  VADD.F32        S29, S31, S18
ACAEC:  MOVW            R11, #0x18C4
ACAF0:  ADD.W           R5, R1, R0,LSL#1
ACAF4:  ADD             R0, SP, #0x170+var_C8
ACAF6:  VMOV.F32        S31, #0.5
ACAFA:  ADDS            R0, #8
ACAFC:  STR             R0, [SP,#0x170+var_10C]
ACAFE:  ADD.W           R9, R1, R6,LSL#1
ACB02:  LDR             R0, [SP,#0x170+var_F4]
ACB04:  VLDR            S0, [R0,#0x378]
ACB08:  B               loc_ACB18
ACB0A:  VADD.F32        S29, S29, S0
ACB0E:  CMP             R9, R5
ACB10:  VMOV.F32        S2, S16
ACB14:  BCS.W           loc_ACCAA
ACB18:  VADD.F32        S4, S24, S0
ACB1C:  VCMP.F32        S29, S4
ACB20:  VMRS            APSR_nzcv, FPSCR
ACB24:  BGT.W           loc_ACCAA
ACB28:  VCMP.F32        S29, S22
ACB2C:  VMRS            APSR_nzcv, FPSCR
ACB30:  BPL             loc_ACB4C
ACB32:  CMP             R9, R5
ACB34:  BCS             loc_ACB0A
ACB36:  LDRH.W          R0, [R9],#2
ACB3A:  CMP             R0, #0xA
ACB3C:  BNE             loc_ACB32
ACB3E:  B               loc_ACB0A
ACB40:  DCFS 0.0
ACB44:  DCFS 0.6
ACB48:  DCFS 0.8
ACB4C:  LDR             R0, [SP,#0x170+var_114]
ACB4E:  VSUB.F32        S2, S2, S21
ACB52:  LDR             R1, [R0]
ACB54:  LDR.W           R0, [R1,R11]
ACB58:  ADD             R1, R11
ACB5A:  VLDR            S4, [R1,#4]
ACB5E:  ADD.W           R1, R0, #0xC
ACB62:  VLDR            S6, [R0,#0x10]
ACB66:  VDIV.F32        S6, S4, S6
ACB6A:  VMOV.F32        S4, S27
ACB6E:  CMP             R9, R5
ACB70:  BCS             loc_ACB96
ACB72:  LDRH.W          R2, [R9],#2
ACB76:  CMP             R2, #0xD
ACB78:  BEQ             loc_ACB6E
ACB7A:  CMP             R2, #0xA
ACB7C:  BEQ             loc_ACB9C
ACB7E:  LDR             R3, [R0]
ACB80:  LDR             R6, [R0,#8]
ACB82:  CMP             R3, R2
ACB84:  MOV             R3, R1
ACB86:  IT GT
ACB88:  ADDGT.W         R3, R6, R2,LSL#2
ACB8C:  VLDR            S8, [R3]
ACB90:  VMLA.F32        S4, S6, S8
ACB94:  B               loc_ACB6E
ACB96:  VMOV.F32        S6, S27
ACB9A:  B               loc_ACBB2
ACB9C:  VCMP.F32        S4, #0.0
ACBA0:  VMRS            APSR_nzcv, FPSCR
ACBA4:  IT LS
ACBA6:  VMOVLS.F32      S4, S27
ACBAA:  VMOV.F32        S6, S4
ACBAE:  VMOV.F32        S4, S27
ACBB2:  VCMP.F32        S6, S4
ACBB6:  VMRS            APSR_nzcv, FPSCR
ACBBA:  IT MI
ACBBC:  VMOVMI.F32      S6, S4
ACBC0:  VCMP.F32        S6, #0.0
ACBC4:  VMRS            APSR_nzcv, FPSCR
ACBC8:  BHI             loc_ACBEE
ACBCA:  LDR             R0, [SP,#0x170+var_F4]
ACBCC:  LDR.W           R0, [R0,#0x374]
ACBD0:  LDR             R1, [R0]
ACBD2:  LDR             R2, [R0,#8]
ACBD4:  ADDS            R0, #0xC
ACBD6:  CMP             R1, #0x20 ; ' '
ACBD8:  IT GT
ACBDA:  ADDGT.W         R0, R2, #0x80
ACBDE:  VLDR            S4, [R0]
ACBE2:  VMUL.F32        S4, S4, S31
ACBE6:  VCVT.S32.F32    S4, S4
ACBEA:  VCVT.F32.S32    S6, S4
ACBEE:  VSUB.F32        S4, S25, S0
ACBF2:  VADD.F32        S8, S23, S29
ACBF6:  VADD.F32        S6, S2, S6
ACBFA:  VADD.F32        S10, S2, S27
ACBFE:  VMOV.F32        S14, S24
ACC02:  VMOV.F32        S2, S26
ACC06:  VADD.F32        S12, S29, S4
ACC0A:  VCMP.F32        S8, S24
ACC0E:  VMRS            APSR_nzcv, FPSCR
ACC12:  VCMP.F32        S6, S26
ACC16:  IT MI
ACC18:  VMOVMI.F32      S14, S8
ACC1C:  VMRS            APSR_nzcv, FPSCR
ACC20:  VCMP.F32        S10, S20
ACC24:  IT MI
ACC26:  VMOVMI.F32      S2, S6
ACC2A:  VMRS            APSR_nzcv, FPSCR
ACC2E:  VMOV.F32        S4, S20
ACC32:  IT GE
ACC34:  VMOVGE.F32      S4, S10
ACC38:  VMOV.F32        S6, S22
ACC3C:  VCMP.F32        S12, S22
ACC40:  VMRS            APSR_nzcv, FPSCR
ACC44:  VCMP.F32        S22, S14
ACC48:  IT GE
ACC4A:  VMOVGE.F32      S6, S12
ACC4E:  VMRS            APSR_nzcv, FPSCR
ACC52:  VSTR            S14, [SP,#0x170+var_BC]
ACC56:  VSTR            S2, [SP,#0x170+var_C0]
ACC5A:  VSTR            S4, [SP,#0x170+var_C8]
ACC5E:  VSTR            S6, [SP,#0x170+var_C4]
ACC62:  BPL.W           loc_ACB0A
ACC66:  VCMP.F32        S24, S6
ACC6A:  VMRS            APSR_nzcv, FPSCR
ACC6E:  BLE.W           loc_ACB0A
ACC72:  VCMP.F32        S20, S2
ACC76:  VMRS            APSR_nzcv, FPSCR
ACC7A:  BPL.W           loc_ACB0A
ACC7E:  VCMP.F32        S26, S4
ACC82:  VMRS            APSR_nzcv, FPSCR
ACC86:  BLE.W           loc_ACB0A
ACC8A:  LDR             R0, [SP,#0x170+var_110]
ACC8C:  MOVS            R1, #0
ACC8E:  LDR             R2, [SP,#0x170+var_10C]; int
ACC90:  MOV             R3, R10; int
ACC92:  LDR.W           R0, [R0,#0x27C]; int
ACC96:  STR             R1, [SP,#0x170+var_170]; float
ACC98:  MOVS            R1, #0xF
ACC9A:  STR             R1, [SP,#0x170+var_16C]; int
ACC9C:  ADD             R1, SP, #0x170+var_C8; int
ACC9E:  BL              sub_9D624
ACCA2:  LDR             R0, [SP,#0x170+var_F4]
ACCA4:  VLDR            S0, [R0,#0x378]
ACCA8:  B               loc_ACB0A
ACCAA:  LDR             R0, [SP,#0x170+var_EC]
ACCAC:  MOV.W           R9, #0
ACCB0:  LDR.W           R11, [SP,#0x170+var_F4]
ACCB4:  MOV.W           R10, #0
ACCB8:  CMP             R0, #0
ACCBA:  LDR             R5, [SP,#0x170+s]
ACCBC:  LDR             R0, [SP,#0x170+var_120]
ACCBE:  BNE             loc_ACCCE
ACCC0:  LDR             R2, [SP,#0x170+var_100]
ACCC2:  SUBS            R1, R4, R5
ACCC4:  CMP.W           R1, #0x200000
ACCC8:  BGE             loc_ACD00
ACCCA:  ADD.W           R10, SP, #0x170+var_D8
ACCCE:  MOV.W           R1, #0x3F800000
ACCD2:  BL              sub_88C10
ACCD6:  LDR             R3, [SP,#0x170+var_110]
ACCD8:  VSUB.F32        S0, S16, S21
ACCDC:  LDRD.W          R1, R2, [R11,#0x374]; int
ACCE0:  VSTR            S18, [SP,#0x170+var_C4]
ACCE4:  LDR.W           R6, [R3,#0x27C]
ACCE8:  ADD             R3, SP, #0x170+var_C8; int
ACCEA:  STRD.W          R0, R5, [SP,#0x170+var_170]; int
ACCEE:  ADD             R0, SP, #0x170+var_168
ACCF0:  STM.W           R0, {R4,R9,R10}
ACCF4:  MOV             R0, R6; int
ACCF6:  VSTR            S0, [SP,#0x170+var_C8]
ACCFA:  BL              sub_9D89C
ACCFE:  LDR             R2, [SP,#0x170+var_100]
ACD00:  LDR             R0, [SP,#0x170+var_104]
ACD02:  LDR             R5, [SP,#0x170+var_F0]
ACD04:  CBZ             R0, loc_ACD5E
ACD06:  LDR             R1, [SP,#0x170+var_F8]
ACD08:  ADD.W           R0, R2, #0xE60
ACD0C:  LDR.W           R10, [R7,#arg_4]
ACD10:  VLDR            S2, [R0]
ACD14:  VLDR            S0, [R1,#0x18]
ACD18:  LDRB.W          R1, [R1,#0xAE]
ACD1C:  VADD.F32        S0, S0, S2
ACD20:  VSTR            S0, [R0]
ACD24:  MOV.W           R0, #1
ACD28:  CBZ             R1, loc_ACD64
ACD2A:  LDR             R6, [SP,#0x170+var_11C]
ACD2C:  VCMP.F32        S0, #0.0
ACD30:  VMRS            APSR_nzcv, FPSCR
ACD34:  BLS             loc_ACD66
ACD36:  VMOV            R0, S0; x
ACD3A:  MOV             R1, #0x3F99999A; y
ACD42:  BLX             fmodf
ACD46:  VMOV            S2, R0
ACD4A:  VLDR            S0, =0.8
ACD4E:  MOVS            R0, #0
ACD50:  VCMP.F32        S2, S0
ACD54:  VMRS            APSR_nzcv, FPSCR
ACD58:  IT LS
ACD5A:  MOVLS           R0, #1
ACD5C:  B               loc_ACD66
ACD5E:  LDR.W           R10, [R7,#arg_4]
ACD62:  B               loc_ACE26
ACD64:  LDR             R6, [SP,#0x170+var_11C]
ACD66:  VADD.F32        S0, S17, S16
ACD6A:  VLDR            S6, [R11,#0x378]
ACD6E:  VADD.F32        S16, S19, S18
ACD72:  VMOV.F32        S2, #1.0
ACD76:  VMOV.F32        S4, #-1.5
ACD7A:  VMOV.F32        S8, #0.5
ACD7E:  VSUB.F32        S18, S0, S21
ACD82:  VSUB.F32        S6, S16, S6
ACD86:  VADD.F32        S0, S16, S4
ACD8A:  VADD.F32        S2, S18, S2
ACD8E:  VSTR            S18, [SP,#0x170+var_C8]
ACD92:  VADD.F32        S4, S6, S8
ACD96:  VSTR            S0, [SP,#0x170+var_BC]
ACD9A:  VSTR            S2, [SP,#0x170+var_C0]
ACD9E:  VSTR            S4, [SP,#0x170+var_C4]
ACDA2:  CBZ             R0, loc_ACE0A
ACDA4:  VLDR            S6, [SP,#0x170+var_D4]
ACDA8:  VCMP.F32        S6, S0
ACDAC:  VMRS            APSR_nzcv, FPSCR
ACDB0:  BPL             loc_ACE0A
ACDB2:  VLDR            S6, [SP,#0x170+var_CC]
ACDB6:  VCMP.F32        S6, S4
ACDBA:  VMRS            APSR_nzcv, FPSCR
ACDBE:  BLE             loc_ACE0A
ACDC0:  VLDR            S4, [SP,#0x170+var_D8]
ACDC4:  VCMP.F32        S4, S2
ACDC8:  VMRS            APSR_nzcv, FPSCR
ACDCC:  BPL             loc_ACE0A
ACDCE:  VLDR            S2, [SP,#0x170+var_D0]
ACDD2:  VCMP.F32        S2, S18
ACDD6:  VMRS            APSR_nzcv, FPSCR
ACDDA:  BLE             loc_ACE0A
ACDDC:  LDR             R0, [SP,#0x170+var_110]
ACDDE:  MOV.W           R1, #0x3F800000
ACDE2:  VSTR            S0, [SP,#0x170+var_E4]
ACDE6:  MOV.W           R9, #0x3F800000
ACDEA:  VSTR            S18, [SP,#0x170+var_E8]
ACDEE:  LDR.W           R5, [R0,#0x27C]
ACDF2:  MOVS            R0, #0
ACDF4:  BL              sub_88C10
ACDF8:  ADD             R1, SP, #0x170+var_C8; int
ACDFA:  ADD             R2, SP, #0x170+var_E8; int
ACDFC:  MOV             R3, R0; int
ACDFE:  MOV             R0, R5; int
ACE00:  STR.W           R9, [SP,#0x170+var_170]
ACE04:  LDR             R5, [SP,#0x170+var_F0]
ACE06:  BL              sub_9D43C
ACE0A:  CBNZ            R6, loc_ACE26
ACE0C:  VMOV.F32        S0, #-1.0
ACE10:  VLDR            S2, [R11,#0x378]
ACE14:  LDR             R0, [SP,#0x170+var_124]
ACE16:  VSUB.F32        S2, S16, S2
ACE1A:  VADD.F32        S0, S18, S0
ACE1E:  VSTR            S2, [R0,#0x68]
ACE22:  VSTR            S0, [R0,#0x64]
ACE26:  LDR             R0, [SP,#0x170+var_EC]
ACE28:  CBZ             R0, loc_ACE92
ACE2A:  LDR             R0, [SP,#0x170+var_114]
ACE2C:  MOVW            R1, #0x19AC
ACE30:  VLDR            S0, =0.0
ACE34:  MOVS            R2, #1
ACE36:  VLDR            S2, [R11,#0x378]
ACE3A:  LDR             R0, [R0]
ACE3C:  VADD.F32        S0, S30, S0
ACE40:  VADD.F32        S2, S28, S2
ACE44:  LDR             R0, [R0,R1]
ACE46:  LDRB.W          R1, [R0,#0x7F]
ACE4A:  STRB.W          R2, [R0,#0x7C]
ACE4E:  VSTR            S0, [SP,#0x170+var_E8]
ACE52:  VSTR            S2, [SP,#0x170+var_E4]
ACE56:  CBNZ            R1, loc_ACE8A
ACE58:  VLDR            S4, [R0,#0xC8]
ACE5C:  VLDR            S6, [R0,#0xCC]
ACE60:  VADD.F32        S0, S0, S4
ACE64:  LDRD.W          R1, R0, [R0,#0xC8]
ACE68:  VADD.F32        S2, S2, S6
ACE6C:  STRD.W          R1, R0, [SP,#0x170+var_C8]
ACE70:  ADD             R0, SP, #0x170+var_E8
ACE72:  MOVS            R1, #0
ACE74:  VSTR            S0, [SP,#0x170+var_C0]
ACE78:  VSTR            S2, [SP,#0x170+var_BC]
ACE7C:  BL              sub_8B104
ACE80:  ADD             R0, SP, #0x170+var_C8
ACE82:  MOVS            R1, #0
ACE84:  MOVS            R2, #0
ACE86:  BL              sub_8B314
ACE8A:  BL              sub_96284
ACE8E:  BL              sub_97F20
ACE92:  LDR             R0, [SP,#0x170+dest]
ACE94:  CBZ             R0, loc_ACEAA
ACE96:  LDR             R0, [SP,#0x170+var_124]
ACE98:  LDRB.W          R0, [R0,#0xA0]
ACE9C:  CBZ             R0, loc_ACEAE
ACE9E:  LDR             R1, [SP,#0x170+s]; s
ACEA0:  ADD             R0, SP, #0x170+var_E0; int
ACEA2:  MOV             R2, R4
ACEA4:  BL              sub_892E0
ACEA8:  B               loc_ACEAE
ACEAA:  BL              sub_97518
ACEAE:  VLDR            S0, [SP,#0x170+var_6C]
ACEB2:  VCMP.F32        S0, #0.0
ACEB6:  VMRS            APSR_nzcv, FPSCR
ACEBA:  BLE             loc_ACEE8
ACEBC:  VLDR            S0, [SP,#0x170+var_84]
ACEC0:  MOVS            R2, #1
ACEC2:  VLDR            S4, [R11,#4]
ACEC6:  MOVS            R3, #0; int
ACEC8:  VLDR            S6, [R11,#0x18]
ACECC:  VLDR            S2, [SP,#0x170+var_80]
ACED0:  VADD.F32        S0, S0, S4
ACED4:  STR             R2, [SP,#0x170+var_170]; int
ACED6:  VADD.F32        S2, S2, S6
ACEDA:  LDR             R2, [SP,#0x170+var_144]; s
ACEDC:  VMOV            R1, S0; int
ACEE0:  VMOV            R0, S2; int
ACEE4:  BL              sub_89110
ACEE8:  LDR             R4, [SP,#0x170+var_128]
ACEEA:  AND.W           R0, R10, #0x200000
ACEEE:  EOR.W           R1, R4, #1
ACEF2:  ORR.W           R0, R1, R0,LSR#21
ACEF6:  CMP             R0, #0
ACEF8:  ITT EQ
ACEFA:  MOVEQ           R0, R5
ACEFC:  BLEQ            sub_8B0DC
ACF00:  MOVS.W          R0, R10,LSL#26
ACF04:  IT PL
ACF06:  MOVPL           R8, R4
ACF08:  B.W             loc_AB8FC
ACF0C:  LDRB.W          R0, [R5,#0xF8]
ACF10:  CMP             R0, #0
ACF12:  BEQ             loc_ACFCA
ACF14:  LDRB.W          R0, [R5,#0xFB]
ACF18:  CMP             R0, #0
ACF1A:  BEQ.W           loc_AD026
ACF1E:  MOVS            R0, #0
ACF20:  B               loc_AD032
ACF22:  LDR             R0, [SP,#0x170+var_128]
ACF24:  CMP             R0, #0
ACF26:  BEQ.W           loc_AC0F2
ACF2A:  LDRB.W          R0, [R11,#0x4C]
ACF2E:  VLDR            S2, =0.0
ACF32:  CMP             R0, #0
ACF34:  IT EQ
ACF36:  VMOVEQ.F32      S2, S1
ACF3A:  VMOV.F32        S1, S2
ACF3E:  MOV             R0, R11
ACF40:  BL              sub_AF2B0
ACF44:  MOVW            R1, #0x999A
ACF48:  STRD.W          R0, R0, [R11,#0x3C]
ACF4C:  MOVT            R1, #0xBE99
ACF50:  STR.W           R0, [R11,#0x44]
ACF54:  STR.W           R1, [R11,#0xE60]
ACF58:  MOVS            R1, #0
ACF5A:  STRB.W          R1, [R11,#0x4B]
ACF5E:  B.W             loc_AC0F2
ACF62:  LDR             R1, [R5]
ACF64:  LDR             R0, [R5,#8]
ACF66:  ADD.W           R1, R0, R1,LSL#1
ACF6A:  CMP             R0, R1
ACF6C:  BCS             loc_ACFA8
ACF6E:  LDRH.W          R2, [R0],#2
ACF72:  CMP             R2, #9
ACF74:  BNE             loc_ACF6A
ACF76:  B.W             loc_AC208
ACF7A:  MOV             R2, R5
ACF7C:  LDRB.W          R1, [R2,#0xF8]!
ACF80:  STR             R2, [SP,#0x170+var_154]
ACF82:  MOV             R0, R2
ACF84:  LDRB.W          R2, [R0,#2]!
ACF88:  STR             R0, [SP,#0x170+var_14C]
ACF8A:  MOVS            R0, #0
ACF8C:  B               loc_AD042
ACF8E:  LDRB.W          R0, [R5,#0xFA]
ACF92:  ORRS            R0, R4
ACF94:  CLZ.W           R0, R0
ACF98:  LSRS            R0, R0, #5
ACF9A:  CBZ             R4, loc_ACFA2
ACF9C:  LDRB.W          R1, [R5,#0xF8]
ACFA0:  CBZ             R1, loc_ACFD0
ACFA2:  MOV.W           R11, #0
ACFA6:  B               loc_ACFDC
ACFA8:  MOVS            R0, #9
ACFAA:  LDRD.W          R2, R3, [R7,#arg_8]
ACFAE:  STR             R0, [SP,#0x170+var_C8]
ACFB0:  ADD             R0, SP, #0x170+var_C8
ACFB2:  MOV             R1, R10
ACFB4:  BL              sub_AE838
ACFB8:  CMP             R0, #0
ACFBA:  BEQ.W           loc_AC208
ACFBE:  LDR             R1, [SP,#0x170+var_C8]
ACFC0:  LDR             R0, [SP,#0x170+var_100]
ACFC2:  BL              sub_AD8D4
ACFC6:  B.W             loc_AC208
ACFCA:  MOVS            R1, #0
ACFCC:  MOVS            R0, #0
ACFCE:  B               loc_AD034
ACFD0:  LDRB.W          R1, [R5,#0xFA]
ACFD4:  CLZ.W           R1, R1
ACFD8:  MOV.W           R11, R1,LSR#5
ACFDC:  MOV             R3, R5
ACFDE:  LDRB.W          R1, [R3,#0xF8]!
ACFE2:  STR             R3, [SP,#0x170+var_154]
ACFE4:  MOV             R2, R3
ACFE6:  LDRB.W          R2, [R3,#2]!
ACFEA:  STR             R3, [SP,#0x170+var_14C]
ACFEC:  CLZ.W           R2, R2
ACFF0:  MOV.W           R2, R2,LSR#5
ACFF4:  STR             R2, [SP,#0x170+var_138]
ACFF6:  CBNZ            R1, loc_AD058
ACFF8:  STR             R2, [SP,#0x170+var_128]
ACFFA:  CBZ             R4, loc_AD05E
ACFFC:  LDR             R1, [SP,#0x170+var_14C]
ACFFE:  LDRB            R1, [R1]
AD000:  CBNZ            R1, loc_AD05E
AD002:  LDRB.W          R1, [R5,#0xFB]
AD006:  CMP             R0, #0
AD008:  CLZ.W           R2, R1
AD00C:  MOV.W           R5, R2,LSR#5
AD010:  BEQ             loc_AD0F0
AD012:  LDR             R0, [SP,#0x170+var_114]
AD014:  LDR             R2, [R0]
AD016:  LDR             R0, [R2,#0x7C]
AD018:  CMP.W           R0, #0xFFFFFFFF
AD01C:  BLE.W           loc_AD606
AD020:  MOVS            R1, #0
AD022:  STR             R1, [SP,#0x170+var_15C]
AD024:  B               loc_AD0BC
AD026:  LDRB.W          R0, [R5,#0xFA]
AD02A:  ORRS            R0, R4
AD02C:  CLZ.W           R0, R0
AD030:  LSRS            R0, R0, #5
AD032:  MOVS            R1, #1
AD034:  ADD.W           R2, R5, #0xF8
AD038:  STR             R2, [SP,#0x170+var_154]
AD03A:  ADD.W           R2, R5, #0xFA
AD03E:  STR             R2, [SP,#0x170+var_14C]
AD040:  MOV             R2, R1
AD042:  CLZ.W           R2, R2
AD046:  MOV.W           R11, #0
AD04A:  CMP             R1, #0
AD04C:  MOV.W           R2, R2,LSR#5
AD050:  STR             R2, [SP,#0x170+var_138]
AD052:  MOV.W           R2, #0
AD056:  BEQ             loc_ACFF8
AD058:  CBZ             R4, loc_AD080
AD05A:  MOVS            R1, #0
AD05C:  STR             R1, [SP,#0x170+var_128]
AD05E:  CBZ             R0, loc_AD068
AD060:  LDR             R0, [SP,#0x170+var_114]
AD062:  MOVS            R1, #0
AD064:  STR             R1, [SP,#0x170+var_15C]
AD066:  B               loc_AD0A6
AD068:  MOVS            R0, #0
AD06A:  CMP.W           R11, #0
AD06E:  STR             R0, [SP,#0x170+var_148]
AD070:  MOV.W           R0, #0
AD074:  MOV.W           R11, #0
AD078:  STR             R0, [SP,#0x170+var_150]
AD07A:  MOV.W           R9, #0
AD07E:  B               loc_AD2A0
AD080:  LDR             R1, [SP,#0x170+var_14C]
AD082:  LDRB            R1, [R1]
AD084:  CBZ             R1, loc_AD090
AD086:  CMP             R0, #0
AD088:  BEQ.W           loc_AD632
AD08C:  MOVS            R0, #0
AD08E:  B               loc_AD09E
AD090:  LDRB.W          R1, [R5,#0xFB]
AD094:  CMP             R0, #0
AD096:  BEQ             loc_AD160
AD098:  CLZ.W           R0, R1
AD09C:  LSRS            R0, R0, #5
AD09E:  STR             R0, [SP,#0x170+var_15C]
AD0A0:  MOVS            R1, #0
AD0A2:  LDR             R0, [SP,#0x170+var_114]
AD0A4:  STR             R1, [SP,#0x170+var_128]
AD0A6:  LDR             R0, [R0]
AD0A8:  LDR             R0, [R0,#0x7C]
AD0AA:  MOVS            R1, #0
AD0AC:  CMP.W           R0, #0xFFFFFFFF
AD0B0:  MOV.W           R5, #0
AD0B4:  MOV.W           R8, #0
AD0B8:  STR             R1, [SP,#0x170+var_150]
AD0BA:  BLE             loc_AD1A4
AD0BC:  MOVS            R1, #1
AD0BE:  MOVS            R6, #1
AD0C0:  BL              sub_95484
AD0C4:  CBZ             R0, loc_AD0F6
AD0C6:  LDR             R0, [SP,#0x170+var_11C]
AD0C8:  ORRS.W          R0, R0, R9
AD0CC:  CLZ.W           R0, R0
AD0D0:  MOV.W           R0, R0,LSR#5
AD0D4:  STR             R0, [SP,#0x170+var_150]
AD0D6:  BNE             loc_AD178
AD0D8:  LDR             R0, [SP,#0x170+var_EC]
AD0DA:  LDR             R6, [SP,#0x170+var_100]
AD0DC:  CMP             R0, #0
AD0DE:  BEQ             loc_AD17E
AD0E0:  LDRD.W          R0, R1, [R6,#0x40]
AD0E4:  MOV             R8, R5
AD0E6:  SUBS            R0, R0, R1
AD0E8:  IT NE
AD0EA:  MOVNE           R0, #1
AD0EC:  STR             R0, [SP,#0x170+var_150]
AD0EE:  B               loc_AD1A4
AD0F0:  MOVS            R6, #0
AD0F2:  MOVS            R0, #0
AD0F4:  STR             R0, [SP,#0x170+var_15C]
AD0F6:  CBZ             R5, loc_AD156
AD0F8:  LDR             R0, [SP,#0x170+var_114]
AD0FA:  LDR             R0, [R0]
AD0FC:  LDR             R0, [R0,#0x5C]
AD0FE:  CMP.W           R0, #0xFFFFFFFF
AD102:  BLE             loc_AD182
AD104:  MOV             R8, R6
AD106:  LDR             R6, [SP,#0x170+var_100]
AD108:  MOVS            R1, #1
AD10A:  MOV.W           R10, #1
AD10E:  BL              sub_95484
AD112:  MOV             R1, R9
AD114:  CMP.W           R9, #0
AD118:  EOR.W           R0, R0, #1
AD11C:  IT NE
AD11E:  MOVNE           R1, #1
AD120:  ORRS            R0, R1
AD122:  LDR             R1, [SP,#0x170+var_11C]
AD124:  CMP             R1, #0
AD126:  IT NE
AD128:  MOVNE           R1, #1
AD12A:  ORRS            R0, R1
AD12C:  EOR.W           R0, R0, #1
AD130:  STR             R0, [SP,#0x170+var_150]
AD132:  BNE             loc_AD198
AD134:  LDR             R0, [SP,#0x170+var_EC]
AD136:  CBZ             R0, loc_AD198
AD138:  LDRD.W          R0, R1, [R6,#0x40]
AD13C:  SUBS            R0, R0, R1
AD13E:  IT NE
AD140:  MOVNE           R0, #1
AD142:  CMP.W           R8, #0
AD146:  STR             R0, [SP,#0x170+var_150]
AD148:  BEQ.W           loc_AD5FE
AD14C:  MOV.W           R8, #1
AD150:  LDR.W           R10, [R7,#arg_4]
AD154:  B               loc_AD1A4
AD156:  MOV.W           R10, #0
AD15A:  MOVS            R0, #0
AD15C:  STR             R0, [SP,#0x170+var_150]
AD15E:  B               loc_AD19A
AD160:  CMP             R1, #0
AD162:  BEQ.W           loc_AD618
AD166:  MOVS            R0, #0
AD168:  MOV.W           R9, #0
AD16C:  STR             R0, [SP,#0x170+var_148]
AD16E:  MOVS            R0, #0
AD170:  STR             R0, [SP,#0x170+var_150]
AD172:  MOVS            R0, #0
AD174:  STR             R0, [SP,#0x170+var_128]
AD176:  B               loc_AD298
AD178:  MOV             R8, R5
AD17A:  LDR             R6, [SP,#0x170+var_100]
AD17C:  B               loc_AD1A4
AD17E:  MOV             R8, R5
AD180:  B               loc_AD1A4
AD182:  CMP             R6, #0
AD184:  LDR             R6, [SP,#0x170+var_100]
AD186:  MOV.W           R0, #0
AD18A:  MOV.W           R8, #1
AD18E:  MOV.W           R5, #0
AD192:  STR             R0, [SP,#0x170+var_150]
AD194:  BNE             loc_AD1A4
AD196:  B               loc_AD1F4
AD198:  MOV             R6, R8
AD19A:  CBZ             R6, loc_AD1EC
AD19C:  MOV             R8, R10
AD19E:  LDR.W           R10, [R7,#arg_4]
AD1A2:  LDR             R6, [SP,#0x170+var_100]
AD1A4:  LDR             R0, [SP,#0x170+var_114]
AD1A6:  LDR             R0, [R0]
AD1A8:  LDR             R0, [R0,#0x74]
AD1AA:  CMP.W           R0, #0xFFFFFFFF
AD1AE:  BLE             loc_AD1D4
AD1B0:  MOVS            R1, #1
AD1B2:  MOVS            R5, #1
AD1B4:  BL              sub_95484
AD1B8:  CBZ             R0, loc_AD1F4
AD1BA:  AND.W           R0, R10, #0x108000
AD1BE:  CMP.W           R0, #0x100000
AD1C2:  BNE             loc_AD1E2
AD1C4:  LDRD.W          R0, R1, [R6,#0x40]
AD1C8:  SUBS.W          R9, R0, R1
AD1CC:  IT NE
AD1CE:  MOVNE.W         R9, #1
AD1D2:  B               loc_AD1E8
AD1D4:  LDR             R0, [SP,#0x170+var_15C]
AD1D6:  CBZ             R0, loc_AD1DC
AD1D8:  MOVS            R5, #1
AD1DA:  B               loc_AD1F8
AD1DC:  MOV.W           R9, #0
AD1E0:  B               loc_AD1E8
AD1E2:  MOVS            R0, #1
AD1E4:  EOR.W           R9, R0, R9,LSR#15
AD1E8:  LDR             R6, [SP,#0x170+var_114]
AD1EA:  B               loc_AD24E
AD1EC:  MOV             R8, R10
AD1EE:  MOVS            R5, #0
AD1F0:  LDR.W           R10, [R7,#arg_4]
AD1F4:  LDR             R0, [SP,#0x170+var_15C]
AD1F6:  CBZ             R0, loc_AD234
AD1F8:  LDR             R0, [SP,#0x170+var_114]
AD1FA:  LDR             R1, [SP,#0x170+var_128]
AD1FC:  LDR             R0, [R0]
AD1FE:  LDR             R0, [R0,#0x58]
AD200:  CMP.W           R0, #0xFFFFFFFF
AD204:  BLE             loc_AD240
AD206:  STR             R1, [SP,#0x170+var_128]
AD208:  MOVS            R1, #1
AD20A:  BL              sub_95484
AD20E:  LDR             R1, [SP,#0x170+var_148]
AD210:  AND.W           R9, R1, R0
AD214:  LDR             R0, [SP,#0x170+var_EC]
AD216:  CBZ             R0, loc_AD238
AD218:  LDR             R6, [SP,#0x170+var_114]
AD21A:  CMP.W           R9, #0
AD21E:  BEQ             loc_AD23A
AD220:  LDR             R1, [SP,#0x170+var_100]
AD222:  LDRD.W          R0, R1, [R1,#0x40]
AD226:  SUBS.W          R9, R0, R1
AD22A:  IT NE
AD22C:  MOVNE.W         R9, #1
AD230:  CBNZ            R5, loc_AD24E
AD232:  B               loc_AD23C
AD234:  MOV.W           R9, #0
AD238:  LDR             R6, [SP,#0x170+var_114]
AD23A:  CBNZ            R5, loc_AD24E
AD23C:  MOVS            R5, #0
AD23E:  B               loc_AD270
AD240:  LDR             R6, [SP,#0x170+var_114]
AD242:  CMP             R5, #0
AD244:  MOV.W           R9, #0
AD248:  MOV.W           R5, #0
AD24C:  BEQ             loc_AD270
AD24E:  LDR             R1, [R6]
AD250:  LDR             R0, [R1,#0x78]
AD252:  CMP.W           R0, #0xFFFFFFFF
AD256:  BLE             loc_AD2B0
AD258:  MOVS            R1, #1
AD25A:  MOVS            R5, #1
AD25C:  BL              sub_95484
AD260:  CBZ             R0, loc_AD270
AD262:  LDR             R0, [SP,#0x170+var_11C]
AD264:  CLZ.W           R0, R0
AD268:  LSRS            R0, R0, #5
AD26A:  B               loc_AD2D2
AD26C:  DCFS 0.0
AD270:  CMP.W           R8, #0
AD274:  BEQ             loc_AD292
AD276:  LDR             R0, [R6]
AD278:  LDR             R0, [R0,#0x58]
AD27A:  CMP.W           R0, #0xFFFFFFFF
AD27E:  BLE             loc_AD292
AD280:  MOVS            R1, #1
AD282:  BL              sub_95484
AD286:  CBZ             R0, loc_AD292
AD288:  LDR             R0, [SP,#0x170+var_11C]
AD28A:  CLZ.W           R0, R0
AD28E:  LSRS            R0, R0, #5
AD290:  B               loc_AD294
AD292:  MOVS            R0, #0
AD294:  STR             R0, [SP,#0x170+var_148]
AD296:  CBNZ            R5, loc_AD2D4
AD298:  MOV             R0, R11
AD29A:  MOV.W           R11, #0
AD29E:  CMP             R0, #0
AD2A0:  MOV.W           R6, #0
AD2A4:  MOV.W           R8, #0
AD2A8:  MOV.W           R5, #0
AD2AC:  BNE             loc_AD326
AD2AE:  B               loc_AD34C
AD2B0:  CMP.W           R8, #0
AD2B4:  BEQ             loc_AD2D0
AD2B6:  LDR             R0, [R1,#0x58]
AD2B8:  CMP.W           R0, #0xFFFFFFFF
AD2BC:  BLE             loc_AD2D0
AD2BE:  MOVS            R1, #1
AD2C0:  BL              sub_95484
AD2C4:  LDR             R1, [SP,#0x170+var_11C]
AD2C6:  CLZ.W           R1, R1
AD2CA:  LSRS            R1, R1, #5
AD2CC:  ANDS            R0, R1
AD2CE:  B               loc_AD2D2
AD2D0:  MOVS            R0, #0
AD2D2:  STR             R0, [SP,#0x170+var_148]
AD2D4:  LDR             R1, [R6]
AD2D6:  LDR.W           R0, [R1,#0x84]
AD2DA:  CMP             R0, #0
AD2DC:  BMI             loc_AD2E8
AD2DE:  MOVS            R1, #1
AD2E0:  BL              sub_95484
AD2E4:  LDR             R1, [R6]
AD2E6:  B               loc_AD2EA
AD2E8:  MOVS            R0, #0
AD2EA:  LDR             R2, [SP,#0x170+var_11C]
AD2EC:  MOV             R6, R11
AD2EE:  LDR             R3, [SP,#0x170+var_12C]
AD2F0:  MOV.W           R11, #1
AD2F4:  LDR.W           R1, [R1,#0x80]
AD2F8:  ORRS            R2, R3
AD2FA:  CLZ.W           R2, R2
AD2FE:  CMP.W           R1, #0xFFFFFFFF
AD302:  MOV.W           R5, R2,LSR#5
AD306:  AND.W           R8, R5, R0
AD30A:  BLE             loc_AD320
AD30C:  MOV             R0, R1
AD30E:  MOVS            R1, #1
AD310:  BL              sub_95484
AD314:  CBNZ            R0, loc_AD34C
AD316:  MOV.W           R11, #1
AD31A:  CBNZ            R6, loc_AD324
AD31C:  MOVS            R5, #0
AD31E:  B               loc_AD34C
AD320:  CMP             R6, #0
AD322:  BEQ             loc_AD31C
AD324:  MOV             R6, R8
AD326:  LDR             R0, [SP,#0x170+var_114]
AD328:  LDR             R0, [R0]
AD32A:  LDR.W           R0, [R0,#0x84]
AD32E:  CMP             R0, #0
AD330:  BMI             loc_AD348
AD332:  MOVS            R1, #1
AD334:  BL              sub_95484
AD338:  CBZ             R0, loc_AD348
AD33A:  LDR             R0, [SP,#0x170+var_11C]
AD33C:  LDR             R1, [SP,#0x170+var_12C]
AD33E:  ORRS            R0, R1
AD340:  CLZ.W           R0, R0
AD344:  LSRS            R5, R0, #5
AD346:  B               loc_AD34A
AD348:  MOVS            R5, #0
AD34A:  MOV             R8, R6
AD34C:  LDR             R0, [SP,#0x170+var_114]
AD34E:  LSLS            R4, R4, #0x11
AD350:  LDR             R6, [SP,#0x170+var_100]
AD352:  LDR             R1, [R0]
AD354:  LDR             R0, [R1,#0x38]
AD356:  CMP             R0, #0
AD358:  BMI             loc_AD386
AD35A:  MOVS            R1, #1
AD35C:  BL              sub_95484
AD360:  CBZ             R0, loc_AD382
AD362:  MOVS            R0, #:lower16:(elf_hash_bucket+0x10CC)
AD364:  LDR             R1, [SP,#0x170+var_138]
AD366:  MOVT            R0, #:upper16:(elf_hash_bucket+0x10CC)
AD36A:  ADDS            R0, #8
AD36C:  CMP             R1, #0
AD36E:  IT NE
AD370:  MOVNE.W         R0, #0x10000
AD374:  LDR             R1, [SP,#0x170+var_128]
AD376:  CMP             R1, #0
AD378:  ITT NE
AD37A:  MOVNE           R0, #:lower16:(elf_hash_bucket+0x10CC)
AD37C:  MOVTNE          R0, #:upper16:(elf_hash_bucket+0x10CC)
AD380:  B               loc_AD4FE
AD382:  LDR             R0, [SP,#0x170+var_114]
AD384:  LDR             R1, [R0]
AD386:  LDR             R0, [R1,#0x3C]
AD388:  CMP             R0, #0
AD38A:  BMI             loc_AD3B8
AD38C:  MOVS            R1, #1
AD38E:  BL              sub_95484
AD392:  CBZ             R0, loc_AD3B4
AD394:  MOVS            R0, #:lower16:(elf_hash_bucket+0x10CC)
AD396:  LDR             R2, [SP,#0x170+var_138]
AD398:  MOVT            R0, #:upper16:(elf_hash_bucket+0x10CC)
AD39C:  ADD.W           R1, R0, #9
AD3A0:  CMP             R2, #0
AD3A2:  IT NE
AD3A4:  MOVNE.W         R1, #0x10001
AD3A8:  LDR             R2, [SP,#0x170+var_128]
AD3AA:  CMP             R2, #0
AD3AC:  IT NE
AD3AE:  ADDNE           R1, R0, #1
AD3B0:  ORRS            R1, R4
AD3B2:  B               loc_AD502
AD3B4:  LDR             R0, [SP,#0x170+var_114]
AD3B6:  LDR             R1, [R0]
AD3B8:  LDR             R0, [R1,#0x40]
AD3BA:  CMP             R0, #0
AD3BC:  BMI             loc_AD3D2
AD3BE:  MOVS            R1, #1
AD3C0:  BL              sub_95484
AD3C4:  LDR             R1, [SP,#0x170+var_EC]
AD3C6:  CMP             R1, #0
AD3C8:  IT NE
AD3CA:  CMPNE           R0, #0
AD3CC:  BNE             loc_AD414
AD3CE:  LDR             R0, [SP,#0x170+var_114]
AD3D0:  LDR             R1, [R0]
AD3D2:  LDR             R0, [R1,#0x44]
AD3D4:  CMP             R0, #0
AD3D6:  BMI             loc_AD3EC
AD3D8:  MOVS            R1, #1
AD3DA:  BL              sub_95484
AD3DE:  LDR             R1, [SP,#0x170+var_EC]
AD3E0:  CMP             R1, #0
AD3E2:  IT NE
AD3E4:  CMPNE           R0, #0
AD3E6:  BNE             loc_AD446
AD3E8:  LDR             R0, [SP,#0x170+var_114]
AD3EA:  LDR             R1, [R0]
AD3EC:  LDR             R0, [R1,#0x50]
AD3EE:  CMP             R0, #0
AD3F0:  BMI             loc_AD494
AD3F2:  MOVS            R1, #1
AD3F4:  BL              sub_95484
AD3F8:  CMP             R0, #0
AD3FA:  BEQ             loc_AD490
AD3FC:  LDR             R1, [SP,#0x170+var_154]
AD3FE:  MOVS            R0, #0x10006
AD406:  LDRB            R1, [R1]
AD408:  CMP             R1, #0
AD40A:  ITT EQ
AD40C:  MOVEQ           R0, #:lower16:(elf_hash_bucket+0x10CC)
AD40E:  MOVTEQ          R0, #:upper16:(elf_hash_bucket+0x10CC)
AD412:  B               loc_AD4FE
AD414:  LDR             R0, [SP,#0x170+var_154]
AD416:  LDRB            R0, [R0]
AD418:  CMP             R0, #0
AD41A:  BEQ             loc_AD4BA
AD41C:  LDR.W           R11, [SP,#0x170+var_F4]
AD420:  LDR             R0, [SP,#0x170+var_110]
AD422:  VLDR            S0, [R11,#0x378]
AD426:  VLDR            S2, [R0,#0x54]
AD42A:  VSUB.F32        S0, S2, S0
AD42E:  VLDR            S2, =0.0
AD432:  VCMP.F32        S0, #0.0
AD436:  VMRS            APSR_nzcv, FPSCR
AD43A:  IT GE
AD43C:  VMOVGE.F32      S2, S0
AD440:  VMOV            R1, S2
AD444:  B               loc_AD47C
AD446:  LDR             R0, [SP,#0x170+var_154]
AD448:  LDRB            R0, [R0]
AD44A:  CMP             R0, #0
AD44C:  BEQ             loc_AD4EC
AD44E:  LDR.W           R11, [SP,#0x170+var_F4]
AD452:  LDR             R4, [SP,#0x170+var_110]
AD454:  VLDR            S0, [R11,#0x378]
AD458:  VLDR            S2, [R4,#0x54]
AD45C:  VADD.F32        S16, S2, S0
AD460:  BL              sub_97904
AD464:  VMOV            S0, R0
AD468:  MOV             R0, R4
AD46A:  VCMP.F32        S16, S0
AD46E:  VMRS            APSR_nzcv, FPSCR
AD472:  IT MI
AD474:  VMOVMI.F32      S0, S16
AD478:  VMOV            R1, S0
AD47C:  BL              sub_975D4
AD480:  MOVS            R0, #0
AD482:  MOVS            R4, #0
AD484:  MOV.W           R8, #0
AD488:  STR             R0, [SP,#0x170+var_12C]
AD48A:  LDR.W           R10, [SP,#0x170+var_F0]
AD48E:  B               loc_AD516
AD490:  LDR             R0, [SP,#0x170+var_114]
AD492:  LDR             R1, [R0]
AD494:  LDR             R0, [R1,#0x54]
AD496:  CMP             R0, #0
AD498:  BMI             loc_AD4CC
AD49A:  MOVS            R1, #1
AD49C:  BL              sub_95484
AD4A0:  CBZ             R0, loc_AD4C8
AD4A2:  LDR             R1, [SP,#0x170+var_154]
AD4A4:  MOVS            R0, #0x10004
AD4AA:  ADDS            R2, R0, #3
AD4AC:  LDRB            R1, [R1]
AD4AE:  CMP             R1, #0
AD4B0:  IT EQ
AD4B2:  ADDEQ           R2, R0, #1
AD4B4:  ORR.W           R1, R2, R4
AD4B8:  B               loc_AD502
AD4BA:  LDR             R1, [SP,#0x170+var_128]
AD4BC:  MOV             R0, #0xFFFFFFFE
AD4C0:  CMP             R1, #0
AD4C2:  IT NE
AD4C4:  MOVNE           R0, #2
AD4C6:  B               loc_AD4F8
AD4C8:  LDR             R0, [SP,#0x170+var_114]
AD4CA:  LDR             R1, [R0]
AD4CC:  LDR             R0, [R1,#0x5C]
AD4CE:  CMP             R0, #0
AD4D0:  BMI             loc_AD554
AD4D2:  MOVS            R1, #1
AD4D4:  BL              sub_95484
AD4D8:  LDR             R1, [SP,#0x170+var_11C]
AD4DA:  CBNZ            R1, loc_AD550
AD4DC:  CBZ             R0, loc_AD550
AD4DE:  MOVS            R0, #0x10008
AD4E6:  ORR.W           R1, R4, R0
AD4EA:  B               loc_AD502
AD4EC:  LDR             R1, [SP,#0x170+var_128]
AD4EE:  MOV.W           R0, #0xFFFFFFFF
AD4F2:  CMP             R1, #0
AD4F4:  IT NE
AD4F6:  MOVNE           R0, #3
AD4F8:  ADD.W           R0, R0, #0x10000
AD4FC:  ADDS            R0, #4
AD4FE:  ORR.W           R1, R0, R4
AD502:  MOV             R0, R6
AD504:  BL              sub_AD8D4
AD508:  MOVS            R4, #0
AD50A:  MOV.W           R8, #0
AD50E:  MOVS            R0, #0
AD510:  STR             R0, [SP,#0x170+var_12C]
AD512:  LDRD.W          R11, R10, [SP,#0x170+var_F4]
AD516:  LDR.W           R9, [SP,#0x170+var_11C]
AD51A:  LDR             R5, [R7,#arg_C]
AD51C:  LDRD.W          R1, R2, [R6,#0x40]
AD520:  LDR.W           R0, [R11,#0x480]
AD524:  SUBS            R1, R1, R2
AD526:  IT NE
AD528:  MOVNE           R1, #1
AD52A:  LDR             R2, [SP,#0x170+var_104]
AD52C:  ANDS            R1, R2
AD52E:  LDR             R2, [SP,#0x170+var_118]
AD530:  ORRS            R2, R1
AD532:  STR             R2, [SP,#0x170+var_118]
AD534:  CMP             R0, R10
AD536:  BEQ.W           loc_AC28C
AD53A:  MOVS            R0, #0
AD53C:  MOV             R4, R10
AD53E:  STR             R0, [SP,#0x170+var_128]
AD540:  LDR             R0, [SP,#0x170+var_12C]
AD542:  CMP             R0, #0
AD544:  LDR.W           R10, [R7,#arg_4]
AD548:  BNE.W           loc_AC608
AD54C:  B.W             loc_AC614
AD550:  LDR             R0, [SP,#0x170+var_114]
AD552:  LDR             R1, [R0]
AD554:  LDR             R0, [R1,#0x60]
AD556:  CMP             R0, #0
AD558:  BMI             loc_AD5B6
AD55A:  MOVS            R1, #1
AD55C:  BL              sub_95484
AD560:  LDR             R1, [SP,#0x170+var_11C]
AD562:  CBNZ            R1, loc_AD5B2
AD564:  CBZ             R0, loc_AD5B2
AD566:  LDRD.W          R0, R1, [R6,#0x40]
AD56A:  MOVS            R5, #:lower16:(elf_hash_bucket+0x10CC)
AD56C:  LDR.W           R11, [SP,#0x170+var_F4]
AD570:  MOVT            R5, #:upper16:(elf_hash_bucket+0x10CC)
AD574:  LDR.W           R9, [SP,#0x170+var_11C]
AD578:  CMP             R0, R1
AD57A:  BNE.W           loc_AD714
AD57E:  LDR             R0, [SP,#0x170+var_138]
AD580:  CMP             R0, #0
AD582:  BEQ.W           loc_AD708
AD586:  LDR             R0, [SP,#0x170+var_158]
AD588:  CMP             R0, #0
AD58A:  ITTT NE
AD58C:  LDRNE           R0, [SP,#0x170+var_F8]
AD58E:  LDRBNE.W        R0, [R0,#0xFB]
AD592:  CMPNE           R0, #0
AD594:  BEQ.W           loc_AD714
AD598:  LDR             R0, [SP,#0x170+var_14C]
AD59A:  LDRB            R0, [R0]
AD59C:  CMP             R0, #0
AD59E:  BNE.W           loc_AD714
AD5A2:  LDR             R0, [SP,#0x170+var_154]
AD5A4:  LDRB            R0, [R0]
AD5A6:  CMP             R0, #0
AD5A8:  BNE.W           loc_AD714
AD5AC:  ADD.W           R1, R5, #0x20000
AD5B0:  B               loc_AD70E
AD5B2:  LDR             R0, [SP,#0x170+var_114]
AD5B4:  LDR             R1, [R0]
AD5B6:  LDR             R0, [R1,#0x68]
AD5B8:  CMP             R0, #0
AD5BA:  BMI             loc_AD650
AD5BC:  MOVS            R1, #1
AD5BE:  BL              sub_95484
AD5C2:  CMP             R0, #0
AD5C4:  BEQ             loc_AD64C
AD5C6:  LDR             R0, [SP,#0x170+var_EC]
AD5C8:  CMP             R0, #0
AD5CA:  BEQ.W           loc_AD6E8
AD5CE:  LDR             R0, [SP,#0x170+var_154]
AD5D0:  LDRB            R1, [R0]
AD5D2:  MOVS.W          R0, R10,LSL#20
AD5D6:  BMI.W           loc_AD7A6
AD5DA:  LDR.W           R9, [SP,#0x170+var_11C]
AD5DE:  CMP             R1, #0
AD5E0:  LDR             R5, [R7,#arg_C]
AD5E2:  ORR.W           R0, R9, R1
AD5E6:  IT NE
AD5E8:  MOVNE           R1, #1
AD5EA:  LDRD.W          R11, R10, [SP,#0x170+var_F4]
AD5EE:  CMP             R0, #0
AD5F0:  STR             R1, [SP,#0x170+var_12C]
AD5F2:  BEQ.W           loc_AD7CE
AD5F6:  MOVS            R4, #0
AD5F8:  LDR.W           R8, [SP,#0x170+var_12C]
AD5FC:  B               loc_AD51C
AD5FE:  MOVS            R5, #0
AD600:  MOV.W           R8, #1
AD604:  B               loc_AD1F0
AD606:  MOVS            R0, #0
AD608:  CMP             R1, #0
AD60A:  BEQ             loc_AD6F2
AD60C:  STR             R0, [SP,#0x170+var_150]
AD60E:  MOVS            R0, #0
AD610:  STR             R0, [SP,#0x170+var_15C]
AD612:  MOV.W           R8, #0
AD616:  B               loc_AD1A4
AD618:  LDR             R0, [SP,#0x170+var_114]
AD61A:  LDR             R0, [R0]
AD61C:  LDR             R0, [R0,#0x58]
AD61E:  CMP.W           R0, #0xFFFFFFFF
AD622:  BLE             loc_AD632
AD624:  MOVS            R1, #0
AD626:  MOVS            R5, #0
AD628:  STR             R1, [SP,#0x170+var_150]
AD62A:  MOVS            R1, #0
AD62C:  MOV.W           R8, #0
AD630:  B               loc_AD206
AD632:  MOVS            R0, #0
AD634:  CMP.W           R11, #0
AD638:  STR             R0, [SP,#0x170+var_148]
AD63A:  MOV.W           R0, #0
AD63E:  STR             R0, [SP,#0x170+var_150]
AD640:  MOV.W           R0, #0
AD644:  MOV.W           R11, #0
AD648:  STR             R0, [SP,#0x170+var_128]
AD64A:  B               loc_AD07A
AD64C:  LDR             R0, [SP,#0x170+var_114]
AD64E:  LDR             R1, [R0]
AD650:  LDR             R0, [R1,#0x6C]
AD652:  CMP             R0, #0
AD654:  BMI             loc_AD668
AD656:  MOVS            R1, #1
AD658:  MOVS            R4, #1
AD65A:  BL              sub_95484
AD65E:  CBZ             R0, loc_AD668
AD660:  MOV.W           R8, #0
AD664:  MOVS            R0, #1
AD666:  B               loc_AD510
AD668:  ORR.W           R0, R8, R5
AD66C:  CMP             R0, #1
AD66E:  BNE             loc_AD68E
AD670:  MOVS            R0, #7
AD672:  CMP.W           R8, #0
AD676:  IT NE
AD678:  MOVNE           R0, #6
AD67A:  ADD.W           R0, R0, #0x10000
AD67E:  ADDS            R1, R0, #4
AD680:  MOV             R0, R6
AD682:  BL              sub_AD8D4
AD686:  LDR             R0, [R6,#0x3C]
AD688:  STRD.W          R0, R0, [R6,#0x40]
AD68C:  B               loc_AD508
AD68E:  CMP.W           R11, #0
AD692:  BEQ             loc_AD6BC
AD694:  LDR             R0, [SP,#0x170+var_114]
AD696:  LDR             R0, [R0]
AD698:  LDR             R0, [R0,#0x70]
AD69A:  CMP             R0, #0
AD69C:  BMI             loc_AD6BC
AD69E:  MOVS            R1, #1
AD6A0:  MOVS            R5, #1
AD6A2:  BL              sub_95484
AD6A6:  CBZ             R0, loc_AD6BC
AD6A8:  MOVS            R4, #0
AD6AA:  LDR             R0, [R6,#4]
AD6AC:  STRB.W          R5, [R6,#0xE64]
AD6B0:  STRB.W          R4, [R6,#0x4B]
AD6B4:  STRD.W          R0, R4, [R6,#0x3C]
AD6B8:  STR             R0, [R6,#0x44]
AD6BA:  B               loc_AD50A
AD6BC:  LDR             R0, [SP,#0x170+var_150]
AD6BE:  ORR.W           R0, R0, R9
AD6C2:  CMP             R0, #1
AD6C4:  BNE             loc_AD730
AD6C6:  LDR             R0, [SP,#0x170+var_F8]
AD6C8:  LDR.W           R0, [R0,#0xCC]
AD6CC:  CMP             R0, #0
AD6CE:  BEQ.W           loc_AD82E
AD6D2:  LDR             R1, [SP,#0x170+var_100]
AD6D4:  LDRD.W          R0, R6, [R1,#0x40]
AD6D8:  CMP             R0, R6
AD6DA:  BNE.W           loc_AD7E8
AD6DE:  LDR             R0, [SP,#0x170+var_100]
AD6E0:  MOVS            R6, #0
AD6E2:  LDR.W           R8, [R0,#4]
AD6E6:  B               loc_AD7F0
AD6E8:  MOV.W           R8, #1
AD6EC:  MOVS            R4, #0
AD6EE:  MOVS            R0, #1
AD6F0:  B               loc_AD510
AD6F2:  STR             R0, [SP,#0x170+var_15C]
AD6F4:  MOVS            R1, #0
AD6F6:  LDR             R0, [R2,#0x5C]
AD6F8:  MOV.W           R8, #1
AD6FC:  STR             R1, [SP,#0x170+var_150]
AD6FE:  CMP.W           R0, #0xFFFFFFFF
AD702:  BGT.W           loc_AD108
AD706:  B               loc_AD1A4
AD708:  MOVS            R1, #0x3000C
AD70E:  MOV             R0, R6
AD710:  BL              sub_AD8D4
AD714:  ADDS            R0, R5, #5
AD716:  ORR.W           R1, R4, R0
AD71A:  MOV             R0, R6
AD71C:  BL              sub_AD8D4
AD720:  MOVS            R0, #0
AD722:  MOVS            R4, #0
AD724:  MOV.W           R8, #0
AD728:  STR             R0, [SP,#0x170+var_12C]
AD72A:  LDR.W           R10, [SP,#0x170+var_F0]
AD72E:  B               loc_AD51A
AD730:  LDR             R0, [SP,#0x170+var_148]
AD732:  CMP             R0, #0
AD734:  BEQ.W           loc_AD8C0
AD738:  BL              sub_8BBC8
AD73C:  CMP             R0, #0
AD73E:  BEQ.W           loc_AD8C0
AD742:  MOV             R6, R0
AD744:  BLX             strlen
AD748:  MOVS            R1, #2
AD74A:  ADD.W           R0, R1, R0,LSL#1
AD74E:  BL              sub_885E4
AD752:  MOV             R8, R0
AD754:  LDRB            R0, [R6]
AD756:  CMP             R0, #0
AD758:  BEQ.W           loc_AD8B4
AD75C:  ADD.W           R11, SP, #0x170+var_C8
AD760:  MOV.W           R9, #0
AD764:  MOVS            R4, #0
AD766:  B               loc_AD772
AD768:  ADD             R6, R5
AD76A:  LDRB            R0, [R6]
AD76C:  CMP             R0, #0
AD76E:  BEQ.W           loc_AD88C
AD772:  MOV             R0, R11
AD774:  MOV             R1, R6
AD776:  MOVS            R2, #0
AD778:  BL              sub_88448
AD77C:  MOV             R5, R0
AD77E:  LDR             R0, [SP,#0x170+var_C8]
AD780:  CMP             R0, #0
AD782:  BEQ.W           loc_AD88C
AD786:  CMP.W           R9, R0,LSR#16
AD78A:  BNE             loc_AD768
AD78C:  ADD.W           R3, R7, #0xC
AD790:  MOV             R0, R11
AD792:  LDM             R3, {R1-R3}
AD794:  BL              sub_AE838
AD798:  CMP             R0, #0
AD79A:  ITTT NE
AD79C:  LDRNE           R0, [SP,#0x170+var_C8]
AD79E:  STRHNE.W        R0, [R8,R4,LSL#1]
AD7A2:  ADDNE           R4, #1
AD7A4:  B               loc_AD768
AD7A6:  CLZ.W           R0, R1
AD7AA:  MOVS            R4, #0
AD7AC:  MOV.W           R8, R0,LSR#5
AD7B0:  LDR             R0, [SP,#0x170+var_11C]
AD7B2:  CMP             R0, #0
AD7B4:  BNE             loc_AD8AE
AD7B6:  LDRD.W          R11, R10, [SP,#0x170+var_F4]
AD7BA:  CMP             R1, #0
AD7BC:  LDR             R6, [SP,#0x170+var_100]
AD7BE:  MOV             R2, R1
AD7C0:  LDR.W           R9, [SP,#0x170+var_11C]
AD7C4:  LDR             R5, [R7,#arg_C]
AD7C6:  STR.W           R8, [SP,#0x170+var_12C]
AD7CA:  BEQ.W           loc_AD51C
AD7CE:  MOVS            R0, #0xA
AD7D0:  LDRD.W          R1, R2, [R7,#arg_4]
AD7D4:  STR             R0, [SP,#0x170+var_C8]
AD7D6:  ADD             R0, SP, #0x170+var_C8
AD7D8:  MOV             R3, R5
AD7DA:  BL              sub_AE838
AD7DE:  CMP             R0, #0
AD7E0:  BEQ.W           loc_AD508
AD7E4:  LDR             R1, [SP,#0x170+var_C8]
AD7E6:  B               loc_AD502
AD7E8:  MOV             R8, R0
AD7EA:  ITT LT
AD7EC:  MOVLT           R8, R6
AD7EE:  MOVLT           R6, R0
AD7F0:  LDR.W           R9, [SP,#0x170+var_100]
AD7F4:  LDR.W           R1, [R9,#0x14]
AD7F8:  ADD.W           R0, R1, R6,LSL#1
AD7FC:  ADD.W           R1, R1, R8,LSL#1
AD800:  BL              sub_889DE
AD804:  ADDS            R4, R0, #1
AD806:  MOV             R0, R4
AD808:  BL              sub_885E4
AD80C:  MOV             R5, R0
AD80E:  LDR.W           R0, [R9,#0x14]
AD812:  MOV             R1, R4
AD814:  ADD.W           R2, R0, R6,LSL#1
AD818:  ADD.W           R3, R0, R8,LSL#1
AD81C:  MOV             R0, R5
AD81E:  BL              sub_8892C
AD822:  MOV             R0, R5
AD824:  BL              sub_8BBE8
AD828:  MOV             R0, R5
AD82A:  BL              sub_88614
AD82E:  LDR             R0, [SP,#0x170+var_150]
AD830:  CMP             R0, #0
AD832:  BEQ             loc_AD8C0
AD834:  LDR             R0, [SP,#0x170+var_100]
AD836:  LDRD.W          R1, R0, [R0,#0x40]
AD83A:  CMP             R1, R0
AD83C:  BNE             loc_AD84E
AD83E:  LDR             R2, [SP,#0x170+var_100]
AD840:  MOVS            R1, #0
AD842:  LDR             R0, [R2,#4]
AD844:  STRB.W          R1, [R2,#0x4B]
AD848:  STRD.W          R0, R1, [R2,#0x3C]
AD84C:  STR             R0, [R2,#0x44]
AD84E:  LDR             R6, [SP,#0x170+var_100]
AD850:  MOVS            R2, #1
AD852:  LDRD.W          R11, R10, [SP,#0x170+var_F4]
AD856:  CMP             R1, R0
AD858:  LDR.W           R9, [SP,#0x170+var_11C]
AD85C:  MOV.W           R0, #0
AD860:  LDR             R5, [R7,#arg_C]
AD862:  MOV.W           R4, #0
AD866:  MOV.W           R8, #0
AD86A:  STRB.W          R2, [R6,#0xE64]
AD86E:  STR             R0, [SP,#0x170+var_12C]
AD870:  BEQ.W           loc_AD51C
AD874:  ADD.W           R1, R6, #0x3C ; '<'
AD878:  MOV             R0, R6
AD87A:  BL              sub_AEBCE
AD87E:  MOVS            R0, #0
AD880:  STRB.W          R4, [R6,#0x4B]
AD884:  MOV.W           R8, #0
AD888:  STR             R0, [SP,#0x170+var_12C]
AD88A:  B               loc_AD51C
AD88C:  MOVS            R0, #0
AD88E:  CMP             R4, #1
AD890:  STRH.W          R0, [R8,R4,LSL#1]
AD894:  BLT             loc_AD8BA
AD896:  LDR             R5, [SP,#0x170+var_100]
AD898:  MOV             R2, R8
AD89A:  MOV             R3, R4
AD89C:  ADD.W           R1, R5, #0x3C ; '<'
AD8A0:  MOV             R0, R5
AD8A2:  BL              sub_AE9B8
AD8A6:  MOVS            R0, #1
AD8A8:  STRB.W          R0, [R5,#0xE64]
AD8AC:  B               loc_AD8BA
AD8AE:  STR.W           R8, [SP,#0x170+var_12C]
AD8B2:  B               loc_AD8CA
AD8B4:  MOVS            R0, #0
AD8B6:  STRH.W          R0, [R8]
AD8BA:  MOV             R0, R8
AD8BC:  BL              sub_88614
AD8C0:  MOVS            R0, #0
AD8C2:  MOVS            R4, #0
AD8C4:  MOV.W           R8, #0
AD8C8:  STR             R0, [SP,#0x170+var_12C]
AD8CA:  LDRD.W          R11, R10, [SP,#0x170+var_F4]
AD8CE:  LDR             R6, [SP,#0x170+var_100]
AD8D0:  B               loc_AD516
