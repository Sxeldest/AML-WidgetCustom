; =========================================================
; Game Engine Function: sub_6BB40
; Address            : 0x6BB40 - 0x6BD76
; =========================================================

6BB40:  PUSH            {R4-R7,LR}
6BB42:  ADD             R7, SP, #0xC
6BB44:  PUSH.W          {R8}
6BB48:  SUB             SP, SP, #0x158
6BB4A:  LDR             R1, =(aSampOrig - 0x6BB56); "SAMP_ORIG" ...
6BB4C:  MOV             R4, R0
6BB4E:  LDR             R2, =(aRpcScrdeathmes - 0x6BB58); "RPC: ScrDeathMessage" ...
6BB50:  LDR             R0, =(__stack_chk_guard_ptr - 0x6BB5A)
6BB52:  ADD             R1, PC; "SAMP_ORIG"
6BB54:  ADD             R2, PC; "RPC: ScrDeathMessage"
6BB56:  ADD             R0, PC; __stack_chk_guard_ptr
6BB58:  LDR             R0, [R0]; __stack_chk_guard
6BB5A:  LDR             R0, [R0]
6BB5C:  STR             R0, [SP,#0x168+var_14]
6BB5E:  MOVS            R0, #4; prio
6BB60:  BLX             __android_log_print
6BB64:  LDRD.W          R1, R0, [R4]; src
6BB68:  MOVS            R2, #1
6BB6A:  ADD.W           R2, R2, R0,LSR#3; size
6BB6E:  ADD             R0, SP, #0x168+var_128; int
6BB70:  MOVS            R3, #0
6BB72:  BL              sub_86BA8
6BB76:  ADD             R1, SP, #0x168+var_12C; int
6BB78:  MOVS            R2, #0x10
6BB7A:  MOVS            R3, #1
6BB7C:  BL              sub_86E30
6BB80:  ADD             R0, SP, #0x168+var_128; int
6BB82:  ADD.W           R1, SP, #0x168+var_12A; int
6BB86:  MOVS            R2, #0x10
6BB88:  MOVS            R3, #1
6BB8A:  BL              sub_86E30
6BB8E:  ADD             R0, SP, #0x168+var_128; int
6BB90:  ADD.W           R1, SP, #0x168+var_12D; int
6BB94:  MOVS            R2, #8
6BB96:  MOVS            R3, #1
6BB98:  BL              sub_86E30
6BB9C:  LDR             R0, =(off_114AD8 - 0x6BBA8)
6BB9E:  MOVS            R1, #0
6BBA0:  STRD.W          R1, R1, [SP,#0x168+var_140]
6BBA4:  ADD             R0, PC; off_114AD8
6BBA6:  STR             R1, [SP,#0x168+var_150]
6BBA8:  STR             R1, [SP,#0x168+var_138]
6BBAA:  LDR             R0, [R0]; dword_1A4434
6BBAC:  STRH.W          R1, [SP,#0x168+var_140]
6BBB0:  STRD.W          R1, R1, [SP,#0x168+var_14C]
6BBB4:  LDR             R0, [R0]
6BBB6:  STRB.W          R1, [SP,#0x168+var_150]
6BBBA:  CMP             R0, #0
6BBBC:  BEQ.W           loc_6BD46
6BBC0:  LDR.W           R0, [R0,#0x3B0]
6BBC4:  LDR             R5, [R0]
6BBC6:  CBZ             R5, loc_6BBFA
6BBC8:  ADD.W           R6, R5, #0x13A0
6BBCC:  LDRH.W          R0, [SP,#0x168+var_12A]
6BBD0:  LDRH            R1, [R6]
6BBD2:  CMP             R1, R0
6BBD4:  BNE             loc_6BBFC
6BBD6:  MOVW            R0, #0x13A2
6BBDA:  ADDS            R1, R5, R0; s
6BBDC:  ADD             R0, SP, #0x168+var_150; int
6BBDE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
6BBE2:  LDR             R0, =(off_114AB0 - 0x6BBF0)
6BBE4:  MOV             R2, #0x1413FD
6BBEC:  ADD             R0, PC; off_114AB0
6BBEE:  LDR             R0, [R0]; dword_1A4408
6BBF0:  LDR             R1, [R0]
6BBF2:  LDR             R0, [R6,#0x1C]
6BBF4:  ADD             R1, R2
6BBF6:  BLX             R1
6BBF8:  B               loc_6BC40
6BBFA:  B               loc_6BCB4
6BBFC:  CMP.W           R0, #0x3EC
6BC00:  BHI             loc_6BC42
6BC02:  ADDS            R1, R5, R0
6BC04:  LDRB.W          R1, [R1,#0xFB4]
6BC08:  CMP             R1, #0
6BC0A:  BEQ.W           loc_6BD74
6BC0E:  ADD.W           R0, R5, R0,LSL#2
6BC12:  LDR             R1, [R0,#4]
6BC14:  CMP             R1, #0
6BC16:  IT NE
6BC18:  ADDNE           R1, #4; s
6BC1A:  ADD             R0, SP, #0x168+var_150; int
6BC1C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
6BC20:  LDR             R0, =(off_114AB0 - 0x6BC2A)
6BC22:  LDRH.W          R1, [SP,#0x168+var_12A]
6BC26:  ADD             R0, PC; off_114AB0
6BC28:  ADD.W           R1, R5, R1,LSL#2
6BC2C:  LDR             R0, [R0]; dword_1A4408
6BC2E:  LDR             R1, [R1,#4]
6BC30:  LDR             R2, [R0]
6BC32:  LDR             R0, [R1]
6BC34:  MOV             R1, #0x14A403
6BC3C:  ADD             R1, R2
6BC3E:  BLX             R1
6BC40:  MOV             R4, R0
6BC42:  LDRH.W          R0, [SP,#0x168+var_12C]
6BC46:  LDRH            R1, [R6]
6BC48:  CMP             R1, R0
6BC4A:  BNE             loc_6BC70
6BC4C:  MOVW            R0, #0x13A2
6BC50:  ADDS            R1, R5, R0; s
6BC52:  ADD             R0, SP, #0x168+var_140; int
6BC54:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
6BC58:  LDR             R0, =(off_114AB0 - 0x6BC66)
6BC5A:  MOV             R2, #0x1413FD
6BC62:  ADD             R0, PC; off_114AB0
6BC64:  LDR             R0, [R0]; dword_1A4408
6BC66:  LDR             R1, [R0]
6BC68:  LDR             R0, [R6,#0x1C]
6BC6A:  ADD             R1, R2
6BC6C:  BLX             R1
6BC6E:  B               loc_6BCB0
6BC70:  CMP.W           R0, #0x3EC
6BC74:  BHI             loc_6BCB4
6BC76:  ADDS            R1, R5, R0
6BC78:  LDRB.W          R1, [R1,#0xFB4]
6BC7C:  CBZ             R1, loc_6BCB4
6BC7E:  ADD.W           R0, R5, R0,LSL#2
6BC82:  LDR             R1, [R0,#4]
6BC84:  CMP             R1, #0
6BC86:  IT NE
6BC88:  ADDNE           R1, #4; s
6BC8A:  ADD             R0, SP, #0x168+var_140; int
6BC8C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
6BC90:  LDR             R0, =(off_114AB0 - 0x6BC9A)
6BC92:  LDRH.W          R1, [SP,#0x168+var_12C]
6BC96:  ADD             R0, PC; off_114AB0
6BC98:  ADD.W           R1, R5, R1,LSL#2
6BC9C:  LDR             R0, [R0]; dword_1A4408
6BC9E:  LDR             R1, [R1,#4]
6BCA0:  LDR             R2, [R0]
6BCA2:  LDR             R0, [R1]
6BCA4:  MOV             R1, #0x14A403
6BCAC:  ADD             R1, R2
6BCAE:  BLX             R1
6BCB0:  MOV             R8, R0
6BCB2:  B               loc_6BCB4
6BCB4:  UBFX.W          R1, R4, #8, #8
6BCB8:  UBFX.W          R2, R4, #0x10, #8
6BCBC:  LDR             R0, =(off_114B10 - 0x6BCCC)
6BCBE:  VMOV            S0, R1
6BCC2:  LSRS            R1, R4, #0x18
6BCC4:  VMOV            S2, R2
6BCC8:  ADD             R0, PC; off_114B10
6BCCA:  VMOV            S4, R1
6BCCE:  VLDR            S6, =0.0039216
6BCD2:  VCVT.F32.S32    S0, S0
6BCD6:  LDR             R0, [R0]; dword_1A442C
6BCD8:  VCVT.F32.S32    S2, S2
6BCDC:  LDR             R4, [SP,#0x168+var_148]
6BCDE:  VCVT.F32.S32    S4, S4
6BCE2:  LDRB.W          R5, [SP,#0x168+var_150]
6BCE6:  LDR             R0, [R0]
6BCE8:  LDR.W           R6, [R0,#0x84]
6BCEC:  MOV.W           R0, #0x3F800000
6BCF0:  VMUL.F32        S0, S0, S6
6BCF4:  STR             R0, [SP,#0x168+var_154]
6BCF6:  VMUL.F32        S2, S2, S6
6BCFA:  VMUL.F32        S4, S4, S6
6BCFE:  VSTR            S0, [SP,#0x168+var_158]
6BD02:  VSTR            S2, [SP,#0x168+var_15C]
6BD06:  VSTR            S4, [SP,#0x168+var_160]
6BD0A:  ADD             R0, SP, #0x168+var_160
6BD0C:  BL              sub_88A34
6BD10:  MOV             R2, R0
6BD12:  LDRB.W          R0, [SP,#0x168+var_140]
6BD16:  LDRB.W          R1, [SP,#0x168+var_12D]
6BD1A:  LDR             R3, [SP,#0x168+var_138]
6BD1C:  STRD.W          R8, R1, [SP,#0x168+var_168]
6BD20:  LSLS            R1, R5, #0x1F
6BD22:  ADD             R1, SP, #0x168+var_150
6BD24:  IT EQ
6BD26:  ADDEQ           R4, R1, #1
6BD28:  LSLS            R0, R0, #0x1F
6BD2A:  ADD             R1, SP, #0x168+var_140
6BD2C:  IT EQ
6BD2E:  ADDEQ           R3, R1, #1
6BD30:  MOV             R0, R6
6BD32:  MOV             R1, R4
6BD34:  BL              sub_75370
6BD38:  LDRB.W          R0, [SP,#0x168+var_150]
6BD3C:  LSLS            R0, R0, #0x1F
6BD3E:  ITT NE
6BD40:  LDRNE           R0, [SP,#0x168+var_148]; void *
6BD42:  BLXNE           j__ZdlPv; operator delete(void *)
6BD46:  LDRB.W          R0, [SP,#0x168+var_140]
6BD4A:  LSLS            R0, R0, #0x1F
6BD4C:  ITT NE
6BD4E:  LDRNE           R0, [SP,#0x168+var_138]; void *
6BD50:  BLXNE           j__ZdlPv; operator delete(void *)
6BD54:  ADD             R0, SP, #0x168+var_128
6BD56:  BL              sub_86BF8
6BD5A:  LDR             R0, [SP,#0x168+var_14]
6BD5C:  LDR             R1, =(__stack_chk_guard_ptr - 0x6BD62)
6BD5E:  ADD             R1, PC; __stack_chk_guard_ptr
6BD60:  LDR             R1, [R1]; __stack_chk_guard
6BD62:  LDR             R1, [R1]
6BD64:  CMP             R1, R0
6BD66:  ITTT EQ
6BD68:  ADDEQ           SP, SP, #0x158
6BD6A:  POPEQ.W         {R8}
6BD6E:  POPEQ           {R4-R7,PC}
6BD70:  BLX             __stack_chk_fail
6BD74:  B               loc_6BC42
