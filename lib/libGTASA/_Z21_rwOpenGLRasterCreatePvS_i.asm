; =========================================================
; Game Engine Function: _Z21_rwOpenGLRasterCreatePvS_i
; Address            : 0x1AE8EC - 0x1AE9F0
; =========================================================

1AE8EC:  PUSH            {R4-R7,LR}
1AE8EE:  ADD             R7, SP, #0xC
1AE8F0:  PUSH.W          {R8}
1AE8F4:  SUB             SP, SP, #8
1AE8F6:  LDR             R0, =(RasterExtOffset_ptr - 0x1AE8FE)
1AE8F8:  MOV             R4, R1
1AE8FA:  ADD             R0, PC; RasterExtOffset_ptr
1AE8FC:  LDR             R0, [R0]; RasterExtOffset ; void *
1AE8FE:  LDR             R6, [R0]
1AE900:  BLX             j__Z24_rwOpenGLGetRasterFormatPvS_i; _rwOpenGLGetRasterFormat(void *,void *,int)
1AE904:  MOVS            R5, #0
1AE906:  CMP             R0, #0
1AE908:  BEQ.W           loc_1AE9E6
1AE90C:  ADD             R6, R4
1AE90E:  VMOV.I32        Q8, #0
1AE912:  ADDS            R0, R6, #4
1AE914:  LDRB.W          R8, [R4,#0x22]
1AE918:  STR             R5, [R6,#0x18]
1AE91A:  STR             R5, [R4,#4]
1AE91C:  VST1.32         {D16-D17}, [R0]
1AE920:  STRH            R5, [R6,#0x14]
1AE922:  STR             R5, [R6]
1AE924:  LDR             R0, [R4,#0xC]
1AE926:  CMP             R0, #0
1AE928:  ITT NE
1AE92A:  LDRNE           R1, [R4,#0x10]
1AE92C:  CMPNE           R1, #0
1AE92E:  BEQ             loc_1AE948
1AE930:  LDRB.W          R2, [R4,#0x20]
1AE934:  CMP             R2, #5; switch 6 cases
1AE936:  BHI             def_1AE938; jumptable 001AE938 default case, cases 1,3
1AE938:  TBB.W           [PC,R2]; switch jump
1AE93C:  DCB 0x18; jump table for switch statement
1AE93D:  DCB 0x4A
1AE93E:  DCB 3
1AE93F:  DCB 0x4A
1AE940:  DCB 0x18
1AE941:  DCB 0x11
1AE942:  MOVS            R1, #0x20 ; ' '; jumptable 001AE938 case 2
1AE944:  LSLS            R0, R0, #2
1AE946:  B               loc_1AE98E
1AE948:  MOVS            R1, #0x80
1AE94A:  LSLS            R0, R0, #2
1AE94C:  STRB.W          R1, [R4,#0x21]
1AE950:  LDR             R1, [R4,#0x14]
1AE952:  STR             R0, [R4,#0x18]
1AE954:  CMP             R1, #0
1AE956:  ITT EQ
1AE958:  MOVEQ           R0, #0x20 ; ' '
1AE95A:  STREQ           R0, [R4,#0x14]
1AE95C:  B               def_1AE938; jumptable 001AE938 default case, cases 1,3
1AE95E:  MOVS            R2, #1; jumptable 001AE938 case 5
1AE960:  MOVS            R3, #1
1AE962:  BLX             j__ZN14RQRenderTarget6CreateEjj17RQTargetColorType17RQTargetDepthType; RQRenderTarget::Create(uint,uint,RQTargetColorType,RQTargetDepthType)
1AE966:  STR             R0, [R6,#0x18]
1AE968:  LDR             R0, [R0]
1AE96A:  STR             R0, [R6]
1AE96C:  MOV.W           R0, R8,LSL#8; jumptable 001AE938 cases 0,4
1AE970:  AND.W           R1, R0, #0xF00
1AE974:  SUB.W           R1, R1, #0x100
1AE978:  LSRS            R1, R1, #8
1AE97A:  CMP             R1, #5; switch 6 cases
1AE97C:  BHI             def_1AE97E; jumptable 001AE97E default case, case 3
1AE97E:  TBB.W           [PC,R1]; switch jump
1AE982:  DCB 3; jump table for switch statement
1AE983:  DCB 3
1AE984:  DCB 3
1AE985:  DCB 9
1AE986:  DCB 0x15
1AE987:  DCB 0x1D
1AE988:  LDR             R0, [R4,#0xC]; jumptable 001AE97E cases 0-2
1AE98A:  MOVS            R1, #0x10
1AE98C:  LSLS            R0, R0, #1
1AE98E:  STR             R1, [R4,#0x14]
1AE990:  STR             R0, [R4,#0x18]
1AE992:  B               def_1AE938; jumptable 001AE938 default case, cases 1,3
1AE994:  MOVS            R0, #0xD; jumptable 001AE97E default case, case 3
1AE996:  MOVS            R5, #0
1AE998:  MOVT            R0, #0x8000; int
1AE99C:  STR             R5, [SP,#0x18+var_18]
1AE99E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1AE9A2:  STR             R0, [SP,#0x18+var_14]
1AE9A4:  MOV             R0, SP
1AE9A6:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1AE9AA:  B               loc_1AE9E6
1AE9AC:  LDR             R1, [R4,#0xC]; jumptable 001AE97E case 4
1AE9AE:  TST.W           R0, #0x6000
1AE9B2:  MOV.W           R2, #0x20 ; ' '
1AE9B6:  IT EQ
1AE9B8:  LSLEQ           R1, R1, #2
1AE9BA:  B               loc_1AE9CC
1AE9BC:  LDR             R1, [R4,#0xC]; jumptable 001AE97E case 5
1AE9BE:  TST.W           R0, #0x6000
1AE9C2:  MOV.W           R2, #0x18
1AE9C6:  IT EQ
1AE9C8:  ADDEQ.W         R1, R1, R1,LSL#1
1AE9CC:  STR             R2, [R4,#0x14]
1AE9CE:  STR             R1, [R4,#0x18]
1AE9D0:  LDR             R0, =(keepingCPU_ptr - 0x1AE9D8); jumptable 001AE938 default case, cases 1,3
1AE9D2:  MOVS            R5, #1
1AE9D4:  ADD             R0, PC; keepingCPU_ptr
1AE9D6:  LDR             R0, [R0]; keepingCPU
1AE9D8:  LDRB            R0, [R0]
1AE9DA:  CMP             R0, #0
1AE9DC:  ITTT NE
1AE9DE:  LDRHNE          R0, [R4,#0x30]
1AE9E0:  ORRNE.W         R0, R0, #0x100
1AE9E4:  STRHNE          R0, [R4,#0x30]
1AE9E6:  MOV             R0, R5
1AE9E8:  ADD             SP, SP, #8
1AE9EA:  POP.W           {R8}
1AE9EE:  POP             {R4-R7,PC}
