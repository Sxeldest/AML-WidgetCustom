; =========================================================
; Game Engine Function: _Z21jinit_compress_masterP20jpeg_compress_struct
; Address            : 0x4782F4 - 0x478388
; =========================================================

4782F4:  PUSH            {R4,R6,R7,LR}
4782F6:  ADD             R7, SP, #8
4782F8:  MOVS            R1, #0
4782FA:  MOV             R4, R0
4782FC:  BLX             j__Z22jinit_c_master_controlP20jpeg_compress_structh; jinit_c_master_control(jpeg_compress_struct *,uchar)
478300:  LDRB.W          R0, [R4,#0xB0]
478304:  CBNZ            R0, loc_47831A
478306:  MOV             R0, R4
478308:  BLX             j__Z21jinit_color_converterP20jpeg_compress_struct; jinit_color_converter(jpeg_compress_struct *)
47830C:  MOV             R0, R4
47830E:  BLX             j__Z17jinit_downsamplerP20jpeg_compress_struct; jinit_downsampler(jpeg_compress_struct *)
478312:  MOV             R0, R4
478314:  MOVS            R1, #0
478316:  BLX             j__Z23jinit_c_prep_controllerP20jpeg_compress_structh; jinit_c_prep_controller(jpeg_compress_struct *,uchar)
47831A:  MOV             R0, R4
47831C:  BLX             j__Z17jinit_forward_dctP20jpeg_compress_struct; jinit_forward_dct(jpeg_compress_struct *)
478320:  LDRB.W          R0, [R4,#0xB1]
478324:  CBZ             R0, loc_47832C
478326:  LDR             R0, [R4]
478328:  MOVS            R1, #1
47832A:  B               loc_478336
47832C:  LDRB.W          R0, [R4,#0xD4]
478330:  CBZ             R0, loc_478380
478332:  LDR             R0, [R4]
478334:  MOVS            R1, #0x30 ; '0'
478336:  STR             R1, [R0,#0x14]
478338:  LDR             R0, [R4]
47833A:  LDR             R1, [R0]
47833C:  MOV             R0, R4
47833E:  BLX             R1
478340:  LDR.W           R0, [R4,#0xA8]
478344:  CMP             R0, #1
478346:  BLE             loc_47834C
478348:  MOVS            R1, #1
47834A:  B               loc_478356
47834C:  LDRB.W          R1, [R4,#0xB2]
478350:  CMP             R1, #0
478352:  IT NE
478354:  MOVNE           R1, #1
478356:  MOV             R0, R4
478358:  BLX             j__Z23jinit_c_coef_controllerP20jpeg_compress_structh; jinit_c_coef_controller(jpeg_compress_struct *,uchar)
47835C:  MOV             R0, R4
47835E:  MOVS            R1, #0
478360:  BLX             j__Z23jinit_c_main_controllerP20jpeg_compress_structh; jinit_c_main_controller(jpeg_compress_struct *,uchar)
478364:  MOV             R0, R4
478366:  BLX             j__Z19jinit_marker_writerP20jpeg_compress_struct; jinit_marker_writer(jpeg_compress_struct *)
47836A:  LDR             R0, [R4,#4]
47836C:  LDR             R1, [R0,#0x18]
47836E:  MOV             R0, R4
478370:  BLX             R1
478372:  LDR.W           R0, [R4,#0x14C]
478376:  LDR             R1, [R0]
478378:  MOV             R0, R4
47837A:  POP.W           {R4,R6,R7,LR}
47837E:  BX              R1
478380:  MOV             R0, R4
478382:  BLX             j__Z18jinit_huff_encoderP20jpeg_compress_struct; jinit_huff_encoder(jpeg_compress_struct *)
478386:  B               loc_478340
