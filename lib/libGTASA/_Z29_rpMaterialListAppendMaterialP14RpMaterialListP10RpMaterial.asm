; =========================================================
; Game Engine Function: _Z29_rpMaterialListAppendMaterialP14RpMaterialListP10RpMaterial
; Address            : 0x217904 - 0x21798A
; =========================================================

217904:  PUSH            {R4-R7,LR}
217906:  ADD             R7, SP, #0xC
217908:  PUSH.W          {R11}
21790C:  SUB             SP, SP, #8
21790E:  MOV             R4, R0
217910:  MOV             R5, R1
217912:  LDRD.W          R0, R1, [R4,#4]
217916:  CMP             R1, R0
217918:  BLE             loc_217922
21791A:  LDR             R1, [R4]
21791C:  STR.W           R5, [R1,R0,LSL#2]
217920:  B               loc_21794C
217922:  LDR             R0, =(RwEngineInstance_ptr - 0x21792E)
217924:  MOVS            R3, #0x50 ; 'P'
217926:  ADD.W           R6, R3, R1,LSL#2
21792A:  ADD             R0, PC; RwEngineInstance_ptr
21792C:  LDR             R2, [R0]; RwEngineInstance
21792E:  LDR             R0, [R4]
217930:  LDR             R2, [R2]
217932:  CBZ             R0, loc_21795A
217934:  LDR.W           R2, [R2,#0x134]
217938:  MOV             R1, R6
21793A:  BLX             R2
21793C:  CBZ             R0, loc_217966
21793E:  LDRD.W          R1, R2, [R4,#4]
217942:  STR             R0, [R4]
217944:  ADDS            R2, #0x14
217946:  STR             R2, [R4,#8]
217948:  STR.W           R5, [R0,R1,LSL#2]
21794C:  LDRH            R0, [R5,#0x18]
21794E:  ADDS            R0, #1
217950:  STRH            R0, [R5,#0x18]
217952:  LDR             R0, [R4,#4]
217954:  ADDS            R1, R0, #1
217956:  STR             R1, [R4,#4]
217958:  B               loc_217982
21795A:  LDR.W           R1, [R2,#0x12C]
21795E:  MOV             R0, R6
217960:  BLX             R1
217962:  CMP             R0, #0
217964:  BNE             loc_21793E
217966:  MOVS            R0, #0
217968:  MOV             R1, R6
21796A:  STR             R0, [SP,#0x18+var_18]
21796C:  MOVS            R0, #0x80000013; int
217972:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
217976:  STR             R0, [SP,#0x18+var_14]
217978:  MOV             R0, SP
21797A:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
21797E:  MOV.W           R0, #0xFFFFFFFF
217982:  ADD             SP, SP, #8
217984:  POP.W           {R11}
217988:  POP             {R4-R7,PC}
