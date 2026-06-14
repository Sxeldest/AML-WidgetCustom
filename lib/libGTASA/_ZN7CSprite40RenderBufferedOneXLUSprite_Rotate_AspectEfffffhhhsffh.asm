; =========================================================
; Game Engine Function: _ZN7CSprite40RenderBufferedOneXLUSprite_Rotate_AspectEfffffhhhsffh
; Address            : 0x5C6224 - 0x5C665A
; =========================================================

5C6224:  PUSH            {R4-R7,LR}
5C6226:  ADD             R7, SP, #0xC
5C6228:  PUSH.W          {R8-R10}
5C622C:  SUB             SP, SP, #8
5C622E:  LDR             R5, [R7,#x]
5C6230:  MOV             R10, R0
5C6232:  MOV             R6, R3
5C6234:  MOV             R8, R2
5C6236:  MOV             R9, R1
5C6238:  MOV             R0, R5; x
5C623A:  BLX.W           sinf
5C623E:  MOV             R4, R0
5C6240:  MOV             R0, R5; x
5C6242:  BLX.W           cosf
5C6246:  VMOV            S0, R0
5C624A:  LDR.W           R0, =(_ZN7CSprite31m_bFlushSpriteBufferSwitchZTestE_ptr - 0x5C625C)
5C624E:  VMOV            S2, R4
5C6252:  MOVS            R1, #0
5C6254:  VNEG.F32        S4, S0
5C6258:  ADD             R0, PC; _ZN7CSprite31m_bFlushSpriteBufferSwitchZTestE_ptr
5C625A:  VSUB.F32        S8, S0, S2
5C625E:  VSUB.F32        S10, S2, S0
5C6262:  LDR             R0, [R0]; CSprite::m_bFlushSpriteBufferSwitchZTest ...
5C6264:  VADD.F32        S12, S2, S0
5C6268:  VMOV            S0, R6
5C626C:  VMOV            S1, R10
5C6270:  STR             R1, [R0]; CSprite::m_bFlushSpriteBufferSwitchZTest
5C6272:  VSUB.F32        S14, S4, S2
5C6276:  VMUL.F32        S2, S8, S0
5C627A:  VMUL.F32        S6, S10, S0
5C627E:  VMUL.F32        S4, S12, S0
5C6282:  VMUL.F32        S3, S14, S0
5C6286:  VADD.F32        S0, S2, S1
5C628A:  VADD.F32        S6, S6, S1
5C628E:  VADD.F32        S2, S4, S1
5C6292:  VADD.F32        S4, S3, S1
5C6296:  VCMPE.F32       S0, #0.0
5C629A:  VMRS            APSR_nzcv, FPSCR
5C629E:  BGE             loc_5C62C0
5C62A0:  VCMPE.F32       S2, #0.0
5C62A4:  VMRS            APSR_nzcv, FPSCR
5C62A8:  ITT LT
5C62AA:  VCMPELT.F32     S4, #0.0
5C62AE:  VMRSLT          APSR_nzcv, FPSCR
5C62B2:  BGE             loc_5C62C0
5C62B4:  VCMPE.F32       S6, #0.0
5C62B8:  VMRS            APSR_nzcv, FPSCR
5C62BC:  BLT.W           loc_5C6652
5C62C0:  VLDR            S1, [R7,#arg_0]
5C62C4:  VMOV            S5, R9
5C62C8:  VMUL.F32        S12, S12, S1
5C62CC:  VMUL.F32        S7, S14, S1
5C62D0:  VMUL.F32        S8, S8, S1
5C62D4:  VMUL.F32        S3, S10, S1
5C62D8:  VADD.F32        S14, S12, S5
5C62DC:  VADD.F32        S12, S7, S5
5C62E0:  VADD.F32        S10, S8, S5
5C62E4:  VADD.F32        S1, S3, S5
5C62E8:  VCMPE.F32       S12, #0.0
5C62EC:  VMRS            APSR_nzcv, FPSCR
5C62F0:  BGE             loc_5C6312
5C62F2:  VCMPE.F32       S10, #0.0
5C62F6:  VMRS            APSR_nzcv, FPSCR
5C62FA:  ITT LT
5C62FC:  VCMPELT.F32     S1, #0.0
5C6300:  VMRSLT          APSR_nzcv, FPSCR
5C6304:  BGE             loc_5C6312
5C6306:  VCMPE.F32       S14, #0.0
5C630A:  VMRS            APSR_nzcv, FPSCR
5C630E:  BLT.W           loc_5C6652
5C6312:  LDR             R0, =(RsGlobal_ptr - 0x5C6318)
5C6314:  ADD             R0, PC; RsGlobal_ptr
5C6316:  LDR             R0, [R0]; RsGlobal
5C6318:  VLDR            S8, [R0,#4]
5C631C:  VCVT.F32.S32    S8, S8
5C6320:  VCMPE.F32       S0, S8
5C6324:  VMRS            APSR_nzcv, FPSCR
5C6328:  BLE             loc_5C634A
5C632A:  VCMPE.F32       S2, S8
5C632E:  VMRS            APSR_nzcv, FPSCR
5C6332:  ITT GT
5C6334:  VCMPEGT.F32     S4, S8
5C6338:  VMRSGT          APSR_nzcv, FPSCR
5C633C:  BLE             loc_5C634A
5C633E:  VCMPE.F32       S6, S8
5C6342:  VMRS            APSR_nzcv, FPSCR
5C6346:  BGT.W           loc_5C6652
5C634A:  LDR             R0, =(RsGlobal_ptr - 0x5C6350)
5C634C:  ADD             R0, PC; RsGlobal_ptr
5C634E:  LDR             R0, [R0]; RsGlobal
5C6350:  VLDR            S8, [R0,#8]
5C6354:  VCVT.F32.S32    S8, S8
5C6358:  VCMPE.F32       S12, S8
5C635C:  VMRS            APSR_nzcv, FPSCR
5C6360:  BLE             loc_5C6382
5C6362:  VCMPE.F32       S10, S8
5C6366:  VMRS            APSR_nzcv, FPSCR
5C636A:  ITT GT
5C636C:  VCMPEGT.F32     S1, S8
5C6370:  VMRSGT          APSR_nzcv, FPSCR
5C6374:  BLE             loc_5C6382
5C6376:  VCMPE.F32       S14, S8
5C637A:  VMRS            APSR_nzcv, FPSCR
5C637E:  BGT.W           loc_5C6652
5C6382:  LDR.W           R12, =(dword_A7C1F0 - 0x5C6390)
5C6386:  VMOV            S3, R8
5C638A:  LDR             R1, =(_ZN5CDraw13ms_fNearClipZE_ptr - 0x5C6398)
5C638C:  ADD             R12, PC; dword_A7C1F0
5C638E:  LDR             R5, =(TempVertexBuffer_ptr - 0x5C639E)
5C6390:  LDRD.W          LR, R3, [R7,#arg_C]
5C6394:  ADD             R1, PC; _ZN5CDraw13ms_fNearClipZE_ptr
5C6396:  LDRD.W          R10, R9, [R7,#arg_4]
5C639A:  ADD             R5, PC; TempVertexBuffer_ptr
5C639C:  LDR.W           R6, [R12]
5C63A0:  LDR             R4, [R1]; CDraw::ms_fNearClipZ ...
5C63A2:  LDR             R1, [R5]; TempVertexBuffer
5C63A4:  RSB.W           R5, R6, R6,LSL#3
5C63A8:  LDR             R0, =(_ZN5CDraw12ms_fFarClipZE_ptr - 0x5C63B8)
5C63AA:  SMULBB.W        R6, R3, R9
5C63AE:  LDR             R2, [R7,#arg_1C]
5C63B0:  ADD.W           R1, R1, R5,LSL#4
5C63B4:  ADD             R0, PC; _ZN5CDraw12ms_fFarClipZE_ptr
5C63B6:  ADD.W           R5, R1, #0x12000
5C63BA:  VLDR            S8, [R7,#arg_14]
5C63BE:  ADDS            R5, #0x1C
5C63C0:  LDR             R0, [R0]; CDraw::ms_fFarClipZ ...
5C63C2:  VSTR            S6, [R5]
5C63C6:  ADD.W           R5, R1, #0x12000
5C63CA:  LSRS            R6, R6, #8
5C63CC:  VSTR            S4, [R5]
5C63D0:  ADD.W           R5, R1, #0x12000
5C63D4:  ADDS            R5, #0x38 ; '8'
5C63D6:  VSTR            S2, [R5]
5C63DA:  ADD.W           R5, R1, #0x12000
5C63DE:  ADDS            R5, #0x54 ; 'T'
5C63E0:  VLDR            S2, [R4]
5C63E4:  LDR             R4, =(TempBufferRenderIndexList_ptr - 0x5C63FC)
5C63E6:  VSTR            S0, [R5]
5C63EA:  ADD.W           R5, R1, #0x12000
5C63EE:  VLDR            S0, [R0]
5C63F2:  ADDS            R5, #4
5C63F4:  SMULBB.W        R0, R3, R10
5C63F8:  ADD             R4, PC; TempBufferRenderIndexList_ptr
5C63FA:  VADD.F32        S4, S0, S0
5C63FE:  VSTR            S1, [R5]
5C6402:  VSUB.F32        S6, S0, S2
5C6406:  ADD.W           R5, R1, #0x12000
5C640A:  VADD.F32        S0, S0, S2
5C640E:  ADDS            R5, #0x20 ; ' '
5C6410:  VSTR            S14, [R5]
5C6414:  ADD.W           R5, R1, #0x12000
5C6418:  ADDS            R5, #0x3C ; '<'
5C641A:  VMUL.F32        S2, S4, S2
5C641E:  VLDR            S4, =0.95
5C6422:  VSTR            S10, [R5]
5C6426:  VMOV.F32        S10, #-1.0
5C642A:  VDIV.F32        S0, S0, S6
5C642E:  ADD.W           R5, R1, #0x12000
5C6432:  ADDS            R5, #0x58 ; 'X'
5C6434:  VMUL.F32        S4, S3, S4
5C6438:  VSTR            S12, [R5]
5C643C:  VDIV.F32        S2, S2, S6
5C6440:  SMULBB.W        R5, R3, LR
5C6444:  LSRS            R3, R0, #8
5C6446:  MOV             R0, #0x12010
5C644E:  STRB            R3, [R1,R0]
5C6450:  MOV             R0, #0x12011
5C6458:  STRB            R6, [R1,R0]
5C645A:  MOVW            R0, #:lower16:(elf_hash_chain+0x1EAA)
5C645E:  LSRS            R5, R5, #8
5C6460:  MOVT            R0, #:upper16:(elf_hash_chain+0x1EAA)
5C6464:  STRB            R5, [R1,R0]
5C6466:  MOV             R0, #0x12013
5C646E:  STRB            R2, [R1,R0]
5C6470:  MOV             R0, #0x1202C
5C6478:  STRB            R3, [R1,R0]
5C647A:  MOV             R0, #0x1202D
5C6482:  STRB            R6, [R1,R0]
5C6484:  MOV             R0, #0x1202E
5C648C:  STRB            R5, [R1,R0]
5C648E:  MOV             R0, #0x1202F
5C6496:  STRB            R2, [R1,R0]
5C6498:  MOV             R0, #0x12048
5C64A0:  VADD.F32        S4, S4, S10
5C64A4:  STRB            R3, [R1,R0]
5C64A6:  MOV             R0, #0x12049
5C64AE:  STRB            R6, [R1,R0]
5C64B0:  MOV             R0, #0x1204A
5C64B8:  STRB            R5, [R1,R0]
5C64BA:  MOV             R0, #0x1204B
5C64C2:  VMUL.F32        S0, S4, S0
5C64C6:  STRB            R2, [R1,R0]
5C64C8:  VNEG.F32        S4, S4
5C64CC:  ADD.W           R0, R1, #0x12000
5C64D0:  ADDS            R0, #0xC
5C64D2:  VSTR            S8, [R0]
5C64D6:  ADD.W           R0, R1, #0x12000
5C64DA:  ADDS            R0, #0x28 ; '('
5C64DC:  VSUB.F32        S0, S2, S0
5C64E0:  VSTR            S8, [R0]
5C64E4:  ADD.W           R0, R1, #0x12000
5C64E8:  ADDS            R0, #0x44 ; 'D'
5C64EA:  VSTR            S8, [R0]
5C64EE:  ADD.W           R0, R1, #0x12000
5C64F2:  ADDS            R0, #8
5C64F4:  VDIV.F32        S0, S0, S4
5C64F8:  VSTR            S0, [R0]
5C64FC:  ADD.W           R0, R1, #0x12000
5C6500:  ADDS            R0, #0x24 ; '$'
5C6502:  VSTR            S0, [R0]
5C6506:  ADD.W           R0, R1, #0x10000
5C650A:  ADD.W           R0, R0, #0x2040
5C650E:  VSTR            S0, [R0]
5C6512:  MOV             R0, #0x12064
5C651A:  STRB            R3, [R1,R0]
5C651C:  MOV             R0, #0x12065
5C6524:  STRB            R6, [R1,R0]
5C6526:  MOV             R0, #0x12066
5C652E:  STRB            R5, [R1,R0]
5C6530:  MOV             R0, #0x12067
5C6538:  STRB            R2, [R1,R0]
5C653A:  ADD.W           R0, R1, #0x12000
5C653E:  ADDS            R0, #0x60 ; '`'
5C6540:  MOV.W           R2, #0x3F800000
5C6544:  MOVS            R3, #0
5C6546:  VSTR            S8, [R0]
5C654A:  ADD.W           R0, R1, #0x12000
5C654E:  ADDS            R0, #0x5C ; '\'
5C6550:  MOVS            R6, #3
5C6552:  VSTR            S0, [R0]
5C6556:  MOV             R0, #0x12034
5C655E:  STR             R2, [R1,R0]
5C6560:  MOV             R0, #0x12018
5C6568:  STR             R3, [R1,R0]
5C656A:  MOV             R0, #0x12014
5C6572:  STR             R3, [R1,R0]
5C6574:  MOV             R0, #0x12030
5C657C:  STR             R3, [R1,R0]
5C657E:  MOV             R0, #0x12050
5C6586:  STR             R2, [R1,R0]
5C6588:  MOV             R0, #0x1204C
5C6590:  STR             R2, [R1,R0]
5C6592:  MOV             R0, #0x1206C
5C659A:  STR             R3, [R1,R0]
5C659C:  MOV             R0, #0x12068
5C65A4:  STR             R2, [R1,R0]
5C65A6:  LDR.W           R0, [R12]
5C65AA:  LDR             R1, [R4]; TempBufferRenderIndexList
5C65AC:  CMP.W           R0, #0x1FE
5C65B0:  ADD.W           R2, R0, R0,LSL#1
5C65B4:  MOV.W           R3, R0,LSL#2
5C65B8:  ORR.W           R6, R6, R0,LSL#2
5C65BC:  STRH.W          R3, [R1,R2,LSL#2]
5C65C0:  ADD.W           R1, R1, R2,LSL#2
5C65C4:  MOV.W           R2, #1
5C65C8:  ORR.W           R2, R2, R0,LSL#2
5C65CC:  STRH            R2, [R1,#2]
5C65CE:  MOV.W           R2, #2
5C65D2:  ORR.W           R2, R2, R0,LSL#2
5C65D6:  STRH            R2, [R1,#4]
5C65D8:  STRH            R6, [R1,#6]
5C65DA:  STRH            R3, [R1,#8]
5C65DC:  STRH            R2, [R1,#0xA]
5C65DE:  ADD.W           R1, R0, #1
5C65E2:  STR.W           R1, [R12]
5C65E6:  BLE             loc_5C6652
5C65E8:  LDR             R0, =(_ZN7CSprite31m_bFlushSpriteBufferSwitchZTestE_ptr - 0x5C65EE)
5C65EA:  ADD             R0, PC; _ZN7CSprite31m_bFlushSpriteBufferSwitchZTestE_ptr
5C65EC:  LDR             R0, [R0]; CSprite::m_bFlushSpriteBufferSwitchZTest ...
5C65EE:  LDR             R0, [R0]; CSprite::m_bFlushSpriteBufferSwitchZTest
5C65F0:  CBZ             R0, loc_5C662A
5C65F2:  MOVS            R0, #6
5C65F4:  MOVS            R1, #0
5C65F6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C65FA:  LDR             R0, =(dword_A7C1F0 - 0x5C6602)
5C65FC:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x5C6606)
5C65FE:  ADD             R0, PC; dword_A7C1F0
5C6600:  LDR             R2, =(TempVertexBuffer_ptr - 0x5C660A)
5C6602:  ADD             R1, PC; TempBufferRenderIndexList_ptr
5C6604:  LDR             R0, [R0]
5C6606:  ADD             R2, PC; TempVertexBuffer_ptr
5C6608:  LDR             R3, [R1]; TempBufferRenderIndexList
5C660A:  LDR             R1, [R2]; TempVertexBuffer
5C660C:  ADD.W           R2, R0, R0,LSL#1
5C6610:  ADD.W           R1, R1, #0x12000
5C6614:  LSLS            R2, R2, #1
5C6616:  STR             R2, [SP,#0x20+var_20]
5C6618:  LSLS            R2, R0, #2
5C661A:  MOVS            R0, #3
5C661C:  BLX.W           j__Z35RwIm2DRenderIndexedPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
5C6620:  MOVS            R0, #6
5C6622:  MOVS            R1, #1
5C6624:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C6628:  B               loc_5C664A
5C662A:  LDR             R2, =(TempVertexBuffer_ptr - 0x5C6636)
5C662C:  ADD.W           R3, R1, R1,LSL#1
5C6630:  LDR             R0, =(TempBufferRenderIndexList_ptr - 0x5C663A)
5C6632:  ADD             R2, PC; TempVertexBuffer_ptr
5C6634:  LSLS            R3, R3, #1
5C6636:  ADD             R0, PC; TempBufferRenderIndexList_ptr
5C6638:  STR             R3, [SP,#0x20+var_20]
5C663A:  LDR             R6, [R2]; TempVertexBuffer
5C663C:  LSLS            R2, R1, #2
5C663E:  LDR             R3, [R0]; TempBufferRenderIndexList
5C6640:  MOVS            R0, #3
5C6642:  ADD.W           R1, R6, #0x12000
5C6646:  BLX.W           j__Z35RwIm2DRenderIndexedPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
5C664A:  LDR             R0, =(dword_A7C1F0 - 0x5C6652)
5C664C:  MOVS            R1, #0
5C664E:  ADD             R0, PC; dword_A7C1F0
5C6650:  STR             R1, [R0]
5C6652:  ADD             SP, SP, #8
5C6654:  POP.W           {R8-R10}
5C6658:  POP             {R4-R7,PC}
