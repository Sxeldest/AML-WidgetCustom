; =========================================================
; Game Engine Function: sub_857FC
; Address            : 0x857FC - 0x8590C
; =========================================================

857FC:  PUSH            {R4-R7,LR}
857FE:  ADD             R7, SP, #0xC
85800:  PUSH.W          {R8,R9,R11}
85804:  SUB             SP, SP, #0x48
85806:  MOV             R5, R0
85808:  LDR             R0, =(byte_1ABE2C - 0x85812)
8580A:  MOV             R4, R1
8580C:  LDR             R1, =(__stack_chk_guard_ptr - 0x85814)
8580E:  ADD             R0, PC; byte_1ABE2C
85810:  ADD             R1, PC; __stack_chk_guard_ptr
85812:  LDR             R1, [R1]; __stack_chk_guard
85814:  LDR             R1, [R1]
85816:  STR             R1, [SP,#0x60+var_1C]
85818:  LDRB            R0, [R0]
8581A:  DMB.W           ISH
8581E:  LSLS            R0, R0, #0x1F
85820:  BEQ             loc_858EA
85822:  MOV             R0, R5
85824:  MOV             R1, R4
85826:  BL              sub_7E314
8582A:  LDR             R0, =(off_114AD8 - 0x85830)
8582C:  ADD             R0, PC; off_114AD8
8582E:  LDR             R0, [R0]; dword_1A4434
85830:  LDR             R0, [R0]
85832:  CMP             R0, #0
85834:  ITTT NE
85836:  LDRNE.W         R0, [R0,#0x3B0]
8583A:  LDRNE           R0, [R0,#0x10]
8583C:  CMPNE           R0, #0
8583E:  BNE             loc_8585A
85840:  LDR             R0, [SP,#0x60+var_1C]
85842:  LDR             R1, =(__stack_chk_guard_ptr - 0x85848)
85844:  ADD             R1, PC; __stack_chk_guard_ptr
85846:  LDR             R1, [R1]; __stack_chk_guard
85848:  LDR             R1, [R1]
8584A:  CMP             R1, R0
8584C:  ITTT EQ
8584E:  ADDEQ           SP, SP, #0x48 ; 'H'
85850:  POPEQ.W         {R8,R9,R11}
85854:  POPEQ           {R4-R7,PC}
85856:  BLX             __stack_chk_fail
8585A:  LDRH.W          R1, [R5,#0x5C]
8585E:  CMP.W           R1, #0x3E8
85862:  BHI             loc_85840
85864:  ADD.W           R0, R0, R1,LSL#2
85868:  LDR.W           R0, [R0,#0x3EC]
8586C:  CMP             R0, #0
8586E:  BEQ             loc_85840
85870:  LDR             R0, [R0,#4]
85872:  MOVS            R1, #0
85874:  STR             R1, [SP,#0x60+var_54]
85876:  STR             R1, [SP,#0x60+var_44]
85878:  CMP             R0, #0
8587A:  STRD.W          R1, R1, [SP,#0x60+var_5C]
8587E:  STR             R1, [SP,#0x60+var_34]
85880:  STRD.W          R1, R1, [SP,#0x60+var_4C]
85884:  STR             R1, [SP,#0x60+var_24]
85886:  STRD.W          R1, R1, [SP,#0x60+var_3C]
8588A:  STRD.W          R1, R1, [SP,#0x60+var_2C]
8588E:  ITT NE
85890:  LDRNE           R0, [R0,#0x14]
85892:  CMPNE           R0, #0
85894:  BEQ             loc_858CE
85896:  LDR             R1, [R0]
85898:  STR             R1, [SP,#0x60+var_5C]
8589A:  LDR             R1, [R0,#0x24]
8589C:  LDR.W           LR, [R0,#8]
858A0:  LDR.W           R9, [R0,#0x14]
858A4:  LDR             R6, [R0,#0x20]
858A6:  LDR.W           R12, [R0,#4]
858AA:  LDR.W           R8, [R0,#0x10]
858AE:  LDR             R3, [R0,#0x18]
858B0:  LDR             R5, [R0,#0x28]
858B2:  LDR             R2, [R0,#0x30]
858B4:  STRD.W          R6, R1, [SP,#0x60+var_3C]
858B8:  LDR             R1, [R0,#0x34]
858BA:  LDR             R0, [R0,#0x38]
858BC:  STR             R2, [SP,#0x60+var_2C]
858BE:  STR             R5, [SP,#0x60+var_34]
858C0:  STR             R3, [SP,#0x60+var_44]
858C2:  STRD.W          R8, R9, [SP,#0x60+var_4C]
858C6:  STRD.W          R12, LR, [SP,#0x60+var_58]
858CA:  STR             R1, [SP,#0x60+var_28]
858CC:  STR             R0, [SP,#0x60+var_24]
858CE:  LDR             R0, =(off_114D50 - 0x858D4)
858D0:  ADD             R0, PC; off_114D50
858D2:  LDR             R0, [R0]; off_1ABF60
858D4:  LDR             R5, [R0]
858D6:  MOV             R0, R4
858D8:  BL              sub_7DB44
858DC:  LDR             R2, =(dword_1ABE20 - 0x858E2)
858DE:  ADD             R2, PC; dword_1ABE20
858E0:  ADD             R1, SP, #0x60+var_5C
858E2:  MOV             R3, R2
858E4:  ADDS            R1, #0x30 ; '0'
858E6:  BLX             R5
858E8:  B               loc_85840
858EA:  LDR             R0, =(byte_1ABE2C - 0x858F0)
858EC:  ADD             R0, PC; byte_1ABE2C ; __guard *
858EE:  BLX             j___cxa_guard_acquire
858F2:  CMP             R0, #0
858F4:  BEQ             loc_85822
858F6:  LDR             R1, =(dword_1ABE20 - 0x85900)
858F8:  MOVS            R2, #0
858FA:  LDR             R0, =(byte_1ABE2C - 0x85902)
858FC:  ADD             R1, PC; dword_1ABE20
858FE:  ADD             R0, PC; byte_1ABE2C ; __guard *
85900:  STRD.W          R2, R2, [R1]
85904:  STR             R2, [R1,#(dword_1ABE28 - 0x1ABE20)]
85906:  BLX             j___cxa_guard_release
8590A:  B               loc_85822
