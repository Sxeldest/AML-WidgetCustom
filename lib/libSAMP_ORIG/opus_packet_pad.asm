; =========================================================
; Game Engine Function: opus_packet_pad
; Address            : 0xDBA64 - 0xDBAEA
; =========================================================

DBA64:  PUSH            {R4-R7,LR}
DBA66:  ADD             R7, SP, #0xC
DBA68:  PUSH.W          {R8,R9,R11}
DBA6C:  SUB             SP, SP, #0x140
DBA6E:  MOV             R4, R0
DBA70:  LDR             R0, =(__stack_chk_guard_ptr - 0xDBA7A)
DBA72:  MOV             R6, R1
DBA74:  MOV             R5, R2
DBA76:  ADD             R0, PC; __stack_chk_guard_ptr
DBA78:  CMP             R6, #1
DBA7A:  LDR             R0, [R0]; __stack_chk_guard
DBA7C:  LDR             R0, [R0]
DBA7E:  STR             R0, [SP,#0x158+var_1C]
DBA80:  BLT             loc_DBA8C
DBA82:  CMP             R6, R5
DBA84:  BNE             loc_DBA8A
DBA86:  MOVS            R0, #0
DBA88:  B               loc_DBA90
DBA8A:  BLE             loc_DBAAA
DBA8C:  MOV.W           R0, #0xFFFFFFFF
DBA90:  LDR             R1, =(__stack_chk_guard_ptr - 0xDBA98)
DBA92:  LDR             R2, [SP,#0x158+var_1C]
DBA94:  ADD             R1, PC; __stack_chk_guard_ptr
DBA96:  LDR             R1, [R1]; __stack_chk_guard
DBA98:  LDR             R1, [R1]
DBA9A:  SUBS            R1, R1, R2
DBA9C:  ITTT EQ
DBA9E:  ADDEQ           SP, SP, #0x140
DBAA0:  POPEQ.W         {R8,R9,R11}
DBAA4:  POPEQ           {R4-R7,PC}
DBAA6:  BLX             __stack_chk_fail
DBAAA:  ADDS            R0, R4, R5
DBAAC:  MOV.W           R9, #0
DBAB0:  SUB.W           R8, R0, R6
DBAB4:  MOV             R1, R4; src
DBAB6:  MOV             R2, R6; n
DBAB8:  STR.W           R9, [SP,#0x158+var_144]
DBABC:  MOV             R0, R8; dest
DBABE:  BLX             j_memmove
DBAC2:  ADD             R0, SP, #0x158+var_148
DBAC4:  MOV             R1, R8
DBAC6:  MOV             R2, R6
DBAC8:  BLX             j_opus_repacketizer_cat
DBACC:  CMP             R0, #0
DBACE:  BNE             loc_DBA90
DBAD0:  LDR             R2, [SP,#0x158+var_144]
DBAD2:  MOVS            R0, #1
DBAD4:  STRD.W          R5, R9, [SP,#0x158+var_158]
DBAD8:  MOVS            R1, #0
DBADA:  STR             R0, [SP,#0x158+var_150]
DBADC:  ADD             R0, SP, #0x158+var_148
DBADE:  MOV             R3, R4
DBAE0:  BLX             j_opus_repacketizer_out_range_impl
DBAE4:  AND.W           R0, R0, R0,ASR#31
DBAE8:  B               loc_DBA90
