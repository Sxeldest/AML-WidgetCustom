; =========================================================
; Game Engine Function: png_read_end
; Address            : 0x1F5F18 - 0x1F628C
; =========================================================

1F5F18:  PUSH            {R4-R7,LR}
1F5F1A:  ADD             R7, SP, #0xC
1F5F1C:  PUSH.W          {R8-R11}
1F5F20:  SUB             SP, SP, #4
1F5F22:  MOV             R5, R0
1F5F24:  MOV             R11, R1
1F5F26:  CMP             R5, #0
1F5F28:  BEQ.W           loc_1F6284
1F5F2C:  MOVW            R10, #0x4154
1F5F30:  MOV             R0, R5
1F5F32:  MOVT            R10, #0x4944
1F5F36:  MOV             R1, R10
1F5F38:  BLX             j_png_chunk_unknown_handling
1F5F3C:  CMP             R0, #0
1F5F3E:  ITT EQ
1F5F40:  MOVEQ           R0, R5
1F5F42:  BLXEQ           j_png_read_finish_IDAT
1F5F46:  LDRB.W          R0, [R5,#0x20F]
1F5F4A:  CMP             R0, #3
1F5F4C:  BNE             loc_1F5F62
1F5F4E:  LDRH.W          R0, [R5,#0x200]
1F5F52:  LDR.W           R1, [R5,#0x204]
1F5F56:  CMP             R1, R0
1F5F58:  BLE             loc_1F5F62
1F5F5A:  ADR             R1, aReadPaletteInd; "Read palette index exceeding num_palett"...
1F5F5C:  MOV             R0, R5
1F5F5E:  BLX             j_png_benign_error
1F5F62:  MOV             R9, #0x49484452
1F5F6A:  B               loc_1F61A6
1F5F6C:  MOV             R0, #0x7043414B
1F5F74:  CMP             R4, R0
1F5F76:  BLE             loc_1F5FC6
1F5F78:  MOV             R0, #0x73524741
1F5F80:  CMP             R4, R0
1F5F82:  BGT             loc_1F6014
1F5F84:  MOV             R0, #0x73424953
1F5F8C:  CMP             R4, R0
1F5F8E:  BLE             loc_1F6088
1F5F90:  MOV             R0, #0x73424954
1F5F98:  CMP             R4, R0
1F5F9A:  BEQ.W           loc_1F6118
1F5F9E:  MOV             R0, #0x7343414C
1F5FA6:  CMP             R4, R0
1F5FA8:  BEQ.W           loc_1F6124
1F5FAC:  MOV             R0, #0x73504C54
1F5FB4:  CMP             R4, R0
1F5FB6:  BNE.W           loc_1F619C
1F5FBA:  MOV             R0, R5
1F5FBC:  MOV             R1, R11
1F5FBE:  MOV             R2, R6
1F5FC0:  BLX             j_png_handle_sPLT
1F5FC4:  B               loc_1F627A
1F5FC6:  MOV             R0, #0x67414D40
1F5FCE:  CMP             R4, R0
1F5FD0:  BLE             loc_1F6056
1F5FD2:  MOV             R0, #0x6943434F
1F5FDA:  CMP             R4, R0
1F5FDC:  BLE             loc_1F60AC
1F5FDE:  MOV             R0, #0x69434350
1F5FE6:  CMP             R4, R0
1F5FE8:  BEQ.W           loc_1F6130
1F5FEC:  MOV             R0, #0x69545874
1F5FF4:  CMP             R4, R0
1F5FF6:  BEQ.W           loc_1F613C
1F5FFA:  MOV             R0, #0x6F464673
1F6002:  CMP             R4, R0
1F6004:  BNE.W           loc_1F619C
1F6008:  MOV             R0, R5
1F600A:  MOV             R1, R11
1F600C:  MOV             R2, R6
1F600E:  BLX             j_png_handle_oFFs
1F6012:  B               loc_1F627A
1F6014:  MOV             R0, #0x74494D44
1F601C:  CMP             R4, R0
1F601E:  BLE             loc_1F60D0
1F6020:  MOV             R0, #0x74494D45
1F6028:  CMP             R4, R0
1F602A:  BEQ.W           loc_1F6148
1F602E:  MOV             R0, #0x74524E53
1F6036:  CMP             R4, R0
1F6038:  BEQ.W           loc_1F6154
1F603C:  MOV             R0, #0x7A545874
1F6044:  CMP             R4, R0
1F6046:  BNE.W           loc_1F619C
1F604A:  MOV             R0, R5
1F604C:  MOV             R1, R11
1F604E:  MOV             R2, R6
1F6050:  BLX             j_png_handle_zTXt
1F6054:  B               loc_1F627A
1F6056:  MOV             R0, #0x6348524C
1F605E:  CMP             R4, R0
1F6060:  BGT             loc_1F60F4
1F6062:  MOV             R0, #0x504C5445
1F606A:  CMP             R4, R0
1F606C:  BEQ             loc_1F6160
1F606E:  MOV             R0, #0x624B4744
1F6076:  CMP             R4, R0
1F6078:  BNE.W           loc_1F619C
1F607C:  MOV             R0, R5
1F607E:  MOV             R1, R11
1F6080:  MOV             R2, R6
1F6082:  BLX             j_png_handle_bKGD
1F6086:  B               loc_1F627A
1F6088:  MOV             R0, #0x7043414C
1F6090:  CMP             R4, R0
1F6092:  BEQ             loc_1F616C
1F6094:  MOV             R0, #0x70485973
1F609C:  CMP             R4, R0
1F609E:  BNE             loc_1F619C
1F60A0:  MOV             R0, R5
1F60A2:  MOV             R1, R11
1F60A4:  MOV             R2, R6
1F60A6:  BLX             j_png_handle_pHYs
1F60AA:  B               loc_1F627A
1F60AC:  MOV             R0, #0x67414D41
1F60B4:  CMP             R4, R0
1F60B6:  BEQ             loc_1F6178
1F60B8:  MOV             R0, #0x68495354
1F60C0:  CMP             R4, R0
1F60C2:  BNE             loc_1F619C
1F60C4:  MOV             R0, R5
1F60C6:  MOV             R1, R11
1F60C8:  MOV             R2, R6
1F60CA:  BLX             j_png_handle_hIST
1F60CE:  B               loc_1F627A
1F60D0:  MOV             R0, #0x73524742
1F60D8:  CMP             R4, R0
1F60DA:  BEQ             loc_1F6184
1F60DC:  MOV             R0, #0x74455874
1F60E4:  CMP             R4, R0
1F60E6:  BNE             loc_1F619C
1F60E8:  MOV             R0, R5
1F60EA:  MOV             R1, R11
1F60EC:  MOV             R2, R6
1F60EE:  BLX             j_png_handle_tEXt
1F60F2:  B               loc_1F627A
1F60F4:  MOV             R0, #0x6348524D
1F60FC:  CMP             R4, R0
1F60FE:  BEQ             loc_1F6190
1F6100:  MOV             R0, #0x65584966
1F6108:  CMP             R4, R0
1F610A:  BNE             loc_1F619C
1F610C:  MOV             R0, R5
1F610E:  MOV             R1, R11
1F6110:  MOV             R2, R6
1F6112:  BLX             j_png_handle_eXIf
1F6116:  B               loc_1F627A
1F6118:  MOV             R0, R5
1F611A:  MOV             R1, R11
1F611C:  MOV             R2, R6
1F611E:  BLX             j_png_handle_sBIT
1F6122:  B               loc_1F627A
1F6124:  MOV             R0, R5
1F6126:  MOV             R1, R11
1F6128:  MOV             R2, R6
1F612A:  BLX             j_png_handle_sCAL
1F612E:  B               loc_1F627A
1F6130:  MOV             R0, R5
1F6132:  MOV             R1, R11
1F6134:  MOV             R2, R6
1F6136:  BLX             j_png_handle_iCCP
1F613A:  B               loc_1F627A
1F613C:  MOV             R0, R5
1F613E:  MOV             R1, R11
1F6140:  MOV             R2, R6
1F6142:  BLX             j_png_handle_iTXt
1F6146:  B               loc_1F627A
1F6148:  MOV             R0, R5
1F614A:  MOV             R1, R11
1F614C:  MOV             R2, R6
1F614E:  BLX             j_png_handle_tIME
1F6152:  B               loc_1F627A
1F6154:  MOV             R0, R5
1F6156:  MOV             R1, R11
1F6158:  MOV             R2, R6
1F615A:  BLX             j_png_handle_tRNS
1F615E:  B               loc_1F627A
1F6160:  MOV             R0, R5
1F6162:  MOV             R1, R11
1F6164:  MOV             R2, R6
1F6166:  BLX             j_png_handle_PLTE
1F616A:  B               loc_1F627A
1F616C:  MOV             R0, R5
1F616E:  MOV             R1, R11
1F6170:  MOV             R2, R6
1F6172:  BLX             j_png_handle_pCAL
1F6176:  B               loc_1F627A
1F6178:  MOV             R0, R5
1F617A:  MOV             R1, R11
1F617C:  MOV             R2, R6
1F617E:  BLX             j_png_handle_gAMA
1F6182:  B               loc_1F627A
1F6184:  MOV             R0, R5
1F6186:  MOV             R1, R11
1F6188:  MOV             R2, R6
1F618A:  BLX             j_png_handle_sRGB
1F618E:  B               loc_1F627A
1F6190:  MOV             R0, R5
1F6192:  MOV             R1, R11
1F6194:  MOV             R2, R6
1F6196:  BLX             j_png_handle_cHRM
1F619A:  B               loc_1F627A
1F619C:  MOV             R0, R5
1F619E:  MOV             R1, R11
1F61A0:  MOV             R2, R6
1F61A2:  MOVS            R3, #0
1F61A4:  B               loc_1F621A
1F61A6:  MOV             R0, R5
1F61A8:  BLX             j_png_read_chunk_header
1F61AC:  LDR.W           R4, [R5,#0x1DC]
1F61B0:  MOV             R6, R0
1F61B2:  CMP             R4, R10
1F61B4:  BEQ             loc_1F61DE
1F61B6:  LDR.W           R0, [R5,#0x134]
1F61BA:  CMP             R4, R9
1F61BC:  ORR.W           R0, R0, #0x2000
1F61C0:  STR.W           R0, [R5,#0x134]
1F61C4:  BEQ             loc_1F6220
1F61C6:  MOV             R0, #0x49454E44
1F61CE:  CMP             R4, R0
1F61D0:  BNE             loc_1F61DE
1F61D2:  MOV             R0, R5
1F61D4:  MOV             R1, R11
1F61D6:  MOV             R2, R6
1F61D8:  BLX             j_png_handle_IEND
1F61DC:  B               loc_1F627A
1F61DE:  CMP.W           R11, #0
1F61E2:  BEQ             loc_1F624C
1F61E4:  MOV             R0, R5
1F61E6:  MOV             R1, R4
1F61E8:  BLX             j_png_chunk_unknown_handling
1F61EC:  MOV             R8, R0
1F61EE:  CMP.W           R8, #0
1F61F2:  BEQ             loc_1F622C
1F61F4:  CMP             R4, R10
1F61F6:  BNE             loc_1F6256
1F61F8:  CBZ             R6, loc_1F6202
1F61FA:  LDRB.W          R0, [R5,#0x138]
1F61FE:  LSLS            R0, R0, #0x1C
1F6200:  BPL             loc_1F620A
1F6202:  LDRB.W          R0, [R5,#0x135]
1F6206:  LSLS            R0, R0, #0x1A
1F6208:  BPL             loc_1F6212
1F620A:  ADR             R1, aTooManyIdatsFo_1; ".Too many IDATs found"
1F620C:  MOV             R0, R5
1F620E:  BLX             j_png_benign_error
1F6212:  MOV             R0, R5
1F6214:  MOV             R1, R11
1F6216:  MOV             R2, R6
1F6218:  MOV             R3, R8
1F621A:  BLX             j_png_handle_unknown
1F621E:  B               loc_1F627A
1F6220:  MOV             R0, R5
1F6222:  MOV             R1, R11
1F6224:  MOV             R2, R6
1F6226:  BLX             j_png_handle_IHDR
1F622A:  B               loc_1F627A
1F622C:  CMP             R4, R10
1F622E:  BNE.W           loc_1F5F6C
1F6232:  CBZ             R6, loc_1F623C
1F6234:  LDRB.W          R0, [R5,#0x138]
1F6238:  LSLS            R0, R0, #0x1C
1F623A:  BPL             loc_1F6244
1F623C:  LDRB.W          R0, [R5,#0x135]
1F6240:  LSLS            R0, R0, #0x1A
1F6242:  BPL             loc_1F624C
1F6244:  ADR             R1, aTooManyIdatsFo_2; "..Too many IDATs found"
1F6246:  MOV             R0, R5
1F6248:  BLX             j_png_benign_error
1F624C:  MOV             R0, R5
1F624E:  MOV             R1, R6
1F6250:  BLX             j_png_crc_finish
1F6254:  B               loc_1F627A
1F6256:  MOV             R0, R5
1F6258:  MOV             R1, R11
1F625A:  MOV             R2, R6
1F625C:  MOV             R3, R8
1F625E:  BLX             j_png_handle_unknown
1F6262:  MOV             R0, #0x504C5445
1F626A:  CMP             R4, R0
1F626C:  ITTT EQ
1F626E:  LDREQ.W         R0, [R5,#0x134]
1F6272:  ORREQ.W         R0, R0, #2
1F6276:  STREQ.W         R0, [R5,#0x134]
1F627A:  LDRB.W          R0, [R5,#0x134]
1F627E:  LSLS            R0, R0, #0x1B
1F6280:  BPL.W           loc_1F61A6
1F6284:  ADD             SP, SP, #4
1F6286:  POP.W           {R8-R11}
1F628A:  POP             {R4-R7,PC}
