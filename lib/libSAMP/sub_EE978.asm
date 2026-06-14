; =========================================================
; Game Engine Function: sub_EE978
; Address            : 0xEE978 - 0xEE9F4
; =========================================================

EE978:  PUSH            {R4-R7,LR}
EE97A:  ADD             R7, SP, #0xC
EE97C:  PUSH.W          {R11}
EE980:  SUB             SP, SP, #0x18
EE982:  MOV             R4, R0
EE984:  LDR             R0, [R2,#0x18]
EE986:  MOV             R5, R1
EE988:  MOV             R6, R2
EE98A:  CMP             R0, #0
EE98C:  MOV             R1, R0
EE98E:  IT NE
EE990:  MOVNE           R1, #1
EE992:  STRB.W          R1, [SP,#0x28+var_14]
EE996:  STR             R0, [SP,#0x28+var_28]
EE998:  ITTT NE
EE99A:  ADDNE.W         R0, SP, #0x28+var_18
EE99E:  MOVNE           R1, SP
EE9A0:  BLXNE           j__ZNK3fmt2v86detail10locale_ref3getINSt6__ndk16localeEEET_v; fmt::v8::detail::locale_ref::get<std::locale>(void)
EE9A4:  ADD             R0, SP, #0x28+var_18
EE9A6:  BL              sub_EEA04
EE9AA:  MOV             R1, R0
EE9AC:  LDR             R2, [R6]
EE9AE:  MOV             R0, SP
EE9B0:  MOV             R3, R5
EE9B2:  BL              sub_EEA64
EE9B6:  LDR             R0, [R4]
EE9B8:  CMP             R0, #2
EE9BA:  BEQ             loc_EE9C8
EE9BC:  CMP             R0, #1
EE9BE:  BNE             loc_EE9D0
EE9C0:  MOV             R0, SP
EE9C2:  BL              sub_EEADC
EE9C6:  B               loc_EE9DC
EE9C8:  MOV             R0, SP
EE9CA:  BL              sub_EEBD8
EE9CE:  B               loc_EE9DC
EE9D0:  LDRD.W          R0, R1, [R4,#4]
EE9D4:  ADD             R1, R0
EE9D6:  MOV             R2, SP
EE9D8:  BL              sub_EEC74
EE9DC:  LDRB.W          R0, [SP,#0x28+var_14]
EE9E0:  LDR             R4, [SP,#0x28+var_20]
EE9E2:  CBZ             R0, loc_EE9EA
EE9E4:  ADD             R0, SP, #0x28+var_18; this
EE9E6:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
EE9EA:  MOV             R0, R4
EE9EC:  ADD             SP, SP, #0x18
EE9EE:  POP.W           {R11}
EE9F2:  POP             {R4-R7,PC}
