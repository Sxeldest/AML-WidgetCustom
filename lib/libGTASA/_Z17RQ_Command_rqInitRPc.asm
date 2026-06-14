; =========================================================
; Game Engine Function: _Z17RQ_Command_rqInitRPc
; Address            : 0x1CC210 - 0x1CC440
; =========================================================

1CC210:  PUSH            {R4,R5,R7,LR}
1CC212:  ADD             R7, SP, #8
1CC214:  SUB             SP, SP, #8
1CC216:  BLX             glGetError
1CC21A:  MOVW            R0, #0x901; mode
1CC21E:  BLX             glFrontFace
1CC222:  MOV.W           R0, #0x1F00; name
1CC226:  BLX             glGetString
1CC22A:  BLX             j_strdup
1CC22E:  LDR             R1, =(rqVendor_ptr - 0x1CC234)
1CC230:  ADD             R1, PC; rqVendor_ptr
1CC232:  LDR             R1, [R1]; rqVendor
1CC234:  STR             R0, [R1]
1CC236:  MOVW            R0, #0x1F01; name
1CC23A:  BLX             glGetString
1CC23E:  MOV             R4, R0
1CC240:  BLX             j_strdup
1CC244:  LDR             R1, =(rqRenderer_ptr - 0x1CC24A)
1CC246:  ADD             R1, PC; rqRenderer_ptr
1CC248:  LDR             R1, [R1]; rqRenderer
1CC24A:  STR             R0, [R1]
1CC24C:  MOVW            R0, #0x1F03; name
1CC250:  BLX             glGetString
1CC254:  ADR             R1, aAdrenoTm320; "Adreno (TM) 320"
1CC256:  MOV             R5, R0
1CC258:  MOV             R0, R4; char *
1CC25A:  BLX             strcmp
1CC25E:  CBNZ            R0, loc_1CC26A
1CC260:  LDR             R0, =(RQCaps_ptr - 0x1CC268)
1CC262:  MOVS            R1, #1
1CC264:  ADD             R0, PC; RQCaps_ptr
1CC266:  LDR             R0, [R0]; RQCaps
1CC268:  STRB            R1, [R0,#(byte_6B8BA8 - 0x6B8B9C)]
1CC26A:  ADR             R1, aGlOesDepth24; "GL_OES_depth24"
1CC26C:  MOV             R0, R5; haystack
1CC26E:  BLX             strstr
1CC272:  CBZ             R0, loc_1CC27E
1CC274:  LDR             R0, =(RQCaps_ptr - 0x1CC27C)
1CC276:  MOVS            R1, #1
1CC278:  ADD             R0, PC; RQCaps_ptr
1CC27A:  LDR             R0, [R0]; RQCaps
1CC27C:  STRB            R1, [R0]
1CC27E:  ADR             R1, aGlOesPackedDep; "GL_OES_packed_depth_stencil"
1CC280:  MOV             R0, R5; haystack
1CC282:  BLX             strstr
1CC286:  CBZ             R0, loc_1CC292
1CC288:  LDR             R0, =(RQCaps_ptr - 0x1CC290)
1CC28A:  MOVS            R1, #1
1CC28C:  ADD             R0, PC; RQCaps_ptr
1CC28E:  LDR             R0, [R0]; RQCaps
1CC290:  STRB            R1, [R0,#(byte_6B8B9D - 0x6B8B9C)]
1CC292:  ADR             R1, aGlNvDepthNonli; "GL_NV_depth_nonlinear"
1CC294:  MOV             R0, R5; haystack
1CC296:  BLX             strstr
1CC29A:  CBZ             R0, loc_1CC2A6
1CC29C:  LDR             R0, =(RQCaps_ptr - 0x1CC2A4)
1CC29E:  MOVS            R1, #1
1CC2A0:  ADD             R0, PC; RQCaps_ptr
1CC2A2:  LDR             R0, [R0]; RQCaps
1CC2A4:  STRB            R1, [R0,#(byte_6B8B9E - 0x6B8B9C)]
1CC2A6:  ADR             R1, aGlExtTextureCo; "GL_EXT_texture_compression_dxt1"
1CC2A8:  MOV             R0, R5; haystack
1CC2AA:  BLX             strstr
1CC2AE:  CBNZ            R0, loc_1CC2BA
1CC2B0:  ADR             R1, aGlExtTextureCo_0; "GL_EXT_texture_compression_s3tc"
1CC2B2:  MOV             R0, R5; haystack
1CC2B4:  BLX             strstr
1CC2B8:  CBZ             R0, loc_1CC2C4
1CC2BA:  LDR             R0, =(RQCaps_ptr - 0x1CC2C2)
1CC2BC:  MOVS            R1, #1
1CC2BE:  ADD             R0, PC; RQCaps_ptr
1CC2C0:  LDR             R0, [R0]; RQCaps
1CC2C2:  STRB            R1, [R0,#(byte_6B8B9F - 0x6B8B9C)]
1CC2C4:  LDR             R1, =(aGlAmdCompresse - 0x1CC2CC); "GL_AMD_compressed_ATC_texture"
1CC2C6:  MOV             R0, R5; haystack
1CC2C8:  ADD             R1, PC; "GL_AMD_compressed_ATC_texture"
1CC2CA:  BLX             strstr
1CC2CE:  CBZ             R0, loc_1CC2DC
1CC2D0:  LDR             R0, =(RQCaps_ptr - 0x1CC2D8)
1CC2D2:  MOVS            R1, #1
1CC2D4:  ADD             R0, PC; RQCaps_ptr
1CC2D6:  LDR             R0, [R0]; RQCaps
1CC2D8:  STRB            R1, [R0,#(byte_6B8BA8 - 0x6B8B9C)]
1CC2DA:  STRB            R1, [R0,#(byte_6B8BA0 - 0x6B8B9C)]
1CC2DC:  LDR             R1, =(aGlImgTextureCo - 0x1CC2E4); "GL_IMG_texture_compression_pvrtc"
1CC2DE:  MOV             R0, R5; haystack
1CC2E0:  ADD             R1, PC; "GL_IMG_texture_compression_pvrtc"
1CC2E2:  BLX             strstr
1CC2E6:  CBZ             R0, loc_1CC2F4
1CC2E8:  LDR             R0, =(RQCaps_ptr - 0x1CC2EE)
1CC2EA:  ADD             R0, PC; RQCaps_ptr
1CC2EC:  LDR             R1, [R0]; RQCaps
1CC2EE:  MOVS            R0, #1
1CC2F0:  STRB            R0, [R1,#(byte_6B8BA1 - 0x6B8B9C)]
1CC2F2:  B               loc_1CC2FC
1CC2F4:  LDR             R0, =(RQCaps_ptr - 0x1CC2FA)
1CC2F6:  ADD             R0, PC; RQCaps_ptr
1CC2F8:  LDR             R0, [R0]; RQCaps
1CC2FA:  LDRB            R0, [R0,#(byte_6B8BA1 - 0x6B8B9C)]
1CC2FC:  LDR             R1, =(RQCaps_ptr - 0x1CC302)
1CC2FE:  ADD             R1, PC; RQCaps_ptr
1CC300:  LDR             R1, [R1]; RQCaps
1CC302:  LDRB            R2, [R1,#(byte_6B8B9F - 0x6B8B9C)]
1CC304:  LDRB            R1, [R1,#(byte_6B8BA0 - 0x6B8B9C)]
1CC306:  ORRS            R1, R2
1CC308:  ORRS            R0, R1
1CC30A:  LSLS            R0, R0, #0x18
1CC30C:  BNE             loc_1CC318
1CC30E:  LDR             R0, =(RQCaps_ptr - 0x1CC316)
1CC310:  MOVS            R1, #1
1CC312:  ADD             R0, PC; RQCaps_ptr
1CC314:  LDR             R0, [R0]; RQCaps
1CC316:  STRB            R1, [R0,#(byte_6B8BA9 - 0x6B8B9C)]
1CC318:  LDR             R1, =(aGlOesRgb8Rgba8 - 0x1CC320); "GL_OES_rgb8_rgba8"
1CC31A:  MOV             R0, R5; haystack
1CC31C:  ADD             R1, PC; "GL_OES_rgb8_rgba8"
1CC31E:  BLX             strstr
1CC322:  CBZ             R0, loc_1CC32E
1CC324:  LDR             R0, =(RQCaps_ptr - 0x1CC32C)
1CC326:  MOVS            R1, #1
1CC328:  ADD             R0, PC; RQCaps_ptr
1CC32A:  LDR             R0, [R0]; RQCaps
1CC32C:  STRB            R1, [R0,#(byte_6B8BA2 - 0x6B8B9C)]
1CC32E:  LDR             R1, =(aGlExtTextureFi - 0x1CC336); "GL_EXT_texture_filter_anisotropic"
1CC330:  MOV             R0, R5; haystack
1CC332:  ADD             R1, PC; "GL_EXT_texture_filter_anisotropic"
1CC334:  BLX             strstr
1CC338:  CBZ             R0, loc_1CC344
1CC33A:  LDR             R0, =(RQCaps_ptr - 0x1CC342)
1CC33C:  MOVS            R1, #1
1CC33E:  ADD             R0, PC; RQCaps_ptr
1CC340:  LDR             R0, [R0]; RQCaps
1CC342:  STRB            R1, [R0,#(byte_6B8BA3 - 0x6B8B9C)]
1CC344:  LDR             R1, =(aGlQcomAlphaTes - 0x1CC34C); "GL_QCOM_alpha_test"
1CC346:  MOV             R0, R5; haystack
1CC348:  ADD             R1, PC; "GL_QCOM_alpha_test"
1CC34A:  BLX             strstr
1CC34E:  CBZ             R0, loc_1CC35A
1CC350:  LDR             R0, =(RQCaps_ptr - 0x1CC358)
1CC352:  MOVS            R1, #1
1CC354:  ADD             R0, PC; RQCaps_ptr
1CC356:  LDR             R0, [R0]; RQCaps
1CC358:  STRB            R1, [R0,#(byte_6B8BA7 - 0x6B8B9C)]
1CC35A:  LDR             R1, =(aGlQcomBinningC - 0x1CC362); "GL_QCOM_binning_control"
1CC35C:  MOV             R0, R5; haystack
1CC35E:  ADD             R1, PC; "GL_QCOM_binning_control"
1CC360:  BLX             strstr
1CC364:  CBZ             R0, loc_1CC37C
1CC366:  MOVW            R0, #0x8FB0; target
1CC36A:  MOVW            R1, #0x8FB1; mode
1CC36E:  BLX             glHint
1CC372:  LDR             R0, =(RQCaps_ptr - 0x1CC37A)
1CC374:  MOVS            R1, #1
1CC376:  ADD             R0, PC; RQCaps_ptr
1CC378:  LDR             R0, [R0]; RQCaps
1CC37A:  STRB            R1, [R0,#(byte_6B8BA6 - 0x6B8B9C)]
1CC37C:  BLX             j__Z13OS_SystemChipv; OS_SystemChip(void)
1CC380:  CMP             R0, #1
1CC382:  BHI             loc_1CC390
1CC384:  LDR             R0, =(RQCaps_ptr - 0x1CC38C)
1CC386:  MOVS            R1, #1
1CC388:  ADD             R0, PC; RQCaps_ptr
1CC38A:  LDR             R0, [R0]; RQCaps
1CC38C:  STRB            R1, [R0,#(byte_6B8BAA - 0x6B8B9C)]
1CC38E:  STRB            R1, [R0,#(byte_6B8BA4 - 0x6B8B9C)]
1CC390:  LDR             R0, =(RQCaps_ptr - 0x1CC396)
1CC392:  ADD             R0, PC; RQCaps_ptr
1CC394:  LDR             R0, [R0]; RQCaps
1CC396:  LDRB            R0, [R0,#(byte_6B8BA0 - 0x6B8B9C)]
1CC398:  CBZ             R0, loc_1CC3AE
1CC39A:  ADR             R1, dword_1CC534; needle
1CC39C:  MOV             R0, R4; haystack
1CC39E:  BLX             strstr
1CC3A2:  CBZ             R0, loc_1CC3AE
1CC3A4:  LDR             R0, =(RQCaps_ptr - 0x1CC3AC)
1CC3A6:  MOVS            R1, #1
1CC3A8:  ADD             R0, PC; RQCaps_ptr
1CC3AA:  LDR             R0, [R0]; RQCaps
1CC3AC:  STRB            R1, [R0,#(byte_6B8BAA - 0x6B8B9C)]
1CC3AE:  LDR             R0, =(RQCaps_ptr - 0x1CC3B4)
1CC3B0:  ADD             R0, PC; RQCaps_ptr
1CC3B2:  LDR             R0, [R0]; RQCaps
1CC3B4:  LDRB            R0, [R0,#(byte_6B8BA1 - 0x6B8B9C)]
1CC3B6:  CBZ             R0, loc_1CC3CC
1CC3B8:  ADR             R1, dword_1CC540; needle
1CC3BA:  MOV             R0, R4; haystack
1CC3BC:  BLX             strstr
1CC3C0:  CBZ             R0, loc_1CC3CC
1CC3C2:  LDR             R0, =(RQCaps_ptr - 0x1CC3CA)
1CC3C4:  MOVS            R1, #1
1CC3C6:  ADD             R0, PC; RQCaps_ptr
1CC3C8:  LDR             R0, [R0]; RQCaps
1CC3CA:  STRB            R1, [R0,#(byte_6B8BAA - 0x6B8B9C)]
1CC3CC:  LDR             R0, =(RQCaps_ptr - 0x1CC3D6)
1CC3CE:  ADD             R1, SP, #0x10+params; params
1CC3D0:  MOVS            R5, #0x80
1CC3D2:  ADD             R0, PC; RQCaps_ptr
1CC3D4:  STR             R5, [SP,#0x10+params]
1CC3D6:  LDR             R4, [R0]; RQCaps
1CC3D8:  MOVS            R0, #0
1CC3DA:  STRB            R0, [R4,#(byte_6B8BA5 - 0x6B8B9C)]
1CC3DC:  MOVW            R0, #0x8DFB; pname
1CC3E0:  BLX             glGetIntegerv
1CC3E4:  LDR             R0, [SP,#0x10+params]
1CC3E6:  MOV             R1, #0x55555556
1CC3EE:  LDRB.W          R12, [R4,#(byte_6B8BA1 - 0x6B8B9C)]
1CC3F2:  SUBS            R0, #0x20 ; ' '
1CC3F4:  SMMUL.W         R2, R0, R1
1CC3F8:  LDR             R0, =(RQMaxBones_ptr - 0x1CC400)
1CC3FA:  LDRB            R1, [R4,#(byte_6B8BA9 - 0x6B8B9C)]
1CC3FC:  ADD             R0, PC; RQMaxBones_ptr
1CC3FE:  LDR             R3, [R0]; RQMaxBones
1CC400:  LDRB            R0, [R4]
1CC402:  ADD.W           R2, R2, R2,LSR#31
1CC406:  CMP             R2, #0x80
1CC408:  IT LT
1CC40A:  MOVLT           R5, R2
1CC40C:  CMP             R0, #0
1CC40E:  STR             R5, [R3]
1CC410:  BEQ             loc_1CC428
1CC412:  ORR.W           R0, R1, R12
1CC416:  LSLS            R0, R0, #0x18
1CC418:  BNE             loc_1CC428
1CC41A:  MOVS            R0, #0
1CC41C:  MOVS            R1, #0
1CC41E:  MOVT            R0, #0xBE20
1CC422:  MOVT            R1, #0xBC80
1CC426:  B               loc_1CC434
1CC428:  MOVS            R0, #0
1CC42A:  MOVS            R1, #0
1CC42C:  MOVT            R0, #0xC120; factor
1CC430:  MOVT            R1, #0xBF80; units
1CC434:  BLX             glPolygonOffset
1CC438:  BLX             j__Z15ES2InitTexturesv; ES2InitTextures(void)
1CC43C:  ADD             SP, SP, #8
1CC43E:  POP             {R4,R5,R7,PC}
